FROM ubuntu:18.04
RUN echo 'hello world .' > /home/hello.txt && apt update && apt install g++ -y
COPY ./src/add.cpp /home/add.cpp
COPY ./src/mul.cpp /home/mul.cpp
COPY ./launch.sh /home/launch.sh
RUN g++ /home/add.cpp -o /home/add && g++ /home/mul.cpp -o /home/mul && chmod +x /home/launch.sh
CMD ["1", "2", "3"]
# ENTRYPOINT [ "/home/add" ]
ENTRYPOINT [ "/home/launch.sh" ]

