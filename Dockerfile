FROM node:14.15.0
WORKDIR /app
COPY . /app
RUN npm cache clean --force
RUN npm install
RUN npm run build
RUN ng build
EXPOSE 4200
CMD ["npm", "start"]
