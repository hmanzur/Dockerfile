ARG tag="lts"

FROM node:$lts

# Set workdir
WORKDIR /usr/src/app

# Copy package.json
COPY package*.json ./

# Install only production
RUN npm install --production

# Copy project files
COPY . .

# Expose port
EXPOSE 3000

# Start server
ENTRYPOINT [ "npm", "start" ]
