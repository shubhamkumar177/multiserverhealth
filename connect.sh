for i in `cat list.sh`
do
ssh $i hostname
cat host.sh | ssh $i
done
