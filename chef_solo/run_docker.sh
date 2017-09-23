#/bin/bash
docker container rm -f -v $(docker ps -aq --filter "name=solo")
docker container run  -p 8080:8080 --name solo -it -v $(pwd)/src:/src  -v $(pwd)/../../user-registration-V2:/data \
biotracker/ubuntu-15.04-slave /bin/bash
