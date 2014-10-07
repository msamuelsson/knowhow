class AddAttachmentQuestionariobs1ToCompanies < ActiveRecord::Migration
  def self.up
    change_table :companies do |t|
      t.attachment :questionariobs1
    end
  end

  def self.down
    remove_attachment :companies, :questionariobs1
  end
end
