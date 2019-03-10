# environment
## Build
```bash
$ docker image build -t eijimyzn/env:1.1.0 .
```

## Run
```bash
$ docker container run -it --name env -h eiji_myzn v $HOME:/root/eiji_myzn  eijimyzn/env:1.1.0 /bin/ash
```
