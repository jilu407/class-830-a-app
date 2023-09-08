FROM node AS barsha
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build
RUN ls
RUN ls /app/dist/

FROM nginx
COPY --from=barsha /app/dist/angular-class8/ /usr/share/nginx/html/
