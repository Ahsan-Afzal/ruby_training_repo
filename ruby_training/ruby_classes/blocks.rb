
#def test_block
#  print "In a function"
#  yield
#end

#test_block { puts "in a block" }

#===========================================================
# block with parameters

# def param_block
#   puts "in a fucnton"
#   yield 5,10
# end
# param_block { |a,b| puts "in a block params are #{a} and #{b} " }

#==============================================
def test(&abc)
  abc.call
end
test { puts "Hello World!"}

BEGIN {

  puts "BEGIN code block1"
}

END {

  puts "END code block1"
}
BEGIN {

  puts "BEGIN code block2"
}

END {

  puts "END code block2"
}