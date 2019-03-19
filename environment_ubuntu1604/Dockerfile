FROM ubuntu:16.04
COPY ./root/ /root/

Run apt-get update -y && apt-get upgrade -y && \
    apt-get install -y tmux \
    git \
    curl \
    software-properties-common && \
    apt-get update -y && \
    apt-get install -y neovim \
    python3-dev \
    python3-pip && \
    && pip3 install neovim powerline-status \
    && pip3 install --upgrade pip

 RUN bash /root/.cache/dein/installer.sh /root/.cache/dein

# deinパッケージインストール
RUN nvim -c 'call dein#install() | q' \
    && nvim -c 'call dein#update()  | q' \
    && nvim -c 'UpdateRemotePlugins | q' 

CMD bash
