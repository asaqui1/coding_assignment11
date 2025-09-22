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

# Set environment variables for React
ENV PORT=7775
ENV HOST=0.0.0.0

# Start the development server
CMD ["npx", "react-scripts", "start", "--host", "0.0.0.0"]
