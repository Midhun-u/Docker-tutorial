FROM node:25-alpine

WORKDIR /

COPY ./ ./

RUN npm install

ENTRYPOINT [ "npm" ]

CMD [ "start" , "dev"]

EXPOSE 5000