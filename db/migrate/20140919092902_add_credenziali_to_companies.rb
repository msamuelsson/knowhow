class AddCredenzialiToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :credenziali, :text
  end
end
