FROM ubuntu

RUN apt-get update && apt-get install -y exim4

COPY update-exim4.conf.conf /etc/exim4/

RUN service exim4 stop

CMD ["service", "exim4", "start"]
