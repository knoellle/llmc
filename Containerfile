FROM docker.io/library/archlinux

RUN pacman -Sy --noconfirm opencode git rustup base-devel && yes | pacman -Scc

RUN rustup default stable && \
  rustup component add rust-analyzer
