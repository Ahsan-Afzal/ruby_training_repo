require 'bigdecimal'
require 'bigdecimal/util'




#conver to complex and int

print '5i'.to_c
puts '0.5'.to_d
puts "15".to_i

#=========================================================================

puts String.try_convert("abc")

print "Hello from " + self.to_s

#========================================================================
puts "ab"*4

a = "hello "
a << "world"
a.concat(33)  # 33 is converted into character

#===========================
# Match regular Expression
puts "abc" <=> "bcd"

if "hi there".match(/hi/)
  puts "match"
end

print "hi there".match(/hi/)


# regular expression

a="2abc3"
b="2.5"

if(a.match(/\d...\d/))
  puts("match found")
else
  puts("not found")
end

if(a.match(/\d\.\d/))
  puts("match found")
else
  puts("not found")
end

if(b.match(/\d.\d/))
  puts("match found")
else
  puts("not found")
end

#=======================================================================================
print a.length

print "".empty?
print " ".empty?

puts "abbc".count('b')

print 'Aan'.insert(1,'hs')

print "ABC".downcase.upcase.capitalize

#=======================================================================================
# formating
print "how are you ".split(" ")

print "Name\rr".chop.chomp
puts"  Hello  ".strip

temp_str = "abc"
temp_str.clear
print temp_str

print "what are you doing".gsub(/[aeiou]/,"*")
puts "a"+"b"<<"c".concat("d")
puts "google".index('o', 2)
