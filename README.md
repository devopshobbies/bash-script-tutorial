# Session12

## Challenge eleven description

- Challenge 1:
  Write a curl command to upload a file to a server using HTTP POST method with a custom header and verbose output. Assume the server endpoint is "https://example.com/upload" and the file path is "/path/to/file". Use "My-Header: value" as the custom header.

- Challenge 2:
  Write a curl command to test if a website's SSL certificate is valid. Assume the website URL is "https://example.com".

- Challenge 3:
  Write a curl command to scrape data from a website and save it to a file. Assume the website URL is "https://example.com" and you want to save the HTML content to a file called "output.html".

### Hints to remember

- It's important to handle errors that may occur. If you don't handle errors, your script may continue executing even if the request fails, which can cause unexpected behavior. To handle errors, you can use the -f or --fail option, which causes curl to exit with an error status code if the request fails.

- to make requests with URLs that contain special characters, it's important to properly quote the URL to avoid unexpected behavior. If you don't quote the URL, special characters such as spaces, ampersands, and question marks can be interpreted by the shell and cause issues. To quote the URL, you can use single quotes (') around the entire URL, or you can escape special characters using backslashes (\).

# bash-script-tutorial

Bash scripts related to every session of this tutorial will be stored in isolated branches named after their session name.

## How to use

You can access the main code and the challenge answer key related to every session at their own branch.
