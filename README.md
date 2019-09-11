DockerHub: [https://hub.docker.com/r/ministryofprogramming/directus-api-s3](https://hub.docker.com/r/ministryofprogramming/directus-api-s3)

- Change version on line 1 in `Dockerfile`
- Change version for `export PROJECT_TAG` (same as in Dockerfile) in `./build.sh`
- Set `DOCKER_USERNAME` and `DOCKER_PASSWORD` in `./build.sh`
- Run `./build.sh`
