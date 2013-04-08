$file = "/var/www/stats/index.html";
$local = "./data";
`touch $local`;
`echo '<title>Pi Info</title>' >> $local`;
`echo 'Information' >> $local`;
`sudo vcgencmd measure_temp >> $local`;
`sudo mv $local $file`;
