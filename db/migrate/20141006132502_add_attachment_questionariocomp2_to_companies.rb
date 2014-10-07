class AddAttachmentQuestionariocomp2ToCompanies < ActiveRecord::Migration
  def self.up
    change_table :companies do |t|
      t.attachment :questionariocomp2
    end
  end

  def self.down
    remove_attachment :companies, :questionariocomp2
  end
end
