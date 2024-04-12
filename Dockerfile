FROM node:14
WORKDIR /app
COPY . /app
RUN npm cache clean --force
RUN npm install
RUN npm run build
EXPOSE 4200
CMD ["npm", "start"]
