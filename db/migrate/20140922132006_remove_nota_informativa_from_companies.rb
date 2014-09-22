class RemoveNotaInformativaFromCompanies < ActiveRecord::Migration
  def change
    remove_column :companies, :nota_informativa, :string
  end
end
