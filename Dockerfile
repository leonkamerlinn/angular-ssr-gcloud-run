FROM node:alpine

# Create app directory
WORKDIR /usr/src/app

# COPY package.json .
# For npm@5 or later, copy package-lock.json as well
COPY package.json package-lock.json ./

# Install app dependencies
RUN npm install
RUN npm build:ssr

# Bundle app source
COPY . .

EXPOSE 4000

# Start Node server
#pm run build:ssr && npm run serve:ssr
CMD [ "npm", "serve:ssr" ]