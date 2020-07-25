FROM python:stretch

COPY . /app
RUN make /app


ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]