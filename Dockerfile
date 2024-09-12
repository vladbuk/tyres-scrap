FROM python:3.11

WORKDIR /tyres-scrap

COPY requirements.txt ./

RUN apt-get update -qq && apt-get install -y sqlite3 nano 

RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
    dpkg -i google-chrome-stable_current_amd64.deb; apt-get -fy install

RUN pip install --no-cache-dir -r requirements.txt

CMD [ "/usr/bin/bash" ]
