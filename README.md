# How to use a dockerfile to build a image.

## 任务要求

基于ubuntu镜像编译两个cpp文件，并在启动容器时使用编译好的可执行文件，执行时从命令行读入参数。

## 具体要求

1. 使用g++编译add.cpp和add.cpp文件。
2. 使用数据卷的方式，容器共享宿主机的数据卷，编译好之后放到数据卷。
3. docker run时设置默认的参数；选择编译哪个cpp文件，并输入执行的参数。