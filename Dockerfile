FROM ginuerzh/gost:latest

# Expose the default proxy port
EXPOSE 8080

# Run gost as a WebSocket (ws) proxy with authentication
CMD sh -c "gost -L=ws://sudo:sudo@0.0.0.0:$PORT"
