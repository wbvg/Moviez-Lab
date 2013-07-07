require 'pg'
require 'pry'
require 'httparty'
require 'json'

#Define DB in moviez.sql
in psql 'CREATE DATABASE Movies'
psql -d movies -f movies.sql

# connect to Db
conn = PG.connect(:dbname => 'movies', :host => 'localhost')

# Boring tern to read the title to search for

conn.exec( "select * from movies") do | result|
  result.each do |row|
#binding.pry
  end
end

when case =! q


print "Search For Your Movie: "
name = gets.chomp.split



print "dob: "
dob = gets.chomp
print "relationship: "
rel = gets.chomp
print "city:"
city = gets.chomp

sql = "INSERT INTO people (first, last, dob, relationship, city) VALUES ('#{name[0]}', '#{name[1]}' , '#{dob}', '#{rel}', '#{city}' );"

binding.pry




# require 'pg'
# require 'pry'

# conn = PG.connect(:dbname => 'db_name', :host => 'localhost')
# conn.exec( "select * from TABLE table_name") do | result|
#   result.each do |row|
#     puts row['a1']
#   end
# end
