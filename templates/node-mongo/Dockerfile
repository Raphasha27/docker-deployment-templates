FROM node:20-alpine AS base
WORKDIR /app
COPY package*.json ./
RUN npm ci --omit=dev && npm cache clean --force

FROM node:20-alpine AS runner
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
WORKDIR /app
COPY --from=base /app/node_modules ./node_modules
COPY . .
EXPOSE 4000
USER appuser
CMD ["node", "server.js"]
