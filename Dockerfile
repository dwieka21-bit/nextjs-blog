FROM node:14-alpine
WORKDIR /app

COPY package*.json ./
RUN npm i --only=prod

COPY . .
ENV NODE_ENV production
EXPOSE 3000
CMD ["npm", "start"]