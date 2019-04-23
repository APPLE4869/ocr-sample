FROM python:3.7

ADD . app
WORKDIR /app

RUN apt-get update -qq
RUN apt-get install -y --no-install-recommends
RUN apt install -y tesseract-ocr
RUN apt install -y tesseract-ocr-jpn
RUN apt install -y libtesseract-dev

# Pythonで利用するライブラリをインストール
RUN pip install -r ./requirements.txt
