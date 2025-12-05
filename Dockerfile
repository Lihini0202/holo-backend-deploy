# 1. Pull your image
FROM lihini3/holo-backend:latest

# 2. Create the 'choreo' user with UID 10014 (Security Requirement)
# (Using 'useradd' because python:slim is Debian-based)
RUN useradd -u 10014 -m choreo

# 3. Ensure permissions are correct for the new user
# (Make sure start.sh is executable and readable)
RUN chmod +x ./start.sh && \
    chown 10014 ./start.sh

# 4. Switch to the non-root user
USER 10014

# 5. Expose the port
EXPOSE 8000

# 6. Run the start command explicitly
CMD ["./start.sh"]
