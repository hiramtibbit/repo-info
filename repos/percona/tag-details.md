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
$ docker pull percona@sha256:fe3ae25a5b1890664edb13f0d7d9d31d78f15bff61f07b255f9fb52df09e0483
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5` - linux; amd64

```console
$ docker pull percona@sha256:ef778e2b3004fecb75031444e64111aed4e4702e5e2b7349c5288e5a3ee77cf1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.2 MB (143173193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:601b96f4fb70b3b51dc4f2ebb78c56cd6c0aaabdd3180d6bff8ef77ce6693640`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:45:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Jun 2018 23:19:29 GMT
ENV GOSU_VERSION=1.7
# Tue, 26 Jun 2018 23:20:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 26 Jun 2018 23:20:24 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Jun 2018 23:21:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:21:07 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 26 Jun 2018 23:21:17 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 26 Jun 2018 23:21:18 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Tue, 26 Jun 2018 23:21:18 GMT
ENV PERCONA_MAJOR=5.7
# Tue, 26 Jun 2018 23:21:18 GMT
ENV PERCONA_VERSION=5.7.22-22-1.jessie
# Tue, 26 Jun 2018 23:22:27 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 26 Jun 2018 23:22:28 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 26 Jun 2018 23:22:28 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Tue, 26 Jun 2018 23:22:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Jun 2018 23:22:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Jun 2018 23:22:30 GMT
EXPOSE 3306/tcp
# Tue, 26 Jun 2018 23:22:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb0394ab02fb9c34a789ca18d3ae17fa02271cd0e9dffbb53447996726e8605`  
		Last Modified: Tue, 26 Jun 2018 22:56:03 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f18113f6ce08462193406193a1fa99250e9bd6ef0660e066d88d3275c3b4338`  
		Last Modified: Tue, 26 Jun 2018 23:26:07 GMT  
		Size: 1.3 MB (1306730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47df7c3759c47a71706aed3bc14fce9e6751451b41952fa70ec1d3f8794bc459`  
		Last Modified: Tue, 26 Jun 2018 23:26:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37e917af0585d2433e3d9f2658b51db7f4f32ca908d27995a02b07f2d38e01fd`  
		Last Modified: Tue, 26 Jun 2018 23:26:09 GMT  
		Size: 5.0 MB (5010593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5769eddd664400a17349627d9ee1b77d7ffcf7d22a44aea7b495db5d8ca2bc5`  
		Last Modified: Tue, 26 Jun 2018 23:26:04 GMT  
		Size: 4.7 KB (4676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8d13d327758f0c01736465fc95a398d628ee1c096b0d320ce57196cf835d23`  
		Last Modified: Tue, 26 Jun 2018 23:26:04 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aab69a5d06560a74529dfe8e309a7eb6130c9179e9da10d2b926579e617652f4`  
		Last Modified: Tue, 26 Jun 2018 23:26:32 GMT  
		Size: 82.6 MB (82594180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4d623c5be0e7ae17bfebb04bfb6b974c4f7821153f185a16cd6628c9d9636b`  
		Last Modified: Tue, 26 Jun 2018 23:26:04 GMT  
		Size: 2.4 KB (2445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e35686c2310f254c1bb4a9c6685903de9a2489dc48c155c6e6c0bbf2c30e11`  
		Last Modified: Tue, 26 Jun 2018 23:26:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5`

```console
$ docker pull percona@sha256:9b8920d3380fd0f43edf14e6a056a93986ecf21236f0138ec022b3474e99a426
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.5` - linux; amd64

```console
$ docker pull percona@sha256:ec46e43969a6f27745bd4f941fcf047dcb67948b8038bc87d9e77c0bdcac8d30
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.1 MB (107077499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0a368fdcfb21a3a9dccae5ac347589d7bdd5746f1de77d501ff7f3caeb57c5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:45:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Jun 2018 23:19:29 GMT
ENV GOSU_VERSION=1.7
# Tue, 26 Jun 2018 23:20:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 26 Jun 2018 23:20:24 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Jun 2018 23:21:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:21:07 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 26 Jun 2018 23:21:17 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 26 Jun 2018 23:21:18 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Tue, 26 Jun 2018 23:24:12 GMT
ENV PERCONA_MAJOR=5.5
# Tue, 26 Jun 2018 23:24:13 GMT
ENV PERCONA_VERSION=5.5.60-rel38.12-1.jessie
# Tue, 26 Jun 2018 23:25:36 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 26 Jun 2018 23:25:36 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 26 Jun 2018 23:25:37 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Tue, 26 Jun 2018 23:25:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Jun 2018 23:25:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Jun 2018 23:25:38 GMT
EXPOSE 3306/tcp
# Tue, 26 Jun 2018 23:25:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb0394ab02fb9c34a789ca18d3ae17fa02271cd0e9dffbb53447996726e8605`  
		Last Modified: Tue, 26 Jun 2018 22:56:03 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f18113f6ce08462193406193a1fa99250e9bd6ef0660e066d88d3275c3b4338`  
		Last Modified: Tue, 26 Jun 2018 23:26:07 GMT  
		Size: 1.3 MB (1306730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47df7c3759c47a71706aed3bc14fce9e6751451b41952fa70ec1d3f8794bc459`  
		Last Modified: Tue, 26 Jun 2018 23:26:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37e917af0585d2433e3d9f2658b51db7f4f32ca908d27995a02b07f2d38e01fd`  
		Last Modified: Tue, 26 Jun 2018 23:26:09 GMT  
		Size: 5.0 MB (5010593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5769eddd664400a17349627d9ee1b77d7ffcf7d22a44aea7b495db5d8ca2bc5`  
		Last Modified: Tue, 26 Jun 2018 23:26:04 GMT  
		Size: 4.7 KB (4676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8d13d327758f0c01736465fc95a398d628ee1c096b0d320ce57196cf835d23`  
		Last Modified: Tue, 26 Jun 2018 23:26:04 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab1b96cfc4519d3d02aa233446ca9dd86ddbcb2cd8809d0b93e3a1c12ce9006`  
		Last Modified: Tue, 26 Jun 2018 23:28:20 GMT  
		Size: 46.5 MB (46498486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ea8370a83300ed6a13c813766721b042e88f17e2fd7f273f25d9e3b6ded2ec`  
		Last Modified: Tue, 26 Jun 2018 23:28:04 GMT  
		Size: 2.4 KB (2445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d0aadac9f4d67d832eb9048c89361eb9a901615cd9aa8d5a13609d238e8a792`  
		Last Modified: Tue, 26 Jun 2018 23:28:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5.60`

```console
$ docker pull percona@sha256:9b8920d3380fd0f43edf14e6a056a93986ecf21236f0138ec022b3474e99a426
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.5.60` - linux; amd64

```console
$ docker pull percona@sha256:ec46e43969a6f27745bd4f941fcf047dcb67948b8038bc87d9e77c0bdcac8d30
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.1 MB (107077499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0a368fdcfb21a3a9dccae5ac347589d7bdd5746f1de77d501ff7f3caeb57c5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:45:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Jun 2018 23:19:29 GMT
ENV GOSU_VERSION=1.7
# Tue, 26 Jun 2018 23:20:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 26 Jun 2018 23:20:24 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Jun 2018 23:21:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:21:07 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 26 Jun 2018 23:21:17 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 26 Jun 2018 23:21:18 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Tue, 26 Jun 2018 23:24:12 GMT
ENV PERCONA_MAJOR=5.5
# Tue, 26 Jun 2018 23:24:13 GMT
ENV PERCONA_VERSION=5.5.60-rel38.12-1.jessie
# Tue, 26 Jun 2018 23:25:36 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 26 Jun 2018 23:25:36 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 26 Jun 2018 23:25:37 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Tue, 26 Jun 2018 23:25:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Jun 2018 23:25:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Jun 2018 23:25:38 GMT
EXPOSE 3306/tcp
# Tue, 26 Jun 2018 23:25:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb0394ab02fb9c34a789ca18d3ae17fa02271cd0e9dffbb53447996726e8605`  
		Last Modified: Tue, 26 Jun 2018 22:56:03 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f18113f6ce08462193406193a1fa99250e9bd6ef0660e066d88d3275c3b4338`  
		Last Modified: Tue, 26 Jun 2018 23:26:07 GMT  
		Size: 1.3 MB (1306730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47df7c3759c47a71706aed3bc14fce9e6751451b41952fa70ec1d3f8794bc459`  
		Last Modified: Tue, 26 Jun 2018 23:26:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37e917af0585d2433e3d9f2658b51db7f4f32ca908d27995a02b07f2d38e01fd`  
		Last Modified: Tue, 26 Jun 2018 23:26:09 GMT  
		Size: 5.0 MB (5010593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5769eddd664400a17349627d9ee1b77d7ffcf7d22a44aea7b495db5d8ca2bc5`  
		Last Modified: Tue, 26 Jun 2018 23:26:04 GMT  
		Size: 4.7 KB (4676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8d13d327758f0c01736465fc95a398d628ee1c096b0d320ce57196cf835d23`  
		Last Modified: Tue, 26 Jun 2018 23:26:04 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab1b96cfc4519d3d02aa233446ca9dd86ddbcb2cd8809d0b93e3a1c12ce9006`  
		Last Modified: Tue, 26 Jun 2018 23:28:20 GMT  
		Size: 46.5 MB (46498486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ea8370a83300ed6a13c813766721b042e88f17e2fd7f273f25d9e3b6ded2ec`  
		Last Modified: Tue, 26 Jun 2018 23:28:04 GMT  
		Size: 2.4 KB (2445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d0aadac9f4d67d832eb9048c89361eb9a901615cd9aa8d5a13609d238e8a792`  
		Last Modified: Tue, 26 Jun 2018 23:28:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6`

```console
$ docker pull percona@sha256:13e7734cfd5cba01e3fb5369e507c7bdc6df2fa4eb461049980b718463621564
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6` - linux; amd64

```console
$ docker pull percona@sha256:6424381fffbc267e00cde3759810f4a771b5c7a2cbfb6c649ef85b9667e7e1a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114961217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86da48e9b875554f15351c92fdd51c88f83c53b98c3a089152b37e09dbd99ef1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:45:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Jun 2018 23:19:29 GMT
ENV GOSU_VERSION=1.7
# Tue, 26 Jun 2018 23:20:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 26 Jun 2018 23:20:24 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Jun 2018 23:21:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:21:07 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 26 Jun 2018 23:21:17 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 26 Jun 2018 23:21:18 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Tue, 26 Jun 2018 23:22:42 GMT
ENV PERCONA_MAJOR=5.6
# Tue, 26 Jun 2018 23:22:43 GMT
ENV PERCONA_VERSION=5.6.40-84.0-1.jessie
# Tue, 26 Jun 2018 23:23:53 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 26 Jun 2018 23:23:53 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 26 Jun 2018 23:23:54 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Tue, 26 Jun 2018 23:23:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Jun 2018 23:23:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Jun 2018 23:23:56 GMT
EXPOSE 3306/tcp
# Tue, 26 Jun 2018 23:23:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb0394ab02fb9c34a789ca18d3ae17fa02271cd0e9dffbb53447996726e8605`  
		Last Modified: Tue, 26 Jun 2018 22:56:03 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f18113f6ce08462193406193a1fa99250e9bd6ef0660e066d88d3275c3b4338`  
		Last Modified: Tue, 26 Jun 2018 23:26:07 GMT  
		Size: 1.3 MB (1306730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47df7c3759c47a71706aed3bc14fce9e6751451b41952fa70ec1d3f8794bc459`  
		Last Modified: Tue, 26 Jun 2018 23:26:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37e917af0585d2433e3d9f2658b51db7f4f32ca908d27995a02b07f2d38e01fd`  
		Last Modified: Tue, 26 Jun 2018 23:26:09 GMT  
		Size: 5.0 MB (5010593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5769eddd664400a17349627d9ee1b77d7ffcf7d22a44aea7b495db5d8ca2bc5`  
		Last Modified: Tue, 26 Jun 2018 23:26:04 GMT  
		Size: 4.7 KB (4676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8d13d327758f0c01736465fc95a398d628ee1c096b0d320ce57196cf835d23`  
		Last Modified: Tue, 26 Jun 2018 23:26:04 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e25a1e6008d2bb5f828eb40d18fc35b688b713ae815fe83eccd679579ef74f`  
		Last Modified: Tue, 26 Jun 2018 23:27:39 GMT  
		Size: 54.4 MB (54382208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb4f69ddbf298d9686b4d2f5b643b63f648403aefa8a99cfcf552545c5535cb`  
		Last Modified: Tue, 26 Jun 2018 23:27:19 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca54d0c7e2747f9c165c36415cb795c22cbef95ab497dd4b7a69de677e7794ee`  
		Last Modified: Tue, 26 Jun 2018 23:27:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.40`

```console
$ docker pull percona@sha256:13e7734cfd5cba01e3fb5369e507c7bdc6df2fa4eb461049980b718463621564
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6.40` - linux; amd64

```console
$ docker pull percona@sha256:6424381fffbc267e00cde3759810f4a771b5c7a2cbfb6c649ef85b9667e7e1a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114961217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86da48e9b875554f15351c92fdd51c88f83c53b98c3a089152b37e09dbd99ef1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:45:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Jun 2018 23:19:29 GMT
ENV GOSU_VERSION=1.7
# Tue, 26 Jun 2018 23:20:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 26 Jun 2018 23:20:24 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Jun 2018 23:21:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:21:07 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 26 Jun 2018 23:21:17 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 26 Jun 2018 23:21:18 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Tue, 26 Jun 2018 23:22:42 GMT
ENV PERCONA_MAJOR=5.6
# Tue, 26 Jun 2018 23:22:43 GMT
ENV PERCONA_VERSION=5.6.40-84.0-1.jessie
# Tue, 26 Jun 2018 23:23:53 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 26 Jun 2018 23:23:53 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 26 Jun 2018 23:23:54 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Tue, 26 Jun 2018 23:23:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Jun 2018 23:23:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Jun 2018 23:23:56 GMT
EXPOSE 3306/tcp
# Tue, 26 Jun 2018 23:23:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb0394ab02fb9c34a789ca18d3ae17fa02271cd0e9dffbb53447996726e8605`  
		Last Modified: Tue, 26 Jun 2018 22:56:03 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f18113f6ce08462193406193a1fa99250e9bd6ef0660e066d88d3275c3b4338`  
		Last Modified: Tue, 26 Jun 2018 23:26:07 GMT  
		Size: 1.3 MB (1306730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47df7c3759c47a71706aed3bc14fce9e6751451b41952fa70ec1d3f8794bc459`  
		Last Modified: Tue, 26 Jun 2018 23:26:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37e917af0585d2433e3d9f2658b51db7f4f32ca908d27995a02b07f2d38e01fd`  
		Last Modified: Tue, 26 Jun 2018 23:26:09 GMT  
		Size: 5.0 MB (5010593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5769eddd664400a17349627d9ee1b77d7ffcf7d22a44aea7b495db5d8ca2bc5`  
		Last Modified: Tue, 26 Jun 2018 23:26:04 GMT  
		Size: 4.7 KB (4676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8d13d327758f0c01736465fc95a398d628ee1c096b0d320ce57196cf835d23`  
		Last Modified: Tue, 26 Jun 2018 23:26:04 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e25a1e6008d2bb5f828eb40d18fc35b688b713ae815fe83eccd679579ef74f`  
		Last Modified: Tue, 26 Jun 2018 23:27:39 GMT  
		Size: 54.4 MB (54382208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb4f69ddbf298d9686b4d2f5b643b63f648403aefa8a99cfcf552545c5535cb`  
		Last Modified: Tue, 26 Jun 2018 23:27:19 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca54d0c7e2747f9c165c36415cb795c22cbef95ab497dd4b7a69de677e7794ee`  
		Last Modified: Tue, 26 Jun 2018 23:27:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7`

```console
$ docker pull percona@sha256:fe3ae25a5b1890664edb13f0d7d9d31d78f15bff61f07b255f9fb52df09e0483
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7` - linux; amd64

```console
$ docker pull percona@sha256:ef778e2b3004fecb75031444e64111aed4e4702e5e2b7349c5288e5a3ee77cf1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.2 MB (143173193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:601b96f4fb70b3b51dc4f2ebb78c56cd6c0aaabdd3180d6bff8ef77ce6693640`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:45:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Jun 2018 23:19:29 GMT
ENV GOSU_VERSION=1.7
# Tue, 26 Jun 2018 23:20:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 26 Jun 2018 23:20:24 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Jun 2018 23:21:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:21:07 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 26 Jun 2018 23:21:17 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 26 Jun 2018 23:21:18 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Tue, 26 Jun 2018 23:21:18 GMT
ENV PERCONA_MAJOR=5.7
# Tue, 26 Jun 2018 23:21:18 GMT
ENV PERCONA_VERSION=5.7.22-22-1.jessie
# Tue, 26 Jun 2018 23:22:27 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 26 Jun 2018 23:22:28 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 26 Jun 2018 23:22:28 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Tue, 26 Jun 2018 23:22:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Jun 2018 23:22:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Jun 2018 23:22:30 GMT
EXPOSE 3306/tcp
# Tue, 26 Jun 2018 23:22:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb0394ab02fb9c34a789ca18d3ae17fa02271cd0e9dffbb53447996726e8605`  
		Last Modified: Tue, 26 Jun 2018 22:56:03 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f18113f6ce08462193406193a1fa99250e9bd6ef0660e066d88d3275c3b4338`  
		Last Modified: Tue, 26 Jun 2018 23:26:07 GMT  
		Size: 1.3 MB (1306730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47df7c3759c47a71706aed3bc14fce9e6751451b41952fa70ec1d3f8794bc459`  
		Last Modified: Tue, 26 Jun 2018 23:26:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37e917af0585d2433e3d9f2658b51db7f4f32ca908d27995a02b07f2d38e01fd`  
		Last Modified: Tue, 26 Jun 2018 23:26:09 GMT  
		Size: 5.0 MB (5010593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5769eddd664400a17349627d9ee1b77d7ffcf7d22a44aea7b495db5d8ca2bc5`  
		Last Modified: Tue, 26 Jun 2018 23:26:04 GMT  
		Size: 4.7 KB (4676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8d13d327758f0c01736465fc95a398d628ee1c096b0d320ce57196cf835d23`  
		Last Modified: Tue, 26 Jun 2018 23:26:04 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aab69a5d06560a74529dfe8e309a7eb6130c9179e9da10d2b926579e617652f4`  
		Last Modified: Tue, 26 Jun 2018 23:26:32 GMT  
		Size: 82.6 MB (82594180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4d623c5be0e7ae17bfebb04bfb6b974c4f7821153f185a16cd6628c9d9636b`  
		Last Modified: Tue, 26 Jun 2018 23:26:04 GMT  
		Size: 2.4 KB (2445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e35686c2310f254c1bb4a9c6685903de9a2489dc48c155c6e6c0bbf2c30e11`  
		Last Modified: Tue, 26 Jun 2018 23:26:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7.22`

```console
$ docker pull percona@sha256:fe3ae25a5b1890664edb13f0d7d9d31d78f15bff61f07b255f9fb52df09e0483
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7.22` - linux; amd64

```console
$ docker pull percona@sha256:ef778e2b3004fecb75031444e64111aed4e4702e5e2b7349c5288e5a3ee77cf1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.2 MB (143173193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:601b96f4fb70b3b51dc4f2ebb78c56cd6c0aaabdd3180d6bff8ef77ce6693640`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:45:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Jun 2018 23:19:29 GMT
ENV GOSU_VERSION=1.7
# Tue, 26 Jun 2018 23:20:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 26 Jun 2018 23:20:24 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Jun 2018 23:21:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:21:07 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 26 Jun 2018 23:21:17 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 26 Jun 2018 23:21:18 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Tue, 26 Jun 2018 23:21:18 GMT
ENV PERCONA_MAJOR=5.7
# Tue, 26 Jun 2018 23:21:18 GMT
ENV PERCONA_VERSION=5.7.22-22-1.jessie
# Tue, 26 Jun 2018 23:22:27 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 26 Jun 2018 23:22:28 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 26 Jun 2018 23:22:28 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Tue, 26 Jun 2018 23:22:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Jun 2018 23:22:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Jun 2018 23:22:30 GMT
EXPOSE 3306/tcp
# Tue, 26 Jun 2018 23:22:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb0394ab02fb9c34a789ca18d3ae17fa02271cd0e9dffbb53447996726e8605`  
		Last Modified: Tue, 26 Jun 2018 22:56:03 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f18113f6ce08462193406193a1fa99250e9bd6ef0660e066d88d3275c3b4338`  
		Last Modified: Tue, 26 Jun 2018 23:26:07 GMT  
		Size: 1.3 MB (1306730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47df7c3759c47a71706aed3bc14fce9e6751451b41952fa70ec1d3f8794bc459`  
		Last Modified: Tue, 26 Jun 2018 23:26:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37e917af0585d2433e3d9f2658b51db7f4f32ca908d27995a02b07f2d38e01fd`  
		Last Modified: Tue, 26 Jun 2018 23:26:09 GMT  
		Size: 5.0 MB (5010593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5769eddd664400a17349627d9ee1b77d7ffcf7d22a44aea7b495db5d8ca2bc5`  
		Last Modified: Tue, 26 Jun 2018 23:26:04 GMT  
		Size: 4.7 KB (4676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8d13d327758f0c01736465fc95a398d628ee1c096b0d320ce57196cf835d23`  
		Last Modified: Tue, 26 Jun 2018 23:26:04 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aab69a5d06560a74529dfe8e309a7eb6130c9179e9da10d2b926579e617652f4`  
		Last Modified: Tue, 26 Jun 2018 23:26:32 GMT  
		Size: 82.6 MB (82594180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4d623c5be0e7ae17bfebb04bfb6b974c4f7821153f185a16cd6628c9d9636b`  
		Last Modified: Tue, 26 Jun 2018 23:26:04 GMT  
		Size: 2.4 KB (2445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e35686c2310f254c1bb4a9c6685903de9a2489dc48c155c6e6c0bbf2c30e11`  
		Last Modified: Tue, 26 Jun 2018 23:26:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:latest`

```console
$ docker pull percona@sha256:fe3ae25a5b1890664edb13f0d7d9d31d78f15bff61f07b255f9fb52df09e0483
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:latest` - linux; amd64

```console
$ docker pull percona@sha256:ef778e2b3004fecb75031444e64111aed4e4702e5e2b7349c5288e5a3ee77cf1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.2 MB (143173193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:601b96f4fb70b3b51dc4f2ebb78c56cd6c0aaabdd3180d6bff8ef77ce6693640`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:45:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Jun 2018 23:19:29 GMT
ENV GOSU_VERSION=1.7
# Tue, 26 Jun 2018 23:20:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 26 Jun 2018 23:20:24 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Jun 2018 23:21:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:21:07 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 26 Jun 2018 23:21:17 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 26 Jun 2018 23:21:18 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Tue, 26 Jun 2018 23:21:18 GMT
ENV PERCONA_MAJOR=5.7
# Tue, 26 Jun 2018 23:21:18 GMT
ENV PERCONA_VERSION=5.7.22-22-1.jessie
# Tue, 26 Jun 2018 23:22:27 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 26 Jun 2018 23:22:28 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 26 Jun 2018 23:22:28 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Tue, 26 Jun 2018 23:22:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Jun 2018 23:22:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Jun 2018 23:22:30 GMT
EXPOSE 3306/tcp
# Tue, 26 Jun 2018 23:22:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb0394ab02fb9c34a789ca18d3ae17fa02271cd0e9dffbb53447996726e8605`  
		Last Modified: Tue, 26 Jun 2018 22:56:03 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f18113f6ce08462193406193a1fa99250e9bd6ef0660e066d88d3275c3b4338`  
		Last Modified: Tue, 26 Jun 2018 23:26:07 GMT  
		Size: 1.3 MB (1306730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47df7c3759c47a71706aed3bc14fce9e6751451b41952fa70ec1d3f8794bc459`  
		Last Modified: Tue, 26 Jun 2018 23:26:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37e917af0585d2433e3d9f2658b51db7f4f32ca908d27995a02b07f2d38e01fd`  
		Last Modified: Tue, 26 Jun 2018 23:26:09 GMT  
		Size: 5.0 MB (5010593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5769eddd664400a17349627d9ee1b77d7ffcf7d22a44aea7b495db5d8ca2bc5`  
		Last Modified: Tue, 26 Jun 2018 23:26:04 GMT  
		Size: 4.7 KB (4676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8d13d327758f0c01736465fc95a398d628ee1c096b0d320ce57196cf835d23`  
		Last Modified: Tue, 26 Jun 2018 23:26:04 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aab69a5d06560a74529dfe8e309a7eb6130c9179e9da10d2b926579e617652f4`  
		Last Modified: Tue, 26 Jun 2018 23:26:32 GMT  
		Size: 82.6 MB (82594180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4d623c5be0e7ae17bfebb04bfb6b974c4f7821153f185a16cd6628c9d9636b`  
		Last Modified: Tue, 26 Jun 2018 23:26:04 GMT  
		Size: 2.4 KB (2445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e35686c2310f254c1bb4a9c6685903de9a2489dc48c155c6e6c0bbf2c30e11`  
		Last Modified: Tue, 26 Jun 2018 23:26:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
