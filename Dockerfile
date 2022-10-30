FROM python:3.10.7

ENV FLASK_APP=labone

COPY requirements.txt /opt

RUN python3 -m pip install -r /opt/requirements.txt

COPY labone /opt/labone

WORKDIR /opt

CMD flask --app labone run --host 0.0.0.0 -p $PORT