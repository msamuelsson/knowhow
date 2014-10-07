class AddAttachmentBrochurebsToCompanies < ActiveRecord::Migration
  def self.up
    change_table :companies do |t|
      t.attachment :brochurebs
    end
  end

  def self.down
    remove_attachment :companies, :brochurebs
  end
end
