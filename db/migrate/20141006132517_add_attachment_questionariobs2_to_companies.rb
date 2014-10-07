class AddAttachmentQuestionariobs2ToCompanies < ActiveRecord::Migration
  def self.up
    change_table :companies do |t|
      t.attachment :questionariobs2
    end
  end

  def self.down
    remove_attachment :companies, :questionariobs2
  end
end
