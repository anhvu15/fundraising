require 'rails_helper'
describe 'Navigation Between Project Pages' do 
	it 'should navigate to list page from show page' do 
		project = Project.create(name: "Start-Up Project",
               		   description: "Start-up project for new graduated students",
               		   target_pledge_amount: 100.00,
               		   pledging_ends_on: 1.day.from_now,
               		   website: "http://project-a.com")

		visit project_path project
		click_link "All Projects"
		expect(current_path).to eq(projects_path)
	end

	it 'Should navigate from show page to list page' do
		project = Project.create(name: "Start-Up Project",
               		   description: "Start-up project for new graduated students",
               		   target_pledge_amount: 100.00,
               		   pledging_ends_on: 1.day.from_now,
               		   website: "http://project-a.com")
		visit projects_path
		click_link project.name
		expect(current_path).to eq(project_path project)
	end
end