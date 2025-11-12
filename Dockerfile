#Base layer
FROM node:25-alpine

#Specify which folder for working with
WORKDIR /

#Copying files from local to host
COPY ./ ./

#Specify which command should run when everything is complete without any issue
RUN npm install

#Specify executable command
ENTRYPOINT [ "npm" ]

#Specify the parameters of executable command
CMD [ "start"]

#Specify which port should run
EXPOSE 5000