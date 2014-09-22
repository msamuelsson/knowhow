class Company < ActiveRecord::Base
  def self.all_areas ; %w[Energy Technology Liability Cauzione Credit Rischi-civili-Abitazioni] ; end #  shortcut: array of strings
  validates :compagnia, :presence => true
  has_attached_file :scheda_condizioni,
	  :url => "/secure/knowhow_attachments/:attachment/:id_partition/:filename",
	  :path => "/var/www/secure/knowhow_attachments/:attachment/:id_partition/:filename",
	  :default_url => "",
	  :default_path => ""
  validates_attachment :scheda_condizioni, 
	  :content_type => { :content_type => "application/pdf" }, 
	  :size => { :in => 0..50.megabytes }
  has_attached_file :questionari,
	  :url => "/secure/knowhow_attachments/:attachment/:id_partition/:filename",
	  :path => "/var/www/secure/knowhow_attachments/:attachment/:id_partition/:filename",
	  :default_url => "",
	  :default_path => ""
  validates_attachment :questionari, :content_type => { :content_type => "application/pdf" }, :size => { :in => 0..50.megabytes }
  has_attached_file :brochure,
	  :url => "/secure/knowhow_attachments/:attachment/:id_partition/:filename",
	  :path => "/var/www/secure/knowhow_attachments/:attachment/:id_partition/:filename",
	  :default_url => "",
	  :default_path => ""
  validates_attachment :brochure, :content_type => { :content_type => "application/pdf" }, :size => { :in => 0..50.megabytes }
  has_attached_file :nota_informativa,
	  :url => "/secure/knowhow_attachments/:attachment/:id_partition/:filename",
	  :path => "/var/www/secure/knowhow_attachments/:attachment/:id_partition/:filename",
	  :default_url => "",
	  :default_path => ""
  validates_attachment :nota_informativa, :content_type => { :content_type => "application/pdf" }, :size => { :in => 0..50.megabytes }
end
