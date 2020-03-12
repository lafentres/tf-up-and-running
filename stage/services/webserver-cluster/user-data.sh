#!/bin/bash

cat > index.html <<EOF
<html>
<head>
<title>AHHH!</title>
</head>
<body style='background-color:#623CE4;'>
<h1 style='text-align:center;'>AHHHHHHHHHH!!!!!!</h1>
<iframe width='560' height='315' src='https://www.youtube.com/embed/pF51RwYbKUI' frameborder='0' allow='accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture' allowfullscreen style='display:block;margin:0 auto;'></iframe>
<p style='text-align:center;'>DB address: ${db_address}</p>
<p style='text-align:center;'>DB port: ${db_port}</p>
</body>
</html>
EOF

nohup busybox httpd -f -p ${server_port} &