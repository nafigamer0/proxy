FROM ginuerzh/gost:latest

EXPOSE 8080
EXPOSE 1080

ENTRYPOINT []

CMD sh -c "gost -L=ws://sudo:sudo@0.0.0.0:$PORT -F=direct:// -D"
