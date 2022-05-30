# bash script for manipulating swapfile settings
#
#!/bin/bash
echo '		RAM			SWAP	'
echo '		<=1Gb			2Gb		'
echo '		2-4Gb			2Gb		'
echo '		 8Gb			4Gb		'
echo '		>8Gb			2-4Gb	'
echo '      '
free -h
#
# Ask if wish to continue or quit
#
read -rp "Do you wish to continue (Y/n): " LETSGO
if [[ "$LETSGO" == "Y" ]]; then
echo "Let's get started!"
exit
else 
echo "Bye!"
fi
