FROM ubuntu:latest
MAINTAINER Andrew Wichmann "andrewwichmann@gmail.com"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY . /app
WORKDIR /app
RUN pip install -r requirements.pip
ENTRYPOINT ["python"]
CMD ["app.py"]
