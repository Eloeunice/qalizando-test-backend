FROM ruby:3.0

WORKDIR /qalizando

COPY Gemfile ./

RUN bundler install

COPY . .

CMD [ "cucumber" ]