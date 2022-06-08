FROM node:12-alpine


ENV PORT 1337
ENV HOST 0.0.0.0
ENV NODE_ENV production


#create directory

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app



#install dependcies
COPY package*.json /usr/src/app/
COPY yarn /usr/src/app/
RUN yarn install

COPY . /usr/src/app/


RUN yarn build
EXPOSE 1337

CMD ["yarn" , "start"]