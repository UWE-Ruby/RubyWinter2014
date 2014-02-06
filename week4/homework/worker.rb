class Worker
  def self.work t=1
    t.times.inject(nil){yield}
  end
end