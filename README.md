# Sdcrow_MobSF
Sdcrow_MobSF is a dockerized Mobile Security Framework on CentOS for quick/easy deployment. Underlying system is maintained at [MobSF](https://github.com/MobSF/Mobile-Security-Framework-MobSF)

## Usage

### Dockerhub
Check Dockerhub for available tags and updates [here](https://hub.docker.com/repository/docker/sdcrow/mobsf)

### Pulling Image
```docker
docker pull sdcrow/mobsf:latest
```
### Pull specific image version
```docker
docker pull sdcrow/mobsf:version-1.0.0
```

### Build from sources
```bash
# clone
git clone https://github.com/Sdcrow/docker_mobsf.git

# change wdir
cd docker_mobsf

# build
docker builld . -t <image_tag>
```

# License
As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).

As for any pre-built image usage, it is the image user's responsibility to ensure that any use of this image complies with any relevant licenses for all software contained within.
