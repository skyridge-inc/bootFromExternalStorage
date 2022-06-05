from ubuntu:latest

RUN mkdir /build
COPY install_dependencies.sh /build/install_dependencies.sh
COPY install_jetson_default_packages.sh /build/install_jetson_default_packages.sh
COPY get_jetson_files.sh /build/get_jetson_files.sh
RUN apt-get update -y; apt-get install sudo bzip2 dpkg -y
WORKDIR /build
RUN which bzip2
RUN which dpkg
RUN /build/install_dependencies.sh
RUN /build/get_jetson_files.sh
ENTRYPOINT ["sleep", "infinity"]

