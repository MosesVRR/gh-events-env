FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.wftn7.mongodb.net
ENV MONGODB_USERNAME mosesvrr-gha
ENV MONGODB_PASSWORD 6iqvAd5rueoxiSdh

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]