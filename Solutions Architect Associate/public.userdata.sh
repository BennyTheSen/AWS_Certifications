#!/usr/bin/env bash
su ec2-user
sudo yum install httpd -y
sudo service httpd start
sudo su -c "cat > /var/www/html/index.html <<EOL
<html>
  <head>
    <title>Test Title</title>
    <style>
      html, body {background: #00; padding:0; margin:0; }
      img {display: block; margin 0px auto; }
    </style>
  </head>
  <body>
    <img src:='https://media.giphy.com/media/Nx0rz3jtxtEre/giphy.gif' height='100%' />
  </body>
</html>
EOL"