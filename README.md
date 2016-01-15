# Docker nginx & PHP 7

**NOT FOR PRODUCTION USE**

Docker image for nginx and PHP7 using php-fpm

## Docker hub
```bash
$ docker pull agoes/nginx-php7fpm
```

## Usage
For easier use, create this bash script
```bash
#!/bin/bash

DOCKER=$(which docker)
DATA="/your/volume/data"

$DOCKER run -d -h nginx-php7fpm --name nginx-php7fpm \
    -v $DATA/www:/var/www \
    -v $DATA/log/nginx:/var/log/nginx \
    -v $DATA/log/php7:/var/log/php7 \
    nginx-php7fpm
```

Give executable priv (one time) & execute it

```bash
$ chmod +x run.sh && ./run.sh
```

## Container shell
```bash
$ docker exec -it nginx-php7fpm bash
```