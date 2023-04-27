FROM python:3-alpine

WORKDIR /app

COPY requirements.txt /app/reqirements.txt
RUN pip3 install -r reqirements.txt
COPY . /app

EXPOSE 8000
# ENTRYPOINT ["python 3"]
#CMD ["manage.py", "runserver", "0.0.0.0:8000"]

CMD init.sh && python3 manage.py runserver 0.0.0.0:8000
