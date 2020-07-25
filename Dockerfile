FROM python:stretch

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . /app
RUN make /app


ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
