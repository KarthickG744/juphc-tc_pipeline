FROM node:18

WORKDIR /usr/src/app

# Copy dependency files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application files
COPY server.js ./
COPY public ./public

# Expose port
EXPOSE 3000

# Start the application
CMD ["node", "server.js"]
