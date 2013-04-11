$num = 0;
$file = "/var/www/stats/index.html";
$local = "./data";
sub temp(){
print "ran but not loop";
while(){
print "ran";
`touch $local`;
`echo '<title>Pi Info</title>' >> $local`;
`echo 'Information' >> $local`;
`sudo vcgencmd measure_temp >> $local`;
`sudo mv $local $file`;
sleep(60);
}
}

temp();
