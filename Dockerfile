
FROM python:3.9-slim


ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1


WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt


COPY . .

EXPOSE 7345

CMD ["python", "manage.py", "runserver", "-h", "0.0.0.0", "-p", "7345"]
