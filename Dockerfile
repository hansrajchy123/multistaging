FROM python:3.9-slim-buster AS build-env
COPY . /app
RUN cd /app && pip install --upgrade pip && pip install -r requirements.txt

FROM python:3.9-slim-buster
COPY --from=build-env /app /app
CMD ["python", "/app/my_script.py"]
