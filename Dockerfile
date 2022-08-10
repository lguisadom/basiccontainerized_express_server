FROM node:14.19.3-alpine3.14
WORKDIR /app
COPY ./app/package*.json /app/
RUN npm install
COPY ./app /app
EXPOSE 3000
CMD ["node", "index.js"]
