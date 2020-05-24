FROM ruby:2.6.3

ENV LANG C.UTF-8
RUN mkdir /ruby
WORKDIR /ruby

COPY ./Gemfile ./Gemfile
COPY ./Gemfile.lock ./Gemfile.loc

RUN bundle install

COPY ./temperature.rb ./temperature.rb

CMD ruby temperature.rb