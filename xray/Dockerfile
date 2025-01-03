FROM teddysun/xray:24.12.18

RUN apk update && apk add curl wget wireguard-tools-wg-quick monit jq net-tools

COPY entrypoint.sh entrypoint.sh

RUN wget -O /usr/share/xray/geoip.dat https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat
RUN wget -O /usr/share/xray/geosite.dat https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat
RUN wget -O /usr/share/xray/geoip_IR.dat https://github.com/chocolate4u/Iran-v2ray-rules/releases/latest/download/geoip.dat
RUN wget -O /usr/share/xray/geosite_IR.dat https://github.com/chocolate4u/Iran-v2ray-rules/releases/latest/download/geosite.dat

COPY ./start_xray.sh /start_xray.sh
RUN chmod +x /start_xray.sh

COPY ./wg_template.conf /wg_template.conf
COPY ./monit_template /monit_template
COPY ./xray /etc/monit.d/xray

CMD ["./entrypoint.sh"]
