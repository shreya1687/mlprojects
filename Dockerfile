FROM python:3.10-slim
WORKDIR /app
COPY . /app
RUN apt-get update && apt-get upgrade -y
RUN pip install -r requirements.txt
CMD ["python3", "app.py"]