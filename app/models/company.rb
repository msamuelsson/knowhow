class Company < ActiveRecord::Base
  def self.all_areas ; %w[Energy Technology Liability Cauzione Credit Rischi-civili-Abitazioni] ; end #  shortcut: array of strings
  validates :compagnia, :presence => true
  # Scheda Condizioni
  has_attached_file :scheda_condizioni,
	  :url => "/secure/knowhow_attachments/:attachment/:id_partition/:filename",
	  :path => "/var/www/secure/knowhow_attachments/:attachment/:id_partition/:filename",
	  :default_url => "",
	  :default_path => ""
  validates_attachment :scheda_condizioni, 
	  :content_type => { :content_type => ["application/pdf",
		  "application/vnd.ms-excel",     
		  "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
		  "application/msword",
		  "application/vnd.openxmlformats-officedocument.wordprocessingml.document"] }, 
	  :size => { :in => 0..50.megabytes }
	
  # Questionario Compagnia 1
  has_attached_file :questionariocomp1,
	  :url => "/secure/knowhow_attachments/:attachment/:id_partition/:filename",
	  :path => "/var/www/secure/knowhow_attachments/:attachment/:id_partition/:filename",
	  :default_url => "",
	  :default_path => ""
  validates_attachment :questionariocomp1, 
	  :content_type => { :content_type => ["application/pdf",
		  "application/vnd.ms-excel",     
		  "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
		  "application/msword",
		  "application/vnd.openxmlformats-officedocument.wordprocessingml.document"] }, 
	  :size => { :in => 0..50.megabytes }
	  
  # Questionario Compagnia 2
  has_attached_file :questionariocomp2,
    :url => "/secure/knowhow_attachments/:attachment/:id_partition/:filename",
    :path => "/var/www/secure/knowhow_attachments/:attachment/:id_partition/:filename",
    :default_url => "",
    :default_path => ""
  validates_attachment :questionariocomp2, 
    :content_type => { :content_type => ["application/pdf",
      "application/vnd.ms-excel",     
      "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
      "application/msword",
      "application/vnd.openxmlformats-officedocument.wordprocessingml.document"] }, 
    :size => { :in => 0..50.megabytes }
    
  # Questionario Brokerstudio 1
  has_attached_file :questionariobs1,
    :url => "/secure/knowhow_attachments/:attachment/:id_partition/:filename",
    :path => "/var/www/secure/knowhow_attachments/:attachment/:id_partition/:filename",
    :default_url => "",
    :default_path => ""
  validates_attachment :questionariobs1, 
    :content_type => { :content_type => ["application/pdf",
      "application/vnd.ms-excel",     
      "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
      "application/msword",
      "application/vnd.openxmlformats-officedocument.wordprocessingml.document"] }, 
    :size => { :in => 0..50.megabytes }
    
  # Questionario Brokerstudio 2
  has_attached_file :questionariobs2,
    :url => "/secure/knowhow_attachments/:attachment/:id_partition/:filename",
    :path => "/var/www/secure/knowhow_attachments/:attachment/:id_partition/:filename",
    :default_url => "",
    :default_path => ""
  validates_attachment :questionariobs2, 
    :content_type => { :content_type => ["application/pdf",
      "application/vnd.ms-excel",     
      "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
      "application/msword",
      "application/vnd.openxmlformats-officedocument.wordprocessingml.document"] }, 
    :size => { :in => 0..50.megabytes } 
    
  # Brochure Compagnia   
  has_attached_file :brochure,
	  :url => "/secure/knowhow_attachments/:attachment/:id_partition/:filename",
	  :path => "/var/www/secure/knowhow_attachments/:attachment/:id_partition/:filename",
	  :default_url => "",
	  :default_path => ""
  validates_attachment :brochure, 
	  :content_type => { :content_type => ["application/pdf",
		  "application/vnd.ms-excel",     
		  "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
		  "application/msword",
		  "application/vnd.openxmlformats-officedocument.wordprocessingml.document"] }, 
	  :size => { :in => 0..50.megabytes }
	  
	# Brochure Brokerstudio  
  has_attached_file :brochurebs,
    :url => "/secure/knowhow_attachments/:attachment/:id_partition/:filename",
    :path => "/var/www/secure/knowhow_attachments/:attachment/:id_partition/:filename",
    :default_url => "",
    :default_path => ""
  validates_attachment :brochurebs, 
    :content_type => { :content_type => ["application/pdf",
      "application/vnd.ms-excel",     
      "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
      "application/msword",
      "application/vnd.openxmlformats-officedocument.wordprocessingml.document"] }, 
    :size => { :in => 0..50.megabytes }
  
  # Nota Informativa  
  has_attached_file :nota_informativa,
	  :url => "/secure/knowhow_attachments/:attachment/:id_partition/:filename",
	  :path => "/var/www/secure/knowhow_attachments/:attachment/:id_partition/:filename",
	  :default_url => "",
	  :default_path => ""
  validates_attachment :nota_informativa, 
	  :content_type => { :content_type => ["application/pdf",
		  "application/vnd.ms-excel",     
		  "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
		  "application/msword",
		  "application/vnd.openxmlformats-officedocument.wordprocessingml.document"] }, 
	  :size => { :in => 0..50.megabytes }
  
  # Altri Documenti  
  has_attached_file :altri_documenti,
	  :url => "/secure/knowhow_attachments/:attachment/:id_partition/:filename",
	  :path => "/var/www/secure/knowhow_attachments/:attachment/:id_partition/:filename",
	  :default_url => "",
	  :default_path => ""
  validates_attachment :altri_documenti, 
  	  :size => { :in => 0..50.megabytes }
end
