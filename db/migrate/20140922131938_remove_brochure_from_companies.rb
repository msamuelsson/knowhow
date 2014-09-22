class RemoveBrochureFromCompanies < ActiveRecord::Migration
  def change
    remove_column :companies, :brochure, :string
  end
end
