# Don't Remove Credit @VJ_Bots
# Subscribe YouTube Channel For Amazing Bot @Tech_VJ
# Ask Doubt on telegram @KingVJ01

FROM python:3.10-slim-bullseye


RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /SURYA-FILTER-BOT
WORKDIR /SURYA-FILTER-BOT
COPY . /SURYA-FILTER-BOT
CMD ["python", "bot.py"]




