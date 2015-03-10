# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Game.create!(home_team: 'Indiana Pacers', away_team: 'Milwaukee Bucks', game_time: DateTime.parse('March 12 2015 7:00pm'))
Game.create!(home_team: 'Washington Wizards', away_team: 'Memphis Grizzlies', game_time: DateTime.parse('March 12 2015 7:00pm'))
Game.create!(home_team: 'Utah Jazz', away_team: 'Houston Rockets', game_time: DateTime.parse('March 12 2015 9:00pm'))
Game.create!(home_team: 'San Antonio Spurs', away_team: 'Cleveland Cavaliers', game_time: DateTime.parse('March 12 2015 9:30pm'))
Game.create!(home_team: 'Los Angeles Lakers', away_team: 'New York Knicks', game_time: DateTime.parse('March 12 2015 10:30pm'))