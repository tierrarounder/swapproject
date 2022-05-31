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

SwapAlloc () {
  echo "$SWAP"
  SWAPSIZE="${SWAP}G"
  echo "$SWAPSIZE"
}


#
# Ask if wish to continue or quit
#
read -rp "Do you wish to continue (Y/n): " LETSGO
if [[ "$LETSGO" == "Y" ]]; then
echo "Let's get started!"
read -rp "Swapfile Size 2G or 4G (2,4): " SWAP
SwapAlloc
exit
else 
echo "Bye!"
fi
