FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.5.0.pre.1657

RUN gem install bosh_cli --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["bosh"]
CMD ["--help"]
