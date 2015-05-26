require 'rails_helper'
describe 'A Project' do 
	it 'has expired if the project is in the past' do
		project = Project.create(name: "Start-Up Project",
               		   description: "Start-up project for new graduated students",
               		   target_pledge_amount: 100.00,
               		   pledging_ends_on: -10.day.from_now,
               		   website: "http://project-a.com")
		expect(project.expired).to eq(true)
	end
	it 'has not expired if the project is in the future' do
		project = Project.create(name: "Start-Up Project",
               		   description: "Start-up project for new graduated students",
               		   target_pledge_amount: 100.00,
               		   pledging_ends_on: 10.day.from_now,
               		   website: "http://project-a.com")
		expect(project.expired).to eq(false)
	end
	it 'has expired if date is missing' do
		project = Project.create(name: "Start-Up Project",
               		   description: "Start-up project for new graduated students",
               		   target_pledge_amount: 100.00,
               		   website: "http://project-a.com")
		expect(project.expired).to eq(true)
	end
end