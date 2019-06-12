# 基础镜像（alpine linux)
FROM registry.cn-beijing.aliyuncs.com/dxq_docker/nginx:latest
LABEL author=ahmerry@qq.com

ENV TIMEZONE Asia/Shanghai

# 一些工作目录准备
RUN apk add nodejs npm python make g++ && \
    npm install -g cnpm --registry=https://registry.npm.taobao.org && \
    cnpm install gulp-cli -g && \
    cnpm i apicloud-cli -g
    
    
CMD ["bash"]
