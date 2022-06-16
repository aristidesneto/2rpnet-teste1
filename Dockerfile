FROM python:3

ARG user=2rpnet
ARG group=2rpnet
ARG uid=1000
ARG gid=1000

RUN groupadd -g ${gid} ${group} \
    && useradd -u ${uid} -g ${group} --create-home -d /home/${user} -s /bin/bash ${user}

ADD . /application

WORKDIR /application

USER ${user}

RUN pip install -r requirements.txt

CMD [ "python3", "-u", "main.py" ]