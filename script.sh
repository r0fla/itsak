#provision-script

#update package list
apt-get update
#installing the requested packages
apt-get install -y neovim python apache2 docker

#checking that everything is installed and saving it in a logfile. 
log=everything_is_awsome.txt
printf "Log File - " > $log
date >> $log
dpkg -l | grep python3 >> $log
dpkg -l | grep neovim >> $log
dpkg -l | grep apache2 >> $log

