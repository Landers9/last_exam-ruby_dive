# Start the CGI program that receives and returns the data
require 'cgi'
cgi = CGI.new
# After receiving the data, return a response in HTML format
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  # Take out the received data with cgi ['input'] and assign it to a local variable
  # Get information from the landmark'input'
  get = cgi['input']
  #Return response in HTML
  "<html>
    <body>
      <p>The received String is as follows</p>
      <p>String：#{get}</p>
    </body>
  </html>"
}
