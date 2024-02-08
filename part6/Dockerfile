FROM nginx
WORKDIR /home/
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./run.sh .
RUN apt-get update \
    && apt-get install -y gcc spawn-fcgi libfcgi-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
RUN useradd -d /home/dockle -m -s /bin/bash dockle
USER dockle
ENTRYPOINT [ "sh", "./run.sh" ]