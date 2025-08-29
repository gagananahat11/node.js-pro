
FROM node:18
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN chmod -R +x ./node_modules/.bin
EXPOSE 3000
CMD [ "npm", "start" ]
