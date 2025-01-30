read -p "Server IP: " SERVER_IP
docker-compose run --rm openvpn ovpn_genconfig -u udp://$SERVER_IP
docker-compose run --rm openvpn ovpn_initpki
docker-compose up -d

read -p "Client Name: " CLIENT_NAME
docker-compose run --rm openvpn easyrsa build-client-full $CLIENT_NAME nopass
docker-compose run --rm openvpn ovpn_getclient $CLIENT_NAME > ./$CLIENT_NAME.ovpn