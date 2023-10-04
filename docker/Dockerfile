FROM python:3-alpine
WORKDIR /service
COPY docker/requirements.txt .
RUN pip install -r requirements.txt
COPY . ./
EXPOSE 8080
ENTRYPOINT ["python3", "app.py"]
