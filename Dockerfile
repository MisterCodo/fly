FROM node:18-alpine AS builder
WORKDIR /app
COPY package.json ./
RUN yarn install --frozen-lockfile
COPY . .
RUN yarn build

FROM nginx:1.23-alpine AS server
COPY --from=builder ./app/build /usr/share/nginx/html
