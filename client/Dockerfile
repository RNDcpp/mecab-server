FROM ruby:2.7
WORKDIR /client
ADD ./client/Gemfile Gemfile
ADD ./client/Gemfile.lock Gemfile.lock
ADD ./mecab_services_pb /mecab_services_pb
RUN bundle install
CMD bundle install && /bin/sh
