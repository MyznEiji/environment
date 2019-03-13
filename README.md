# environment
## Image build
```bash
$ docker image build -t eijimyzn/env:1.1.0 .
```

## Container run
```bash
$ docker container run -it --name env -h eiji_myzn v $HOME:/root/eiji_myzn  eijimyzn/env:1.1.0 /bin/ash
```

## DockerHub
[eijimyzn/env](https://cloud.docker.com/repository/docker/eijimyzn/env/general)
