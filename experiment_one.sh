rm -rf /tmp/all_boxes
docker run -itd  -v /tmp/all_boxes:/var/www buster_one:latest
docker run -itd  -v /tmp/all_boxes:/var/www buster_two:latest

