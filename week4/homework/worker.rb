# encoding: utf-8
#
class Worker
  def self.work(x = 1)
    x.times { @y = yield }
    @y
  end
end
