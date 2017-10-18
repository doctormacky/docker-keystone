FROM ubuntu:16.04

RUN apt-get update -qq && apt-get install -y keystone && apt-get install -y vim
ADD entrypoint.sh /usr/bin/entrypoint.sh

EXPOSE 5000 35357

ENTRYPOINT ["/usr/bin/entrypoint.sh"]
