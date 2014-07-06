# Energy companies seeds

more_companies = [{:portale => :true,
 :compagnia => 'ITALIANA SYNKRONOS',
 :interlocutore => 'Dotti / Basan',
 :canale_1 => 'Milano',
 :area => 'Energy',
 },
{:portale => :true,
 :compagnia => 'TUA',
 :canale_1 => 'Direzione Milano',
 :area => 'Energy',
 },
{:canale_1 => 'Dir. Milano',
 :interlocutore => 'Menapace / Provolo',
 :compagnia => 'ZURICH',
 :area => 'Energy',
 },
{:compagnia => 'GENERALI INA ASSITALIA',
 :interlocutore => 'Zimatore',
 :canale_1 => 'Gerenza Roma',
 :area => 'Energy',
 },
{:compagnia => 'AXA VERS.',
 :canale_1 => 'Wiass',
 :area => 'Energy',
 },
{:compagnia => 'ITAS',
 :canale_1 => 'Direzione Milano',
 :area => 'Energy',
 },
{:interlocutore => 'Francesca',
 :canale_1 => 'Zurigo',
 :compagnia => 'CATLIN',
 :area => 'Energy',
 },
{:compagnia => 'CNA',
 :note_operative => 'disponibili a quotare + convenzione
Italia quota con Danimarca e Londra',
 :canale_1 => 'Direzione Milano',
 :aggiornamento => DateTime.strptime('04/12/13', '%d/%m/%y'),
 :area => 'Energy',
 },
{:canale_1 => 'Londra',
 :compagnia => 'GCUBE',
 :area => 'Energy',
 },
{:note_operative => 'da verificare operatività',
 :compagnia => 'ALLIANZ',
 :canale_1 => 'Direzione Padova',
 :interlocutore => 'Maini',
 :area => 'Energy',
 },
]

more_companies.each do |company|
                   Company.create!(company)
end

# Technology companies seeds

more_companies = [{:compagnia => 'ITALIANA SYNKRONOS',
 :portale => :true,
 :canale_1 => 'Milano',
 :interlocutore => 'Dotti / Basan',
 :area => 'Technology',
 },
{:canale_1 => 'Dir. Milano',
 :interlocutore => 'Menapace / Provolo',
 :compagnia => 'ZURICH',
 :area => 'Technology',
 },
{:interlocutore => 'Maini',
 :canale_1 => 'Direzione Padova',
 :compagnia => 'ALLIANZ',
 :area => 'Technology',
 },
{:canale_1 => 'Direzione Padova',
 :interlocutore => 'Fassina',
 :compagnia => 'UNIPOL',
 :area => 'Technology',
 },
{:compagnia => 'GENERALI INA ASSITALIA',
 :canale_1 => 'Gerenza Roma',
 :interlocutore => 'Zimatore',
 :area => 'Technology',
 },
{:canale_1 => 'Gerenza Bologna',
 :interlocutore => 'Pane',
 :note_operative => 'Verificare apertura accordo',
 :compagnia => 'REALE MUTUA',
 :area => 'Technology',
 },
{:compagnia => 'ITAS',
 :canale_1 => 'Direzione Milano',
 :area => 'Technology',
 },
{:canale_1 => 'Direzione Milano',
 :interlocutore => 'Zilli',
 :note_operative => 'No riass x decennali postume',
 :compagnia => 'CATTOLICA',
 :area => 'Technology',
 },
{:canale_1 => 'Direzione Milano',
 :interlocutore => 'Guidi',
 :compagnia => 'FONDIARIA',
 :area => 'Technology',
 },
{:compagnia => 'ACE',
 :note_operative => 'Rischi >10mio',
 :canale_1 => 'Direzione Milano',
 :area => 'Technology',
 },
{:compagnia => 'AIG',
 :note_operative => 'Rischi >100mio',
 :canale_1 => 'Direzione Milano',
 :area => 'Technology',
 },
]

more_companies.each do |company|
                   Company.create!(company)
end

# Liability companies seeds

