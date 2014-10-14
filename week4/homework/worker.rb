class Worker

    def self.work(n=0)
    	result = nil
	    if n > 0
            n.times{ |stuff| result = yield(stuff) }
        result
        else
 	    result = yield
    end

end

end