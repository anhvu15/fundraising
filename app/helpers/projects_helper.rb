module ProjectsHelper
	def display_currency(number)
		number_to_currency(number)
	end
	def display_usa_date(date)
		 date.strftime("%m-%d-%y")
	end
end