more_companies = [{:compagnia => 'ZURICH',
 :interlocutore => 'Menapace / Provolo',
 :canale_1 => 'Dir. Milano',
 :area => 'Liability',
 },
{:note_operative => 'Rc anche con aziende fatturato inferiore 4mln
RcProdotti anche stand-alone',
 :compagnia => 'ALLIANZ',
 :canale_1 => 'Direzione Padova',
 :interlocutore => 'Maini',
 :aggiornamento => DateTime.strptime('25/03/14', '%d/%m/%y'),
 :area => 'Liability',
 },
{:canale_1 => 'Direzione Padova',
 :interlocutore => 'Fassina',
 :compagnia => 'UNIPOL',
 :area => 'Liability',
 },
{:compagnia => 'QBE',
 :note_operative => 'No programmi internaz.
No automotive
RCP-RECALL: no indiretta, no diretta Usa/Can
RCP: no danni patrim. puri
pr.min.imp 5.000  In RCTOP no problem per retrocover USA; l'export diretto USA non deve essere > 25% totale; premio minimo con export diretto Euro 15000; NO Automotive',
 :interlocutore => 'Pitton',
 :canale_1 => 'Direzione Milano',
 :aggiornamento => DateTime.strptime('14/10/13', '%d/%m/%y'),
 :area => 'Liability',
 },
{:compagnia => 'GENERALI INA ASSITALIA',
 :interlocutore => 'Zimatore',
 :canale_1 => 'Gerenza Roma',
 :area => 'Liability',
 },
{:aggiornamento => DateTime.strptime('23/09/13', '%d/%m/%y'),
 :interlocutore => 'Pane',
 :canale_1 => 'Gerenza Bologna',
 :compagnia => 'REALE MUTUA',
 :note_operative => 'Verificare apertura accordo
RCTOP no problem',
 :area => 'Liability',
 },
{:compagnia => 'AXA',
 :note_operative => 'Facility - capitolati completi x metalmecc e alimentari premio min imp 3.000
"Taylor made" pr.min.imp 20.000',
 :portale => :true,
 :aggiornamento => DateTime.strptime('01/04/14', '%d/%m/%y'),
 :interlocutore => 'Cerretelli',
 :canale_1 => 'Direzione Milano',
 :area => 'Liability',
 },
{:note_operative => 'Premio minimo Euro 3000 imp.li; massimo max concedibile Euro 10mio (aggregato RCTOP)',
 :compagnia => 'CATTOLICA',
 :canale_1 => 'Direzione Milano',
 :interlocutore => 'Furiati',
 :area => 'Liability',
 },
{:compagnia => ' ACE',
 :area => 'Liability',
 },
{:compagnia => 'AIG',
 :area => 'Liability',
 },
{:compagnia => 'CHUBB',
 :area => 'Liability',
 },
{:interlocutore => 'Guidi',
 :canale_1 => 'Direzione Milano',
 :compagnia => 'FONDIARIA',
 :area => 'Liability',
 },
{:compagnia => 'ITAS',
 :canale_1 => 'Direzione Milano',
 :area => 'Liability',
 },
]

more_companies.each do |company|
                   Company.create!(company)
end

# Bond companies seeds

more_companies = [{:canale_1 => 'Direzione Milano',
 :interlocutore => 'Braca',
 :portale => :true,
 :provvigione => 20.00,
 :compagnia => 'TUA ASS.NI',
 :area => 'Bond',
 },
{:canale_1 => 'Direzione Milano',
 :interlocutore => 'Marangio Kesten',
 :provvigione => 14.00,
 :compagnia => 'ELBA',
 :canale_2 => 'ag.Bologna',
 :portale => :true,
 :area => 'Bond',
 },
{:interlocutore => 'Angelo De Benedetto',
 :canale_1 => 'Milano',
 :compagnia => 'AM TRUST',
 :note_operative => 'Iniiziato collaborazione nel 2014; efficacia da provare',
 :provvigione => 15.00,
 :area => 'Bond',
 },
{:canale_1 => 'Tecnico Direzione',
 :interlocutore => 'Schiappa-casse',
 :canale_2 => 'Ag. Modena / Bologna',
 :provvigione => 9.00,
 :compagnia => 'GENERALI',
 :area => 'Bond',
 },
{:provvigione => 15.00,
 :compagnia => 'ZURICH',
 :canale_1 => 'Direzione Milano',
 :interlocutore => 'Panigo',
 :area => 'Bond',
 },
{:compagnia => 'ITAS',
 :canale_1 => 'Gerenza Milano',
 :interlocutore => 'Pudda',
 :area => 'Bond',
 },
{:compagnia => 'ATRADIUS',
 :provvigione => 10.00,
 :interlocutore => 'Picciotto',
 :canale_1 => 'Agenzia Bologna-Ferrara',
 :area => 'Bond',
 },
{:interlocutore => 'Vanni / Emanuela',
 :canale_1 => 'Agenzia Bologna S.Vitale',
 :canale_2 => '/ Ancona',
 :compagnia => 'COFACE',
 :note_operative => 'NO Energie rinnovabili',
 :provvigione => 8.00,
 :area => 'Bond',
 },
{:canale_1 => 'Agenzia Pesaro',
 :interlocutore => 'Agostino',
 :provvigione => 10.00,
 :compagnia => 'SACE BT',
 :area => 'Bond',
 },
{:canale_1 => 'Direzione Milano',
 :interlocutore => 'Garofalo Berta',
 :provvigione => 15.00,
 :compagnia => 'FONDIARIA - SAI',
 :area => 'Bond',
 },
{:provvigione => 15.00,
 :compagnia => 'ALLIANZ',
 :canale_1 => 'Direzione Padova',
 :interlocutore => 'Moggia ??',
 :area => 'Bond',
 },
{:canale_1 => 'Gerenza / Agenzia Bologna',
 :interlocutore => 'Sgarzi',
 :note_operative => 'per importi > € 25.000 almeno 15 gg x affidamento',
 :provvigione => 15.00,
 :compagnia => 'REALE MUTUA',
 :area => 'Bond',
 },
{:provvigione => 12.00,
 :compagnia => 'INA ASSITALIA',
 :canale_2 => 'Ag. Cento',
 :canale_1 => 'Ag. Bologna',
 :interlocutore => 'Cinelli',
 :area => 'Bond',
 },
{:compagnia => 'VITTORIA',
 :provvigione => 11.00,
 :canale_2 => 'Dir. Milano',
 :interlocutore => 'Magda - Moschetti',
 :canale_1 => 'Agenzia Vignola',
 :area => 'Bond',
 },
{:canale_1 => 'Direzione Trieste (ag. Modena)',
 :interlocutore => 'Franchin',
 :provvigione => 10.50,
 :compagnia => 'MILANO - SASA',
 :area => 'Bond',
 },
{:compagnia => 'SACE',
 :note_operative => 'Solo energie rinnovabili
Compet. territoriale EMR e MARCHE',
 :interlocutore => 'Gherardi',
 :canale_1 => 'Modena',
 :area => 'Bond',
 },
{:compagnia => 'GABLE',
 :portale => :true,
 :canale_1 => 'Roma',
 :area => 'Bond',
 },
{:canale_1 => 'Direzione Padova',
 :interlocutore => 'Fassina Golfetto',
 :provvigione => 15.00,
 :compagnia => 'UNIPOL',
 :area => 'Bond',
 },
{:portale => :true,
 :compagnia => 'LIGURIA',
 :provvigione => 10.50,
 :interlocutore => 'Scozza-rella',
 :canale_1 => 'Direzione Milano (ag. Modena)',
 :area => 'Bond',
 },
]

