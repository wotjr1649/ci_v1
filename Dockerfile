FROM wotjr980321/py_dev

ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY requirements.txt ./
COPY . .
RUN pip install --no-cache-dir --upgrade pip
RUN pip install --no-cache-dir --upgrade -r requirements.txt

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8080"]
