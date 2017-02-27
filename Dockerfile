FROM nginx
LABEL "splunkjs-docker"="1.0"

EXPOSE 8010

COPY  default.conf /etc/nginx/conf.d/default.conf 


COPY . /app

HEALTHCHECK --interval=1m --timeout=3s \
CMD curl --fail http://localhost:80/healthcheck || exit 1 


