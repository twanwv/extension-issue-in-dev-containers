FROM python:3.11.2

WORKDIR /app
COPY . ./

ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip
RUN pip3 install --upgrade pip

RUN pip install -r requirements.txt

ENTRYPOINT ["python"]

CMD ["main.py"]
