<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `percona`

-	[`percona:5`](#percona5)
-	[`percona:5.5`](#percona55)
-	[`percona:5.5.59`](#percona5559)
-	[`percona:5.6`](#percona56)
-	[`percona:5.6.39`](#percona5639)
-	[`percona:5.7`](#percona57)
-	[`percona:5.7.21`](#percona5721)
-	[`percona:latest`](#perconalatest)

## `percona:5`

```console
$ docker pull percona@sha256:e21e1e6004dbbf8de35a598d8a9f66091759b5cd53e04fc14d272f829fa1edd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5` - linux; amd64

```console
$ docker pull percona@sha256:ce4de2ddb47e97968c001a737ddecf2785e7289b2ed31e29185f5a86d0050703
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.4 MB (141382864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df2871ddec7166a435fd437d3b15eed9d0d8c4f49408f8ea8920570d62949b9`
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
# Thu, 22 Feb 2018 21:05:37 GMT
ENV PERCONA_VERSION=5.7.21-20-1.jessie
# Thu, 22 Feb 2018 21:06:23 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 22 Feb 2018 21:06:24 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 22 Feb 2018 21:06:24 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Thu, 22 Feb 2018 21:06:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 22 Feb 2018 21:06:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Feb 2018 21:06:26 GMT
EXPOSE 3306/tcp
# Thu, 22 Feb 2018 21:06:26 GMT
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
	-	`sha256:af01234eb5cb8e257a04f9c8feb3660d89676baae04322642ea2847f34b42ab0`  
		Last Modified: Thu, 22 Feb 2018 21:07:14 GMT  
		Size: 80.8 MB (80789878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb336e52bfd713d788a805e062382207f585e57dd83070ece7a7c77a5ec7d9c`  
		Last Modified: Thu, 22 Feb 2018 21:06:54 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4385797095e8d818fa8db99c9b73e237bba915741f5e6e15e6340d09901cae`  
		Last Modified: Thu, 22 Feb 2018 21:06:54 GMT  
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
$ docker pull percona@sha256:e21e1e6004dbbf8de35a598d8a9f66091759b5cd53e04fc14d272f829fa1edd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7` - linux; amd64

```console
$ docker pull percona@sha256:ce4de2ddb47e97968c001a737ddecf2785e7289b2ed31e29185f5a86d0050703
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.4 MB (141382864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df2871ddec7166a435fd437d3b15eed9d0d8c4f49408f8ea8920570d62949b9`
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
# Thu, 22 Feb 2018 21:05:37 GMT
ENV PERCONA_VERSION=5.7.21-20-1.jessie
# Thu, 22 Feb 2018 21:06:23 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 22 Feb 2018 21:06:24 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 22 Feb 2018 21:06:24 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Thu, 22 Feb 2018 21:06:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 22 Feb 2018 21:06:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Feb 2018 21:06:26 GMT
EXPOSE 3306/tcp
# Thu, 22 Feb 2018 21:06:26 GMT
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
	-	`sha256:af01234eb5cb8e257a04f9c8feb3660d89676baae04322642ea2847f34b42ab0`  
		Last Modified: Thu, 22 Feb 2018 21:07:14 GMT  
		Size: 80.8 MB (80789878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb336e52bfd713d788a805e062382207f585e57dd83070ece7a7c77a5ec7d9c`  
		Last Modified: Thu, 22 Feb 2018 21:06:54 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4385797095e8d818fa8db99c9b73e237bba915741f5e6e15e6340d09901cae`  
		Last Modified: Thu, 22 Feb 2018 21:06:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7.21`

```console
$ docker pull percona@sha256:e21e1e6004dbbf8de35a598d8a9f66091759b5cd53e04fc14d272f829fa1edd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7.21` - linux; amd64

```console
$ docker pull percona@sha256:ce4de2ddb47e97968c001a737ddecf2785e7289b2ed31e29185f5a86d0050703
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.4 MB (141382864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df2871ddec7166a435fd437d3b15eed9d0d8c4f49408f8ea8920570d62949b9`
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
# Thu, 22 Feb 2018 21:05:37 GMT
ENV PERCONA_VERSION=5.7.21-20-1.jessie
# Thu, 22 Feb 2018 21:06:23 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 22 Feb 2018 21:06:24 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 22 Feb 2018 21:06:24 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Thu, 22 Feb 2018 21:06:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 22 Feb 2018 21:06:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Feb 2018 21:06:26 GMT
EXPOSE 3306/tcp
# Thu, 22 Feb 2018 21:06:26 GMT
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
	-	`sha256:af01234eb5cb8e257a04f9c8feb3660d89676baae04322642ea2847f34b42ab0`  
		Last Modified: Thu, 22 Feb 2018 21:07:14 GMT  
		Size: 80.8 MB (80789878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb336e52bfd713d788a805e062382207f585e57dd83070ece7a7c77a5ec7d9c`  
		Last Modified: Thu, 22 Feb 2018 21:06:54 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4385797095e8d818fa8db99c9b73e237bba915741f5e6e15e6340d09901cae`  
		Last Modified: Thu, 22 Feb 2018 21:06:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:latest`

```console
$ docker pull percona@sha256:e21e1e6004dbbf8de35a598d8a9f66091759b5cd53e04fc14d272f829fa1edd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:latest` - linux; amd64

```console
$ docker pull percona@sha256:ce4de2ddb47e97968c001a737ddecf2785e7289b2ed31e29185f5a86d0050703
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.4 MB (141382864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df2871ddec7166a435fd437d3b15eed9d0d8c4f49408f8ea8920570d62949b9`
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
# Thu, 22 Feb 2018 21:05:37 GMT
ENV PERCONA_VERSION=5.7.21-20-1.jessie
# Thu, 22 Feb 2018 21:06:23 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 22 Feb 2018 21:06:24 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 22 Feb 2018 21:06:24 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Thu, 22 Feb 2018 21:06:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 22 Feb 2018 21:06:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Feb 2018 21:06:26 GMT
EXPOSE 3306/tcp
# Thu, 22 Feb 2018 21:06:26 GMT
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
	-	`sha256:af01234eb5cb8e257a04f9c8feb3660d89676baae04322642ea2847f34b42ab0`  
		Last Modified: Thu, 22 Feb 2018 21:07:14 GMT  
		Size: 80.8 MB (80789878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb336e52bfd713d788a805e062382207f585e57dd83070ece7a7c77a5ec7d9c`  
		Last Modified: Thu, 22 Feb 2018 21:06:54 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4385797095e8d818fa8db99c9b73e237bba915741f5e6e15e6340d09901cae`  
		Last Modified: Thu, 22 Feb 2018 21:06:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
