class AddAttachmentBrochureToCompanies < ActiveRecord::Migration
  def self.up
    change_table :companies do |t|
      t.attachment :brochure
    end
  end

  def self.down
    remove_attachment :companies, :brochure
  end
end
