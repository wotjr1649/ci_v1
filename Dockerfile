FROM wotjr980321/py_dev

ENV PYTHONUNBUFFERED 1

# WORKDIR /usr/src
# COPY ./requirements.txt /usr/src/requirements.txt
# COPY ./app /usr/src/app
# RUN pip3 install --no-cache-dir --upgrade -r requirements.txt

# COPY start.sh /usr/src

# EXPOSE 80
# CMD ["/bin/sh","start.sh"]

# uvicorn app.main:app --host 0.0.0.0 --port 8080 --reload


WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./app /code/app

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8080"]
