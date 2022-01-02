FROM python:3
WORKDIR /usr/src/app
COPY . . 
RUN apt-get -y update
RUN pip3 install -r requirements.txt
RUN cp -r app/* .
EXPOSE 5001
CMD ["python", "-m flask", "run"]
