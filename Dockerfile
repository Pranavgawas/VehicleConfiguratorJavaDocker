# project frontend
FROM node:alpine3.16
WORKDIR /myapp
COPY ./VehicleFrontend/package.json /myapp/
RUN npm install
COPY ./VehicleFrontend /myapp/
RUN npm run build
CMD [ "npm", "start" ]

# #java application
# FROM openjdk:17-alpine
# WORKDIR /urs/src/myapp
# COPY . /urs/src/myapp/
# CMD [ "java","-jar", "./demo_v7-0.0.1-SNAPSHOT.jar" ]