FROM node:alpine

WORKDIR '/app'

<<<<<<< HEAD
COPY package*.json ./
=======
COPY ./package*.json ./
>>>>>>> db6be6412111f1000060074cf2c4046705225d16

RUN npm install

COPY . .

<<<<<<< HEAD
RUN npm build 

FROM nginx
COPY --from=builder /app/build /usr/share/nginx/html
=======
CMD ["npm","run","start"]
>>>>>>> db6be6412111f1000060074cf2c4046705225d16
