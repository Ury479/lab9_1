FROM node:18-alpine

WORKDIR /app

COPY .output .output

EXPOSE 3000

# 启动 Nuxt.js 应用
CMD ["node", ".output/server/index.mjs"]
