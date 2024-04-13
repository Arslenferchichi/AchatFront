FROM node:14.15.0

# Installation d'Angular CLI version 10.x
RUN npm install -g @angular/cli@10

WORKDIR /app

COPY . /app

RUN npm cache clean --force
RUN npm install
RUN npm run build
RUN ng build --prod

EXPOSE 4200

CMD ["npm", "start"]
