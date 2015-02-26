# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create([
	{ name: "Test User"},
  { name: "Marco" },
  { name: "Meghan" },
  { name: "Tim" },
  { name: "Ellie" },
])

Homeworld.create([
	{ planet_type: "Feral", summary: "Characters from feral planets are tough. They make for good soldiers.", description: "Feral planets are the most dangerous habitable planets of the Imperium. Whether due to lack of resources or wildlife that preys upon humans, only the the most resilient of its people survive and life has a tendency to be brutal and short. Those that do survive, however, have the potential to become some of the most resilient soldiers of the Imperium. Only the bravest of missionaries attempt to bring the light of the Emperor to such planets, and the church has a policy of considering tribal religion to be a form of Emperor worship. However, the Inquisition must still investigate feral planets so that heretics may not use them for refuge."},
  { planet_type: "Hive", summary: "Characters from hive planets are resourceful and streetwise. Their skills are applicable to a wide range of careers.", description: "Hive planets are defined by their sprawling cities. Hive cities are prime examples of economic disparity: As new levels are developed, they are literally built over the levels below. The wealthy sit in their high towers while the lowest classes are consigned to the crime and squalor of the underhive. Hive planets are the factory planets of the Imperium, producing the vast majority of manufactured goods."},
  { planet_type: "Imperial", summary:"Characters from imperial planets are well-versed in the customs of the Imperium. They come from all walks of life.", description: "Imperial planets are dominated by religion and fear of the unknown. Imperial planets supply soldiers for the Imperial Guard and follow all of the laws of the Imperium. In return, they are granted protection from the aliens and heretics that seek to exterminate the faithful. It is an understatement to say that imperial citizens favor traditional ways of life: deviation is often treated as heresy, punishable by death."},
  { planet_type: "Void", summary:"Void characters thrive in space.", description: "Space travel is a slow affair. While warp travel is possible, most cannot navigate the impossible geometry of the warp. As a result, many lives begin and end on space vessels. Those born on a ship and thus without a home planet are known as the voidborn."}
])

careers = ['Adept','Arbitrator','Assassin','Cleric','Guardsman','Psyker','Scum','Tech-Priest'];

Career.create([
	{ name: "Adept", description: "Adept description"},
  { name: "Arbitrator", description: "Arbitrator description"},
  { name: "Assassin", description: "Assassin description"},
  { name: "Cleric", description: "Cleric description"},
  { name: "Guardsman", description: "Guardsman description"},
  { name: "Psyker", description: "Psyker description"},
  { name: "Scum", description: "Scum description"},
  { name: "Tech-Priest", description: "Tech-Priest description"}
])

feral_traits = Trait.create([
  { name:"Speak Language(Tribe)", description:"Feral characters can speak the language of their tribe."},
  { name:"Iron Stomach", description:"Feral characters are used to eating anything necessary to survive. They receive a +10 bonus to any tests involving ingesting poisonous, undesirable, or tainted food. They also get a +10 bonus to tests involving vomiting."},
  { name:"Primitive", description:"Feral characters are not used to civil society. They take a -10 penalty to tech-use tests and tests involving formal or civil situations."},
  { name:"Rite of Passage", description:"Feral characters are used to getting injured. A feral character may make an INT test to attempt to stop blood loss as a full action. If successful, they manage to stop the bleeding."},  
  { name:"Wilderness Savvy", description:"Feral characters have experience hunting for food. Navigation(surface), Survival, and Tracking count as basic skills for feral world characters."}
])

hive_traits = Trait.create([
  { name:"Speak Language(Hive)", description:"Hive characters can speak the local dialect of their city."},
  { name:"Accustomed to Crowds", description:"Hive characters are used to weaving through dense crowds. Crowds do not count as difficult terrain for a hive character, and they take no penalty towards the AG test to keep their balance when running or charging through a dense crowd."},
  { name:"Caves of Steel", description:"Hive characters have spent their lives surrounded by machinery. Tech-use counts as a basic skill for a hive character."},
  { name:"Hivebound", description:"Hive characters have likely spent their whole lives within their city, and have no experience living without modern conveniences. They take a -10 penalty on all survival tests, as well as a -5 penalty to all INT tests while outside of a modern city."},
  { name:"Wary", description:"Hive characters are always on guard and keeping an eye out for trouble. They get a +1 bonus to initiative rolls."}
])

imperial_traits = Trait.create([
  { name:"Blessed Ignorance", description:"Imperial characters know that curiosity leads to heresy. As a result, they take a -5 penalty on forbidden lore tests."},
  { name:"Hagiography", description:"Imperial characters have studied the history of the church and its saints. Common Lore(Imperial Creed), Common Lore(Imperium), and Common Lore(War) count as basic skills for an imperial character."},
  { name:"Liturgical Familiarity", description:"Exposure to the teachings of the church is unescapable on imperial planets. Literacy and Speak Language(High Gothic) count as basic skills for an imperial character."},
  { name:"Superior Origins", description:"Imperial characters believe that they are more favored than other by the Emperor. They receive a +5 bonus to WP tests."}
])

void_traits = Trait.create([
  { name:"Speak Language(ship)", description:"A void character can speak the language of the ship they spent their life."},
  { name:"Charmed", description:"Void characters have been exposed to the warp, and unknowingly channel its power. As a result, void characters are unnaturally lucky. When a void character spends(but not burns) a fate point, they may roll a D10. On a natural roll of 9, they may keep the fate point."},
  { name:"Ill-Omened", description:"Many people are often uneasy around those unaccustomed to planetbound life. Void characters take a -5 penalty on any FEL test when interacting with non-void characters."},
  { name:"Shipwise", description:"Void characters treat the intricacies of space travel as commonplace. Navigation(Stellar) and Pilot(Spacecraft) count as basic skills for a void character."},
  { name:"Void Accustomed", description:"Having spent their life on a ship, a void character is immune to space travel sickness. Additionally, zero or low gravity environments do not count as difficult terrain for a void character."}
])

traittemplate ={ name:"", description:""}


feral = Homeworld.find_by planet_type: 'Feral'
feral_careers = [3,5,6,7];

feral_careers.each do |career|
	feral.careers << Career.find(career);
end

feral_traits.each do |trait|
  feral.traits << trait
end

hive = Homeworld.find_by planet_type: 'Hive'

hive_careers = [2,3,4,5,6,7,8];

hive_careers.each do |career|
	hive.careers << Career.find(career);
end

hive_traits.each do |trait|
  hive.traits << trait
end

imperial = Homeworld.find_by planet_type: 'Imperial'

imperial_careers = [1,2,3,4,5,6,7,8];

imperial_careers.each do |career|
	imperial.careers << Career.find(career);
end

imperial_traits.each do |trait|
  imperial.traits << trait
end

void = Homeworld.find_by planet_type: 'Void'

void_careers = [1,2,3,4,6,7,8];

void_careers.each do |career|
	void.careers << Career.find(career);
end

void_traits.each do |trait|
  void.traits << trait
end




