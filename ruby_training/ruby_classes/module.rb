

require './module_a'
require './module_b'

puts Mod_a.fun(Mod_a::A,2) , Mod_b.fun(Mod_b::B,3)

class ModuleTesting
  include Mod_a
  def printdata
    print Mod_a::A
  end
end

obj = ModuleTesting.new
obj.printdata
#====================================================================
# mixin
module A
  def a1
    print "1"
  end
  def a2
    print "2"
  end
end
module B
  def b1
    print "3"
  end
  def b2
    print "4"
  end
end

class Sample
  include A
  include B
  def s1
  end
end

samp = Sample.new
samp.a1
samp.a2
samp.b1
samp.b2
samp.s1