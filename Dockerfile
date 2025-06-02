FROM ubuntu:18.04

RUN apt update && apt install -yy gcc g++ cmake

COPY . /solver
WORKDIR /solver

RUN cmake -H. -B build -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=_install
RUN cmake --build build
RUN cmake --build build --target install

ENV LOG_PATH=/home/logs/log.txt

VOLUME /home/logs

WORKDIR /solver/_install/bin

ENTRYPOINT ["./solver_app"]
