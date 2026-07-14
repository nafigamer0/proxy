FROM teddysun/xray:latest

# Create the Xray server configuration directly
RUN echo '{\
  "inbounds": [{\
    "port": 8080,\
    "protocol": "vless",\
    "settings": {\
      "clients": [{"id": "a1b2c3d4-e5f6-7a8b-9c0d-1e2f3a4b5c6d"}],\
      "decryption": "none"\
    },\
    "streamSettings": {\
      "network": "ws",\
      "wsSettings": {"path": "/api/v1/status"}\
    }\
  }],\
  "outbounds": [{"protocol": "freedom"}]\
}' > /etc/xray/config.json

EXPOSE 8080

CMD ["xray", "run", "-config", "/etc/xray/config.json"]
