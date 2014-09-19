class RemovePortaleFromCompanies < ActiveRecord::Migration
  def change
    remove_column :companies, :portale, :text
  end
end
