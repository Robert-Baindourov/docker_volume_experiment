# docker_volume_experiment
Docker Volume Experiment

Creating this project to test what happens when two docker containers mount the same bind point, but have disimilar states internally. 

Container 1: Buster Slim with /var/www/index.html
Container 2: Buster Slim with /var/www/index.php 

Both containers have different files packaged internally and will create some bash scripts to go ahead and mount them in different orders, and other experiment variations. 

--Conclusion - mount points will always be emptied inside the container. You have to move the files into the mount point. Add intelligence to the app to check. Jenkins is a good example of this. So is our PHP-FPM / NGINX interaction. 

PHP-FPM container and NGINX container share the volume, which is populated by PHP from its /tmp directory. 
