# docker-opensc2k

Docker for OpenSC2K

## Usage

- build

```shell
docker build . -t opensc2k
```

- run

```shell
docker run -d -p=<INPUT_HOST_PORT>:3000 opensc2k /start
```
