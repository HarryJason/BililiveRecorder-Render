FROM bililive/recorder:latest

ENV TZ=Asia/Shanghai
ENV PORT=2356

WORKDIR /app

COPY config.json /app/config.json

EXPOSE 2356

CMD ["run", "--bind", "http://0.0.0.0:2356", "--http-open-access", "--enable-file-browser", "true", "/app/config.json"]
