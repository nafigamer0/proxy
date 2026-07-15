FROM ginuerzh/gost:latest

EXPOSE 8080

ENTRYPOINT []

CMD sh -c "gost -L=wss://sudo:sudo@0.0.0.0:8080 -D"
