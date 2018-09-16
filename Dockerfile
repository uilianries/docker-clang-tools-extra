FROM base/archlinux:2018.09.01

LABEL MAINTAINER="Uilian Ries <uilianries@gmail.com>"

RUN pacman -Syu --needed --noconfirm clang-tools-extra=6.0.1-2 \
    && pacman -Scc --noconfirm \
    && echo "en_US.UTF-8 UTF-8" > /etc/locale.gen \
    && locale-gen

ENV CC=clang \
    CXX=clang++ \
    LANG=en_US.UTF-8
