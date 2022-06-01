cat /proc//sys/vm/swappiness
echo default is 60
echo change to 10
sleep 5
cat /etc/sysctl.conf
echo add last line- vm.swappiness=10
echo then reboot system
sleep 15

