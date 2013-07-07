require 'pg'
require 'pry'
require 'httparty'
require 'json'

print "Press (1) to search (2) to quit "
answer = gets.chomp

while answer != '2'
print "Search For Your Movie Title: "
name = gets.chomp.to_s.gsub( ('  '' , '+' '))

 movie = JSON(HTTParty.get("http://www.omdbapi.com/?i=&t=#{name}"))
  puts movie

sql = "INSERT INTO moviez (title, year, rated, released, runtime, genre, director, writer, actors, plot, imdbID) VALUES (
'#{movie['Title']}', '#{movie['Year']}' , '#{movie['Rated']}', '#{movie['Released']}', '#{movie['Runtime']}' , '#{movie['Genre']}',

'#{movie['Director']}', '#{movie['Writer']}', '#{movie['Actors']}', '#{movie['plot'].gsub( " ' ", " \\ ' ")}', '#{movie['imdbID']}' );"

conn = PG.connect(:dbname => 'moviez', :host => 'localhost')
conn.exec(sql)
conn.close

end