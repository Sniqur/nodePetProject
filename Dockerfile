FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json first to leverage cached Docker layers
COPY /app/package*.json ./

# Install any necessary dependencies
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Expose the port that your app runs on (default for Express is 3000)
EXPOSE 80

# Command to run the application
CMD ["node", "app.js"]
