module ProjectsHelper
	def display_currency(number)
		number_to_currency(number)
	end
	def display_usa_date(date)
		 date.strftime("%m-%d-%y")
	end
	def display_date(project)
		return "All Done!" if project.expired
		display_usa_date(project.pledging_ends_on)<< "-"<<distance_of_time_in_words(Time.now,project.pledging_ends_on)
	end
end
