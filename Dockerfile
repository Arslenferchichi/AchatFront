FROM node:16
WORKDIR /app
COPY . /app
RUN npm cache clean --force
RUN npm install -g @angular/cli
RUN npm install
RUN npm run build
RUN ng build
EXPOSE 4200
CMD ["npm", "start"]
