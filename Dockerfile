FROM node:alpine

# Setting working directory. All the path will be relative to WORKDIR
WORKDIR /usr/src/app

# Installing dependencies
COPY package*.json ./
RUN npm ci

# Copying source files
COPY . .

# Building app
RUN npm run build

# Expose the listening port
EXPOSE 3000

# Running the app
CMD [ "npm", "run", "prod" ]