more_companies.each do |company|
                   Company.create!(company)
end

# Credit companies seeds

more_companies = [{:compagnia => 'COFACE',
 :canale_2 => '/ Ancona',
 :canale_1 => 'Agenzia Bologna S.Vitale',
 :interlocutore => 'Vanni / Emanuela',
 :area => 'Credit',
 },
{:compagnia => 'ATRADIUS',
 :interlocutore => 'Picciotto',
 :canale_1 => 'Agenzia Bologna-Ferrara',
 :area => 'Credit',
 },
{:compagnia => 'SACE BT',
 :canale_1 => 'Agenzia Pesaro',
 :interlocutore => 'Agostino',
 :area => 'Credit',
 },
{:compagnia => 'SACE',
 :canale_1 => 'Modena /Milano',
 :interlocutore => 'Gherardi',
 :area => 'Credit',
 },
{:canale_1 => 'Ag. Jesi (Novelli) / Modena (Ferranti-Creatura)',
 :canale_2 => 'Loredana Bombaci (Dir. PD)',
 :compagnia => 'EULER',
 :area => 'Credit',
 },
]

more_companies.each do |company|
                   Company.create!(company)
end

# Residential companies seeds

more_companies = [{:canale_1 => 'Dir. Milano',
 :interlocutore => 'Menapace / Provolo',
 :note_operative => 'Sconto 20% (no su premio catastrofali)',
 :compagnia => 'ZURICH',
 :portale => :true,
 :area => 'Residential',
 },
{:interlocutore => 'Maini',
 :canale_1 => 'Direzione Padova',
 :compagnia => 'ALLIANZ',
 :portale => :true,
 :area => 'Residential',
 },
{:canale_1 => 'Direzione Padova',
 :interlocutore => 'Fassina',
 :portale => :true,
 :compagnia => 'UNIPOL',
 :area => 'Residential',
 },
{:portale => :true,
 :note_operative => 'disponibili x convenzione casa: garanzie aggiuntive concordate, con appendice',
 :compagnia => 'TUA ASS.NI',
 :canale_1 => 'Direzione Milano',
 :aggiornamento => DateTime.strptime('06/02/13', '%d/%m/%y'),
 :area => 'Residential',
 },
{:portale => :true,
 :compagnia => 'GENERALI TORO',
 :note_operative => 'Verificare operatività',
 :interlocutore => '??',
 :canale_1 => 'Gerenza Bologna',
 :area => 'Residential',
 },
{:canale_1 => 'Gerenza Bologna',
 :interlocutore => 'Pane',
 :aggiornamento => DateTime.strptime('23/09/13', '%d/%m/%y'),
 :note_operative => 'Verificare operatività
portale x retail 2014
Convenzioni…?',
 :compagnia => 'REALE MUTUA',
 :area => 'Residential',
 },
{:canale_2 => 'Blue Underwriting',
 :portale => :true,
 :compagnia => 'AIG',
 :canale_1 => 'Direzione Milano',
 :interlocutore => 'Camilla Bassi',
 :area => 'Residential',
 },
{:compagnia => 'ITAS',
 :canale_1 => 'Direzione Milano',
 :area => 'Residential',
 },
]

more_companies.each do |company|
                   Company.create!(company)
end

# Property companies seeds

more_companies = [{:canale_1 => 'Dir. Milano',
 :interlocutore => 'Menapace / Provolo',
 :portale => :true,
 :note_operative => 'Sconto 20% (no su premio catastrofali)',
 :compagnia => 'ZURICH',
 :area => 'Property',
 },
{:portale => :true,
 :note_operative => 'Valutazioni oculate: info per quotazione, poi sopralluogo, quindi conferma quotazione
Terremoto “con attenzione”',
 :compagnia => 'ALLIANZ',
 :canale_1 => 'Direzione Padova',
 :interlocutore => 'Maini',
 :aggiornamento => DateTime.strptime('25/03/14', '%d/%m/%y'),
 :area => 'Property',
 },
{:compagnia => 'UNIPOL',
 :portale => :true,
 :canale_1 => 'Direzione Padova',
 :interlocutore => 'Fassina',
 :area => 'Property',
 },
{:note_operative => 'No Food, Energy, Discariche
info tecniche: Questionari, Ispezioni altre comp., ispezione Qbe
Limiti: 150mln€',
 :compagnia => 'QBE',
 :canale_1 => 'Direzione Milano',
 :interlocutore => 'Viterbori',
 :aggiornamento => DateTime.strptime('14/10/13', '%d/%m/%y'),
 :area => 'Property',
 },
{:compagnia => 'GENERALI INA ASSITALIA',
 :interlocutore => 'Zimatore',
 :canale_1 => 'Gerenza Roma',
 :area => 'Property',
 },
{:note_operative => 'Verificare apertura accordo
Somma assic. minimi 5mln contenuto: merci + macc/attr/arred
Attenzione Terremoto
Rapporto ispettivo (anche di altre compagnie)',
 :compagnia => 'REALE MUTUA',
 :aggiornamento => DateTime.strptime('23/09/13', '%d/%m/%y'),
 :canale_1 => 'Gerenza Bologna',
 :interlocutore => 'Pane',
 :area => 'Property',
 },
{:interlocutore => 'Cerretelli',
 :canale_1 => 'Direzione Milano',
 :aggiornamento => DateTime.strptime('01/04/14', '%d/%m/%y'),
 :premio_minimo => '5.000 imp facility
25.000 taylor made',
 :compagnia => 'AXA',
 :note_operative => 'Facility - capitolato completo: 2 griglie franchigie e limiti',
 :area => 'Property',
 },
{:premio_minimo => '3.000 imp',
 :canale_1 => 'Direzione Milano',
 :interlocutore => 'Catallo',
 :compagnia => 'CATTOLICA',
 :area => 'Property',
 },
{:compagnia => 'FONDIARIA',
 :interlocutore => 'Guidi',
 :canale_1 => 'Direzione Milano',
 :area => 'Property',
 },
{:compagnia => 'ITAS',
 :canale_1 => 'Direzione Milano',
 :area => 'Property',
 },
]

