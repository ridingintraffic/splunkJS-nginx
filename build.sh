docker stop `docker ps --filter "label=splunkjs-docker" --format "{{.ID}}"`

docker rm `docker ps --filter "label=splunkjs-docker" --format "{{.ID}}"`

docker build -t "splunkjs-docker" .
