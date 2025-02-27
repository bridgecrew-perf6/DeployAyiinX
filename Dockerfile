# FROM UserXTester/Ayiin-UserbotX:buster
FROM ayiinxd/ayiin-userbot:buster

RUN git clone -b Ayiin-Userbot https://github.com/UserXTester/Ayiin-UserbotX /home/ayiinuserbot \
    && chmod 777 /home/ayiinuserbot \
    && mkdir /home/ayiinuserbot/bin/

COPY ./sample_config.env ./config.env* /home/ayiinuserbot/

WORKDIR /home/ayiinuserbot/

CMD ["bash","start"]
