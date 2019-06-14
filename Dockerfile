FROM ruby:latest

COPY Gemfile /source/

WORKDIR /source

RUN gem install bundler && \
    bundle install

EXPOSE 4000

COPY . /source/

CMD bundle exec jekyll server --host 0.0.0.0 --watch
