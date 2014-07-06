# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

more_energies = [{:compagnia => 'Italian Synkronos', :canale_1 => 'Milano', :interlocutore => 'Dotti/Basan', :portale => :true}, 
                         {:compagnia => 'TUA', :canale_1 => 'Direzione Milano', :portale => :true}, 
                         {:compagnia => 'Zurich', :canale_1 => 'Direzione Milano', :interlocutore => 'Menapace/Provolo', :note_operative => 'xs'}]

more_energies.each do |energy|
                  Energy.create!(energy)
end
