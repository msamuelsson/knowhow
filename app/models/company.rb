class Company < ActiveRecord::Base
  def self.all_areas ; %w[Energy Technology Liability Cauzione Credit Rischi-civili-Abitazioni] ; end #  shortcut: array of strings
end
