FROM ruby:2.3.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /repub
WORKDIR /repub

COPY Gemfile /repub/Gemfile
COPY Gemfile.lock /repub/Gemfile.lock

COPY entrypoint.sh /
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]

COPY . /repub
