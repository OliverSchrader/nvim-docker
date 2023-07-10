#!/bin/bash

docker stop oschrader-nvim;

docker rm -f oschrader-nvim;

docker rmi -f oschrader/nvim;

docker build -t oschrader/nvim .;

docker run -v "E:\Dev:/root/dev" \
            -m="2g" \
            --cpus="2" \
            --name oschrader-nvim \
            --restart=unless-stopped \
            -it -t oschrader/nvim;
