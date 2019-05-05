FROM ubuntu:18.04

RUN apt-get update && apt-get install -y openjdk-8-jre-headless rubygems ruby-dev build-essential
RUN gem install jekyll jekyll-paginate s3_website
