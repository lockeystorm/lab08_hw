FROM ubuntu:18.04

RUN apt update && apt install -yy gcc g++ cmake

COPY . /solver_application
WORKDIR /solver_application

RUN cmake -S . -B build -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=_install && \
    cmake --build build && \
    cmake --build build --target install

ENV LOG_PATH /home/logs/log.txt

VOLUME /home/logs

WORKDIR /solver_application/_install/bin

ENTRYPOINT ["./solver_application"]
