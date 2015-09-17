FROM myruby
MAINTAINER inokappa
RUN apt-get update
RUN git clone https://github.com/inokappa/oreno-dynamodb-tutorial.git /app
RUN chmod 755 /app/run.sh
RUN mkdir -p /app/output/html
RUN mkdir -p /app/output/png
RUN gem install aws-sdk gchart --no-ri --no-rdoc

CMD /app/run.sh
