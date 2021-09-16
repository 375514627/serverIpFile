touch temp
curl -o temp http://api.k780.com/?app=ip.local&appkey=10003&sign=b59bc3ef6191eb9f747dd4e83c99f2a4&format=json
sleep 8
grep -Po 'ip[" :]+\K[^"]+'  temp  > ip
sleep 2
rm temp
git add ip 
git commit -m "time:`date +%s`"
git push