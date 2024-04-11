FROM wotjr980321/py_dev

ENV PYTHONUNBUFFERED 1

WORKDIR /usr/src
COPY ./requirements.txt /usr/src/requirements.txt
COPY ./app /usr/src/app
RUN pip3 install --no-cache-dir -r requirements.txt
WORKDIR /usr/src/app

EXPOSE 80
CMD ["uvicorn", "main:app","--host","0.0.0.0", "--port","8080","--reload"]

# uvicorn app.main:app --host 0.0.0.0 --port 8080 --reload