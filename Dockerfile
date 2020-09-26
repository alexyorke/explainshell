FROM python:3.7

MAINTAINER Simon Toivo Telhaug <simon.toivo@gmail.com>

RUN apt-get update \
&& apt-get install man-db python3-pip python3 -y

ADD ./requirements.txt /tmp/requirements.txt

RUN pip3 install --upgrade pip \
&& python --version \
&& pip3 install -r /tmp/requirements.txt

ADD ./ /opt/webapp/
WORKDIR /opt/webapp
EXPOSE 5000

CMD ["make", "serve"]
