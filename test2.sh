
free -h
sleep 5

SwapAlloc () {
  echo "$SWAP"
  SWAPSIZE="${SWAP}G"
  echo "$SWAPSIZE"
}

read -rp "Swapfile Size 2G or 4G (2,4): " SWAP

SwapAlloc

sudo fallocate -l $SWAPSIZE /swapfile
sudo chmod 600/swapfile
sudo mkswap /swapfile
sudo swapon /swapfile

exit

