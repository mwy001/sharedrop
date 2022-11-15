FROM node:12-buster
RUN mkdir -p /srv/app
WORKDIR /srv/app
COPY package.json yarn.lock ./
RUN yarn --frozen-lockfile --non-interactive

COPY . /srv/app
EXPOSE 8000
CMD [ "yarn", "develop" ]
