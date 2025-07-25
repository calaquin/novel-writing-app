FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
ENV DATA_DIR=/app/data
VOLUME ["/app/data"]
CMD ["python", "app.py"]
