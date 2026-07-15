FROM ginuerzh/gost:latest

EXPOSE 8080

ENTRYPOINT []

CMD sh -c "gost -L=ws://0.0.0.0:$PORT?auth=sudo:sudo -F=direct:// -D"
