FROM gcc:13.1.0 AS build-with-gcc

COPY ./src/ /usr/src/app/

WORKDIR /usr/src/app

RUN g++ -o myapp app.cpp

###########################################

FROM debian:12.0 AS exec-with-gcc

WORKDIR /root

COPY --from=build-with-gcc /usr/src/app/myapp ./

CMD ["./myapp"]

###########################################

FROM debian:12.0 AS build-with-clang

RUN apt-get update && apt-get -y --no-install-recommends install build-essential clang 

COPY ./src/ /usr/src/app/

WORKDIR /usr/src/app

RUN clang++ -o myapp app.cpp

#############################################

FROM debian:12.0 AS exec-with-llvm

WORKDIR /root

COPY --from=build-with-clang /usr/src/app/myapp ./

CMD ["./myapp"]
