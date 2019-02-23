FROM ruby:2.5.1-alpine3.9
EXPOSE 9393
RUN mkdir /app
COPY . /app
WORKDIR /app
RUN bundle install
ENV RACK_ENV=development
CMD bundle exec shotgun -o 0.0.0.0 config.ru
