# 基础镜像（alpine linux)
FROM registry.cn-beijing.aliyuncs.com/dxq_docker/nginx:latest
LABEL author=ahmerry@qq.com

ENV TIMEZONE Asia/Shanghai

# 一些工作目录准备
RUN apk add nodejs npm python make g++ && \
    npm config set registry https://registry.npm.taobao.org && \
    npm install -g gulp-cli   
COPY 10915.conf /etc/nginx/conf.d/    
CMD ["/shell/start.sh"]
