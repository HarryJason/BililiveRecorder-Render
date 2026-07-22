FROM bililive/recorder:latest

ENV TZ=Asia/Shanghai
ENV PORT=2356

WORKDIR /app

# 将预置的配置文件复制进容器
COPY config.json /app/config.json

# 暴露录播姬默认端口
EXPOSE 2356

# 启动命令：绑定到 0.0.0.0:2356，允许公网访问，加载 /app/config.json
CMD ["run", "--bind", "http://0.0.0.0:2356", "--http-open-access", "/app/config.json"]
