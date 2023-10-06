FROM node:18-alpine
ENV NODE_ENV=production
WORKDIR /app
COPY ["node-docker/package.json", "node-docker/package-lock.json*", "./"]
RUN npm install --production
COPY . .
CMD ["node", "server.js"]
