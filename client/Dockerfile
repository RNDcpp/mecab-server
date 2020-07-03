FROM ruby:2.7
WORKDIR /client
ADD ./Gemfile Gemfile
ADD ./Gemfile.lock Gemfile.lock
RUN bundle install
CMD bundle install && /bin/sh
