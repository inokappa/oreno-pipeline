FROM myruby
MAINTAINER inokappa
RUN apt-get update
RUN git clone https://github.com/inokappa/oreno-dynamodb-tutorial.git /app
RUN chmod 755 /app/run.sh
RUN gem install aws-sdk --no-ri --no-rdoc

CMD /app/run.sh
