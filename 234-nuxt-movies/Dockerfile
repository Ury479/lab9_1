# Stage 1: Build the application
FROM node:23-alpine AS build
WORKDIR /app

# 复制 package.json 和 pnpm-lock.yaml 以加快缓存
COPY package.json pnpm-lock.yaml ./

# 安装 pnpm 及依赖
RUN npm install -g pnpm && pnpm install

# 复制整个应用代码
COPY . .

# 运行 Nuxt.js 构建
RUN pnpm run build

# Stage 2: Run the application
FROM node:23-alpine
WORKDIR /app

# 从第一阶段复制 `.output/`
COPY --from=build /app/.output /app/.output

# 公开 3000 端口
EXPOSE 3000

# 启动 Nuxt.js 服务器
CMD ["node", ".output/server/index.mjs"]
