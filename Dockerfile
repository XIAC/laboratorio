FROM node:latest
RUN mkdir /src
RUN npm install nodemon -g
WORKDIR /src
ADD lab-node-jenkins/package.json /src/package.json
RUN npm install
ADD lab-node-jenkins/nodemon.json /src/nodemon.json
EXPOSE 3030
CMD nodemon app.js