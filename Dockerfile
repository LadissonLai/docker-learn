# 使用基础镜像
FROM ubuntu:18.04
# 安装g++编译器
RUN apt-get update && apt-get install g++ -y
# 创建一个工作目录
RUN mkdir /myapp
# 复制项目文件到镜像中
COPY ./src /myapp
# 设置docker构建时工作目录
WORKDIR /myapp
# 编译项目
RUN g++ add.cpp -o add && g++ mul.cpp -o mul
# 使用ENTRYPOINT来设置启动命令
ENTRYPOINT [ "/myapp/add" ]
# 设置容器启动时执行的命令默认参数，当容器运行制定参数时，会覆盖默认参数
CMD ["2", "3"]