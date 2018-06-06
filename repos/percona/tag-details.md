<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `percona`

-	[`percona:5`](#percona5)
-	[`percona:5.5`](#percona55)
-	[`percona:5.5.60`](#percona5560)
-	[`percona:5.6`](#percona56)
-	[`percona:5.6.40`](#percona5640)
-	[`percona:5.7`](#percona57)
-	[`percona:5.7.22`](#percona5722)
-	[`percona:latest`](#perconalatest)

## `percona:5`

```console
$ docker pull percona@sha256:da5090852414016e5a0d540b4eabedc548ef8b0bca60e54613b9d5b0a662de4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5` - linux; amd64

```console
$ docker pull percona@sha256:2ccc0883c0aa983af815d5675c25f230aee4ad3b60cc925c4565ef4d21c2c5c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.2 MB (143183990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94a2cf0efaba5abc41bdf1435849055985dc84fca6c18aedb65ad637902e2ec5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 18:35:02 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 06 Jun 2018 18:35:02 GMT
ENV GOSU_VERSION=1.7
# Wed, 06 Jun 2018 18:35:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Jun 2018 18:36:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Jun 2018 18:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:36:43 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 06 Jun 2018 18:36:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 06 Jun 2018 18:36:53 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Wed, 06 Jun 2018 18:36:53 GMT
ENV PERCONA_MAJOR=5.7
# Wed, 06 Jun 2018 18:36:53 GMT
ENV PERCONA_VERSION=5.7.22-22-1.jessie
# Wed, 06 Jun 2018 18:38:41 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 06 Jun 2018 18:38:42 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 06 Jun 2018 18:38:42 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Wed, 06 Jun 2018 18:38:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 06 Jun 2018 18:38:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Jun 2018 18:38:43 GMT
EXPOSE 3306/tcp
# Wed, 06 Jun 2018 18:38:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79b1d6f55d834d4cc91cd78e5871d28314aa9ec9f422f3bf6dfc0cbde930d13`  
		Last Modified: Wed, 06 Jun 2018 18:42:38 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0ba166e699ffeee0a4312dedcdc918965226d02f092c1064caff46c1704331`  
		Last Modified: Wed, 06 Jun 2018 18:42:39 GMT  
		Size: 1.3 MB (1306699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad2850e6f91bc294dfe67381c4ccd63c6c51e324bbc9b7b59c1657c10a75647`  
		Last Modified: Wed, 06 Jun 2018 18:42:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc5233fb42a40f1f1701445ec42ec7daada3cd5c0fe570a3fa380e710672256`  
		Last Modified: Wed, 06 Jun 2018 18:42:40 GMT  
		Size: 5.0 MB (5010560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:388c414acb58379064b0b9a90f8c70642db3bda5d2eea2665523d4180c1c7c41`  
		Last Modified: Wed, 06 Jun 2018 18:42:36 GMT  
		Size: 4.7 KB (4678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7896f6b84f562efc0677c559f414d11b23f3f0f02495d98a0b404466de40423`  
		Last Modified: Wed, 06 Jun 2018 18:42:35 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e6079c2b2870b1d813cc7a7015e6129116036df7abc8e3f88c1ba9d9bdc8a0e`  
		Last Modified: Wed, 06 Jun 2018 18:43:04 GMT  
		Size: 82.6 MB (82594496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05ec4b77eba32c1cfd644d68cd10fb3a5a4d682bd062f3b72d37ade8a970e5f`  
		Last Modified: Wed, 06 Jun 2018 18:42:35 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5c6acf969ce194e5a87a59e1681168c3797b1b05d1b4164b5785de8971fe0d`  
		Last Modified: Wed, 06 Jun 2018 18:42:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5`

```console
$ docker pull percona@sha256:4977db57240c7d6b0f585fdb9ecf3199f9ae2c4a2670e0c010c43e9b370802c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.5` - linux; amd64

```console
$ docker pull percona@sha256:08dd3fdedf0d3d172785f1ebe628a9a9b91637f08069e650264d9e6ca7b53cda
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.1 MB (107087393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5406a13bb4d7b27286eae7f2eab8b9c26273ec46f65e159a5e874a2c37007d9e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 18:35:02 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 06 Jun 2018 18:35:02 GMT
ENV GOSU_VERSION=1.7
# Wed, 06 Jun 2018 18:35:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Jun 2018 18:36:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Jun 2018 18:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:36:43 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 06 Jun 2018 18:36:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 06 Jun 2018 18:36:53 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Wed, 06 Jun 2018 18:40:35 GMT
ENV PERCONA_MAJOR=5.5
# Wed, 06 Jun 2018 18:40:35 GMT
ENV PERCONA_VERSION=5.5.60-rel38.12-1.jessie
# Wed, 06 Jun 2018 18:42:12 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 06 Jun 2018 18:42:13 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 06 Jun 2018 18:42:13 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Wed, 06 Jun 2018 18:42:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 06 Jun 2018 18:42:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Jun 2018 18:42:14 GMT
EXPOSE 3306/tcp
# Wed, 06 Jun 2018 18:42:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79b1d6f55d834d4cc91cd78e5871d28314aa9ec9f422f3bf6dfc0cbde930d13`  
		Last Modified: Wed, 06 Jun 2018 18:42:38 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0ba166e699ffeee0a4312dedcdc918965226d02f092c1064caff46c1704331`  
		Last Modified: Wed, 06 Jun 2018 18:42:39 GMT  
		Size: 1.3 MB (1306699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad2850e6f91bc294dfe67381c4ccd63c6c51e324bbc9b7b59c1657c10a75647`  
		Last Modified: Wed, 06 Jun 2018 18:42:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc5233fb42a40f1f1701445ec42ec7daada3cd5c0fe570a3fa380e710672256`  
		Last Modified: Wed, 06 Jun 2018 18:42:40 GMT  
		Size: 5.0 MB (5010560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:388c414acb58379064b0b9a90f8c70642db3bda5d2eea2665523d4180c1c7c41`  
		Last Modified: Wed, 06 Jun 2018 18:42:36 GMT  
		Size: 4.7 KB (4678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7896f6b84f562efc0677c559f414d11b23f3f0f02495d98a0b404466de40423`  
		Last Modified: Wed, 06 Jun 2018 18:42:35 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458fe202c4b7f76923bdf49ff224c7b2a50d040c3c7b711cb03245bcce9553b3`  
		Last Modified: Wed, 06 Jun 2018 18:44:29 GMT  
		Size: 46.5 MB (46497902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55113edfd22c73d5780765ecf2e53ff55928db7c5b5c67dd70a70b927a3e1c04`  
		Last Modified: Wed, 06 Jun 2018 18:44:13 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db53cebe7658181986f21d906d128023a0d1ad72fd204ff6412528adf9fb365e`  
		Last Modified: Wed, 06 Jun 2018 18:44:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5.60`

```console
$ docker pull percona@sha256:4977db57240c7d6b0f585fdb9ecf3199f9ae2c4a2670e0c010c43e9b370802c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.5.60` - linux; amd64

```console
$ docker pull percona@sha256:08dd3fdedf0d3d172785f1ebe628a9a9b91637f08069e650264d9e6ca7b53cda
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.1 MB (107087393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5406a13bb4d7b27286eae7f2eab8b9c26273ec46f65e159a5e874a2c37007d9e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 18:35:02 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 06 Jun 2018 18:35:02 GMT
ENV GOSU_VERSION=1.7
# Wed, 06 Jun 2018 18:35:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Jun 2018 18:36:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Jun 2018 18:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:36:43 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 06 Jun 2018 18:36:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 06 Jun 2018 18:36:53 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Wed, 06 Jun 2018 18:40:35 GMT
ENV PERCONA_MAJOR=5.5
# Wed, 06 Jun 2018 18:40:35 GMT
ENV PERCONA_VERSION=5.5.60-rel38.12-1.jessie
# Wed, 06 Jun 2018 18:42:12 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 06 Jun 2018 18:42:13 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 06 Jun 2018 18:42:13 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Wed, 06 Jun 2018 18:42:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 06 Jun 2018 18:42:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Jun 2018 18:42:14 GMT
EXPOSE 3306/tcp
# Wed, 06 Jun 2018 18:42:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79b1d6f55d834d4cc91cd78e5871d28314aa9ec9f422f3bf6dfc0cbde930d13`  
		Last Modified: Wed, 06 Jun 2018 18:42:38 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0ba166e699ffeee0a4312dedcdc918965226d02f092c1064caff46c1704331`  
		Last Modified: Wed, 06 Jun 2018 18:42:39 GMT  
		Size: 1.3 MB (1306699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad2850e6f91bc294dfe67381c4ccd63c6c51e324bbc9b7b59c1657c10a75647`  
		Last Modified: Wed, 06 Jun 2018 18:42:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc5233fb42a40f1f1701445ec42ec7daada3cd5c0fe570a3fa380e710672256`  
		Last Modified: Wed, 06 Jun 2018 18:42:40 GMT  
		Size: 5.0 MB (5010560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:388c414acb58379064b0b9a90f8c70642db3bda5d2eea2665523d4180c1c7c41`  
		Last Modified: Wed, 06 Jun 2018 18:42:36 GMT  
		Size: 4.7 KB (4678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7896f6b84f562efc0677c559f414d11b23f3f0f02495d98a0b404466de40423`  
		Last Modified: Wed, 06 Jun 2018 18:42:35 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458fe202c4b7f76923bdf49ff224c7b2a50d040c3c7b711cb03245bcce9553b3`  
		Last Modified: Wed, 06 Jun 2018 18:44:29 GMT  
		Size: 46.5 MB (46497902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55113edfd22c73d5780765ecf2e53ff55928db7c5b5c67dd70a70b927a3e1c04`  
		Last Modified: Wed, 06 Jun 2018 18:44:13 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db53cebe7658181986f21d906d128023a0d1ad72fd204ff6412528adf9fb365e`  
		Last Modified: Wed, 06 Jun 2018 18:44:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6`

```console
$ docker pull percona@sha256:75801dca13dd11a4955d0b37fe445880efb95ec7ff146c6b1569a100507e38e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6` - linux; amd64

```console
$ docker pull percona@sha256:0ff4dad6db8f69022701c112ce8bfe18c75ba628f79b02ca56a0cef70217ff7e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114971608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:685df712739d4810c3b49031bff1024451d8eafd4d3aaca0c1448dbe6a7e5427`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 18:35:02 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 06 Jun 2018 18:35:02 GMT
ENV GOSU_VERSION=1.7
# Wed, 06 Jun 2018 18:35:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Jun 2018 18:36:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Jun 2018 18:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:36:43 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 06 Jun 2018 18:36:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 06 Jun 2018 18:36:53 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Wed, 06 Jun 2018 18:38:56 GMT
ENV PERCONA_MAJOR=5.6
# Wed, 06 Jun 2018 18:38:56 GMT
ENV PERCONA_VERSION=5.6.40-84.0-1.jessie
# Wed, 06 Jun 2018 18:40:22 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 06 Jun 2018 18:40:22 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 06 Jun 2018 18:40:23 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Wed, 06 Jun 2018 18:40:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 06 Jun 2018 18:40:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Jun 2018 18:40:24 GMT
EXPOSE 3306/tcp
# Wed, 06 Jun 2018 18:40:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79b1d6f55d834d4cc91cd78e5871d28314aa9ec9f422f3bf6dfc0cbde930d13`  
		Last Modified: Wed, 06 Jun 2018 18:42:38 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0ba166e699ffeee0a4312dedcdc918965226d02f092c1064caff46c1704331`  
		Last Modified: Wed, 06 Jun 2018 18:42:39 GMT  
		Size: 1.3 MB (1306699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad2850e6f91bc294dfe67381c4ccd63c6c51e324bbc9b7b59c1657c10a75647`  
		Last Modified: Wed, 06 Jun 2018 18:42:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc5233fb42a40f1f1701445ec42ec7daada3cd5c0fe570a3fa380e710672256`  
		Last Modified: Wed, 06 Jun 2018 18:42:40 GMT  
		Size: 5.0 MB (5010560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:388c414acb58379064b0b9a90f8c70642db3bda5d2eea2665523d4180c1c7c41`  
		Last Modified: Wed, 06 Jun 2018 18:42:36 GMT  
		Size: 4.7 KB (4678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7896f6b84f562efc0677c559f414d11b23f3f0f02495d98a0b404466de40423`  
		Last Modified: Wed, 06 Jun 2018 18:42:35 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61178ed146d2723c6d4ea1ba14be7d65c8d1ae0c3314cb22d70040a87d85e2b8`  
		Last Modified: Wed, 06 Jun 2018 18:43:58 GMT  
		Size: 54.4 MB (54382116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e7322d592639320c7c9927a92a2c8e3920020215666a8763608a9aa02951d7`  
		Last Modified: Wed, 06 Jun 2018 18:43:39 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578784fcbda31e8109088cdbd52dbedb09d4a34dbf0cd41fe8245143773b03f5`  
		Last Modified: Wed, 06 Jun 2018 18:43:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.40`

```console
$ docker pull percona@sha256:75801dca13dd11a4955d0b37fe445880efb95ec7ff146c6b1569a100507e38e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6.40` - linux; amd64

```console
$ docker pull percona@sha256:0ff4dad6db8f69022701c112ce8bfe18c75ba628f79b02ca56a0cef70217ff7e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114971608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:685df712739d4810c3b49031bff1024451d8eafd4d3aaca0c1448dbe6a7e5427`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 18:35:02 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 06 Jun 2018 18:35:02 GMT
ENV GOSU_VERSION=1.7
# Wed, 06 Jun 2018 18:35:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Jun 2018 18:36:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Jun 2018 18:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:36:43 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 06 Jun 2018 18:36:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 06 Jun 2018 18:36:53 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Wed, 06 Jun 2018 18:38:56 GMT
ENV PERCONA_MAJOR=5.6
# Wed, 06 Jun 2018 18:38:56 GMT
ENV PERCONA_VERSION=5.6.40-84.0-1.jessie
# Wed, 06 Jun 2018 18:40:22 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 06 Jun 2018 18:40:22 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 06 Jun 2018 18:40:23 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Wed, 06 Jun 2018 18:40:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 06 Jun 2018 18:40:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Jun 2018 18:40:24 GMT
EXPOSE 3306/tcp
# Wed, 06 Jun 2018 18:40:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79b1d6f55d834d4cc91cd78e5871d28314aa9ec9f422f3bf6dfc0cbde930d13`  
		Last Modified: Wed, 06 Jun 2018 18:42:38 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0ba166e699ffeee0a4312dedcdc918965226d02f092c1064caff46c1704331`  
		Last Modified: Wed, 06 Jun 2018 18:42:39 GMT  
		Size: 1.3 MB (1306699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad2850e6f91bc294dfe67381c4ccd63c6c51e324bbc9b7b59c1657c10a75647`  
		Last Modified: Wed, 06 Jun 2018 18:42:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc5233fb42a40f1f1701445ec42ec7daada3cd5c0fe570a3fa380e710672256`  
		Last Modified: Wed, 06 Jun 2018 18:42:40 GMT  
		Size: 5.0 MB (5010560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:388c414acb58379064b0b9a90f8c70642db3bda5d2eea2665523d4180c1c7c41`  
		Last Modified: Wed, 06 Jun 2018 18:42:36 GMT  
		Size: 4.7 KB (4678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7896f6b84f562efc0677c559f414d11b23f3f0f02495d98a0b404466de40423`  
		Last Modified: Wed, 06 Jun 2018 18:42:35 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61178ed146d2723c6d4ea1ba14be7d65c8d1ae0c3314cb22d70040a87d85e2b8`  
		Last Modified: Wed, 06 Jun 2018 18:43:58 GMT  
		Size: 54.4 MB (54382116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e7322d592639320c7c9927a92a2c8e3920020215666a8763608a9aa02951d7`  
		Last Modified: Wed, 06 Jun 2018 18:43:39 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578784fcbda31e8109088cdbd52dbedb09d4a34dbf0cd41fe8245143773b03f5`  
		Last Modified: Wed, 06 Jun 2018 18:43:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7`

```console
$ docker pull percona@sha256:da5090852414016e5a0d540b4eabedc548ef8b0bca60e54613b9d5b0a662de4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7` - linux; amd64

```console
$ docker pull percona@sha256:2ccc0883c0aa983af815d5675c25f230aee4ad3b60cc925c4565ef4d21c2c5c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.2 MB (143183990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94a2cf0efaba5abc41bdf1435849055985dc84fca6c18aedb65ad637902e2ec5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 18:35:02 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 06 Jun 2018 18:35:02 GMT
ENV GOSU_VERSION=1.7
# Wed, 06 Jun 2018 18:35:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Jun 2018 18:36:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Jun 2018 18:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:36:43 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 06 Jun 2018 18:36:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 06 Jun 2018 18:36:53 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Wed, 06 Jun 2018 18:36:53 GMT
ENV PERCONA_MAJOR=5.7
# Wed, 06 Jun 2018 18:36:53 GMT
ENV PERCONA_VERSION=5.7.22-22-1.jessie
# Wed, 06 Jun 2018 18:38:41 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 06 Jun 2018 18:38:42 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 06 Jun 2018 18:38:42 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Wed, 06 Jun 2018 18:38:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 06 Jun 2018 18:38:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Jun 2018 18:38:43 GMT
EXPOSE 3306/tcp
# Wed, 06 Jun 2018 18:38:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79b1d6f55d834d4cc91cd78e5871d28314aa9ec9f422f3bf6dfc0cbde930d13`  
		Last Modified: Wed, 06 Jun 2018 18:42:38 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0ba166e699ffeee0a4312dedcdc918965226d02f092c1064caff46c1704331`  
		Last Modified: Wed, 06 Jun 2018 18:42:39 GMT  
		Size: 1.3 MB (1306699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad2850e6f91bc294dfe67381c4ccd63c6c51e324bbc9b7b59c1657c10a75647`  
		Last Modified: Wed, 06 Jun 2018 18:42:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc5233fb42a40f1f1701445ec42ec7daada3cd5c0fe570a3fa380e710672256`  
		Last Modified: Wed, 06 Jun 2018 18:42:40 GMT  
		Size: 5.0 MB (5010560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:388c414acb58379064b0b9a90f8c70642db3bda5d2eea2665523d4180c1c7c41`  
		Last Modified: Wed, 06 Jun 2018 18:42:36 GMT  
		Size: 4.7 KB (4678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7896f6b84f562efc0677c559f414d11b23f3f0f02495d98a0b404466de40423`  
		Last Modified: Wed, 06 Jun 2018 18:42:35 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e6079c2b2870b1d813cc7a7015e6129116036df7abc8e3f88c1ba9d9bdc8a0e`  
		Last Modified: Wed, 06 Jun 2018 18:43:04 GMT  
		Size: 82.6 MB (82594496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05ec4b77eba32c1cfd644d68cd10fb3a5a4d682bd062f3b72d37ade8a970e5f`  
		Last Modified: Wed, 06 Jun 2018 18:42:35 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5c6acf969ce194e5a87a59e1681168c3797b1b05d1b4164b5785de8971fe0d`  
		Last Modified: Wed, 06 Jun 2018 18:42:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7.22`

```console
$ docker pull percona@sha256:da5090852414016e5a0d540b4eabedc548ef8b0bca60e54613b9d5b0a662de4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7.22` - linux; amd64

```console
$ docker pull percona@sha256:2ccc0883c0aa983af815d5675c25f230aee4ad3b60cc925c4565ef4d21c2c5c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.2 MB (143183990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94a2cf0efaba5abc41bdf1435849055985dc84fca6c18aedb65ad637902e2ec5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 18:35:02 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 06 Jun 2018 18:35:02 GMT
ENV GOSU_VERSION=1.7
# Wed, 06 Jun 2018 18:35:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Jun 2018 18:36:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Jun 2018 18:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:36:43 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 06 Jun 2018 18:36:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 06 Jun 2018 18:36:53 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Wed, 06 Jun 2018 18:36:53 GMT
ENV PERCONA_MAJOR=5.7
# Wed, 06 Jun 2018 18:36:53 GMT
ENV PERCONA_VERSION=5.7.22-22-1.jessie
# Wed, 06 Jun 2018 18:38:41 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 06 Jun 2018 18:38:42 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 06 Jun 2018 18:38:42 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Wed, 06 Jun 2018 18:38:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 06 Jun 2018 18:38:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Jun 2018 18:38:43 GMT
EXPOSE 3306/tcp
# Wed, 06 Jun 2018 18:38:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79b1d6f55d834d4cc91cd78e5871d28314aa9ec9f422f3bf6dfc0cbde930d13`  
		Last Modified: Wed, 06 Jun 2018 18:42:38 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0ba166e699ffeee0a4312dedcdc918965226d02f092c1064caff46c1704331`  
		Last Modified: Wed, 06 Jun 2018 18:42:39 GMT  
		Size: 1.3 MB (1306699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad2850e6f91bc294dfe67381c4ccd63c6c51e324bbc9b7b59c1657c10a75647`  
		Last Modified: Wed, 06 Jun 2018 18:42:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc5233fb42a40f1f1701445ec42ec7daada3cd5c0fe570a3fa380e710672256`  
		Last Modified: Wed, 06 Jun 2018 18:42:40 GMT  
		Size: 5.0 MB (5010560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:388c414acb58379064b0b9a90f8c70642db3bda5d2eea2665523d4180c1c7c41`  
		Last Modified: Wed, 06 Jun 2018 18:42:36 GMT  
		Size: 4.7 KB (4678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7896f6b84f562efc0677c559f414d11b23f3f0f02495d98a0b404466de40423`  
		Last Modified: Wed, 06 Jun 2018 18:42:35 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e6079c2b2870b1d813cc7a7015e6129116036df7abc8e3f88c1ba9d9bdc8a0e`  
		Last Modified: Wed, 06 Jun 2018 18:43:04 GMT  
		Size: 82.6 MB (82594496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05ec4b77eba32c1cfd644d68cd10fb3a5a4d682bd062f3b72d37ade8a970e5f`  
		Last Modified: Wed, 06 Jun 2018 18:42:35 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5c6acf969ce194e5a87a59e1681168c3797b1b05d1b4164b5785de8971fe0d`  
		Last Modified: Wed, 06 Jun 2018 18:42:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:latest`

```console
$ docker pull percona@sha256:da5090852414016e5a0d540b4eabedc548ef8b0bca60e54613b9d5b0a662de4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:latest` - linux; amd64

```console
$ docker pull percona@sha256:2ccc0883c0aa983af815d5675c25f230aee4ad3b60cc925c4565ef4d21c2c5c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.2 MB (143183990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94a2cf0efaba5abc41bdf1435849055985dc84fca6c18aedb65ad637902e2ec5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 18:35:02 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 06 Jun 2018 18:35:02 GMT
ENV GOSU_VERSION=1.7
# Wed, 06 Jun 2018 18:35:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Jun 2018 18:36:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Jun 2018 18:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:36:43 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 06 Jun 2018 18:36:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 06 Jun 2018 18:36:53 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Wed, 06 Jun 2018 18:36:53 GMT
ENV PERCONA_MAJOR=5.7
# Wed, 06 Jun 2018 18:36:53 GMT
ENV PERCONA_VERSION=5.7.22-22-1.jessie
# Wed, 06 Jun 2018 18:38:41 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 06 Jun 2018 18:38:42 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 06 Jun 2018 18:38:42 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Wed, 06 Jun 2018 18:38:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 06 Jun 2018 18:38:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Jun 2018 18:38:43 GMT
EXPOSE 3306/tcp
# Wed, 06 Jun 2018 18:38:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79b1d6f55d834d4cc91cd78e5871d28314aa9ec9f422f3bf6dfc0cbde930d13`  
		Last Modified: Wed, 06 Jun 2018 18:42:38 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0ba166e699ffeee0a4312dedcdc918965226d02f092c1064caff46c1704331`  
		Last Modified: Wed, 06 Jun 2018 18:42:39 GMT  
		Size: 1.3 MB (1306699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad2850e6f91bc294dfe67381c4ccd63c6c51e324bbc9b7b59c1657c10a75647`  
		Last Modified: Wed, 06 Jun 2018 18:42:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc5233fb42a40f1f1701445ec42ec7daada3cd5c0fe570a3fa380e710672256`  
		Last Modified: Wed, 06 Jun 2018 18:42:40 GMT  
		Size: 5.0 MB (5010560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:388c414acb58379064b0b9a90f8c70642db3bda5d2eea2665523d4180c1c7c41`  
		Last Modified: Wed, 06 Jun 2018 18:42:36 GMT  
		Size: 4.7 KB (4678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7896f6b84f562efc0677c559f414d11b23f3f0f02495d98a0b404466de40423`  
		Last Modified: Wed, 06 Jun 2018 18:42:35 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e6079c2b2870b1d813cc7a7015e6129116036df7abc8e3f88c1ba9d9bdc8a0e`  
		Last Modified: Wed, 06 Jun 2018 18:43:04 GMT  
		Size: 82.6 MB (82594496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05ec4b77eba32c1cfd644d68cd10fb3a5a4d682bd062f3b72d37ade8a970e5f`  
		Last Modified: Wed, 06 Jun 2018 18:42:35 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5c6acf969ce194e5a87a59e1681168c3797b1b05d1b4164b5785de8971fe0d`  
		Last Modified: Wed, 06 Jun 2018 18:42:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
