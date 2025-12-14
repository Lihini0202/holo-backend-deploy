# 1. Use the image you already built (it has the user 'choreo' inside)
FROM lihini3/holo-backend:final

# 2. Switch to the existing user (Do NOT run useradd again)
USER 10014

# 3. Start the app
CMD ["./start.sh"]
