class AddAttachmentQuestionariToCompanies < ActiveRecord::Migration
  def self.up
    change_table :companies do |t|
      t.attachment :questionari
    end
  end

  def self.down
    remove_attachment :companies, :questionari
  end
end
