# Tucson Health Insurance Solutions
My website source material to help other insurance agents get rolling with a health insurance sales setup; I'm also building up SQL codes for cataloging CMS Medicare data. Right now all this project is HTML files being served up with Nginx. I'm building up to a PostgREST to streamline the server.

# I'm going to keep away from templating language and just guide you through my setup


# Debian 12 Quickmount Instructions:
Move everything in this /website/ folder to your server in the location: /var/www/tucsonhealthinsurancesolutions/
drop that .bashrc into the main directory ~/ to save yourself some sanity. Source it with the command:
source .bashrc
sudo apt-get install ufw git python-certbot-nginx rsync nginx
sudo ufw allow 80
	*** Confirm firewall down on that port; Test with command: ufw status ***
sudo ufw allow 153
	*** Most providers have port 153 pre-blocked because it is commonly abused. You need to ask them to unblock it; They will normally only do it after 30 days of active server time. ***
audo upgrade -y
sudo apt-get upgrade -y
	*** Take files from /etc/nginx/sites-available/ and plug it into your own server. link them up afterwards with the following two commands; Ignore the mail file if you are forgoing mail for now ***
ln -s /etc/nginx/sites-available/tucsonhealthinsurancesolutions /etc/nginx/sites-enabled/
ln -s /etc/nginx/sites-available/mail_tucsonhealthinsurancesolutions /etc/nginx/sites-enabled
s reload nginx

# Setup the email
certbot --nginx

# After that you should be good to go. You now have a quality, efficent server for emails and your buisness. If you shop around you can do it for ~$1.99/month?

# This project is inspired by Luke Smith's work. Checkout his guide for something a little more indepth: https://www.youtube.com/watch?v=3dIVesHEAzc