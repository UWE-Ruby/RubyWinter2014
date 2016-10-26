module Worker
   def self.work t = 1
      r = nil
      t.times { r = yield }
      r
   end
end
