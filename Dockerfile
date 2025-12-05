# Pull your pre-built image from Docker Hub
FROM lihini3/holo-backend:latest

# Expose the port (Choreo needs to know this)
EXPOSE 8000

# Run the start command (same as before)
CMD ["./start.sh"]
