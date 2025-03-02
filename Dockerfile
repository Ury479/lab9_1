# 使用官方 Nginx 作为基础镜像
FROM nginx:latest

# 复制 index.html 到 Nginx 默认目录
COPY html/index.html /usr/share/nginx/html/index.html

# 暴露端口 80
EXPOSE 80

# 运行 Nginx
CMD ["nginx", "-g", "daemon off;"]
