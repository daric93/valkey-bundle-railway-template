FROM valkey/valkey-bundle:latest

# Expose the Valkey port
EXPOSE 6379

# Start Valkey server with authentication, persistence, and bind to all interfaces
CMD ["valkey-server", \
     "--requirepass", "${VALKEY_PASSWORD}", \
     "--bind", "0.0.0.0", \
     "--port", "6379", \
     "--save", "60", "1", \
     "--loglevel", "warning"]
