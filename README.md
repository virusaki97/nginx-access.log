# nginx-access.log
this script automates the sending of nginx access logs to a bot or private telegram chat

Commands:
1. Connect to ssh server and check python and pip instalation
sudo apt install python3
sudo apt install python3-pip
2. Create a telegram bot from telegram "BotFather" bot
3. sudo pip3 install telegram-send
4. telegram-send --configure
  In the shell that appears we put the token of the bot and press enter.
  After initialization, we give the bot the command /start, after which we send it the password generated by the console.
5. We create the script.sh script that runs the command tail -f /var/log/nginx/access.log which with the help of the telegram-send library we send to the bot
6. We create the run.sh script that monitors the access.log file and the first modification of this file runs the run.sh script that generates a log file that sends it to the bot