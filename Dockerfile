FROM python:3.9.20-slim-bullseye
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir requirements.txt
COPY . .
EXPOSE 5000
CMD ["python", "app.py"]