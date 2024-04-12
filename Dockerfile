FROM node:14.15.0 as angular
WORKDIR /app

COPY package*.json ./
COPY . .
RUN npm install
RUN npm run build

CMD ["npx", "http-server", "dist/crudtuto-Front", "-a", "0.0.0.0", "-p", "4200"]