#
# Checking modules is loaded
#

echo -n "Loading module MPT 3 SAS -> "

if [ $(/sbin/lsmod |grep -i mpt3sas|wc -l) -gt 0 ] ; then 
	echo "Module MPT 3 SAS loaded succesfully"
	sleep 2 # we need to wait for disks to be detected so other processes don't randomly explode
	else echo "Module MPT 3 SAS is not loaded "
fi
