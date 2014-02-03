#!/usr/bin/ruby2.0
#
class Worker

  def initialize
  end

#  # works on 1st 3 tests. Gives 6 on 4th test
#  def self.work
#    yield
#  end
#  # some failures:
#  #
#  # returns n. times always returns the receiver. ?!
#  # (EDIT - I will understand this better after the third failure)
#  def self.work n=1
#    n.times { yield }
#  end
#
#  #returns nil for any block. I don't understand this one at all.
#  def self.work reps = 1
#    i = 0
#    while i <= reps
#      i += 1
#      yield
#    end
#  end
#
#  # always returns 1. OK, so the block is a side effect, upto always returns
#  # truthiness. Why doesn't it return reps? Oh, it returns the receiver!
#  # (Thanks, irb and ri. No thanks to you, ruby-doc.org.) 
#  def self.work reps=1
#    1.upto(reps){ yield }
#  end
 
  # The block acts as a side effect, so we need to capture what happens in the
  # block. Not sure I like this approach, but it is reasonably concise and 
  # works. 
  def self.work reps=1
    1.upto(reps){ @result = yield }
    @result
  end

end

