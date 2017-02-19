FROM ruby:2.1

RUN apt-get update \
  && apt-get install -y \
     node \
     python-pygments \
  && apt-get clean

RUN gem install \
  github-pages \
  jekyll \
  jekyll-redirect-from \
  rouge

RUN mkdir /jekyll
VOLUME /jekyll
WORKDIR /jekyll

EXPOSE 4000
ENTRYPOINT ["jekyll"]


