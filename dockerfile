FROM node

WORKDIR /usr/src/example-express

COPY package*.json ./
RUN npm install

COPY . .

ENV PORT=8081
CMD [ "node", "index.js" ]
