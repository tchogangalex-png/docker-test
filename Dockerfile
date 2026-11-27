FROM  ubuntu
WORKDIR /APP
COPY package*.json /APP
COPY  . /APP
RUN apt-get update && apt-get install -y node.js npm
RUN npm install
EXPOSE 3000
ENV HOST=0.0.0.0
CMD [ "npm","start" ]