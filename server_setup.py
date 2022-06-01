file = open("/etc/systemd/system/mh.service", "w")

file.write('''

[Unit]

Description=mh

[Service]

ExecStart=/usr/local/bin/mh/server_setup.sh

[Install]

WantedBy=multi-user.target

''')

file.close();