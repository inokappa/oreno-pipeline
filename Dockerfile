FROM ruby
MAINTAINER inokappa
RUN gem install aws-sdk nokogiri --no-ri --no-rdoc
RUN git clone https://github.com/inokappa/oreno-pipeline.git /app
RUN chmod 755 /app/put-to-s3.rb
CMD /app/put-to-s3.rb
