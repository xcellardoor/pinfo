$num = 0;
$file = "/var/www/stats/index.html";
$local = "./data";
sub temp(){
while(){
print "ran";
`touch $local`;
`echo '<title>Pi Info</title>' >> $local`;
`echo '<h2>Information<h2><br>' >> $local`;
`sudo vcgencmd measure_temp >> $local`;
`echo '<br>Process count:' >> $local`;
`ps aux | wc -l >> $local`;
`sudo mv $local $file`;
sleep(60);
}
}

temp();
