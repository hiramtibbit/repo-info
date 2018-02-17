<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `percona`

-	[`percona:5`](#percona5)
-	[`percona:5.5`](#percona55)
-	[`percona:5.5.59`](#percona5559)
-	[`percona:5.6`](#percona56)
-	[`percona:5.6.39`](#percona5639)
-	[`percona:5.7`](#percona57)
-	[`percona:5.7.20`](#percona5720)
-	[`percona:latest`](#perconalatest)

## `percona:5`

```console
$ docker pull percona@sha256:49dcab4276b2c04b4c9fb2dc65932e5b1092a80f50eee301678d252bc0972b09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5` - linux; amd64

```console
$ docker pull percona@sha256:d965a4d6e76b9ae6954f6f4b45247c97c3108663fb8b89fb8df6853cf7b2b843
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.2 MB (141161014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:301e74b8267431a8a20526563ca2473884779fa1c1d2210bb0fde6e0e1159fd4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 06:37:39 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 17 Feb 2018 06:37:40 GMT
ENV GOSU_VERSION=1.7
# Sat, 17 Feb 2018 06:38:04 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 17 Feb 2018 06:38:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 06:38:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 06:38:24 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 17 Feb 2018 06:38:27 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 17 Feb 2018 06:38:39 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Sat, 17 Feb 2018 06:38:39 GMT
ENV PERCONA_MAJOR=5.7
# Sat, 17 Feb 2018 06:38:40 GMT
ENV PERCONA_VERSION=5.7.20-19-1.jessie
# Sat, 17 Feb 2018 06:39:09 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 17 Feb 2018 06:39:10 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Sat, 17 Feb 2018 06:39:10 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Sat, 17 Feb 2018 06:39:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 17 Feb 2018 06:39:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 06:39:24 GMT
EXPOSE 3306/tcp
# Sat, 17 Feb 2018 06:39:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e86691d483c1c6ea1e788bfe7aecb06e79886ec5fffdcfffd7b9f3505100e3`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffadeffb3eb40dbe3283f23b0b16ec41818177f4407d9892508f288cfc0469e3`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 1.3 MB (1303039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2c640eac6bb82eb713abc6969fbbc3d2305696024d1842e4c058025f2983e6`  
		Last Modified: Sat, 17 Feb 2018 06:55:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee255c872c0c3b8a94c3d6d38c1bc610c3425b4c5b84dce025bf383e54b90ec8`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 6.7 MB (6671997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd879b6a37d82e7abc6009d8be4b2f3d07766574003887753d0e9bb5b358452`  
		Last Modified: Sat, 17 Feb 2018 06:55:36 GMT  
		Size: 4.7 KB (4679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c016da3e279aa6394d3029d0f846c428386d6437c5fdeda94929be7788614c`  
		Last Modified: Sat, 17 Feb 2018 06:55:34 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7752c7a5606130861a3a9055cda54afa511e2cdb28780fab24919e93154b63f2`  
		Last Modified: Sat, 17 Feb 2018 06:55:52 GMT  
		Size: 80.6 MB (80568027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf2930c06d16b69cab41fe7f150eef22d1af4fc111fd3004def2fa414a8e72a`  
		Last Modified: Sat, 17 Feb 2018 06:55:34 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1193a4757b914d84e0c3507d350dab05e0291a35c80db5709b1e0f7ea48042cb`  
		Last Modified: Sat, 17 Feb 2018 06:55:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5`

```console
$ docker pull percona@sha256:02e06982d6f1f28ad43306d4c0630cfab92472a415c3564c9b7b02028af730b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.5` - linux; amd64

```console
$ docker pull percona@sha256:57346d2e4e73602ef5c489f5ac3aa046de54e882fc6b92af06ad47ba2e075f3a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.7 MB (105702425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7591d4ade6e7ca312bcf5e931259e6d775abf230fcca2ea21c6ee2b93d0cb439`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 06:37:39 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 17 Feb 2018 06:37:40 GMT
ENV GOSU_VERSION=1.7
# Sat, 17 Feb 2018 06:38:04 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 17 Feb 2018 06:38:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 06:38:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 06:38:24 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 17 Feb 2018 06:38:27 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 17 Feb 2018 06:38:39 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Sat, 17 Feb 2018 06:54:08 GMT
ENV PERCONA_MAJOR=5.5
# Sat, 17 Feb 2018 06:54:08 GMT
ENV PERCONA_VERSION=5.5.59-rel38.11-1.jessie
# Sat, 17 Feb 2018 06:54:59 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 17 Feb 2018 06:54:59 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Sat, 17 Feb 2018 06:55:00 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Sat, 17 Feb 2018 06:55:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 17 Feb 2018 06:55:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 06:55:02 GMT
EXPOSE 3306/tcp
# Sat, 17 Feb 2018 06:55:02 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e86691d483c1c6ea1e788bfe7aecb06e79886ec5fffdcfffd7b9f3505100e3`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffadeffb3eb40dbe3283f23b0b16ec41818177f4407d9892508f288cfc0469e3`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 1.3 MB (1303039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2c640eac6bb82eb713abc6969fbbc3d2305696024d1842e4c058025f2983e6`  
		Last Modified: Sat, 17 Feb 2018 06:55:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee255c872c0c3b8a94c3d6d38c1bc610c3425b4c5b84dce025bf383e54b90ec8`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 6.7 MB (6671997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd879b6a37d82e7abc6009d8be4b2f3d07766574003887753d0e9bb5b358452`  
		Last Modified: Sat, 17 Feb 2018 06:55:36 GMT  
		Size: 4.7 KB (4679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c016da3e279aa6394d3029d0f846c428386d6437c5fdeda94929be7788614c`  
		Last Modified: Sat, 17 Feb 2018 06:55:34 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c68380603d5a125626ccda3df96c60e40dbb1b425dba31ae787ad589d652469a`  
		Last Modified: Sat, 17 Feb 2018 06:58:50 GMT  
		Size: 45.1 MB (45109440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f9b14f8371a39ff643aa22578b1c0073441e4de22bfe91abd907cc26958fe4`  
		Last Modified: Sat, 17 Feb 2018 06:58:40 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb3a753686fd7e79e65991c24295cd8c9ec568ec4a2dd983fc989353851b26e`  
		Last Modified: Sat, 17 Feb 2018 06:58:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5.59`

```console
$ docker pull percona@sha256:02e06982d6f1f28ad43306d4c0630cfab92472a415c3564c9b7b02028af730b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.5.59` - linux; amd64

```console
$ docker pull percona@sha256:57346d2e4e73602ef5c489f5ac3aa046de54e882fc6b92af06ad47ba2e075f3a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.7 MB (105702425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7591d4ade6e7ca312bcf5e931259e6d775abf230fcca2ea21c6ee2b93d0cb439`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 06:37:39 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 17 Feb 2018 06:37:40 GMT
ENV GOSU_VERSION=1.7
# Sat, 17 Feb 2018 06:38:04 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 17 Feb 2018 06:38:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 06:38:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 06:38:24 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 17 Feb 2018 06:38:27 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 17 Feb 2018 06:38:39 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Sat, 17 Feb 2018 06:54:08 GMT
ENV PERCONA_MAJOR=5.5
# Sat, 17 Feb 2018 06:54:08 GMT
ENV PERCONA_VERSION=5.5.59-rel38.11-1.jessie
# Sat, 17 Feb 2018 06:54:59 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 17 Feb 2018 06:54:59 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Sat, 17 Feb 2018 06:55:00 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Sat, 17 Feb 2018 06:55:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 17 Feb 2018 06:55:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 06:55:02 GMT
EXPOSE 3306/tcp
# Sat, 17 Feb 2018 06:55:02 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e86691d483c1c6ea1e788bfe7aecb06e79886ec5fffdcfffd7b9f3505100e3`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffadeffb3eb40dbe3283f23b0b16ec41818177f4407d9892508f288cfc0469e3`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 1.3 MB (1303039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2c640eac6bb82eb713abc6969fbbc3d2305696024d1842e4c058025f2983e6`  
		Last Modified: Sat, 17 Feb 2018 06:55:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee255c872c0c3b8a94c3d6d38c1bc610c3425b4c5b84dce025bf383e54b90ec8`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 6.7 MB (6671997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd879b6a37d82e7abc6009d8be4b2f3d07766574003887753d0e9bb5b358452`  
		Last Modified: Sat, 17 Feb 2018 06:55:36 GMT  
		Size: 4.7 KB (4679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c016da3e279aa6394d3029d0f846c428386d6437c5fdeda94929be7788614c`  
		Last Modified: Sat, 17 Feb 2018 06:55:34 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c68380603d5a125626ccda3df96c60e40dbb1b425dba31ae787ad589d652469a`  
		Last Modified: Sat, 17 Feb 2018 06:58:50 GMT  
		Size: 45.1 MB (45109440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f9b14f8371a39ff643aa22578b1c0073441e4de22bfe91abd907cc26958fe4`  
		Last Modified: Sat, 17 Feb 2018 06:58:40 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb3a753686fd7e79e65991c24295cd8c9ec568ec4a2dd983fc989353851b26e`  
		Last Modified: Sat, 17 Feb 2018 06:58:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6`

```console
$ docker pull percona@sha256:71efc153fbba1cb85eaa3f8c42f206aa1ae6160514dc59d07a8c01ca4522e55c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6` - linux; amd64

```console
$ docker pull percona@sha256:9a35c0692618c35259e6692403ef21e75eab56bcd604cd7bf382e403e7b81fc0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113588250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c52b732c7c0c729499d43d49e6ea6d5a18bc05ce36141b11a7577160d1ab6b28`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 06:37:39 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 17 Feb 2018 06:37:40 GMT
ENV GOSU_VERSION=1.7
# Sat, 17 Feb 2018 06:38:04 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 17 Feb 2018 06:38:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 06:38:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 06:38:24 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 17 Feb 2018 06:38:27 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 17 Feb 2018 06:38:39 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Sat, 17 Feb 2018 06:39:51 GMT
ENV PERCONA_MAJOR=5.6
# Sat, 17 Feb 2018 06:39:51 GMT
ENV PERCONA_VERSION=5.6.39-83.1-1.jessie
# Sat, 17 Feb 2018 06:40:23 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 17 Feb 2018 06:40:23 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Sat, 17 Feb 2018 06:40:24 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Sat, 17 Feb 2018 06:40:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 17 Feb 2018 06:40:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 06:40:26 GMT
EXPOSE 3306/tcp
# Sat, 17 Feb 2018 06:40:27 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e86691d483c1c6ea1e788bfe7aecb06e79886ec5fffdcfffd7b9f3505100e3`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffadeffb3eb40dbe3283f23b0b16ec41818177f4407d9892508f288cfc0469e3`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 1.3 MB (1303039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2c640eac6bb82eb713abc6969fbbc3d2305696024d1842e4c058025f2983e6`  
		Last Modified: Sat, 17 Feb 2018 06:55:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee255c872c0c3b8a94c3d6d38c1bc610c3425b4c5b84dce025bf383e54b90ec8`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 6.7 MB (6671997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd879b6a37d82e7abc6009d8be4b2f3d07766574003887753d0e9bb5b358452`  
		Last Modified: Sat, 17 Feb 2018 06:55:36 GMT  
		Size: 4.7 KB (4679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c016da3e279aa6394d3029d0f846c428386d6437c5fdeda94929be7788614c`  
		Last Modified: Sat, 17 Feb 2018 06:55:34 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:005ee5cb88288eee0b9e29bf71148e1265c670afa2ffdb32875a44ed7c0271b4`  
		Last Modified: Sat, 17 Feb 2018 06:57:54 GMT  
		Size: 53.0 MB (52995265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:194b2309db6ee80a63915560ad582e92cef9efc9d4a4f1f18ec1129d7b0dbfef`  
		Last Modified: Sat, 17 Feb 2018 06:57:31 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ad3f539ea9585108d51a2c0e85c8ecde6da3b8caa89609c465003761c249e7`  
		Last Modified: Sat, 17 Feb 2018 06:57:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.39`

```console
$ docker pull percona@sha256:71efc153fbba1cb85eaa3f8c42f206aa1ae6160514dc59d07a8c01ca4522e55c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6.39` - linux; amd64

```console
$ docker pull percona@sha256:9a35c0692618c35259e6692403ef21e75eab56bcd604cd7bf382e403e7b81fc0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113588250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c52b732c7c0c729499d43d49e6ea6d5a18bc05ce36141b11a7577160d1ab6b28`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 06:37:39 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 17 Feb 2018 06:37:40 GMT
ENV GOSU_VERSION=1.7
# Sat, 17 Feb 2018 06:38:04 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 17 Feb 2018 06:38:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 06:38:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 06:38:24 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 17 Feb 2018 06:38:27 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 17 Feb 2018 06:38:39 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Sat, 17 Feb 2018 06:39:51 GMT
ENV PERCONA_MAJOR=5.6
# Sat, 17 Feb 2018 06:39:51 GMT
ENV PERCONA_VERSION=5.6.39-83.1-1.jessie
# Sat, 17 Feb 2018 06:40:23 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 17 Feb 2018 06:40:23 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Sat, 17 Feb 2018 06:40:24 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Sat, 17 Feb 2018 06:40:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 17 Feb 2018 06:40:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 06:40:26 GMT
EXPOSE 3306/tcp
# Sat, 17 Feb 2018 06:40:27 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e86691d483c1c6ea1e788bfe7aecb06e79886ec5fffdcfffd7b9f3505100e3`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffadeffb3eb40dbe3283f23b0b16ec41818177f4407d9892508f288cfc0469e3`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 1.3 MB (1303039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2c640eac6bb82eb713abc6969fbbc3d2305696024d1842e4c058025f2983e6`  
		Last Modified: Sat, 17 Feb 2018 06:55:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee255c872c0c3b8a94c3d6d38c1bc610c3425b4c5b84dce025bf383e54b90ec8`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 6.7 MB (6671997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd879b6a37d82e7abc6009d8be4b2f3d07766574003887753d0e9bb5b358452`  
		Last Modified: Sat, 17 Feb 2018 06:55:36 GMT  
		Size: 4.7 KB (4679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c016da3e279aa6394d3029d0f846c428386d6437c5fdeda94929be7788614c`  
		Last Modified: Sat, 17 Feb 2018 06:55:34 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:005ee5cb88288eee0b9e29bf71148e1265c670afa2ffdb32875a44ed7c0271b4`  
		Last Modified: Sat, 17 Feb 2018 06:57:54 GMT  
		Size: 53.0 MB (52995265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:194b2309db6ee80a63915560ad582e92cef9efc9d4a4f1f18ec1129d7b0dbfef`  
		Last Modified: Sat, 17 Feb 2018 06:57:31 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ad3f539ea9585108d51a2c0e85c8ecde6da3b8caa89609c465003761c249e7`  
		Last Modified: Sat, 17 Feb 2018 06:57:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7`

```console
$ docker pull percona@sha256:49dcab4276b2c04b4c9fb2dc65932e5b1092a80f50eee301678d252bc0972b09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7` - linux; amd64

```console
$ docker pull percona@sha256:d965a4d6e76b9ae6954f6f4b45247c97c3108663fb8b89fb8df6853cf7b2b843
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.2 MB (141161014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:301e74b8267431a8a20526563ca2473884779fa1c1d2210bb0fde6e0e1159fd4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 06:37:39 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 17 Feb 2018 06:37:40 GMT
ENV GOSU_VERSION=1.7
# Sat, 17 Feb 2018 06:38:04 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 17 Feb 2018 06:38:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 06:38:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 06:38:24 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 17 Feb 2018 06:38:27 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 17 Feb 2018 06:38:39 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Sat, 17 Feb 2018 06:38:39 GMT
ENV PERCONA_MAJOR=5.7
# Sat, 17 Feb 2018 06:38:40 GMT
ENV PERCONA_VERSION=5.7.20-19-1.jessie
# Sat, 17 Feb 2018 06:39:09 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 17 Feb 2018 06:39:10 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Sat, 17 Feb 2018 06:39:10 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Sat, 17 Feb 2018 06:39:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 17 Feb 2018 06:39:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 06:39:24 GMT
EXPOSE 3306/tcp
# Sat, 17 Feb 2018 06:39:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e86691d483c1c6ea1e788bfe7aecb06e79886ec5fffdcfffd7b9f3505100e3`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffadeffb3eb40dbe3283f23b0b16ec41818177f4407d9892508f288cfc0469e3`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 1.3 MB (1303039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2c640eac6bb82eb713abc6969fbbc3d2305696024d1842e4c058025f2983e6`  
		Last Modified: Sat, 17 Feb 2018 06:55:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee255c872c0c3b8a94c3d6d38c1bc610c3425b4c5b84dce025bf383e54b90ec8`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 6.7 MB (6671997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd879b6a37d82e7abc6009d8be4b2f3d07766574003887753d0e9bb5b358452`  
		Last Modified: Sat, 17 Feb 2018 06:55:36 GMT  
		Size: 4.7 KB (4679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c016da3e279aa6394d3029d0f846c428386d6437c5fdeda94929be7788614c`  
		Last Modified: Sat, 17 Feb 2018 06:55:34 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7752c7a5606130861a3a9055cda54afa511e2cdb28780fab24919e93154b63f2`  
		Last Modified: Sat, 17 Feb 2018 06:55:52 GMT  
		Size: 80.6 MB (80568027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf2930c06d16b69cab41fe7f150eef22d1af4fc111fd3004def2fa414a8e72a`  
		Last Modified: Sat, 17 Feb 2018 06:55:34 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1193a4757b914d84e0c3507d350dab05e0291a35c80db5709b1e0f7ea48042cb`  
		Last Modified: Sat, 17 Feb 2018 06:55:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7.20`

```console
$ docker pull percona@sha256:49dcab4276b2c04b4c9fb2dc65932e5b1092a80f50eee301678d252bc0972b09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7.20` - linux; amd64

```console
$ docker pull percona@sha256:d965a4d6e76b9ae6954f6f4b45247c97c3108663fb8b89fb8df6853cf7b2b843
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.2 MB (141161014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:301e74b8267431a8a20526563ca2473884779fa1c1d2210bb0fde6e0e1159fd4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 06:37:39 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 17 Feb 2018 06:37:40 GMT
ENV GOSU_VERSION=1.7
# Sat, 17 Feb 2018 06:38:04 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 17 Feb 2018 06:38:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 06:38:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 06:38:24 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 17 Feb 2018 06:38:27 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 17 Feb 2018 06:38:39 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Sat, 17 Feb 2018 06:38:39 GMT
ENV PERCONA_MAJOR=5.7
# Sat, 17 Feb 2018 06:38:40 GMT
ENV PERCONA_VERSION=5.7.20-19-1.jessie
# Sat, 17 Feb 2018 06:39:09 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 17 Feb 2018 06:39:10 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Sat, 17 Feb 2018 06:39:10 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Sat, 17 Feb 2018 06:39:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 17 Feb 2018 06:39:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 06:39:24 GMT
EXPOSE 3306/tcp
# Sat, 17 Feb 2018 06:39:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e86691d483c1c6ea1e788bfe7aecb06e79886ec5fffdcfffd7b9f3505100e3`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffadeffb3eb40dbe3283f23b0b16ec41818177f4407d9892508f288cfc0469e3`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 1.3 MB (1303039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2c640eac6bb82eb713abc6969fbbc3d2305696024d1842e4c058025f2983e6`  
		Last Modified: Sat, 17 Feb 2018 06:55:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee255c872c0c3b8a94c3d6d38c1bc610c3425b4c5b84dce025bf383e54b90ec8`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 6.7 MB (6671997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd879b6a37d82e7abc6009d8be4b2f3d07766574003887753d0e9bb5b358452`  
		Last Modified: Sat, 17 Feb 2018 06:55:36 GMT  
		Size: 4.7 KB (4679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c016da3e279aa6394d3029d0f846c428386d6437c5fdeda94929be7788614c`  
		Last Modified: Sat, 17 Feb 2018 06:55:34 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7752c7a5606130861a3a9055cda54afa511e2cdb28780fab24919e93154b63f2`  
		Last Modified: Sat, 17 Feb 2018 06:55:52 GMT  
		Size: 80.6 MB (80568027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf2930c06d16b69cab41fe7f150eef22d1af4fc111fd3004def2fa414a8e72a`  
		Last Modified: Sat, 17 Feb 2018 06:55:34 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1193a4757b914d84e0c3507d350dab05e0291a35c80db5709b1e0f7ea48042cb`  
		Last Modified: Sat, 17 Feb 2018 06:55:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:latest`

```console
$ docker pull percona@sha256:d211ef45100813ebce9026163e562e226fecc1fce6b8b1af6baeed54ebf77a25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:latest` - linux; amd64

```console
$ docker pull percona@sha256:6a7681616af89ee4706b5aace8f2f1a4df93fb988e64a007c9f960a624c5e5e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.1 MB (141148084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc189d65dd082c9976fa8257f3b048f02b4f02d5ea581f0de8d507378b2370d5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:17:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Dec 2017 02:22:49 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Dec 2017 02:23:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Dec 2017 02:23:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 02:38:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:38:33 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Dec 2017 02:38:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 02:38:37 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Tue, 12 Dec 2017 02:38:37 GMT
ENV PERCONA_MAJOR=5.7
# Thu, 04 Jan 2018 00:06:34 GMT
ENV PERCONA_VERSION=5.7.20-19-1.jessie
# Thu, 04 Jan 2018 00:07:10 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 04 Jan 2018 00:07:11 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 04 Jan 2018 00:07:11 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Thu, 04 Jan 2018 00:07:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 04 Jan 2018 00:07:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 04 Jan 2018 00:07:20 GMT
EXPOSE 3306/tcp
# Thu, 04 Jan 2018 00:07:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78032de49d65ab1151d278821068401fa7a8964c16b2f4441a3ef9ac8dd02229`  
		Last Modified: Tue, 12 Dec 2017 02:23:47 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837546b20bc4af04c4cd0b34ac6cb74418f0400fa80045d02d341aecbc70f928`  
		Last Modified: Tue, 12 Dec 2017 02:34:38 GMT  
		Size: 1.3 MB (1303017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8316af6cc601a268bccfd58f93c2598e4a5f8a6b101cb9ffe365bcd467cb8e`  
		Last Modified: Tue, 12 Dec 2017 02:34:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf376ff5a98933d3c67cab6adb1a5a81e906ca6897c969642075a7c4ae000026`  
		Last Modified: Tue, 12 Dec 2017 02:42:13 GMT  
		Size: 6.7 MB (6671940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9df53b4003260bf8073ebb405bd35c389e52bc898d7bef76e0bed848d67fb1`  
		Last Modified: Tue, 12 Dec 2017 02:42:09 GMT  
		Size: 4.7 KB (4679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d585cd2f11d440f78ff01fda4460b314ed1da81c6f74e8fb611b635860438168`  
		Last Modified: Tue, 12 Dec 2017 02:42:09 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dce6b7724ec77fcf59037025db7acb7193a2d99b55568a6147f3a82b15909d15`  
		Last Modified: Thu, 04 Jan 2018 00:08:10 GMT  
		Size: 80.6 MB (80563772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df1e8566cce6977ebed1d2cdb4d58d7ad37a9e500a2b4314cc16b6d30994472`  
		Last Modified: Thu, 04 Jan 2018 00:07:57 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff57fe82a4ea88e0dca9410719305531fa30793f8f21b4285cf4d2d7578d83d6`  
		Last Modified: Thu, 04 Jan 2018 00:07:57 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
