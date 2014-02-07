# Sarah Wheeler
# 1/28/14
# Ruby 110

#  Monster Questions

# 1. How many monsters are nocturnal?

	$monsters.count { |m| m[:nocturnal] }


# 2. What are the names of the monsters that are nocturnal?

	$monsters.select { |m| m[:nocturnal]}.collect { |m| m[:name]} 


# 3. How many legs do all our monsters have?

	$monsters.inject(0) do |total, m| 
		total += m[:legs] 
	end


# 4. What are the 2 most common dangers and vulnerabilities?

	d_list, v_list = Hash.new(0), Hash.new(0)

	d = $monsters.map { |m| m[:dangers] }.flatten
	d_array = d.each { |m| d_list[m] += 1 }
	d_list = d_array.sort_by { |k, v| v }[0..1]

	v = $monsters.map { |m| m[:vulnerabilities] }.flatten
	v_array = v.each { |m| v_list[m] += 1 }
	v_list = v_array.sort_by { |k, v| v }[0..1]

