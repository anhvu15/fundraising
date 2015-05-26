# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

project1 = Project.create(name: "Start-Up Project",
               		   description: "Start-up project for new graduated students",
               		   target_pledge_amount: 100.00,
               		   pledging_ends_on: 1.day.from_now,
               		   website: "http://project-a.com")

		project2 = Project.create( name: "Non-profit websites ",
               		     description: "Community residents donate money to build the website",
               			target_pledge_amount: 350.00,
               			pledging_ends_on: 30.day.from_now,
               			website: "http://website-community.com")

		project3 = Project.create(name: "Charity event",
               		   description: "Church gathering events to help orphans",
               		   target_pledge_amount: 250.00,
               		   pledging_ends_on: 25.day.from_now,
               		   website: "http://church.com")

		project4 = Project.create(name: "World Cup preparation",
               		   description: "News conference for a new channels",
               		   target_pledge_amount: 100.00,
               		   pledging_ends_on: 1.day.from_now,
               		   website: "http://worldcup.com")

