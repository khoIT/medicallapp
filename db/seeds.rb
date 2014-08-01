# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
Medicine.create({drug_name: 'Rivaroxaban', brand:'Xarelto'})
Medicine.create({drug_name: 'Fentanyl patch', brand:'Duragesic'})
Medicine.create({drug_name: 'Warfarin', brand:'Coumadin, Jantoven'})
Medicine.create({drug_name: 'Lactulose', brand:'Generlac'})

Indication.create({content:'Postoperative thrombophylaxis of deep vein thrombosis (DVT) which may lead to pulmonary embolism in patients undergoing knee or hip replacement surgery', medicine_id: 1 })
Indication.create({content:'Treatment of DVT', medicine_id: 1 })
Indication.create({content:'Prevention of stroke and systemic embolism in patients with nonvalvular atrial fibrillation (AF)', medicine_id: 1 })
Indication.create({content:'Treatment of pulmonary embolism', medicine_id: 1 })
Indication.create({content:'Reduction in the risk of recurrence of DVT and pulmonary embolism following initial 6 months of treatment for DVT and/or pulmonary embolism', medicine_id: 1 })
Indication.create({content:'Management of persistent moderate-to-severe chronic pain in opioid-tolerant patients when around-the-clock analgesia is needed for an extended period of time', medicine_id: 2 })
Indication.create({content:'Prophylaxis and treatment of thromboembolic disorders (eg, venous, pulmonary) and embolic complications arising from atrial fibrillation or cardiac valve replacement', medicine_id: 3 })
Indication.create({content:'Adjunct to reduce risk of systemic embolism (eg, recurrent MI, stroke) after myocardial infarction', medicine_id: 3 })
Indication.create({content:'Prevention and treatment of portal-systemic encephalopathy (including hepatic precoma and coma)', medicine_id: 4 })
Indication.create({content:'Treatment of constipation', medicine_id: 4 })