more_companies.each do |company|
                   Company.create!(company)
end

# Multirisk companies seeds

more_companies = [{:interlocutore => 'Menapace / Provolo',
 :canale_1 => 'Dir. Milano',
 :portale => :true,
 :compagnia => 'ZURICH',
 :area => 'Multirisk',
 },
{:portale => :true,
 :compagnia => 'ALLIANZ',
 :interlocutore => 'Maini',
 :canale_1 => 'Direzione Padova',
 :area => 'Multirisk',
 },
{:portale => :true,
 :compagnia => 'UNIPOL',
 :canale_1 => 'Direzione Padova',
 :interlocutore => 'Fassina',
 :area => 'Multirisk',
 },
{:compagnia => 'GENERALI INA ASSITALIA',
 :interlocutore => 'Zimatore',
 :canale_1 => 'Gerenza Roma',
 :area => 'Multirisk',
 },
{:canale_1 => 'Gerenza Bologna',
 :compagnia => 'GENERALI TORO',
 :note_operative => 'Verificare operatività',
 :area => 'Multirisk',
 },
{:note_operative => 'Verificare apertura accordo',
 :compagnia => 'REALE MUTUA',
 :canale_1 => 'Gerenza Bologna',
 :interlocutore => 'Pane',
 :area => 'Multirisk',
 },
{:canale_1 => 'Direzione Milano',
 :compagnia => 'ITAS',
 :area => 'Multirisk',
 },
{:note_operative => 'Premio minimo Euro 3000 imp.li',
 :compagnia => 'CATTOLICA',
 :canale_1 => 'Direzione Milano',
 :interlocutore => 'Catallo',
 :area => 'Multirisk',
 },
{:interlocutore => 'Guidi',
 :canale_1 => 'Direzione Milano',
 :compagnia => 'FONDIARIA',
 :area => 'Multirisk',
 },
]

more_companies.each do |company|
                   Company.create!(company)
end

# Marine companies seeds

more_companies = [{:interlocutore => 'Facchini',
 :canale_1 => 'Dir. Bologna',
 :compagnia => 'ACE',
 :area => 'Marine',
 },
{:interlocutore => 'Maini',
 :canale_1 => 'Direzione Padova',
 :aggiornamento => DateTime.strptime('25/03/14', '%d/%m/%y'),
 :compagnia => 'ALLIANZ',
 :note_operative => 'Nel 2014 aggressivi: cargo',
 :area => 'Marine',
 },
{:compagnia => 'AIG',
 :canale_1 => 'Dir. Milano',
 :area => 'Marine',
 },
{:interlocutore => 'Menapace / Provolo',
 :canale_1 => 'Dir. Milano',
 :compagnia => 'ZURICH',
 :area => 'Marine',
 },
{:compagnia => 'GENERALI INA ASSITALIA',
 :canale_1 => 'Gerenza Roma',
 :interlocutore => 'Zimatore',
 :area => 'Marine',
 },
{:compagnia => 'CHUBB',
 :interlocutore => 'Angelo',
 :canale_1 => 'Direzione Milano',
 :area => 'Marine',
 },
{:note_operative => 'Sì Cargo
No Rame, Caffè, Valori, FineArt, Corpi
Sì auto, moto
S&T: nominativi Estero, no nominativi in Italia
SI' singoli certificati',
 :compagnia => 'CNA',
 :portale => :true,
 :aggiornamento => DateTime.strptime('04/12/13', '%d/%m/%y'),
 :canale_1 => 'Direzione Milano',
 :interlocutore => 'Fabiani',
 :area => 'Marine',
 },
]

more_companies.each do |company|
                   Company.create!(company)
end

# Health companies seeds

