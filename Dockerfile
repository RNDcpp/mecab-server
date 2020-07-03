FROM ruby:2.7
WORKDIR mecab
ADD ./Gemfile Gemfile
ADD ./Gemfile.lock Gemfile.lock
RUN bundle install
CMD ruby app/app.rb