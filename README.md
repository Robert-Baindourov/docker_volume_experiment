# docker_volume_experiment
Docker Volume Experiment

Creating this project to test what happens when two docker containers mount the same bind point, but have disimilar states internally. 

Container 1: Buster Slim with /var/www/index.html
Container 2: Buster Slim with /var/www/index.php 

Both containers have different files packaged internally and will create some bash scripts to go ahead and mount them in different orders, and other experiment variations. 

