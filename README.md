# Session13

## Challenge twelve description

- Challenge 1:
  Modify the net-utils script to allow the user to input a domain name as an argument, and then use the 'ping' command to check the availability of that domain. The script should output whether the domain is available or not.

- look for "time" in the lines to determine if it's available or not.

- Challenge 2:
  Modify the net-utils script to check the status of a list of ports provided in a text file. The script should output the status of each port in the file.

- Challenge 3:
  Modify the net-utils script to output the number of connections to a specific port provided by the user. The script should ask the user to enter the port number, and then output the number of connections to that port.

### Hints to remember

- Before using a net-util such as ping, traceroute, or netstat in your Bash script, it's important to check if the utility is installed on the system.
  run `command -v` to ensure and if it's not installed and returns non-zero exit code then `sudo apt-get install -y net-tools` on Ubuntu/Debian to install them. Some tools like traceroute are not included in net-tools.

- it's important to handle errors that may occur. For example, if you're using ping to check the availability of a remote server, the request may fail due to network issues or other factors. If you don't handle errors, your script may continue executing even if the request fails, which can cause unexpected behavior.
  To handle errors, you can use conditional statements to check the exit status code of the net-util command ($?) and take appropriate action based on the result.

# bash-script-tutorial

Bash scripts related to every session of this tutorial will be stored in isolated branches named after their session name.

## How to use

You can access the main code and the challenge answer key related to every session at their own branch.
