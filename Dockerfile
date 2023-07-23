FROM debian

ENV DEBIAN_FRONTEND noninteractive

RUN apt -y update

RUN apt -y install openvpn

RUN apt -y autoremove

RUN rm -rf /var/lib/apt/lists/*

RUN groupadd openvpn

RUN useradd -g openvpn openvpn

USER openvpn

EXPOSE 1194/udp

ENTRYPOINT ["openvpn"]
