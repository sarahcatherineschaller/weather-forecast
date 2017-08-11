class WeatherForecast::CLI

	def call 
		list_cities
		choose_city
	end

	def list_cities 
		puts "Choose a city to see the current weather forecast:"
		#'here doc's are like giant strings"
		puts <<-DOC.gsub /^\s*/, ''
			1.  New York, NY
			2. Boston, MA
			3. San Francisco, CA
			4. Austin, TX 
			5. Seattle, WA
			6. Orlando, FL
			7. Phoenix, AZ
			8. Washington, D.C.
			9. Denver, CO
			10. Hartford, CT
		DOC
	end

	def choose_city
		input = gets.strip
		until input.to_i > 0 && input.to_i < 11
			puts "Please enter a number 1-10"
			input = gets.strip
		end
		forecast_list
    end

    def forecast_list
    	puts "Do you want to know the weather:"
    	puts "1. Right now"
    	puts "2. Hourly"
    	puts "3. 5 day forecast"
    	forecast_choice
    end

    def forecast_choice
    	input = gets.strip
    	until input.to_i > 0 && input.to_i < 4
			puts "Please enter a number 1-3"
			input = gets.strip
		end
		case input 
		when "1"
			puts "The temperature is currently 72° F"
		when "2"
			puts "6:00pm: Showers, 67° F"
			puts "7:00pm: Few Showers, 67° F"
			puts "8:00pm: Cloudy, 68° F"
			puts "9:00pm: Cloudy, 69° F"
		when "3"
			puts "Tuesday:     Cloudy   —   High/Low  82/64   —   Precip  10%"
			puts "Wednesday:   Sunny   —   High/Low  84/68   —   Precip  0%"
			puts "Thursday:    Partly Cloudy   —   High/Low  82/68   —   Precip  0%"
			puts "Friday:      PM Rain   —   High/Low  78/69   —   Precip  60%"
			puts "Saturday:    Cloudy   —   High/Low  82/70   —   Precip  20%"
		end
		# puts "Enter 'forecast list' to go back, 'cities' to see the list of cities, or 'exit'"
		# input = gets.strip.downcase 
		# until input == "forecast list" || input == "cities" || input == "exit"
		# 	puts "Please enter your choice again"
		# case input
		# when "forecast_list"
		# 	forecast_list
		# when "cities"
		# 	list_cities
		# when "exit"
		# 	puts "Goodbye!"
		# end
	end





end