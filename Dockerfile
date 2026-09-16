FROM node:20-alpine

WORKDIR /app

COPY portal/package.json ./package.json
RUN npm install --omit=dev

COPY portal/ ./

ENV PORT=3000
EXPOSE 3000

CMD ["node", "server.js"]
