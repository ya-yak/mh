file = open("/etc/rc.local", "w")

file.write("bash /home/ubuntu/mh/server_setup.sh")

file.close();