docker stop `docker ps --filter "label=splunkjs-docker" --format "{{.ID}}"`

docker run  -d  -p 8010:8010 splunkjs-docker
