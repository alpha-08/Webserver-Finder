# Webserver-Finder
This bash scrip finds out the available IPs either hosting website or other kind of data within a given range of IP's.
You need to install Nmap before running this script on your machine.

**Use example:**

~#./script.sh

~#192.168.10.3-255

**Idea behind script:**

I created this script to look at the range of IP addresses within a subnet which are hosting some kind of data and are alive. This gave me a webserver IP which was hosting a Git reporsitory exposed (URL:https://x.x.x.x/) without any authentication/authorization measure applied.
Repository hosted at mentioned URL comprised log file which contain sensitive data related to a network device configuration, commands, admin users, groups, password hash, 
list of installed packages and their versions, file/user/group permissions, SSH Key directory of the hosted system.
