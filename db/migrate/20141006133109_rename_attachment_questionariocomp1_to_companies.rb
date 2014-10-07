class RenameAttachmentQuestionariocomp1ToCompanies < ActiveRecord::Migration
  def self.up
    change_table :companies do |t|
      t.rename :questionari_file_name, :questionariocomp1_file_name
      t.rename :questionari_content_type, :questionariocomp1_content_type
      t.rename :questionari_file_size, :questionariocomp1_file_size
      t.rename :questionari_updated_at, :questionariocomp1_updated_at
    end
  end

  def self.down
    change_table :companies do |t|
      t.rename :questionariocomp1_file_name, :questionari_file_name
      t.rename :questionariocomp1_content_type, :questionari_content_type
      t.rename :questionariocomp1_file_size, :questionari_file_size
      t.rename :questionariocomp1_updated_at, :questionari_updated_at
    end
  end
end
