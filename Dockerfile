FROM ginuerzh/gost:latest

EXPOSE 8080
EXPOSE 1080

ENTRYPOINT []

CMD sh -c "gost -L=ws://0.0.0.0:1080?auth=sudo:sudo -F=direct:// -D"
