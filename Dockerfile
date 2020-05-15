FROM python:3.8

RUN apt-get update && pip install --upgrade pip

WORKDIR /usr/src/app

COPY ./requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt && \
    rm requirements.txt

COPY ./run ./

CMD ["./run"]
