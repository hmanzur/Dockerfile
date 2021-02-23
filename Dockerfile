
ARG tag="lts"

FROM node:$tag as build

ARG build="build"

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

# Copy package.json
COPY package*.json ./

RUN npm install

COPY . ./

RUN npm run $build

# production environment
FROM nginx:stable-alpine

COPY --from=build /app/build /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
