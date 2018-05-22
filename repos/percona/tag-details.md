<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `percona`

-	[`percona:5`](#percona5)
-	[`percona:5.5`](#percona55)
-	[`percona:5.5.60`](#percona5560)
-	[`percona:5.6`](#percona56)
-	[`percona:5.6.39`](#percona5639)
-	[`percona:5.7`](#percona57)
-	[`percona:5.7.21`](#percona5721)
-	[`percona:latest`](#perconalatest)

## `percona:5`

```console
$ docker pull percona@sha256:ec54941f921e03cf33475953a9340f3115051a58f98c55f8c5c03597ae7cd942
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5` - linux; amd64

```console
$ docker pull percona@sha256:aeae957ebdd56bc61d9e909da2b727f1deee833d589dc8959d9bc4065fc3cf30
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143028768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:145a31e8326239d5b1c6debb8b3c343c083857c6dbd35ee5f304840a75d1d9e8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 15:37:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 30 Apr 2018 17:29:43 GMT
ENV GOSU_VERSION=1.7
# Mon, 30 Apr 2018 17:30:14 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 30 Apr 2018 17:30:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 17:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 17:30:37 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 30 Apr 2018 17:30:42 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 17:30:43 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Mon, 30 Apr 2018 17:30:43 GMT
ENV PERCONA_MAJOR=5.7
# Mon, 30 Apr 2018 17:30:43 GMT
ENV PERCONA_VERSION=5.7.21-21-3.jessie
# Mon, 30 Apr 2018 17:31:27 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 30 Apr 2018 17:31:27 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Mon, 30 Apr 2018 17:31:28 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Mon, 30 Apr 2018 17:31:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 30 Apr 2018 17:31:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 30 Apr 2018 17:31:30 GMT
EXPOSE 3306/tcp
# Mon, 30 Apr 2018 17:31:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6a779d83f57640f88ed719545d1ed334a18d3c33fc9f139892918a096a4d8e`  
		Last Modified: Mon, 30 Apr 2018 16:32:45 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a00529fd5434fa8c18aa8f0126f52515d362600bd6bf0dfad4cdb6029727aa`  
		Last Modified: Mon, 30 Apr 2018 18:18:25 GMT  
		Size: 1.3 MB (1306656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c15fa9f23823a207ef8337bbb01796d8e132321c8e480cf744a9ae157b216a`  
		Last Modified: Mon, 30 Apr 2018 18:18:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2530690f2088ec2e8d010dc7a4887b6f83ec1690c9076e64b37025fa0d40b8dc`  
		Last Modified: Mon, 30 Apr 2018 18:18:25 GMT  
		Size: 5.0 MB (5010178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7361feba8cc877f3b6acc117cbea84158e696cd0865b72dd2ad316932d953869`  
		Last Modified: Mon, 30 Apr 2018 18:18:21 GMT  
		Size: 4.7 KB (4679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3fe652f0309d6a5e3b5bb3920cfd35b78d65c74b61e902fd5c2d7c04b7b377`  
		Last Modified: Mon, 30 Apr 2018 18:18:22 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b73a9244b43afbf6a1eef5613188e392591748c90157b1f058ee831647e48e6`  
		Last Modified: Mon, 30 Apr 2018 18:18:41 GMT  
		Size: 82.4 MB (82439702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1387b598ec8068dd30db81c8d4f011061f1267b4eb3de38d77ed24991088911b`  
		Last Modified: Mon, 30 Apr 2018 18:18:21 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d5581a38602f1c951b9563666a07df7ae1aad6b6c1ff704aa3830ab6e498836`  
		Last Modified: Mon, 30 Apr 2018 18:18:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5`

```console
$ docker pull percona@sha256:8941eac3b841b8a73294290284228433bff63a082f733e4c59f989f7fa2bfbbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.5` - linux; amd64

```console
$ docker pull percona@sha256:b92bc25f08aafcafc10a9701cc0b62c20c9b83fabc5302cc07e80820eff8ab5b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.1 MB (107086758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d64d22803549a6e0ab2ecd0134d6eacf4b2edc50e5bf93cd80f97b0e61a4ea7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 15:37:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 30 Apr 2018 17:29:43 GMT
ENV GOSU_VERSION=1.7
# Mon, 30 Apr 2018 17:30:14 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 30 Apr 2018 17:30:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 17:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 17:30:37 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 30 Apr 2018 17:30:42 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 17:30:43 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Mon, 30 Apr 2018 18:16:54 GMT
ENV PERCONA_MAJOR=5.5
# Mon, 21 May 2018 21:27:43 GMT
ENV PERCONA_VERSION=5.5.60-rel38.12-1.jessie
# Mon, 21 May 2018 21:28:38 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 21 May 2018 21:28:39 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Mon, 21 May 2018 21:28:39 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Mon, 21 May 2018 21:28:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 21 May 2018 21:28:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 May 2018 21:28:41 GMT
EXPOSE 3306/tcp
# Mon, 21 May 2018 21:28:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6a779d83f57640f88ed719545d1ed334a18d3c33fc9f139892918a096a4d8e`  
		Last Modified: Mon, 30 Apr 2018 16:32:45 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a00529fd5434fa8c18aa8f0126f52515d362600bd6bf0dfad4cdb6029727aa`  
		Last Modified: Mon, 30 Apr 2018 18:18:25 GMT  
		Size: 1.3 MB (1306656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c15fa9f23823a207ef8337bbb01796d8e132321c8e480cf744a9ae157b216a`  
		Last Modified: Mon, 30 Apr 2018 18:18:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2530690f2088ec2e8d010dc7a4887b6f83ec1690c9076e64b37025fa0d40b8dc`  
		Last Modified: Mon, 30 Apr 2018 18:18:25 GMT  
		Size: 5.0 MB (5010178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7361feba8cc877f3b6acc117cbea84158e696cd0865b72dd2ad316932d953869`  
		Last Modified: Mon, 30 Apr 2018 18:18:21 GMT  
		Size: 4.7 KB (4679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3fe652f0309d6a5e3b5bb3920cfd35b78d65c74b61e902fd5c2d7c04b7b377`  
		Last Modified: Mon, 30 Apr 2018 18:18:22 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf7a08ea0e10cb0bbf9e1e195e019433d13191c657fa4cac0ee071089e39eb2`  
		Last Modified: Mon, 21 May 2018 21:29:11 GMT  
		Size: 46.5 MB (46497689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064a76e0d2c2f932f4a5ffbe3b16b3c4af77fdbd1954dc8a4253ae67a48fb46a`  
		Last Modified: Mon, 21 May 2018 21:29:02 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18515a765e06071762e9dc1ccb802b1694dcfb6bab0cb19603a987077d6d1d18`  
		Last Modified: Mon, 21 May 2018 21:29:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5.60`

```console
$ docker pull percona@sha256:8941eac3b841b8a73294290284228433bff63a082f733e4c59f989f7fa2bfbbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.5.60` - linux; amd64

```console
$ docker pull percona@sha256:b92bc25f08aafcafc10a9701cc0b62c20c9b83fabc5302cc07e80820eff8ab5b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.1 MB (107086758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d64d22803549a6e0ab2ecd0134d6eacf4b2edc50e5bf93cd80f97b0e61a4ea7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 15:37:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 30 Apr 2018 17:29:43 GMT
ENV GOSU_VERSION=1.7
# Mon, 30 Apr 2018 17:30:14 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 30 Apr 2018 17:30:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 17:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 17:30:37 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 30 Apr 2018 17:30:42 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 17:30:43 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Mon, 30 Apr 2018 18:16:54 GMT
ENV PERCONA_MAJOR=5.5
# Mon, 21 May 2018 21:27:43 GMT
ENV PERCONA_VERSION=5.5.60-rel38.12-1.jessie
# Mon, 21 May 2018 21:28:38 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 21 May 2018 21:28:39 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Mon, 21 May 2018 21:28:39 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Mon, 21 May 2018 21:28:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 21 May 2018 21:28:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 May 2018 21:28:41 GMT
EXPOSE 3306/tcp
# Mon, 21 May 2018 21:28:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6a779d83f57640f88ed719545d1ed334a18d3c33fc9f139892918a096a4d8e`  
		Last Modified: Mon, 30 Apr 2018 16:32:45 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a00529fd5434fa8c18aa8f0126f52515d362600bd6bf0dfad4cdb6029727aa`  
		Last Modified: Mon, 30 Apr 2018 18:18:25 GMT  
		Size: 1.3 MB (1306656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c15fa9f23823a207ef8337bbb01796d8e132321c8e480cf744a9ae157b216a`  
		Last Modified: Mon, 30 Apr 2018 18:18:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2530690f2088ec2e8d010dc7a4887b6f83ec1690c9076e64b37025fa0d40b8dc`  
		Last Modified: Mon, 30 Apr 2018 18:18:25 GMT  
		Size: 5.0 MB (5010178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7361feba8cc877f3b6acc117cbea84158e696cd0865b72dd2ad316932d953869`  
		Last Modified: Mon, 30 Apr 2018 18:18:21 GMT  
		Size: 4.7 KB (4679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3fe652f0309d6a5e3b5bb3920cfd35b78d65c74b61e902fd5c2d7c04b7b377`  
		Last Modified: Mon, 30 Apr 2018 18:18:22 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf7a08ea0e10cb0bbf9e1e195e019433d13191c657fa4cac0ee071089e39eb2`  
		Last Modified: Mon, 21 May 2018 21:29:11 GMT  
		Size: 46.5 MB (46497689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064a76e0d2c2f932f4a5ffbe3b16b3c4af77fdbd1954dc8a4253ae67a48fb46a`  
		Last Modified: Mon, 21 May 2018 21:29:02 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18515a765e06071762e9dc1ccb802b1694dcfb6bab0cb19603a987077d6d1d18`  
		Last Modified: Mon, 21 May 2018 21:29:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6`

```console
$ docker pull percona@sha256:6e18e87982f3da328b1aea9fd48e9bfcaf0eb35e3d415cb578f3d815ca1c84ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6` - linux; amd64

```console
$ docker pull percona@sha256:6f3348e34be5e76f29fc09e66469d2a9fa5cdfc3e1ef4e0893ea454675d08459
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114952338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0c559c7ddebab563c4119798ffd4d9dd2fae0c98803a4ccff1cdac0d0c03d30`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 15:37:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 30 Apr 2018 17:29:43 GMT
ENV GOSU_VERSION=1.7
# Mon, 30 Apr 2018 17:30:14 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 30 Apr 2018 17:30:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 17:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 17:30:37 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 30 Apr 2018 17:30:42 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 17:30:43 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Mon, 30 Apr 2018 17:54:51 GMT
ENV PERCONA_MAJOR=5.6
# Mon, 30 Apr 2018 17:54:51 GMT
ENV PERCONA_VERSION=5.6.39-83.1-1.jessie
# Mon, 30 Apr 2018 17:55:35 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 30 Apr 2018 18:07:20 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Mon, 30 Apr 2018 18:14:23 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Mon, 30 Apr 2018 18:14:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 30 Apr 2018 18:14:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 30 Apr 2018 18:14:25 GMT
EXPOSE 3306/tcp
# Mon, 30 Apr 2018 18:14:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6a779d83f57640f88ed719545d1ed334a18d3c33fc9f139892918a096a4d8e`  
		Last Modified: Mon, 30 Apr 2018 16:32:45 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a00529fd5434fa8c18aa8f0126f52515d362600bd6bf0dfad4cdb6029727aa`  
		Last Modified: Mon, 30 Apr 2018 18:18:25 GMT  
		Size: 1.3 MB (1306656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c15fa9f23823a207ef8337bbb01796d8e132321c8e480cf744a9ae157b216a`  
		Last Modified: Mon, 30 Apr 2018 18:18:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2530690f2088ec2e8d010dc7a4887b6f83ec1690c9076e64b37025fa0d40b8dc`  
		Last Modified: Mon, 30 Apr 2018 18:18:25 GMT  
		Size: 5.0 MB (5010178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7361feba8cc877f3b6acc117cbea84158e696cd0865b72dd2ad316932d953869`  
		Last Modified: Mon, 30 Apr 2018 18:18:21 GMT  
		Size: 4.7 KB (4679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3fe652f0309d6a5e3b5bb3920cfd35b78d65c74b61e902fd5c2d7c04b7b377`  
		Last Modified: Mon, 30 Apr 2018 18:18:22 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69c8b479a829465b46247b438e809fb20a6aa96287b384d369c27789e5b7a863`  
		Last Modified: Mon, 30 Apr 2018 18:35:45 GMT  
		Size: 54.4 MB (54363275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5dddf3870ab435448448c0c0ee6b2bf0622e98f40239abbcebe8353c308329d`  
		Last Modified: Mon, 30 Apr 2018 18:35:28 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc4dcd75f23f78a07f95e7359ea6c34363db647a60ea84e00ea6beb07095c314`  
		Last Modified: Mon, 30 Apr 2018 18:35:28 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.39`

```console
$ docker pull percona@sha256:6e18e87982f3da328b1aea9fd48e9bfcaf0eb35e3d415cb578f3d815ca1c84ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6.39` - linux; amd64

```console
$ docker pull percona@sha256:6f3348e34be5e76f29fc09e66469d2a9fa5cdfc3e1ef4e0893ea454675d08459
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114952338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0c559c7ddebab563c4119798ffd4d9dd2fae0c98803a4ccff1cdac0d0c03d30`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 15:37:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 30 Apr 2018 17:29:43 GMT
ENV GOSU_VERSION=1.7
# Mon, 30 Apr 2018 17:30:14 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 30 Apr 2018 17:30:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 17:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 17:30:37 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 30 Apr 2018 17:30:42 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 17:30:43 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Mon, 30 Apr 2018 17:54:51 GMT
ENV PERCONA_MAJOR=5.6
# Mon, 30 Apr 2018 17:54:51 GMT
ENV PERCONA_VERSION=5.6.39-83.1-1.jessie
# Mon, 30 Apr 2018 17:55:35 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 30 Apr 2018 18:07:20 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Mon, 30 Apr 2018 18:14:23 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Mon, 30 Apr 2018 18:14:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 30 Apr 2018 18:14:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 30 Apr 2018 18:14:25 GMT
EXPOSE 3306/tcp
# Mon, 30 Apr 2018 18:14:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6a779d83f57640f88ed719545d1ed334a18d3c33fc9f139892918a096a4d8e`  
		Last Modified: Mon, 30 Apr 2018 16:32:45 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a00529fd5434fa8c18aa8f0126f52515d362600bd6bf0dfad4cdb6029727aa`  
		Last Modified: Mon, 30 Apr 2018 18:18:25 GMT  
		Size: 1.3 MB (1306656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c15fa9f23823a207ef8337bbb01796d8e132321c8e480cf744a9ae157b216a`  
		Last Modified: Mon, 30 Apr 2018 18:18:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2530690f2088ec2e8d010dc7a4887b6f83ec1690c9076e64b37025fa0d40b8dc`  
		Last Modified: Mon, 30 Apr 2018 18:18:25 GMT  
		Size: 5.0 MB (5010178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7361feba8cc877f3b6acc117cbea84158e696cd0865b72dd2ad316932d953869`  
		Last Modified: Mon, 30 Apr 2018 18:18:21 GMT  
		Size: 4.7 KB (4679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3fe652f0309d6a5e3b5bb3920cfd35b78d65c74b61e902fd5c2d7c04b7b377`  
		Last Modified: Mon, 30 Apr 2018 18:18:22 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69c8b479a829465b46247b438e809fb20a6aa96287b384d369c27789e5b7a863`  
		Last Modified: Mon, 30 Apr 2018 18:35:45 GMT  
		Size: 54.4 MB (54363275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5dddf3870ab435448448c0c0ee6b2bf0622e98f40239abbcebe8353c308329d`  
		Last Modified: Mon, 30 Apr 2018 18:35:28 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc4dcd75f23f78a07f95e7359ea6c34363db647a60ea84e00ea6beb07095c314`  
		Last Modified: Mon, 30 Apr 2018 18:35:28 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7`

```console
$ docker pull percona@sha256:ec54941f921e03cf33475953a9340f3115051a58f98c55f8c5c03597ae7cd942
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7` - linux; amd64

```console
$ docker pull percona@sha256:aeae957ebdd56bc61d9e909da2b727f1deee833d589dc8959d9bc4065fc3cf30
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143028768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:145a31e8326239d5b1c6debb8b3c343c083857c6dbd35ee5f304840a75d1d9e8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 15:37:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 30 Apr 2018 17:29:43 GMT
ENV GOSU_VERSION=1.7
# Mon, 30 Apr 2018 17:30:14 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 30 Apr 2018 17:30:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 17:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 17:30:37 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 30 Apr 2018 17:30:42 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 17:30:43 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Mon, 30 Apr 2018 17:30:43 GMT
ENV PERCONA_MAJOR=5.7
# Mon, 30 Apr 2018 17:30:43 GMT
ENV PERCONA_VERSION=5.7.21-21-3.jessie
# Mon, 30 Apr 2018 17:31:27 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 30 Apr 2018 17:31:27 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Mon, 30 Apr 2018 17:31:28 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Mon, 30 Apr 2018 17:31:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 30 Apr 2018 17:31:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 30 Apr 2018 17:31:30 GMT
EXPOSE 3306/tcp
# Mon, 30 Apr 2018 17:31:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6a779d83f57640f88ed719545d1ed334a18d3c33fc9f139892918a096a4d8e`  
		Last Modified: Mon, 30 Apr 2018 16:32:45 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a00529fd5434fa8c18aa8f0126f52515d362600bd6bf0dfad4cdb6029727aa`  
		Last Modified: Mon, 30 Apr 2018 18:18:25 GMT  
		Size: 1.3 MB (1306656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c15fa9f23823a207ef8337bbb01796d8e132321c8e480cf744a9ae157b216a`  
		Last Modified: Mon, 30 Apr 2018 18:18:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2530690f2088ec2e8d010dc7a4887b6f83ec1690c9076e64b37025fa0d40b8dc`  
		Last Modified: Mon, 30 Apr 2018 18:18:25 GMT  
		Size: 5.0 MB (5010178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7361feba8cc877f3b6acc117cbea84158e696cd0865b72dd2ad316932d953869`  
		Last Modified: Mon, 30 Apr 2018 18:18:21 GMT  
		Size: 4.7 KB (4679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3fe652f0309d6a5e3b5bb3920cfd35b78d65c74b61e902fd5c2d7c04b7b377`  
		Last Modified: Mon, 30 Apr 2018 18:18:22 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b73a9244b43afbf6a1eef5613188e392591748c90157b1f058ee831647e48e6`  
		Last Modified: Mon, 30 Apr 2018 18:18:41 GMT  
		Size: 82.4 MB (82439702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1387b598ec8068dd30db81c8d4f011061f1267b4eb3de38d77ed24991088911b`  
		Last Modified: Mon, 30 Apr 2018 18:18:21 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d5581a38602f1c951b9563666a07df7ae1aad6b6c1ff704aa3830ab6e498836`  
		Last Modified: Mon, 30 Apr 2018 18:18:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7.21`

```console
$ docker pull percona@sha256:ec54941f921e03cf33475953a9340f3115051a58f98c55f8c5c03597ae7cd942
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7.21` - linux; amd64

```console
$ docker pull percona@sha256:aeae957ebdd56bc61d9e909da2b727f1deee833d589dc8959d9bc4065fc3cf30
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143028768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:145a31e8326239d5b1c6debb8b3c343c083857c6dbd35ee5f304840a75d1d9e8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 15:37:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 30 Apr 2018 17:29:43 GMT
ENV GOSU_VERSION=1.7
# Mon, 30 Apr 2018 17:30:14 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 30 Apr 2018 17:30:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 17:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 17:30:37 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 30 Apr 2018 17:30:42 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 17:30:43 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Mon, 30 Apr 2018 17:30:43 GMT
ENV PERCONA_MAJOR=5.7
# Mon, 30 Apr 2018 17:30:43 GMT
ENV PERCONA_VERSION=5.7.21-21-3.jessie
# Mon, 30 Apr 2018 17:31:27 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 30 Apr 2018 17:31:27 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Mon, 30 Apr 2018 17:31:28 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Mon, 30 Apr 2018 17:31:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 30 Apr 2018 17:31:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 30 Apr 2018 17:31:30 GMT
EXPOSE 3306/tcp
# Mon, 30 Apr 2018 17:31:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6a779d83f57640f88ed719545d1ed334a18d3c33fc9f139892918a096a4d8e`  
		Last Modified: Mon, 30 Apr 2018 16:32:45 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a00529fd5434fa8c18aa8f0126f52515d362600bd6bf0dfad4cdb6029727aa`  
		Last Modified: Mon, 30 Apr 2018 18:18:25 GMT  
		Size: 1.3 MB (1306656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c15fa9f23823a207ef8337bbb01796d8e132321c8e480cf744a9ae157b216a`  
		Last Modified: Mon, 30 Apr 2018 18:18:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2530690f2088ec2e8d010dc7a4887b6f83ec1690c9076e64b37025fa0d40b8dc`  
		Last Modified: Mon, 30 Apr 2018 18:18:25 GMT  
		Size: 5.0 MB (5010178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7361feba8cc877f3b6acc117cbea84158e696cd0865b72dd2ad316932d953869`  
		Last Modified: Mon, 30 Apr 2018 18:18:21 GMT  
		Size: 4.7 KB (4679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3fe652f0309d6a5e3b5bb3920cfd35b78d65c74b61e902fd5c2d7c04b7b377`  
		Last Modified: Mon, 30 Apr 2018 18:18:22 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b73a9244b43afbf6a1eef5613188e392591748c90157b1f058ee831647e48e6`  
		Last Modified: Mon, 30 Apr 2018 18:18:41 GMT  
		Size: 82.4 MB (82439702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1387b598ec8068dd30db81c8d4f011061f1267b4eb3de38d77ed24991088911b`  
		Last Modified: Mon, 30 Apr 2018 18:18:21 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d5581a38602f1c951b9563666a07df7ae1aad6b6c1ff704aa3830ab6e498836`  
		Last Modified: Mon, 30 Apr 2018 18:18:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:latest`

```console
$ docker pull percona@sha256:ec54941f921e03cf33475953a9340f3115051a58f98c55f8c5c03597ae7cd942
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:latest` - linux; amd64

```console
$ docker pull percona@sha256:aeae957ebdd56bc61d9e909da2b727f1deee833d589dc8959d9bc4065fc3cf30
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143028768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:145a31e8326239d5b1c6debb8b3c343c083857c6dbd35ee5f304840a75d1d9e8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 15:37:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 30 Apr 2018 17:29:43 GMT
ENV GOSU_VERSION=1.7
# Mon, 30 Apr 2018 17:30:14 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 30 Apr 2018 17:30:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 17:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 17:30:37 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 30 Apr 2018 17:30:42 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 17:30:43 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Mon, 30 Apr 2018 17:30:43 GMT
ENV PERCONA_MAJOR=5.7
# Mon, 30 Apr 2018 17:30:43 GMT
ENV PERCONA_VERSION=5.7.21-21-3.jessie
# Mon, 30 Apr 2018 17:31:27 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 30 Apr 2018 17:31:27 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Mon, 30 Apr 2018 17:31:28 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Mon, 30 Apr 2018 17:31:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 30 Apr 2018 17:31:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 30 Apr 2018 17:31:30 GMT
EXPOSE 3306/tcp
# Mon, 30 Apr 2018 17:31:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6a779d83f57640f88ed719545d1ed334a18d3c33fc9f139892918a096a4d8e`  
		Last Modified: Mon, 30 Apr 2018 16:32:45 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a00529fd5434fa8c18aa8f0126f52515d362600bd6bf0dfad4cdb6029727aa`  
		Last Modified: Mon, 30 Apr 2018 18:18:25 GMT  
		Size: 1.3 MB (1306656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c15fa9f23823a207ef8337bbb01796d8e132321c8e480cf744a9ae157b216a`  
		Last Modified: Mon, 30 Apr 2018 18:18:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2530690f2088ec2e8d010dc7a4887b6f83ec1690c9076e64b37025fa0d40b8dc`  
		Last Modified: Mon, 30 Apr 2018 18:18:25 GMT  
		Size: 5.0 MB (5010178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7361feba8cc877f3b6acc117cbea84158e696cd0865b72dd2ad316932d953869`  
		Last Modified: Mon, 30 Apr 2018 18:18:21 GMT  
		Size: 4.7 KB (4679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3fe652f0309d6a5e3b5bb3920cfd35b78d65c74b61e902fd5c2d7c04b7b377`  
		Last Modified: Mon, 30 Apr 2018 18:18:22 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b73a9244b43afbf6a1eef5613188e392591748c90157b1f058ee831647e48e6`  
		Last Modified: Mon, 30 Apr 2018 18:18:41 GMT  
		Size: 82.4 MB (82439702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1387b598ec8068dd30db81c8d4f011061f1267b4eb3de38d77ed24991088911b`  
		Last Modified: Mon, 30 Apr 2018 18:18:21 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d5581a38602f1c951b9563666a07df7ae1aad6b6c1ff704aa3830ab6e498836`  
		Last Modified: Mon, 30 Apr 2018 18:18:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
