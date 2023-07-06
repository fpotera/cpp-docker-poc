# cpp-docker-poc

$ docker build --target exec-with-gcc -t my-gcc-app .
$ docker run -it --rm --name my-running-app my-gcc-app

$ docker build --target exec-with-llvm -t my-llvm-app .
$ docker run -it --rm --name my-running-app my-llvm-app

$ docker build --target exec-with-graalvm -t my-graalvm-app .
$ docker run -it --rm --name my-running-graalvm my-graalvm-app