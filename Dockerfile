FROM node:14.15.0
WORKDIR /app
COPY . /app
RUN npm cache clean --force
RUN npm install
RUN npm run build
EXPOSE 4200
CMD ["npx", "http-server", "dist/crudtuto-Front", "-a", "0.0.0.0", "-p", "4200"]