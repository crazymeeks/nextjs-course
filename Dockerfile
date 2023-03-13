FROM node:latest

WORKDIR /var/www/nextjs-course

COPY ./package.json ./
COPY ./package-lock.json ./

RUN npm i
# RUN npm audit fix # Let's disable this for local, this process is too slow

# Basically let's just make the node modules available on host
COPY ./ ./

EXPOSE 3000
EXPOSE 6006

ENV PORT 3000

CMD ["npm", "start"]