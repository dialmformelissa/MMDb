# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Format.create([{ name: 'DVD'}, {name: 'Bluray'}, {name: 'Digital'}])
App.create([{name: 'CinemaNow'}, {name: 'Vudu'}, {name: 'VHX'}, {name: 'Amazon'}, {name: 'iTunes'}, {name: 'Google Play'}, {name: 'Disney Movies Anywhere'}])
Definition.create([{name: 'SD'}, {name: 'HD'}, {name: 'HDX'}])
