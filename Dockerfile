FROM python:3-alpine

WORKDIR /app

COPY requirements.txt /app/reqirements.txt

RUN mkdir db \
    pip3 install -r reqirements.txt --no-cache-dir

COPY . /app

EXPOSE 8000

VOLUME ["/app/db"]

# ENTRYPOINT ["python 3"]
# CMD ["manage.py", "runserver", "0.0.0.0:8000"]

CMD sh init.sh && python3 manage.py runserver 0.0.0.0:8000
