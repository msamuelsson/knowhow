class CreateCompany < ActiveRecord::Migration
  def change
	  create_table :companies do |t|
		  t.string :compagnia
		  t.string :area
		  t.column(:provvigione, :decimal,  precision: 4, scale: 2)
		  t.date :aggiornamento
		  t.string :autore
		  t.string :canale_1
		  t.string :canale_2
		  t.string :interlocutore
		  t.text :note_operative
		  t.boolean :portale
		  t.string :premio_minimo
		  t.string :scheda_condizioni
		  t.string :questionari
		  t.string :brochure
		  t.text :nota_informativa
		  t.timestamps

	  end
  end
end
