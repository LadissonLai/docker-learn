# How to use a dockerfile to build a image.

## Task

基于ubuntu镜像编译src文件加下的两个cpp文件，使用Dockerfile生成2个image：

第一个image，在image内部编译好cpp文件，启动时直接运行。

第二个image，要求在启动容器时，根据命令来编译cpp文件，使用数据卷volume将编译好的文件放到本地src下面，并运行可执行文件。

## Get Started

1. 在构建容器时，就编译好cpp文件，启动容器时，直接使用编译好的可执行文件.

   ```shell
   # 构建镜像
   docker build -t test:1.0 -f ./Dockerfile_first .
   # 运行镜像
   docker run test:1.0 mul 4 5
   # 输出结果：4 * 5 = 20
   ```

2. 在构建镜像后，启动容器时，编译cpp文件，并执行。

   ```shell
   # 构建镜像
   docker build -t test:2.0 -f ./Dockerfile_secd .
   # 运行镜像，
   docker run --mount=type=bind,source=./src,target=/home/vspace test:2.0 mul 4 5
   # 输出结果：4 * 5 = 20
   # 运行完成后会看到src文件夹下面多了一个可执行文件mul
   ```

   

   
