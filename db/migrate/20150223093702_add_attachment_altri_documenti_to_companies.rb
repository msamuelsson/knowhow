class AddAttachmentAltriDocumentiToCompanies < ActiveRecord::Migration
  def self.up
    change_table :companies do |t|
      t.attachment :altri_documenti
    end
  end

  def self.down
    remove_attachment :companies, :altri_documenti
  end
end
