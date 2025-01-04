FROM teddysun/xray:24.12.31

RUN apk update && apk add curl wget wireguard-tools-wg-quick monit jq net-tools

RUN wget -O /usr/share/xray/geoip.dat https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat
RUN wget -O /usr/share/xray/geosite.dat https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat
RUN wget -O /usr/share/xray/geoip_IR.dat https://github.com/chocolate4u/Iran-v2ray-rules/releases/latest/download/geoip.dat
RUN wget -O /usr/share/xray/geosite_IR.dat https://github.com/chocolate4u/Iran-v2ray-rules/releases/latest/download/geosite.dat

COPY ./start_xray.sh /start_xray.sh
COPY ./stop_xray.sh /stop_xray.sh
COPY ./start_wg.sh /start_wg.sh
COPY ./stop_wg.sh /stop_wg.sh

COPY entrypoint.sh entrypoint.sh

COPY ./wg_template.conf /wg_template.conf
COPY wg_monit /wg_monit
COPY ./xray /etc/monit.d/xray

CMD ["./entrypoint.sh"]
