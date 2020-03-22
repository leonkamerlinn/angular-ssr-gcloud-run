FROM node:alpine

# Create app directory
WORKDIR /usr/src/app

# COPY package.json .
# For npm@5 or later, copy package-lock.json as well
COPY package.json package-lock.json ./

# Install app dependencies
RUN npm install

# Bundle app source
COPY . .

EXPOSE 8080

# Start Node server
# npm run build:ssr && npm run serve:ssr
CMD [ "npm", "run", "build:ssr", "&&", "npm", "run", "serve:ssr" ]