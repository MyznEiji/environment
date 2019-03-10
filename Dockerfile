FROM alpine:3.9
COPY ./root/ /root/

RUN apk update && apk upgrade && apk add tmux \
    git \
    curl \
    bash \
    python3 \
    gcc \
    python3-dev \
    linux-headers \
    libc-dev \
    neovim \
    # pip3関係をインストール
    && pip3 install neovim powerline-status \
    && pip3 install --upgrade pip
    # deinをインストール
 RUN bash /root/.cache/dein/installer.sh /root/.cache/dein

# deinパッケージインストール
RUN nvim -c 'call dein#install() | q' \
    && nvim -c 'call dein#update()  | q' \
    && nvim -c 'UpdateRemotePlugins | q' 

CMD [ "bash" ]