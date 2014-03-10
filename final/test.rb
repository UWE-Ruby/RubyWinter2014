
		@current_state = {:A1 => :X, :A2 => nil, :A3 => nil,
		                  :B1 => nil, :B2 => nil, :B3 => nil, 
		                  :C1 => nil, :C2 => nil, :C3 => nil}

p @current_state

  	new_state = @current_state.keep_if do | key, value|
  		value.nil?
  	end

  	p new_state

    p new_state.keys.count