more_companies = [{:compagnia => 'ACE',
 :interlocutore => 'Facchino',
 :canale_1 => 'Dir. Bologna',
 :area => 'Health',
 },
{:portale => :true,
 :note_operative => 'Corporate: varie possibilità di scelta x franchigia su IP
Retail: idem Corporate, inoltre polizza "Maxi" - 3 tagli fissi, bassi costi ma con franchigia 24% su IP e 66% su IPM, raddoppio indennizzo se IP uguale o superiore 50%, ADI assist.domicil.integrata',
 :compagnia => 'TUA',
 :canale_1 => 'Direzione Milano',
 :aggiornamento => DateTime.strptime('06/02/13', '%d/%m/%y'),
 :area => 'Health',
 },
{:note_operative => 'Infortuni aziende aderenti a Confindustria (prodotto “Conferme”):
-       IP - Dirigenti 0,68‰ - € 1.000.000 senza franchigia
-       IP - Titolari/Amministratori 0,68‰ - € 300.000 senza franchigia
-       IPM – 1‰ fino 45 anni, 2‰ oltre 45 anni - € 500.000',
 :compagnia => 'ALLIANZ',
 :canale_1 => 'Direzione Padova',
 :aggiornamento => DateTime.strptime('25/03/14', '%d/%m/%y'),
 :area => 'Health',
 },
{:aggiornamento => DateTime.strptime('25/03/14', '%d/%m/%y'),
 :compagnia => 'ALLIANZ WORLD WIDE CARE',
 :note_operative => 'Infortuni contraenza personale per Imprenditori di aziende Confindustria: -       Allianz World Wide tramite “Cassa” x Infortuni e RSM',
 :area => 'Health',
 },
{:canale_1 => 'Dir. Milano',
 :compagnia => 'AIG',
 :portale => :true,
 :area => 'Health',
 },
{:interlocutore => 'Menapace / Provolo',
 :canale_1 => 'Dir. Milano',
 :compagnia => 'ZURICH',
 :area => 'Health',
 },
{:canale_1 => 'Gerenza Roma',
 :interlocutore => 'Zimatore',
 :compagnia => 'GENERALI INA ASSITALIA',
 :area => 'Health',
 },
{:canale_1 => 'Direzione Milano',
 :compagnia => 'CHUBB',
 :area => 'Health',
 },
{:interlocutore => 'Vittorio Scala',
 :compagnia => 'LLOYD'S IO BROKER',
 :provvigione => 15.00,
 :note_operative => 'Condizioni come da F.I. allegato. Clausola “Fine Carriera” come da allegato - 
Franchigia su IP min 3% relativa a 10% fino a €500.000 - Franchigie ipm – vedi tabella di polizza -  
Tassi Morte e IP da 0,70pro mille lordo -  
IPM da 1,30 (sotto i 30 non fumatori) a 2,85 (fumatori 60enni) -  
Limiti fino a €5.000.000 nessun rapporto tra capitali assicurati morte e IP -  
Premio minimo €500 -  
Questionari allegati.',
 :area => 'Health',
 },
{:interlocutore => 'Enrico Nuzzo',
 :provvigione => 18.00,
 :compagnia => 'LLOYD'S RFIB / Stample Halla (shus ltd)',
 :area => 'Health',
 },
]

more_companies.each do |company|
                   Company.create!(company)
end

# MinorHealth companies seeds

more_companies = [{:compagnia => 'METLIFE',
 :note_operative => 'prodotto infortuni e malattia Metlife “ Protezione Junior” dedicato ai bambini di età compresa tra i 3 mesi e i 21 anni. ',
 :aggiornamento => DateTime.strptime('02/07/14', '%d/%m/%y'),
 :interlocutore => 'Zuddas',
 :canale_1 => 'Dir. Milano',
 :area => 'MinorHealth',
 },
{:aggiornamento => DateTime.strptime('30/12/99', '%d/%m/%y'),
 :area => 'MinorHealth',
 },
{:aggiornamento => DateTime.strptime('30/12/99', '%d/%m/%y'),
 :area => 'MinorHealth',
 },
{:aggiornamento => DateTime.strptime('30/12/99', '%d/%m/%y'),
 :area => 'MinorHealth',
 },
]

more_companies.each do |company|
                   Company.create!(company)
end

# Accident companies seeds

more_companies = [{:interlocutore => '??',
 :canale_1 => 'Dir. Bologna',
 :compagnia => 'ACE',
 :portale => :true,
 :area => 'Accident',
 },
]

more_companies.each do |company|
                   Company.create!(company)
end

# Life companies seeds

more_companies = [{:portale => :true,
 :compagnia => 'ZURICH',
 :canale_1 => 'Dir. Milano',
 :area => 'Life',
 },
{:compagnia => 'ALLIANZ',
 :canale_1 => 'Direzione milano',
 :area => 'Life',
 },
{:canale_1 => 'Direzione Milano',
 :portale => :true,
 :compagnia => 'METLIFE',
 :area => 'Life',
 },
{:canale_1 => 'Direzione Padova',
 :compagnia => 'ACE',
 :portale => :true,
 :area => 'Life',
 },
{:compagnia => 'FONDIARIA',
 :canale_1 => 'Direzione Milano',
 :interlocutore => '???',
 :area => 'Life',
 },
{:canale_1 => 'Agenzia Bologna',
 :interlocutore => 'Carboni',
 :note_operative => 'Nel 2014 hanno budget con rappel importanti',
 :compagnia => 'AVIVA',
 :area => 'Life',
 },
{:canale_1 => 'Agenzia Bologna',
 :compagnia => 'UNIQA',
 :area => 'Life',
 },
{:interlocutore => 'Francesco Napoli',
 :compagnia => 'PRAMERICA',
 :area => 'Life',
 },
{:compagnia => 'CATTOLICA PREVIDENZA',
 :portale => :true,
 :canale_1 => 'Direzione Milano',
 :area => 'Life',
 },
]

more_companies.each do |company|
                   Company.create!(company)
end

# Care companies seeds

