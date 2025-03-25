FROM node:18.18.2

RUN npm install -g pnpm

WORKDIR /app

COPY . .

RUN pnpm install && pnpm build

EXPOSE 5678

CMD ["pnpm", "start"]
