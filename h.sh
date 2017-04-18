echo "top cpu processing.........."
echo "pid cpu-load pname"
ps aux|sort -nrk3|head|awk '{print $2" "$3""$11 }' > psout
cat psout
read -p "enter threshold levels" th
while IFS=read line
do
pno=$( echo $line|awk '{print $1}' )
cpuload=$(echo $line|awk '{print $2}')
if (( $ (echo "$cpuload > $th"|bc -l)));
then 
kill $pno
fi
done < "psout"
