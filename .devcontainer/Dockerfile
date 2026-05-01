FROM mcr.microsoft.com/devcontainers/base:noble

RUN dpkg --add-architecture i386
RUN sudo apt-get update
RUN sudo apt-get install -y g++-aarch64-linux-gnu gcc-aarch64-linux-gnu qemu-user mingw-w64 wine wine32:i386