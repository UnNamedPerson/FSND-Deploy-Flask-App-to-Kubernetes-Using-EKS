FROM python:stretch

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

COPY . /app
RUN make /app


ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]