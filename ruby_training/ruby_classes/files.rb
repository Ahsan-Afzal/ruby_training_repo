#================================
# Reading file

file = File.open("data.txt")

file_data = file.readlines
p file_data.map(&:chomp )

file_data = File.read("data.txt").split
p file_data

File.foreach("data.txt"){|line| p line*2 }
file.close
#===================================================
#writing files
#File.open("data.txt","a") {|file| file.write "#{Time.now}"}
#
File.write("data.txt", "data...", mode: "a")

# Renaming a file
File.rename("data.txt", "data1.txt")
File.rename("data1.txt", "data.txt")

# File size in bytes
p File.size("data.txt")

# Does this file already exist?
p File.exists?("data.txt")

# Get the file extension,
p File.extname("data.txt")


# Get the file name without the directory
p File.basename("data.pdf")

# Get the path for this file, without the file name
p File.dirname("data.pdf")

# Is this actually a file or a directory?
p File.directory?("data.txt")

p File.stat("data.txt")

p Dir.glob("*.rb")

#Dir.mkdir("testing")
require 'fileutils'
p FileUtils.compare_file("data.txt", "log.txt")
