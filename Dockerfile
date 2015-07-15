FROM ubuntu

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y squid3

ADD config/squid.conf /etc/squid3/squid.conf

CMD ["squid3", "-N", "-d 9"]
