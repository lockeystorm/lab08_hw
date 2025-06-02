FROM ubuntu:18.04

RUN apt update && apt install -yy gcc g++ cmake

COPY . /copied
WORKDIR /copied/solver_application

RUN cmake -H. -B build -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=install
RUN cmake --build build
RUN cmake --build build --target install

ENV LOG_PATH=/home/logs/log.txt

VOLUME /home/logs

WORKDIR /install/bin

ENTRYPOINT ["./solver_app"]
