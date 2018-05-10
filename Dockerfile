FROM python:3.6.5

RUN pip install --no-cache-dir \
        git+https://github.com/DormyMo/SpiderKeeper.git

EXPOSE 5000

ENV USERNAME admin
ENV PASSWORD admin
ENV SERVER http://localhost:6800
ENV ADDITIONAL_OPTS ""

VOLUME /db

CMD spiderkeeper --username=$USERNAME --password=$PASSWORD --server=$SERVER --database-url="sqlite:////db/SpiderKeeper.db" $ADDITIONAL_OPTS
