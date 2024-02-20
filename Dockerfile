FROM python:3.11.2
ADD . /app
WORKDIR /app
RUN apt-get update && apt-get install -y mecab libmecab-dev
RUN pip3 install -r requirements.txt
RUN rm -f /etc/localtime
RUN  ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' > /etc/timezone
