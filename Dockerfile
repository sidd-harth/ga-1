FROM node:18

WORKDIR /usr/app

COPY package*.json /usr/app

RUN npm install
# If you are building your code for production
# RUN npm ci --omit=dev

# Bundle app source
COPY . .

EXPOSE 3000
CMD [ "node", "index.js" ]