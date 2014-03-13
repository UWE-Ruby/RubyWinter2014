class AllChars

def doit a
  puts a
  doit a.succ
end

end

c = AllChars.new()
c.doit("a")