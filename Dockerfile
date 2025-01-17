FROM ruby:3.2.2
ARG RUBYGEMS_VERSION=3.3.20
WORKDIR /app
COPY Gemfile Gemfile.lock /app/
RUN bundle install
COPY . /app/
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
CMD ["rails", "server", "-b", "0.0.0.0"]
