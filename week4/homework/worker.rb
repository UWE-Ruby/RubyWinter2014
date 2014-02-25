#Neil Woodward, Homework Week 4

class Worker 

  def self.work (n=1)
	  n.times.inject(nil) { yield }
   
  end

end
