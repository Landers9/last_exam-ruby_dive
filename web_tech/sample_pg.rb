# Use the pg library
require 'pg'
Connect to goyaDB from ruby with # PG :: connect (dbname: "goya")
# Store the connection information in a variable named connection
connection = PG::connect(dbname: "goya")
connection.internal_encoding = "UTF-8"
begin
  Manipulate PostgreSQL using the # connection variable
  # .exec "select weight, give_for from crops;" in goyaDB
  Execute the # SQL statement directly and store the result in the result variable
  result = connection.exec("select weight, give_for from crops;")
  # Process each fetched line
  result.each do |record|
      # Take each line and output it on the terminal with puts
      puts "The size of bitter gourd：#{record["weight"]}　Who sold：#{record["give_for"]}"
  end
ensure
  #Finally, .finish disconnects the connection to the database
  connection.finish
end
