# eset-proxy-docker

## Build
```shell
docker build -t eset-proxy .
```

## Run
```shell
docker run -d -p 3128:3128 --restart=always eset-proxy
```

## Check if running
```shell
docker ps

CONTAINER ID   IMAGE        COMMAND              CREATED          STATUS          PORTS                                               NAMES
70d52ecf87d6   eset-proxy   "httpd-foreground"   27 seconds ago   Up 25 seconds   80/tcp, 0.0.0.0:3128->3128/tcp, :::3128->3128/tcp   relaxed_elion
```

## Logs
```shell
docker logs -f 70d52ecf87d6

AH00558: httpd: Could not reliably determine the server's fully qualified domain name, using 172.17.0.2. Set the 'ServerName' directive globally to suppress this message
AH00558: httpd: Could not reliably determine the server's fully qualified domain name, using 172.17.0.2. Set the 'ServerName' directive globally to suppress this message
[Tue Aug 03 10:19:21.774986 2021] [mpm_event:notice] [pid 1:tid 140024542270592] AH00489: Apache/2.4.48 (Unix) OpenSSL/1.1.1d configured -- resuming normal operations
[Tue Aug 03 10:19:21.775491 2021] [core:notice] [pid 1:tid 140024542270592] AH00094: Command line: 'httpd -D FOREGROUND'
```