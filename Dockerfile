# Use the official Node.js image as base
FROM node:20

# Set the working directory inside the container
WORKDIR /saqui_ashley_site

# Copy package.json and package-lock.json first
COPY saqui_ashley_site/package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app files
COPY saqui_ashley_site/ ./

# Expose port 7775
EXPOSE 7775

# Start the development server on port 7775 and bind it to all network interfaces
CMD ["npx", "react-scripts", "start", "--port", "7775", "--host", "0.0.0.0"]
