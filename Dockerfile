FROM buildpack-deps:buster

COPY src /tmp/src

RUN export LD_LIBRARY_PATH=/lib:/usr/lib:/usr/local/lib && \
    cd /tmp/src && make get-hiredis && make && \
    /tmp/src/hiredis-example
