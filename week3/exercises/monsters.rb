$monsters = []

$monsters << {
	:name => 'Zombie',
	:nocturnal => false,
	:dangers => ['bites', 'scratches'],
	:vulnerabilities => ['fire', 'decapitation'],
	:legs => 2
}
$monsters << {
	:name => 'Mummy',
	:nocturnal => false,
	:dangers => ['bites', 'scratches', 'curses'],
	:vulnerabilities => ['fire', 'decapitation', 'cats'],
	:legs => 2
}
$monsters << {
	:name => 'Vampire',
	:nocturnal => true,
	:dangers => ['bites', 'hypnosis'],
	:vulnerabilities => ['wood', 'decapitation', 'crosses', 'holy_water', 'garlic', 'daylight'],
	:legs => 2
}
$monsters << {
	:name => 'Werewolf',
	:nocturnal => true,
	:dangers => ['bites', 'scratches'],
	:vulnerabilities => ['silver'],
	:legs => 4
}
$monsters << {
	:name => 'Blob',
	:nocturnal => false,
	:dangers => ['suffocation'],
	:vulnerabilities => ['CO2', 'ice', 'cold'],
	:legs => 0
}

puts "Number of nocturnal monsters"
puts $monsters.select {| monster | monster[:nocturnal] }.count

puts "Names of nocturnal monsters"
puts $monsters.select {| monster | monster[:nocturnal] }.map{ |monster| monster[:name]}.join(", ")

puts "Number of legs"
puts $monsters.map {|monster| monster[:legs]}.inject(:+)

puts "Two Most Common vulnerabilities"
vuln_count = Hash.new(0)
$monsters.each do |monster|
  monster[:vulnerabilities].each do |vuln|
  	vuln_count[vuln]+=1
  end
 end

 p vuln_count.max_by {|vuln| vuln[]}