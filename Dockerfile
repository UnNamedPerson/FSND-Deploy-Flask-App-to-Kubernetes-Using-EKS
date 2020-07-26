FROM python:stretch

RUN pip install --upgrade pip
RUN pip install pyjwt
RUN pip install flask
RUN pip install gunicorn
RUN pip install pytest

COPY . /app
RUN make /app


ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
