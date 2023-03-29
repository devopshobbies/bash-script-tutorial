#!/bin/bash
<<curl
Basic usage of curl(Client for URLs):

How to make a simple HTTP request
How to save the response to a file
How to output the response to the terminal

Advanced usage of curl:

Using headers to customize the request
Setting request methods (GET, POST, PUT, DELETE)
Uploading files with curl
Following redirects
Using authentication (basic, digest, OAuth, etc.)

Real-world senarios:

Downloading a file from a website
Uploading a file to a server
Scraping data from a website
Testing API endpoints
Automating tasks with curl
Useful options and their explanations:

-o or --output : Specifies the output file
-H or --header : Adds a header to the request
-X or --request : Specifies the request method
-F or --form : Uploads a file with a multipart/form-data request
-L or --location : Follows HTTP redirects
-u or --user : Specifies authentication credentials
-v or --verbose : Prints more information about the request and response
-k or --insecure : Allows insecure SSL connections
-I or --head : Fetches the response headers only
Common use cases:

Downloading a file from a remote server: curl -O https://example.com/file.txt
Sending data to an API endpoint: curl -X POST -H "Content-Type: application/json" -d '{"key": "value"}' https://example.com/api/endpoint
Testing a website's SSL certificate: curl -v https://example.com
Uploading a file to a server: curl -X PUT -T file.txt https://example.com/upload



# MORE examples:
 
# Sending HTTP requests: Curl can be used to send HTTP requests to web servers. Here's an example of sending a GET request to a server:
curl https://www.example.com/
# This will retrieve the HTML content of the page.

# Specifying HTTP method: Curl can send requests using different HTTP methods. Here's an example of sending a POST request to a server:
curl -X POST https://www.example.com/api/data -d "name=John&age=25"

# This will send a POST request to the server with the specified data.
# Specifying headers: Curl can send headers along with the request.
curl -H "Authorization: Bearer token" https://www.example.com/api/data


# This will send a GET request with a custom "Authorization" header.

# Uploading files: Curl can upload files to a server using the HTTP POST method. Here's an example of uploading a file to a server:
curl -X POST https://www.example.com/upload -F "file=@/path/to/file"
#This will upload the specified file to the server.

# Following redirects: Curl can follow HTTP redirects automatically. Here's an example of following a redirect:
curl -L https://www.example.com
#This will follow any redirects that occur and retrieve the final page.

# Setting timeouts: Curl can set timeouts for connection and response. Here's an example of setting a timeout for 10 seconds:
curl --connect-timeout 10 --max-time 10 https://www.example.com
#This will set the connection and response timeout to 10 seconds

# Verbose mode: Curl can be run in verbose mode to display more information about the request and response. Here's an example of running curl in verbose mode:
curl -v https://www.example.com
#This will display more information about the request and response, including headers and response code.

# Output to file: Curl can save the response to a file. Here's an example of saving the response to a file:
curl -o output.html https://www.example.com
#This will save the HTML content of the page to a file called "output.html".


# HTTPS requests: Curl can make HTTPS requests by default. Here's an example of making an HTTPS request:
curl -s https://www.example.com/api/data
#This will make an HTTPS request to the server silently (due to -s)