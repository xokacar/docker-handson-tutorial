FROM node:21-slim

WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of your application code into the container
COPY . .

EXPOSE 3000

CMD ["npm", "run", "dev"]
