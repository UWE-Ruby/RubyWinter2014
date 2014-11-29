class CodeTimer

  def self.time_code n=1
    start = Time.now
    n.times {yield}
    Time.now - start
  end

end
