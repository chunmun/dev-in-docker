
# Dockerfile for dev environment

FROM ubuntu:16.04
MAINTAINER Chun Mun <xilasirc@gmail.com>

RUN apt-get update
RUN apt-get install -y \
 ack-grep \
 bzr \
 build-essential \
 cmake \
 curl \
 cscope \
 exuberant-ctags \
 g++ \
 git \
 make \
 man-db \
 mercurial \
 ncurses-dev \
 nodejs \
 npm \
 procps \
 python-dev \
 python-pip \
 python3-dev \
 python3-pip \
 ssh \
 sudo \
 tmux \
 unzip \
 vim-nox \
 xz-utils \
 zsh \
 && rm -rf /var/lib/apt/lists/*

RUN wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | zsh; exit 0
RUN ln -s /usr/bin/nodejs /usr/bin/node && npm install -g bower grunt-cli
RUN npm install -g typescript

# OPTIONAL: Compile vim from scratch if need be. Vim installed via apt-get as above, already comes with python interpreter, which is required by YouCompleteMe vim plugin.
#RUN git clone https://github.com/vim/vim.git /root/vim
#RUN cd /root/vim && \
#./configure --enable-pythoninterp \
#--with-python-config-dir=/usr/lib/python2.7/config \
#--with-features=huge \
#--prefix=/root && \
#make VIMRCLOC=/root && make install

# Vundle: Vim plugin manager
RUN git clone https://github.com/gmarik/Vundle.vim.git /root/.vim/bundle/Vundle.vim

# YouCompleteMe: This plugin takes the longest time to download all its deps. So, let's do the downloading as a separate step.
RUN git clone https://github.com/Valloric/YouCompleteMe.git /root/.vim/bundle/YouCompleteMe
RUN cd /root/.vim/bundle/YouCompleteMe && git submodule update --init --recursive \
 && ./install.sh --clang-completer --tern-completer

# OPTIONAL STEP: Uncomment them if you want to install rsa key for easier access to your git repos.
# RUN mkdir /root/.ssh
# WARNING: The following step would FAIL if you don't have the rsa file.
# ADD bitbucket_gmail_key_id_rsa /root/.ssh/id_rsa
# RUN chmod 0600 /root/.ssh/id_rsa
# RUN touch /root/.ssh/known_hosts
# RUN ssh-keyscan bitbucket.org >> /root/.ssh/known_hosts

# RUN mkdir -p /go/src
# You wouldn't want to clone a git repository that you want to edit from within the docker environment.
# It's best to clone it on the machine, and then mount it in your docker dev env.
# That way your changes are persisted, even if you stop the docker container.
# You can do so via passing '-v ~/path/to/source:/go/src' to docker run command.
# Following is NOT RECOMMENDED:
# RUN cd /go/src && git clone git@bitbucket.org:username/repo.git
RUN git config --global credential.helper 'cache --timeout=86400'

ENV HOME /root
ENV LANG en_US.UTF-8
RUN locale-gen $LANG

# Store your favourite bashrc config, and copy it over.
# WARNING: If you don't have a bashrc, this step would fail.
COPY zshrc /root/.zshrc

# VIM
COPY vimrc /root/.vimrc
RUN vim +PluginInstall  +qall

COPY ycm_extra_conf.py /root/.ycm_extra_conf.py

# Change timezone
#RUN ln -sf /usr/share/zoneinfo/Australia/Sydney /etc/localtime

# Set lib-path for gocode: This is required so you get auto-complete on appengine golang libraries.
#RUN gocode set lib-path "/installs/go_appengine/goroot/pkg/linux_amd64_appengine"

CMD ["/bin/zsh"]

# Run Docker with
# sudo docker run -i -t -v ~/workspace/src:/go/src testing2
