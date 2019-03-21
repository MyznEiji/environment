FROM ubuntu:18.04
COPY ./root/ /root/


RUN apt-get update && apt-get -y upgrade && apt-get install -y tmux \
    git \
    curl \
    python3-pip \
    software-properties-common \
    python3.7 

RUN add-apt-repository -y ppa:neovim-ppa/stable && \
    apt-get update  && \
    apt-get install -y neovim && \
    pip3 install pynvim powerline-status && \
    pip3 install --upgrade pip

RUN bash /root/.cache/dein/installer.sh /root/.cache/dein

# deinパッケージインストール
# RUN nvim -c 'call dein#install() | q' \
#     && nvim -c 'call dein#update()  | q' \
#     && nvim -c 'UpdateRemotePlugins | q' \

CMD bash
