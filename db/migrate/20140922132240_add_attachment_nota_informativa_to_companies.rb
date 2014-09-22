class AddAttachmentNotaInformativaToCompanies < ActiveRecord::Migration
  def self.up
    change_table :companies do |t|
      t.attachment :nota_informativa
    end
  end

  def self.down
    remove_attachment :companies, :nota_informativa
  end
end
