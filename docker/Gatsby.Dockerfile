FROM node:latest

WORKDIR /gatsby-wp
COPY package.json package-lock.json ./

RUN npm install
COPY . .

RUN npm install -g gatsby-cli

EXPOSE 8000 9000
CMD ["npm", "start"]


