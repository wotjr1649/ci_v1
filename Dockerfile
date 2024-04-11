FROM wotjr980321/py_dev

ENV PYTHONUNBUFFERED 1

COPY ./app /src
COPY ./requirements.txt /src
WORKDIR /src

RUN pip3 install --no-cache-dir -r requirements.txt

EXPOSE 80
CMD ["uvicorn", "main:app","--host","0.0.0.0", "--port","8080","--reload"]

# uvicorn app.main:app --host 0.0.0.0 --port 8080 --reload