# docker_volume_experiment
Docker Volume Experiment

Creating this project to test what happens when two docker containers mount the same bind point, but have disimilar states internally. 

Container 1: Buster Slim with /var/www/index.html

Container 2: Buster Slim with /var/www/index.php 

Both containers have different files packaged internally.  Created some bash scripts to go ahead and mount them in different orders, and other experiment variations, like Dockerfile edits. 

-Conclusion - mount points will always be emptied inside the container. You have to move the files into the mount point. Add intelligence to the app to check. Jenkins is a good example of this, when it expands the WAR. So is our PHP-FPM / NGINX interaction. 


PHP-FPM container and NGINX container share the volume, which is populated by PHP from its /tmp directory. 

Found Docker Docs explaning my initial experiment results. https://docs.docker.com/storage/

```
Tips for using bind mounts or volumes
If you use either bind mounts or volumes, keep the following in mind:

If you mount an empty volume into a directory in the container in which files or directories exist, these files or directories are propagated (copied) into the volume. Similarly, if you start a container and specify a volume which does not already exist, an empty volume is created for you. This is a good way to pre-populate data that another container needs.

If you mount a bind mount or non-empty volume into a directory in the container in which some files or directories exist, these files or directories are obscured by the mount, just as if you saved files into /mnt on a Linux host and then mounted a USB drive into /mnt. The contents of /mnt would be obscured by the contents of the USB drive until the USB drive were unmounted. The obscured files are not removed or altered, but are not accessible while the bind mount or volume is mounted.
```

TODO: Setup second experiment using actual volumes to verify that folder and files will be auto synced unto the host filesystem
TODO: Also try with docker-compose.yml


