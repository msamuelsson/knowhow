class RemoveSchedaCondizioniFromCompanies < ActiveRecord::Migration
  def change
    remove_column :companies, :scheda_condizioni, :string
  end
end
