FROM node:10.15.1-alpine as base

WORKDIR /app

COPY package.json yarn.lock /app/
RUN yarn install --production=false --frozen-lockfile

FROM base as build

COPY . /app/

RUN yarn test --ci --passWithNoTests yarn test --clearCache \
RUN yarn build
RUN yarn install --production=true --frozen-lockfile && yarn cache clean

FROM build

EXPOSE 3000
CMD ["yarn", "start"]
