# 1. Pull your final image (which already has the user 'choreo' inside)
FROM lihini3/holo-backend:final

# 2. Switch to Root temporarily to ensure permissions
USER root

# 3. Make sure the start script is executable (Fixes potential Windows permission bugs)
RUN chmod +x ./start.sh

# 4. Switch to the EXISTING user 'choreo' (Do NOT run useradd again)
USER choreo

# 5. Open the port
EXPOSE 8000

# 6. Run the app
CMD ["./start.sh"]
