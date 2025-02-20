FROM python:3.11-slim

RUN pip install flask

COPY app.py /src/app.py

WORKDIR /src

ENV FLASK_APP=app.py

EXPOSE 5000

CMD [ "flask", "run", "-h", "0.0.0.0"]
