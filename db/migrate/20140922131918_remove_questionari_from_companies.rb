class RemoveQuestionariFromCompanies < ActiveRecord::Migration
  def change
    remove_column :companies, :questionari, :string
  end
end
