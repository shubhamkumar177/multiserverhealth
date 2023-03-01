echo "`df -h |sed "1d"`" |while read line
do
a=`echo $line |awk -F ' ' '{print $(NF -1)}' | sed s/%//g`
if [ $a -gt 10 ]
then
        echo "$line"
fi
done
