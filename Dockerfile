# Example Dockerfile

# goes up to latest version of 10; 'latest' could be used but might break app eventually.
FROM node:10  

# location where app lives in container
WORKDIR /usr/src/app

# copy package and package.lock into container to install node.js dependencies
COPY package*.json ./

# install node.js dependencies
RUN npm install

# copy everything else over 
COPY . .

# expose port that app is running on
EXPOSE 3000

# 'npm start':  calls an npm script in package.json called 'start' which runs: 'node index.js' which starts the app
CMD ["npm", "start"]