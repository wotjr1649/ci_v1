FROM wotjr980321/py_dev

ENV PYTHONUNBUFFERED 1

# WORKDIR /code
COPY ./app /app
COPY ./requirements.txt /app

WORKDIR /app

RUN pip3 install --no-cache-dir --upgrade -r requirements.txt

EXPOSE 80

CMD ["uvicorn", "main:app","--host","0.0.0.0", "--port","0.0.0.0","--reload"]

# uvicorn app.main:app --host 0.0.0.0 --port 8080 --reload