more_companies = [{:canale_1 => 'Dir. Milano',
 :interlocutore => 'Menapace / Provolo',
 :portale => :true,
 :note_operative => '??',
 :compagnia => 'ZURICH',
 :area => 'Care',
 },
{:canale_1 => 'Direzione milano',
 :compagnia => 'ALLIANZ',
 :portale => :true,
 :area => 'Care',
 },
{:canale_1 => 'Direzione Milano',
 :portale => :true,
 :compagnia => 'METLIFE (CASSA)',
 :area => 'Care',
 },
{:compagnia => 'UNIASSIST (CASSA)',
 :provvigione => 11.00,
 :note_operative => 'Adesione anche di Liberi Professionisti con P.IVA',
 :canale_1 => 'Vittorio Scala',
 :area => 'Care',
 },
{:compagnia => 'FONDIARIA',
 :canale_1 => 'Direzione Milano',
 :interlocutore => '???',
 :area => 'Care',
 },
{:portale => :true,
 :compagnia => 'FILO DIRETTO',
 :interlocutore => 'Carboni',
 :canale_1 => 'Direzione Milano',
 :area => 'Care',
 },
{:canale_1 => 'Agenzia Bologna',
 :compagnia => 'UNIQA',
 :area => 'Care',
 },
{:portale => :true,
 :note_operative => 'Verificare operatività canale comm.le',
 :compagnia => 'GENERALI ITALIA TORO',
 :canale_1 => 'Gerenza Bologna',
 :area => 'Care',
 },
{:compagnia => 'INA ASSITALIA',
 :canale_1 => 'Dir. Roma',
 :interlocutore => 'Zimatore',
 :area => 'Care',
 },
{:compagnia => 'REALE MUTUA',
 :note_operative => 'Verificare operatività',
 :interlocutore => 'Pane',
 :canale_1 => 'Gerenza Bologna',
 :area => 'Care',
 },
{:note_operative => 'Verificare operatività canale comm.le',
 :compagnia => 'UNIQA',
 :canale_1 => 'Ag. Bologna',
 :interlocutore => '??',
 :area => 'Care',
 },
{:compagnia => 'UNISALUTE',
 :canale_1 => 'Dir. Bologna',
 :area => 'Care',
 },
{:compagnia => 'TUA ASSICURAZIONI',
 :note_operative => 'RSM new prodotto
LTC prodotto (provv 35%)',
 :aggiornamento => DateTime.strptime('06/02/13', '%d/%m/%y'),
 :canale_1 => 'Dir. Milano',
 :area => 'Care',
 },
]

more_companies.each do |company|
                   Company.create!(company)
end

# Technical companies seeds

more_companies = [{:compagnia => 'ZURICH',
 :portale => :true,
 :interlocutore => 'Menapace / Provolo',
 :canale_1 => 'Dir. Milano',
 :area => 'Technical',
 },
{:compagnia => 'ALLIANZ',
 :portale => :true,
 :aggiornamento => DateTime.strptime('25/03/14', '%d/%m/%y'),
 :interlocutore => 'Maini',
 :canale_1 => 'Direzione Padova',
 :area => 'Technical',
 },
{:interlocutore => 'Fassina',
 :canale_1 => 'Direzione Padova',
 :portale => :true,
 :compagnia => 'UNIPOL',
 :area => 'Technical',
 },
{:compagnia => 'LLOYD'S LINK',
 :portale => :true,
 :interlocutore => 'Zirano',
 :area => 'Technical',
 },
{:canale_1 => 'Gerenza Roma',
 :portale => :true,
 :compagnia => 'LLOYD'S AEC',
 :area => 'Technical',
 },
{:interlocutore => 'Pane',
 :canale_1 => 'Gerenza Bologna',
 :compagnia => 'REALE MUTUA',
 :note_operative => 'Verificare apertura accordo',
 :area => 'Technical',
 },
{:canale_1 => 'Direzione Milano',
 :compagnia => 'LLOYD'S UIA',
 :portale => :true,
 :area => 'Technical',
 },
{:canale_1 => 'Direzione Milano',
 :compagnia => 'DUAL',
 :area => 'Technical',
 },
{:compagnia => 'TUA',
 :note_operative => 'Rc professionale x Agronomi, Dipendenti Pubblici, Agenti Immobiliari, Mediatori Creditizi, Certificatori Energetici (oltre a Periti, Architetti, Ingegneri, Avvocati, Commercialisti)',
 :portale => :true,
 :aggiornamento => DateTime.strptime('06/02/13', '%d/%m/%y'),
 :area => 'Technical',
 },
{:compagnia => ' ACE',
 :area => 'Technical',
 },
{:compagnia => 'AIG',
 :area => 'Technical',
 },
{:aggiornamento => DateTime.strptime('04/12/13', '%d/%m/%y'),
 :premio_minimo => '1200',
 :compagnia => 'CNA',
 :note_operative => 'Solo professioni atipiche non regolamentate',
 :area => 'Technical',
 },
{:aggiornamento => DateTime.strptime('14/10/13', '%d/%m/%y'),
 :interlocutore => 'Garlschè',
 :compagnia => 'QBE',
 :note_operative => 'Professioni tecniche di certificazione prodotti - Sì professioni non regolamentate
Sì professioni tecniche',
 :area => 'Technical',
 },
]

more_companies.each do |company|
                   Company.create!(company)
end

# Medical companies seeds

