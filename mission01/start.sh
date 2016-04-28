#!bin/bash

docker-machine create --driver virtualbox default

docker-machine start default

docker-machine env default

eval "$(docker-machine env default)"

docker build -t hello/world:v42 .

docker run --name docker-nginx -p 80:80 -v /Users/Shared/dockerNginx/html:/usr/share/nginx/html -v /Users/Shared/dockerNginx/default.conf:/etc/nginx/conf.d/default.conf -d nginx

echo "Localhost:"; docker-machine ip default;
echo "Port: 80"

docker run -h 42borntocode -ti hello/world:v42 bash
