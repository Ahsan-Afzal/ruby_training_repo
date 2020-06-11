#Getting Current date and time

time = Time.new()
print time.inspect

time = Time.now
print time.inspect

puts time.year
puts time.month
puts time.day
puts time.hour
puts time.min
puts time.sec
puts time.usec
puts time.zone

#=======================================
# Creating a date
time = Time.local(2020,05,06)

puts time
time = Time.local(2020,05,06,15,13)
p time.to_a
#========================================================================
#Conversions to sec and milisec

#time = Time.now.to_i
time = Time.now.to_f
puts time
time =Time.at(time)
#==================================================
# Output Formate
puts time.strftime("%H:%M:%S %Y:%m:%d %A %B")

now = Time.now
past = now - 3600

print "#{now} :: #{past}"