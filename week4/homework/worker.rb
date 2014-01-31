
class Worker
  def self.work how_many_times=1
    result = nil
    how_many_times.times {result = yield}
    result
  end
end
