FROM pypa/bandersnatch
# COPY ./sources.list /etc/apt/sources.list
RUN apt-get update
RUN	apt-get install -y nano nginx

# pip-mirror
COPY ./bandersnatch.conf /conf/bandersnatch.conf
# python /bandersnatch/src/runner.py 3600

# nginx
COPY ./default_pip /etc/nginx/sites-enabled/default

WORKDIR /etc/apt
CMD ["nginx", "-g", "daemon off;"]
