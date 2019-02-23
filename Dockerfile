FROM ruby
RUN mkdir /app
COPY . /app
WORKDIR /app
RUN bunlde install
ENV RACK_ENV=development
CMD bundle exec shotgun config.ru
