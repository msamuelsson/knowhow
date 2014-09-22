class AddAttachmentSchedaCondizioniToCompanies < ActiveRecord::Migration
  def self.up
    change_table :companies do |t|
      t.attachment :scheda_condizioni
    end
  end

  def self.down
    remove_attachment :companies, :scheda_condizioni
  end
end
