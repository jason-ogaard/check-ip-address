check-ip-address
================

This is a shell script that will check your external IP address and email a specified email address if it has changed.

-The paths located in the script assume that this repository is checked out to your home directory.
-The script requires that you have the 'mail' command available.
-You MUST change your.email@domain.com to an email address that you have access to on line 16


To set up a cron job to run this script every 60 minutes do the following:

1. In a terminal edit your crontab file by typing crontab -e (may need to sudo the command)
2. Add this line to that file: */60 * * * * ~/check-ip-address/checkip.sh

-If you choose to put this repository in a different location make sure you use the correct location.
-If you want to run the script more or less often you can change the 60 to whatever number of minutes you desire.

For more information about creating cron jobs visit: http://www.cyberciti.biz/faq/how-do-i-add-jobs-to-cron-under-linux-or-unix-oses/
