A simple docker container with OpenVPN, nothing more nothing less

# How to use

`docker run -it -v $(pwd):/mnt --cap-add=NET_ADMIN --device /dev/net/tun:/dev/net/tun --workdir /mnt openvpn --config openvpn.conf`

or 

`docker run -it -v $(pwd):/mnt --net host --workdir /mnt openvpn --config openvpn.conf`
