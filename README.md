# Session19

## Challenge eighteen description

- Challenge 1:
  Create a cron job that runs every day at 8:30am and runs a script called "backup.sh" located in the home directory.

- Challenge 2:
  Create a cron job that runs every hour on the hour and runs a command that clears the contents of a log file called "access.log".

- Challenge 3:
  Create a cron job that runs every weekday at 5pm and sends an email to a specific email address with the contents of a log file called "error.log".

### Hints to remember

- **Not specifying the full path to files or commands in cron jobs.** When creating a cron job, it's important to specify the full path to any files or commands that the job requires. This is because the cron job environment may not have the same $PATH variable as your user environment, which can cause the job to fail if it can't find the required files or commands.
  To avoid this issue, always specify the full path to files and commands in your cron job. For example, instead of using some_command, use /usr/bin/some_command.

- **Not checking the cron job logs for errors.**
  When creating a cron job, it's important to check the logs to ensure that the job is running correctly and to troubleshoot any errors that may occur. One common mistake is to not check the logs for errors, which can make it difficult to diagnose and fix issues. The logs for cron jobs are usually stored in /var/log/syslog or /var/log/cron.log, depending on your system.
  Make sure to check the logs regularly and to investigate any errors or warnings that are reported. You can also redirect the output of your cron job to a log file using the >> operator, like this: \_ \* \* \* \* some_command >> /var/log/myjob.log 2>&1.

# bash-script-tutorial

Bash scripts related to every session of this tutorial will be stored in isolated branches named after their session name.

## How to use

You can access the main code and the challenge answer key related to every session at their own branch.
