# Session18

## Challenge seventeen description

1. Create a Bash script that creates a log file and writes a message to /var/log/custom.log every 10 seconds.

2. create a systemd unit file for the script so that it can be run as a service.

3. Open a text editor and create a new file named logger.service .

4. Save the file and exit the text editor.
   Copy the logger.service file to the /etc/systemd/system/ directory.

5. Run the command `sudo systemctl daemon-reload` to reload the systemd configuration.

6. Start the logger service by running the command `sudo systemctl start logger.service`.

7. Check the status of the service by running the command `sudo systemctl status logger.service`. It should show that the service is active and running.

8. Verify that the logging is working correctly by checking the /var/log/custom.log file for new log entries.

9. To stop the service, run the command `sudo systemctl stop logger.service`.

10. To enable the service to start automatically on boot, run the command `sudo systemctl enable logger.service`

### Hints to remember

- **Not using the correct syntax for grep in systemd unit files.** When using grep to search for a string in a systemd unit file, it's important to use the correct syntax to ensure that the search is performed correctly.
  One common mistake is to use the grep command without the -E or --extended-regexp option, which can cause the search to miss certain patterns.
  For example, if you want to search for a string that contains a dot (.), you should use the -E option with the search pattern enclosed in quotes, like this: grep -E "string.with.dot" /etc/systemd/system/myunit.service.

- **Not checking the systemd logs for errors.**
  When using systemd to manage services, it's important to check the logs to ensure that the service is running correctly and to troubleshoot any errors that may occur.
  One common mistake is to not check the logs for errors, which can make it difficult to diagnose and fix issues. You can view the logs for a systemd unit using the journalctl command.
  For instance, to view the logs for the myunit.service unit, you can use the command journalctl -u myunit.service. Make sure to check the logs regularly and to investigate any errors or warnings that are reported.

# bash-script-tutorial

Bash scripts related to every session of this tutorial will be stored in isolated branches named after their session name.

## How to use

You can access the main code and the challenge answer key related to every session at their own branch.
