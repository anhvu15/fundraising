require 'rails_helper'
describe 'List All Projects' do
	it "should list all fundraising projects" do
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

		visit projects_path
		expect(page).to have_text  "4 Projects"
		# Show  all atrributes of the first event
		expect(page).to have_text "Start-Up Project"
		expect(page).to have_text project1.description[0..9]
		expect(page).to have_text "http://project-a.com"		
	end
end