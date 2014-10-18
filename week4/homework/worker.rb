module Worker
  def self.work n = 1
    x = nil
    n.times { x = yield }
    x
  end
end