more_companies = [{:interlocutore => 'Menapace / Provolo',
 :canale_1 => 'Dir. Milano',
 :compagnia => 'ZURICH',
 :area => 'Medical',
 },
{:compagnia => 'ALLIANZ',
 :canale_1 => 'Direzione Padova',
 :interlocutore => 'Maini',
 :area => 'Medical',
 },
{:interlocutore => 'Fassina',
 :canale_1 => 'Direzione Padova',
 :compagnia => 'UNIPOL',
 :area => 'Medical',
 },
{:compagnia => 'FONDIARIA',
 :note_operative => '??',
 :area => 'Medical',
 },
{:compagnia => 'ASS.CE MILANESE',
 :canale_1 => 'Assimedici',
 :area => 'Medical',
 },
{:canale_1 => 'Direzione Milano',
 :interlocutore => 'Pane',
 :compagnia => 'AM TRUST',
 :area => 'Medical',
 },
{:compagnia => 'SWISSE RE',
 :canale_1 => 'Direzione Milano',
 :area => 'Medical',
 },
{:canale_1 => 'Gerenza Bologna',
 :compagnia => 'REALE MUTUA',
 :note_operative => 'Verificare apertura accordo',
 :area => 'Medical',
 },
{:interlocutore => 'Mancini',
 :canale_1 => 'Agenzia di Pesaro',
 :compagnia => 'GENERALI TORO',
 :area => 'Medical',
 },
]

more_companies.each do |company|
                   Company.create!(company)
end

# Director companies seeds

more_companies = [{:canale_1 => 'Dir. Milano',
 :interlocutore => 'Menapace / Provolo',
 :compagnia => 'ZURICH',
 :area => 'Director',
 },
{:compagnia => 'CNA',
 :note_operative => 'D&O
D&O+PI x Financial Institution',
 :canale_1 => 'Direzione Milano',
 :aggiornamento => DateTime.strptime('04/12/13', '%d/%m/%y'),
 :area => 'Director',
 },
{:portale => :true,
 :compagnia => ' ACE',
 :canale_1 => 'Direzione Padova / Milano',
 :area => 'Director',
 },
{:portale => :true,
 :compagnia => 'LLOYD'S LINK',
 :area => 'Director',
 },
{:canale_1 => 'Gerenza Roma',
 :compagnia => 'LLOYD'S AEC',
 :portale => :true,
 :area => 'Director',
 },
{:aggiornamento => DateTime.strptime('14/10/13', '%d/%m/%y'),
 :canale_1 => 'Gerenza Bologna',
 :compagnia => 'QBE',
 :note_operative => 'D&O',
 :area => 'Director',
 },
{:note_operative => '?? VERIFICARE OPERATIVITA'',
 :compagnia => 'LLOYD'S UIA',
 :canale_1 => 'Direzione Milano',
 :area => 'Director',
 },
{:canale_1 => 'Direzione Milano',
 :portale => :true,
 :compagnia => 'DUAL',
 :area => 'Director',
 },
{:compagnia => 'AIG',
 :area => 'Director',
 },
{:compagnia => 'CHUBB',
 :area => 'Director',
 },
{:compagnia => 'LLOYD'S RFIB',
 :area => 'Director',
 },
{:note_operative => '?? VERIFICARE OPERATIVITA'',
 :compagnia => 'LLOYD'S SATEC',
 :area => 'Director',
 },
]

more_companies.each do |company|
                   Company.create!(company)
end

# Employment companies seeds

more_companies = [{:compagnia => 'ZURICH',
 :area => 'Employment',
 },
{:aggiornamento => DateTime.strptime('30/12/99', '%d/%m/%y'),
 :compagnia => 'CNA',
 :area => 'Employment',
 },
{:compagnia => ' ACE',
 :area => 'Employment',
 },
{:compagnia => 'LLOYD'S LINK',
 :area => 'Employment',
 },
{:compagnia => 'LLOYD'S AEC',
 :area => 'Employment',
 },
{:compagnia => 'QBE',
 :aggiornamento => DateTime.strptime('30/12/99', '%d/%m/%y'),
 :area => 'Employment',
 },
{:compagnia => 'LLOYD'S UIA',
 :area => 'Employment',
 },
{:compagnia => 'DUAL',
 :area => 'Employment',
 },
{:compagnia => 'AIG',
 :note_operative => '* Aziende no USA;
* No sinistri ultimi 3 anni oltre € 10.000;No attive in Servizi Finanziari;
* Disponibile max € 2.500.000 di default;
* Consulenza serv. comunicazione Edelman fino ad € 10.000;
* 2 H di consulenza legale;
* Esperti investigativi;
* Costi di sostituzione del dipendente
* Costi pubblicazione sentenza',
 :brochure => 'Sì',
 :aggiornamento => DateTime.strptime('26/06/14', '%d/%m/%y'),
 :area => 'Employment',
 },
{:compagnia => 'CHUBB',
 :area => 'Employment',
 },
{:compagnia => 'LLOYD'S RFIB',
 :area => 'Employment',
 },
{:compagnia => 'LLOYD'S SATEC',
 :area => 'Employment',
 },
]

more_companies.each do |company|
                   Company.create!(company)
end

# Car companies seeds

