#!/bin/bash
yum -y update
yum -y install httpd


myip=`curl http://192.168.1.134/latest/meta-data/local-ipv4`

cat <<EOF > /var/www/html/index.html
<html>
<body>
<h2>Hello World from PlayQ Test </h2>
</body>
</html>
EOF

sudo service httpd start
chkconfig httpd on
