# no "include" means class and not module
# create a "class level method" which uses "self." Does not rely on a particular instance.

class Worker
  # define a class level method
  
  def self.work t = 1
    # this works but use inject
    #r = nil
  	#t.times { r = yield }
    #r

    t.times.inject(nil) { yield }
  end

end