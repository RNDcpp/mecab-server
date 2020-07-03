FROM ruby:2.7
RUN  apt-get -y update \
    && apt-get -y upgrade \
    && apt-get -y --no-install-recommends install \
        build-essential \
        libmecab2 \
        libmecab-dev \
        mecab \
        mecab-ipadic \
        mecab-ipadic-utf8 \
        mecab-utils \
    && rm -rf /var/lib/apt/lists/* \
    && git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git \
    && cd mecab-ipadic-neologd \
    && mkdir -p `mecab-config --dicdir`"/mecab-ipadic-neologd" \
    && ./bin/install-mecab-ipadic-neologd -n -y -a

RUN bash -l -c 'echo export NEOLOGD_PATH="$(mecab-config --dicdir)/mecab-ipadic-neologd" ' >> /etc/bash.bashrc
WORKDIR mecab
ADD ./Gemfile Gemfile
ADD ./Gemfile.lock Gemfile.lock
RUN bundle install
CMD ruby app/app.rb