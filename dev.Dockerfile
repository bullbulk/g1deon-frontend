FROM node:20-alpine

# Set the Node environment to development to ensure all packages are installed
ENV NODE_ENV development
# Change our current working directory
WORKDIR /app
# Copy over `package.json` and lock files to optimize the build process
COPY package.json ./
COPY package-lock.json ./
# Install Node modules
RUN npm install
# Copy over rest of the project files
COPY . .
# Expose port 5173 for the SvelteKit app and 24678 for Vite's HMR
EXPOSE 5173
EXPOSE 24678
# Run `yarn dev` and set the host to 0.0.0.0 so we can access the web app from outside
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]