more_companies = [{:compagnia => 'ZURICH',
 :portale => :true,
 :interlocutore => 'Menapace / Provolo',
 :canale_1 => 'Dir. Milano',
 :area => 'Car',
 },
{:canale_1 => 'Direzione milano',
 :portale => :true,
 :compagnia => 'ALLIANZ',
 :area => 'Car',
 },
{:portale => :true,
 :compagnia => 'TUA',
 :canale_1 => 'Direzione Milano',
 :area => 'Car',
 },
{:compagnia => 'UNIPOL',
 :portale => :true,
 :canale_1 => 'Direzione Padova',
 :area => 'Car',
 },
{:portale => :true,
 :compagnia => 'FONDIARIA',
 :canale_1 => 'Direzione Milano',
 :interlocutore => 'Papotti',
 :area => 'Car',
 },
{:compagnia => 'AXA',
 :canale_1 => 'Direzione Milano',
 :area => 'Car',
 },
{:compagnia => 'AXA',
 :canale_1 => 'Agenzia Reggio E',
 :area => 'Car',
 },
{:compagnia => 'AVIVA',
 :canale_1 => 'Agenzia Bologna',
 :interlocutore => 'Carboni',
 :area => 'Car',
 },
{:note_operative => 'Top cars',
 :compagnia => 'ALLIANZ',
 :canale_1 => 'Ag. Bologna Giardini',
 :interlocutore => 'Turrini',
 :area => 'Car',
 },
]

more_companies.each do |company|
                   Company.create!(company)
end

# Vehicle companies seeds

more_companies = [{:compagnia => 'FILO DIRETTO',
 :portale => :true,
 :canale_1 => 'Dir. Milano',
 :interlocutore => 'Guerrini',
 :area => 'Vehicle',
 },
{:portale => :true,
 :note_operative => 'Max 50k senza satellitare; fino a 100k con satellitare',
 :compagnia => 'AIG',
 :canale_1 => 'Direzione milano',
 :area => 'Vehicle',
 },
{:canale_1 => 'Dir. Milano',
 :interlocutore => 'Menapace / Provolo',
 :portale => :true,
 :compagnia => 'ZURICH',
 :area => 'Vehicle',
 },
{:portale => :true,
 :compagnia => 'ALLIANZ',
 :canale_1 => 'Direzione milano',
 :area => 'Vehicle',
 },
{:portale => :true,
 :compagnia => 'TUA',
 :canale_1 => 'Direzione Milano',
 :area => 'Vehicle',
 },
{:canale_1 => 'Direzione Padova',
 :compagnia => 'UNIPOL',
 :portale => :true,
 :area => 'Vehicle',
 },
{:portale => :true,
 :compagnia => 'FONDIARIA',
 :interlocutore => 'Papotti',
 :canale_1 => 'Direzione Milano',
 :area => 'Vehicle',
 },
{:canale_1 => 'Ag. Bologna Giardini',
 :interlocutore => 'Turrini',
 :note_operative => 'Top cars',
 :compagnia => 'ALLIANZ',
 :area => 'Vehicle',
 },
{:compagnia => 'NAT SUISSE',
 :note_operative => 'Top cars, SE in presenza di Fine Art',
 :area => 'Vehicle',
 },
{:canale_1 => 'Direzione Milano',
 :interlocutore => 'Carnevali',
 :note_operative => 'Solo flotte libri matricola',
 :compagnia => 'CATTOLICA',
 :area => 'Vehicle',
 },
{:interlocutore => 'Vittorio Scala',
 :note_operative => 'Oltre 100k s.a. con satellitare',
 :compagnia => 'LLOYD'S IO BROKER',
 :area => 'Vehicle',
 },
]

more_companies.each do |company|
                   Company.create!(company)
end

# Legal companies seeds

more_companies = [{:portale => :true,
 :compagnia => 'FILO DIRETTO',
 :interlocutore => 'Guerrini',
 :canale_1 => 'Dir. Milano',
 :area => 'Legal',
 },
{:compagnia => 'ALLIANZ',
 :canale_1 => 'Direzione milano',
 :area => 'Legal',
 },
{:interlocutore => 'Pipotone',
 :canale_1 => 'Direzione Milano',
 :compagnia => 'ROLAND',
 :area => 'Legal',
 },
{:canale_1 => 'Direzione Milano',
 :compagnia => 'EUROP ASSITANCE',
 :portale => :true,
 :area => 'Legal',
 },
{:canale_1 => 'Direzione Torino',
 :portale => :true,
 :compagnia => 'UCA',
 :area => 'Legal',
 },
{:portale => :true,
 :compagnia => 'ARAG',
 :canale_1 => 'Direzione Verona',
 :area => 'Legal',
 },
{:compagnia => 'TUTELA PIREDDA',
 :area => 'Legal',
 },
]

more_companies.each do |company|
                   Company.create!(company)
end

# Nonprofit companies seeds

more_companies = [{:interlocutore => 'Andrea Porro',
 :compagnia => 'LLOYD'S IO BROKER',
 :area => 'Nonprofit',
 },
]

more_companies.each do |company|
                   Company.create!(company)
end

# Benefit companies seeds

more_companies = [{:compagnia => 'ALLIANZ',
 :note_operative => 'Cassa di assistenza Allianz (Previp)
Contraenza Azienda con fatturato minimo 4mln€
Categoria/e completa/e (tutti Impiegati Amministrativi, tutti Dirigenti, tutti….) – estendibile a tutte le famiglie:
- 7 tipologie/livelli di prestazioni
-  Integrativa FASI – con gestione diretta della prestazione anche presso Fasi
-  Minimo 5 teste (categoria completa) – estendibile a famiglia',
 :canale_1 => 'Direzione Padova',
 :aggiornamento => DateTime.strptime('25/03/14', '%d/%m/%y'),
 :area => 'Benefit',
 },
]

more_companies.each do |company|
                   Company.create!(company)
end

# Installation companies seeds

more_companies = [{},
]

more_companies.each do |company|
                   Installation.create!(company)
end

