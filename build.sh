cd container_one
docker build . -t buster_one:latest

cd ../container_two
docker build . -t buster_two:latest
