class Company < ActiveRecord::Base
  def self.all_areas ; %w[Energy Technology Liability Cauzione Credit Rischi-civili-Abitazioni] ; end #  shortcut: array of strings
  validates :compagnia, :presence => true
  #validates :autore, :presence => true
  #validates :provvigione, :presence => true
end
