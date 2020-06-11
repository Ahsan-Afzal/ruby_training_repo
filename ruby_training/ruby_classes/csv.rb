require 'csv'

p CSV.read("data.csv")

p CSV.parse("1,one\n2,two\n3,three")

table = CSV.parse(File.read("data.csv"),headers: true)
p table[2]["name"]

p table.by_col[0]
p table.by_col[1]

p CSV.parse("1,2,3",converters: :numeric)

#=====================================================================
# creating csv files

names = [[1,"ali"],[2,"ahmad"],[3,"osama"]]
p names.map { |a| a.join(",")}.join("\n")
