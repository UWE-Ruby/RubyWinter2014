class Worker

  def initialize
  end

  def self.work n=1
    yield
  end

end
