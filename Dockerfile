FROM wotjr980321/py_dev

# WORKDIR /code
WORKDIR /usr/src/app
COPY requirements.txt ./

RUN pip3 install --no-cache-dir --upgrade -r requirements.txt

COPY . .

EXPOSE 80

CMD ["uvicorn", "app.main:app","--host","0.0.0.0", "--port","0.0.0.0","--reload"]

# uvicorn app.main:app --host 0.0.0.0 --port 8080 --reload