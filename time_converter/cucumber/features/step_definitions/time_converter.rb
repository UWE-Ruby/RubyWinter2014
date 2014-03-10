
class Time_Converter
	#list of Time zones and their UTC Offset
	UTC_HOUR_OFFSET = {'HST'=>-10, 'AKST'=>-9, 'PST'=>-8,'MST'=>-7, 'CST'=>-6, 'EST'=>-5}

	def initialize hours, minutes, seconds
		@hours = hours
		@minutes = minutes
		@seconds = seconds
	end

	def selected_timezone selected_timezone
		@selected_timezone = selected_timezone
	end

	def convert
		convert_hrs
		convert_min
		convert_sec
		converted_time = "#{convert_hrs}:#{convert_min}:#{convert_sec}"
		puts converted_time
		return converted_time
	end

	def convert_hrs
		UTC_HOUR_OFFSET.each |k,v| do
			if k == selected_timezone
				converted_time = (v + @hours) + 12
				return converted_time
			else
				puts "whoops something went wrong"
			end
		end
	end

	def convert_min
		@minutes
	end

	def convert_sec
		@seconds
	end

#end

#		TIMEZONES.each do |k,v|
#			if k == @selected_timezone
#				time_conversion = @hours + v
#				puts time_conversion
#				converted_time = time_conversion
#				return converted_time
#			end
#		end