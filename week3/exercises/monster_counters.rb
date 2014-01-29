require "./monsters"


puts " - dangers:"
puts $monsters.map {|m| m[:dangers]}
  .flatten                                        # aggregate an Array of all the dangers
  .reduce(Hash.new(0)) {|h, d| h[d] = h[d]+1; h}  # count all
  .sort_by {|d| 0-d[1]}[0..1]                     # take the top two
  .map {|a| a[0]}                                 # clean up



# or within a loop
puts " - dangers - "
x = $monsters.inject(Hash.new(0)) do |h, m|
  m[:dangers].each() do |d|
    h[d] = h[d] + 1
  end
  h
end

puts x.sort_by {|d| 0-d[1]}[0..1]
  .map{|a| a[0]}                   # is there a more idomatic way to grab out the keys?
