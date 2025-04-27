#stage 1 -build stage
FROM node:18-alpine as builder
WORKDIR /app

COPY package.json ./
RUN npm install
COPY . .
EXPOSE 5000
CMD [ "npm","run","start" ]
# RUN npm run build

#stage 2 run stage
# FROM node:18
# WORKDIR /app
# COPY --from=builder /app/dist ./dist
# COPY package.json ./

# RUN npm install --only=production

# CMD ["node", "dist/main"]