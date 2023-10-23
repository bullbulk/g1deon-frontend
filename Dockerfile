FROM node:20-alpine as build

WORKDIR /app

COPY package.json ./
COPY package-lock.json ./
RUN npm install
COPY . ./
RUN npm run build


FROM node:20-alpine

WORKDIR /app
COPY --from=build /app .

ENV HOST=0.0.0.0
ENV PORT=9001
EXPOSE 9001
CMD ["node", "build"]
