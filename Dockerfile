FROM ruby:2.4.1

ADD start.sh /bin/start.sh
RUN gem install kontena-cli

CMD ["bash", "/bin/start.sh"]
