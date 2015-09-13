FROM ruby
MAINTAINER inokappa
RUN apt-get update
RUN git clone https://github.com/inokappa/oreno-pipeline.git /app
RUN chmod 755 /app/put-to-s3.rb
RUN gem install aws-sdk --no-ri --no-rdoc

CMD /app/put-to-s3.rb
