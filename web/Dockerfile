FROM node:16-alpine AS development

WORKDIR /app

COPY package.json .

RUN yarn install

COPY . .

# EXPOSE 3000

# CMD [ "yarn", "start" ]

RUN yarn build

FROM nginx:stable-alpine

COPY --from=development /app/build /bin

COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD [ "nginx", "-g", "daemon off;" ]