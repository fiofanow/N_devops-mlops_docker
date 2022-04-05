FROM continuumio/miniconda3:latest

WORKDIR /app

COPY ./1.sh .

RUN chmod +x 1.sh

RUN apt-get -y update && apt-get install -y python

RUN pip install mlflow boto3 pymysql

CMD ["sh", "1.sh"]