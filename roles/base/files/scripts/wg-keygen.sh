if [ ! -f /etc/wireguard/*key ]
  then
    wg genkey > privatekey
    wg pubkey < privatekey > publickey
fi

