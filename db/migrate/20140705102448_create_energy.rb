class CreateEnergy < ActiveRecord::Migration
  def up
    create_table :energies do |t|
      t.string 'compagnia'
      t.integer 'provvigione'
      t.timestamps
      t.string 'autore'
      t.string 'canale_1'
      t.string 'canale_2'
      t.string 'interlocutore'
      t.text 'note_operative'
      t.boolean 'portale'
      t.string 'premio_minimo'
      t.string 'scheda_condizioni'
      t.string 'questionari'
      t.string 'brochure'
      t.text 'nota_informativa'
#      t.string 'Compagnia'
#      t.integer 'Provvigioni'
#      t.timestamps 'Ultimo_Aggiornamento'
#      t.string 'Autore'
#      t.string 'Canale_1'
#      t.string 'Canale_2'
#      t.string 'Interlocutore'
#      t.text 'Note_Operative'
#      t.boolean 'Portale'
#      t.string 'Premio_Minimo'
#      t.string 'Scheda_Condizioni'
#      t.string 'Questionari'
#      t.string 'Brochure'
#      t.text 'Nota_Informativa'
    end
  end
  def down
    drop_table :energies
  end

end
