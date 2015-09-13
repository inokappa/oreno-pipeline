FROM myruby
MAINTAINER inokappa
RUN apt-get updateRUN git clone https://github.com/inokappa/oreno-pipeline.git /app
RUN chmod 755 /app/put-to-s3.rb
CMD /app/put-to-s3.rb
