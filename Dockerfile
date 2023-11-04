FROM node:14 AS build
WORKDIR /usr/app
COPY . /usr/app
RUN npm install
RUN npm run build

FROM nginx
COPY --from=build /usr/app/build /usr/share/nginx/html
EXPOSE 80
CMD [ "nginx","-g","daemon off;" ]
