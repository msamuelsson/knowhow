class AddPortaleToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :portale, :string
  end
end
