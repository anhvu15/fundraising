require 'rails_helper'
describe 'Show Project Page' do 

	it 'Should list detail of  project' do
		project1 = Project.create(name: "Start-Up Project",
               		   description: "Start-up project for new graduated students",
               		   target_pledge_amount: 100.00,
               		   pledging_ends_on: 1.day.from_now,
               		   website: "http://project-a.com")
		visit project_path(project1)
		expect(page).to have_text("Start-Up Project")
		expect(page).to have_text("Start-up project for new graduated students")
		expect(page).to have_text("$100")
		expect(page).to have_text("http://project-a.com")		
	end
end