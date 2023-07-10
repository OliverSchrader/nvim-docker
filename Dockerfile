FROM alpine:latest

# install nvchad dependencies
RUN apk add wget
RUN apk add nodejs
RUN apk add npm
RUN apk add ripgrep
RUN apk add build-base
RUN apk add git

# install neovim
RUN apk add neovim

# install nvchad
RUN git clone https://github.com/OliverSchrader/nvim.git ~/.config/nvim --depth 1

RUN mkdir -p /root/dev
