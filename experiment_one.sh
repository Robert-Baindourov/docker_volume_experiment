rm -rf /tmp/all_boxes
docker run -itd --name buster_one -v /tmp/all_boxes:/var/www buster_one:latest
docker run -itd --name buster_two -v /tmp/all_boxes:/var/www buster_two:latest

