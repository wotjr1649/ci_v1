FROM wotjr980321/py_dev

ENV PYTHONUNBUFFERED 1

# WORKDIR /app
# COPY requirements.txt ./

WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip3 install --no-cache-dir --upgrade -r requirements.txt
COPY . .

EXPOSE 80
CMD ["uvicorn", "main:app","--host","0.0.0.0", "--port","8080","--reload"]

# uvicorn app.main:app --host 0.0.0.0 --port 8080 --reload