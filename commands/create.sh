
read -p "Client Name: " CLIENT_NAME
docker-compose run --rm openvpn easyrsa build-client-full $CLIENT_NAME nopass
docker-compose run --rm openvpn ovpn_getclient $CLIENT_NAME > ./$CLIENT_NAME.ovpn