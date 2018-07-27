<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `percona`

-	[`percona:5`](#percona5)
-	[`percona:5.5`](#percona55)
-	[`percona:5.5.60`](#percona5560)
-	[`percona:5.5.60-jessie`](#percona5560-jessie)
-	[`percona:5.5-jessie`](#percona55-jessie)
-	[`percona:5.6`](#percona56)
-	[`percona:5.6.40`](#percona5640)
-	[`percona:5.6.40-jessie`](#percona5640-jessie)
-	[`percona:5.6-jessie`](#percona56-jessie)
-	[`percona:5.7`](#percona57)
-	[`percona:5.7.22`](#percona5722)
-	[`percona:5.7.22-jessie`](#percona5722-jessie)
-	[`percona:5.7-jessie`](#percona57-jessie)
-	[`percona:5-jessie`](#percona5-jessie)
-	[`percona:jessie`](#perconajessie)
-	[`percona:latest`](#perconalatest)

## `percona:5`

```console
$ docker pull percona@sha256:8b7344e486a44e95185bdfa850213cb54206f38c517eb5aeadd8323948169e64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5` - linux; amd64

```console
$ docker pull percona@sha256:2575ac496358b083ae5f9fac86bd392ca103fe6b6b62c384e1eda604bd4aafb7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.8 MB (142810161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6287f51662890f79dcfcec775c69d06bf7a2768fcdb204965920750da530e6b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:24:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 27 Jul 2018 22:29:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 22:29:04 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 22:29:59 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 27 Jul 2018 22:30:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 22:30:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 22:30:41 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 27 Jul 2018 22:30:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 22:30:58 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Fri, 27 Jul 2018 22:30:59 GMT
ENV PERCONA_MAJOR=5.7
# Fri, 27 Jul 2018 22:30:59 GMT
ENV PERCONA_VERSION=5.7.22-22-1.jessie
# Fri, 27 Jul 2018 22:32:15 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 27 Jul 2018 22:32:27 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Fri, 27 Jul 2018 22:32:28 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Fri, 27 Jul 2018 22:32:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 27 Jul 2018 22:32:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jul 2018 22:32:30 GMT
EXPOSE 3306/tcp
# Fri, 27 Jul 2018 22:32:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac90ebb2fa217ec78ac1def4262632e742d60301da3746bf5a945d0820280`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd3e12c64eb6250bb2c11ae3120f5785e7ca9df03676eca3a48a4f384c7df84`  
		Last Modified: Fri, 27 Jul 2018 22:38:17 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3752994c7d070bc8da129997204ef535206f928f27fc1c18a94ae6266d79872`  
		Last Modified: Fri, 27 Jul 2018 22:38:17 GMT  
		Size: 988.8 KB (988777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca9401025a4e98c377a5b38eb13650ee8df1715715a21fb0bdb3faae8defbf5`  
		Last Modified: Fri, 27 Jul 2018 22:38:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae04cdd9cd039850eeb3921f4332b4f8873be2caec2da8edc1054272a359533`  
		Last Modified: Fri, 27 Jul 2018 22:38:18 GMT  
		Size: 5.0 MB (4965280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f412645bbd56e23bd1d56d853a82656eabc14c0b5ed398f32ad5968e391763e`  
		Last Modified: Fri, 27 Jul 2018 22:38:14 GMT  
		Size: 4.7 KB (4680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43226a1a776b09edb18edba49c98548b525899e985b03643ac9ea02ff909161e`  
		Last Modified: Fri, 27 Jul 2018 22:38:14 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d5f40fc230319d6208686e738276af57c565a5a9bb0c034beaaca2db8d0510b`  
		Last Modified: Fri, 27 Jul 2018 22:38:42 GMT  
		Size: 82.6 MB (82594022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f94ad35818662a603fbba2d7706e44dc15b5db7df36bfadb6202010a28a63d`  
		Last Modified: Fri, 27 Jul 2018 22:38:14 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e89b931e07f87f1e29f7328aeb6511948194b4a471b23afdfe1c581c25db29e`  
		Last Modified: Fri, 27 Jul 2018 22:38:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5`

```console
$ docker pull percona@sha256:e99de8b800ce2a75310a81c2d14710fce344b54bb1daf7f2e109e99f423e94f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.5` - linux; amd64

```console
$ docker pull percona@sha256:55be0c4bda6e96fd3f7b1fcb25715e360ea49af09e08a42ec637a3ee458163a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.0 MB (107031842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e9e0bb068073b2962b59cb55c44eedf11f61b7472c25001fbf07ff05d849ae4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:24:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 04:47:57 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jul 2018 04:48:52 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jul 2018 04:49:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 04:49:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:49:45 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jul 2018 04:49:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 04:49:54 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Tue, 17 Jul 2018 04:52:57 GMT
ENV PERCONA_MAJOR=5.5
# Tue, 17 Jul 2018 04:52:57 GMT
ENV PERCONA_VERSION=5.5.60-rel38.12-1.jessie
# Tue, 17 Jul 2018 04:54:07 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jul 2018 04:54:08 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 17 Jul 2018 04:54:09 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:54:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jul 2018 04:54:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 04:54:10 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 04:54:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac90ebb2fa217ec78ac1def4262632e742d60301da3746bf5a945d0820280`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf79d0a4e735d4880997e71cb52030cb03031981c1f4e04c5550f4ddcb5dea48`  
		Last Modified: Tue, 17 Jul 2018 04:54:43 GMT  
		Size: 1.3 MB (1306696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7403f7bbf8d66cbdd1b5d824d90d5b45d804d9c4ab591ab4f7306888bc2487a1`  
		Last Modified: Tue, 17 Jul 2018 04:54:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b351401413de84bcc7afdf3da30bd7548585afedde91f939f215336c87211950`  
		Last Modified: Tue, 17 Jul 2018 04:54:43 GMT  
		Size: 5.0 MB (4965034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449cc603c20958038d2f3db339a8fc728e6298b33a0aaab6ce9acc61fe1ad3ca`  
		Last Modified: Tue, 17 Jul 2018 04:54:39 GMT  
		Size: 4.7 KB (4679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a922c10c1418f97de3d6c801d14f2f54c711cb432f57a641d7471dda04d116c`  
		Last Modified: Tue, 17 Jul 2018 04:54:39 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62a3fdbcbb46760526127fceceb27ea79eb137192b52e3a9b7b5f9c91630542d`  
		Last Modified: Tue, 17 Jul 2018 04:57:20 GMT  
		Size: 46.5 MB (46498328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e123def1dcbc50ae1ba682d03286c3d2054ba13c8a8fb3663fc392e7118f6ae`  
		Last Modified: Tue, 17 Jul 2018 04:57:11 GMT  
		Size: 2.4 KB (2444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ff42e7338cdfea3a9fceb9c4743d8d72bd2d065da738ac26e54046496e6814`  
		Last Modified: Tue, 17 Jul 2018 04:57:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5.60`

```console
$ docker pull percona@sha256:e99de8b800ce2a75310a81c2d14710fce344b54bb1daf7f2e109e99f423e94f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.5.60` - linux; amd64

```console
$ docker pull percona@sha256:55be0c4bda6e96fd3f7b1fcb25715e360ea49af09e08a42ec637a3ee458163a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.0 MB (107031842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e9e0bb068073b2962b59cb55c44eedf11f61b7472c25001fbf07ff05d849ae4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:24:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 04:47:57 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jul 2018 04:48:52 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jul 2018 04:49:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 04:49:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:49:45 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jul 2018 04:49:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 04:49:54 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Tue, 17 Jul 2018 04:52:57 GMT
ENV PERCONA_MAJOR=5.5
# Tue, 17 Jul 2018 04:52:57 GMT
ENV PERCONA_VERSION=5.5.60-rel38.12-1.jessie
# Tue, 17 Jul 2018 04:54:07 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jul 2018 04:54:08 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 17 Jul 2018 04:54:09 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:54:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jul 2018 04:54:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 04:54:10 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 04:54:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac90ebb2fa217ec78ac1def4262632e742d60301da3746bf5a945d0820280`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf79d0a4e735d4880997e71cb52030cb03031981c1f4e04c5550f4ddcb5dea48`  
		Last Modified: Tue, 17 Jul 2018 04:54:43 GMT  
		Size: 1.3 MB (1306696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7403f7bbf8d66cbdd1b5d824d90d5b45d804d9c4ab591ab4f7306888bc2487a1`  
		Last Modified: Tue, 17 Jul 2018 04:54:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b351401413de84bcc7afdf3da30bd7548585afedde91f939f215336c87211950`  
		Last Modified: Tue, 17 Jul 2018 04:54:43 GMT  
		Size: 5.0 MB (4965034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449cc603c20958038d2f3db339a8fc728e6298b33a0aaab6ce9acc61fe1ad3ca`  
		Last Modified: Tue, 17 Jul 2018 04:54:39 GMT  
		Size: 4.7 KB (4679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a922c10c1418f97de3d6c801d14f2f54c711cb432f57a641d7471dda04d116c`  
		Last Modified: Tue, 17 Jul 2018 04:54:39 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62a3fdbcbb46760526127fceceb27ea79eb137192b52e3a9b7b5f9c91630542d`  
		Last Modified: Tue, 17 Jul 2018 04:57:20 GMT  
		Size: 46.5 MB (46498328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e123def1dcbc50ae1ba682d03286c3d2054ba13c8a8fb3663fc392e7118f6ae`  
		Last Modified: Tue, 17 Jul 2018 04:57:11 GMT  
		Size: 2.4 KB (2444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ff42e7338cdfea3a9fceb9c4743d8d72bd2d065da738ac26e54046496e6814`  
		Last Modified: Tue, 17 Jul 2018 04:57:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5.60-jessie`

**does not exist** (yet?)

## `percona:5.5-jessie`

**does not exist** (yet?)

## `percona:5.6`

```console
$ docker pull percona@sha256:78ef940c63b12d451d12deab045bf87375b1b5c37d033e96ecf997c6a203235a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6` - linux; amd64

```console
$ docker pull percona@sha256:e78b1c63ec67fa83c3d474d38959856a1a0508ba98572ec5e66c13eda1f4f827
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114598366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1903e81cfe8d98c4d048c42b296bb3f38215212424797cb17d996e764e2ef8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:24:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 27 Jul 2018 22:29:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 22:29:04 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 22:29:59 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 27 Jul 2018 22:30:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 22:30:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 22:30:41 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 27 Jul 2018 22:30:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 22:30:58 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Fri, 27 Jul 2018 22:33:35 GMT
ENV PERCONA_MAJOR=5.6
# Fri, 27 Jul 2018 22:33:36 GMT
ENV PERCONA_VERSION=5.6.40-84.0-1.jessie
# Fri, 27 Jul 2018 22:34:43 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 27 Jul 2018 22:34:46 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Fri, 27 Jul 2018 22:34:47 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Fri, 27 Jul 2018 22:34:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 27 Jul 2018 22:34:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jul 2018 22:35:04 GMT
EXPOSE 3306/tcp
# Fri, 27 Jul 2018 22:35:04 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac90ebb2fa217ec78ac1def4262632e742d60301da3746bf5a945d0820280`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd3e12c64eb6250bb2c11ae3120f5785e7ca9df03676eca3a48a4f384c7df84`  
		Last Modified: Fri, 27 Jul 2018 22:38:17 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3752994c7d070bc8da129997204ef535206f928f27fc1c18a94ae6266d79872`  
		Last Modified: Fri, 27 Jul 2018 22:38:17 GMT  
		Size: 988.8 KB (988777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca9401025a4e98c377a5b38eb13650ee8df1715715a21fb0bdb3faae8defbf5`  
		Last Modified: Fri, 27 Jul 2018 22:38:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae04cdd9cd039850eeb3921f4332b4f8873be2caec2da8edc1054272a359533`  
		Last Modified: Fri, 27 Jul 2018 22:38:18 GMT  
		Size: 5.0 MB (4965280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f412645bbd56e23bd1d56d853a82656eabc14c0b5ed398f32ad5968e391763e`  
		Last Modified: Fri, 27 Jul 2018 22:38:14 GMT  
		Size: 4.7 KB (4680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43226a1a776b09edb18edba49c98548b525899e985b03643ac9ea02ff909161e`  
		Last Modified: Fri, 27 Jul 2018 22:38:14 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f3558ff4664b4aca2d33e0c4862823fbb7dc07b8ac67a719024fc30e45d110`  
		Last Modified: Fri, 27 Jul 2018 22:42:29 GMT  
		Size: 54.4 MB (54382230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a723d078fe960eaae5e073a7fb152fa6c677fb22b9ba08727c6dbc49288995f6`  
		Last Modified: Fri, 27 Jul 2018 22:42:09 GMT  
		Size: 2.4 KB (2443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f86714f867b1a8f47a28321e0a878e93f57c01d807a23eea5f7444452acbb5`  
		Last Modified: Fri, 27 Jul 2018 22:42:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.40`

```console
$ docker pull percona@sha256:78ef940c63b12d451d12deab045bf87375b1b5c37d033e96ecf997c6a203235a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6.40` - linux; amd64

```console
$ docker pull percona@sha256:e78b1c63ec67fa83c3d474d38959856a1a0508ba98572ec5e66c13eda1f4f827
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114598366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1903e81cfe8d98c4d048c42b296bb3f38215212424797cb17d996e764e2ef8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:24:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 27 Jul 2018 22:29:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 22:29:04 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 22:29:59 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 27 Jul 2018 22:30:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 22:30:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 22:30:41 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 27 Jul 2018 22:30:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 22:30:58 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Fri, 27 Jul 2018 22:33:35 GMT
ENV PERCONA_MAJOR=5.6
# Fri, 27 Jul 2018 22:33:36 GMT
ENV PERCONA_VERSION=5.6.40-84.0-1.jessie
# Fri, 27 Jul 2018 22:34:43 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 27 Jul 2018 22:34:46 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Fri, 27 Jul 2018 22:34:47 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Fri, 27 Jul 2018 22:34:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 27 Jul 2018 22:34:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jul 2018 22:35:04 GMT
EXPOSE 3306/tcp
# Fri, 27 Jul 2018 22:35:04 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac90ebb2fa217ec78ac1def4262632e742d60301da3746bf5a945d0820280`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd3e12c64eb6250bb2c11ae3120f5785e7ca9df03676eca3a48a4f384c7df84`  
		Last Modified: Fri, 27 Jul 2018 22:38:17 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3752994c7d070bc8da129997204ef535206f928f27fc1c18a94ae6266d79872`  
		Last Modified: Fri, 27 Jul 2018 22:38:17 GMT  
		Size: 988.8 KB (988777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca9401025a4e98c377a5b38eb13650ee8df1715715a21fb0bdb3faae8defbf5`  
		Last Modified: Fri, 27 Jul 2018 22:38:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae04cdd9cd039850eeb3921f4332b4f8873be2caec2da8edc1054272a359533`  
		Last Modified: Fri, 27 Jul 2018 22:38:18 GMT  
		Size: 5.0 MB (4965280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f412645bbd56e23bd1d56d853a82656eabc14c0b5ed398f32ad5968e391763e`  
		Last Modified: Fri, 27 Jul 2018 22:38:14 GMT  
		Size: 4.7 KB (4680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43226a1a776b09edb18edba49c98548b525899e985b03643ac9ea02ff909161e`  
		Last Modified: Fri, 27 Jul 2018 22:38:14 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f3558ff4664b4aca2d33e0c4862823fbb7dc07b8ac67a719024fc30e45d110`  
		Last Modified: Fri, 27 Jul 2018 22:42:29 GMT  
		Size: 54.4 MB (54382230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a723d078fe960eaae5e073a7fb152fa6c677fb22b9ba08727c6dbc49288995f6`  
		Last Modified: Fri, 27 Jul 2018 22:42:09 GMT  
		Size: 2.4 KB (2443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f86714f867b1a8f47a28321e0a878e93f57c01d807a23eea5f7444452acbb5`  
		Last Modified: Fri, 27 Jul 2018 22:42:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.40-jessie`

```console
$ docker pull percona@sha256:78ef940c63b12d451d12deab045bf87375b1b5c37d033e96ecf997c6a203235a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6.40-jessie` - linux; amd64

```console
$ docker pull percona@sha256:e78b1c63ec67fa83c3d474d38959856a1a0508ba98572ec5e66c13eda1f4f827
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114598366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1903e81cfe8d98c4d048c42b296bb3f38215212424797cb17d996e764e2ef8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:24:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 27 Jul 2018 22:29:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 22:29:04 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 22:29:59 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 27 Jul 2018 22:30:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 22:30:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 22:30:41 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 27 Jul 2018 22:30:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 22:30:58 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Fri, 27 Jul 2018 22:33:35 GMT
ENV PERCONA_MAJOR=5.6
# Fri, 27 Jul 2018 22:33:36 GMT
ENV PERCONA_VERSION=5.6.40-84.0-1.jessie
# Fri, 27 Jul 2018 22:34:43 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 27 Jul 2018 22:34:46 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Fri, 27 Jul 2018 22:34:47 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Fri, 27 Jul 2018 22:34:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 27 Jul 2018 22:34:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jul 2018 22:35:04 GMT
EXPOSE 3306/tcp
# Fri, 27 Jul 2018 22:35:04 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac90ebb2fa217ec78ac1def4262632e742d60301da3746bf5a945d0820280`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd3e12c64eb6250bb2c11ae3120f5785e7ca9df03676eca3a48a4f384c7df84`  
		Last Modified: Fri, 27 Jul 2018 22:38:17 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3752994c7d070bc8da129997204ef535206f928f27fc1c18a94ae6266d79872`  
		Last Modified: Fri, 27 Jul 2018 22:38:17 GMT  
		Size: 988.8 KB (988777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca9401025a4e98c377a5b38eb13650ee8df1715715a21fb0bdb3faae8defbf5`  
		Last Modified: Fri, 27 Jul 2018 22:38:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae04cdd9cd039850eeb3921f4332b4f8873be2caec2da8edc1054272a359533`  
		Last Modified: Fri, 27 Jul 2018 22:38:18 GMT  
		Size: 5.0 MB (4965280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f412645bbd56e23bd1d56d853a82656eabc14c0b5ed398f32ad5968e391763e`  
		Last Modified: Fri, 27 Jul 2018 22:38:14 GMT  
		Size: 4.7 KB (4680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43226a1a776b09edb18edba49c98548b525899e985b03643ac9ea02ff909161e`  
		Last Modified: Fri, 27 Jul 2018 22:38:14 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f3558ff4664b4aca2d33e0c4862823fbb7dc07b8ac67a719024fc30e45d110`  
		Last Modified: Fri, 27 Jul 2018 22:42:29 GMT  
		Size: 54.4 MB (54382230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a723d078fe960eaae5e073a7fb152fa6c677fb22b9ba08727c6dbc49288995f6`  
		Last Modified: Fri, 27 Jul 2018 22:42:09 GMT  
		Size: 2.4 KB (2443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f86714f867b1a8f47a28321e0a878e93f57c01d807a23eea5f7444452acbb5`  
		Last Modified: Fri, 27 Jul 2018 22:42:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6-jessie`

```console
$ docker pull percona@sha256:78ef940c63b12d451d12deab045bf87375b1b5c37d033e96ecf997c6a203235a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6-jessie` - linux; amd64

```console
$ docker pull percona@sha256:e78b1c63ec67fa83c3d474d38959856a1a0508ba98572ec5e66c13eda1f4f827
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114598366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1903e81cfe8d98c4d048c42b296bb3f38215212424797cb17d996e764e2ef8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:24:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 27 Jul 2018 22:29:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 22:29:04 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 22:29:59 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 27 Jul 2018 22:30:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 22:30:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 22:30:41 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 27 Jul 2018 22:30:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 22:30:58 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Fri, 27 Jul 2018 22:33:35 GMT
ENV PERCONA_MAJOR=5.6
# Fri, 27 Jul 2018 22:33:36 GMT
ENV PERCONA_VERSION=5.6.40-84.0-1.jessie
# Fri, 27 Jul 2018 22:34:43 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 27 Jul 2018 22:34:46 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Fri, 27 Jul 2018 22:34:47 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Fri, 27 Jul 2018 22:34:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 27 Jul 2018 22:34:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jul 2018 22:35:04 GMT
EXPOSE 3306/tcp
# Fri, 27 Jul 2018 22:35:04 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac90ebb2fa217ec78ac1def4262632e742d60301da3746bf5a945d0820280`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd3e12c64eb6250bb2c11ae3120f5785e7ca9df03676eca3a48a4f384c7df84`  
		Last Modified: Fri, 27 Jul 2018 22:38:17 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3752994c7d070bc8da129997204ef535206f928f27fc1c18a94ae6266d79872`  
		Last Modified: Fri, 27 Jul 2018 22:38:17 GMT  
		Size: 988.8 KB (988777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca9401025a4e98c377a5b38eb13650ee8df1715715a21fb0bdb3faae8defbf5`  
		Last Modified: Fri, 27 Jul 2018 22:38:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae04cdd9cd039850eeb3921f4332b4f8873be2caec2da8edc1054272a359533`  
		Last Modified: Fri, 27 Jul 2018 22:38:18 GMT  
		Size: 5.0 MB (4965280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f412645bbd56e23bd1d56d853a82656eabc14c0b5ed398f32ad5968e391763e`  
		Last Modified: Fri, 27 Jul 2018 22:38:14 GMT  
		Size: 4.7 KB (4680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43226a1a776b09edb18edba49c98548b525899e985b03643ac9ea02ff909161e`  
		Last Modified: Fri, 27 Jul 2018 22:38:14 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f3558ff4664b4aca2d33e0c4862823fbb7dc07b8ac67a719024fc30e45d110`  
		Last Modified: Fri, 27 Jul 2018 22:42:29 GMT  
		Size: 54.4 MB (54382230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a723d078fe960eaae5e073a7fb152fa6c677fb22b9ba08727c6dbc49288995f6`  
		Last Modified: Fri, 27 Jul 2018 22:42:09 GMT  
		Size: 2.4 KB (2443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f86714f867b1a8f47a28321e0a878e93f57c01d807a23eea5f7444452acbb5`  
		Last Modified: Fri, 27 Jul 2018 22:42:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7`

```console
$ docker pull percona@sha256:8b7344e486a44e95185bdfa850213cb54206f38c517eb5aeadd8323948169e64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7` - linux; amd64

```console
$ docker pull percona@sha256:2575ac496358b083ae5f9fac86bd392ca103fe6b6b62c384e1eda604bd4aafb7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.8 MB (142810161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6287f51662890f79dcfcec775c69d06bf7a2768fcdb204965920750da530e6b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:24:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 27 Jul 2018 22:29:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 22:29:04 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 22:29:59 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 27 Jul 2018 22:30:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 22:30:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 22:30:41 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 27 Jul 2018 22:30:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 22:30:58 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Fri, 27 Jul 2018 22:30:59 GMT
ENV PERCONA_MAJOR=5.7
# Fri, 27 Jul 2018 22:30:59 GMT
ENV PERCONA_VERSION=5.7.22-22-1.jessie
# Fri, 27 Jul 2018 22:32:15 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 27 Jul 2018 22:32:27 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Fri, 27 Jul 2018 22:32:28 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Fri, 27 Jul 2018 22:32:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 27 Jul 2018 22:32:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jul 2018 22:32:30 GMT
EXPOSE 3306/tcp
# Fri, 27 Jul 2018 22:32:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac90ebb2fa217ec78ac1def4262632e742d60301da3746bf5a945d0820280`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd3e12c64eb6250bb2c11ae3120f5785e7ca9df03676eca3a48a4f384c7df84`  
		Last Modified: Fri, 27 Jul 2018 22:38:17 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3752994c7d070bc8da129997204ef535206f928f27fc1c18a94ae6266d79872`  
		Last Modified: Fri, 27 Jul 2018 22:38:17 GMT  
		Size: 988.8 KB (988777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca9401025a4e98c377a5b38eb13650ee8df1715715a21fb0bdb3faae8defbf5`  
		Last Modified: Fri, 27 Jul 2018 22:38:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae04cdd9cd039850eeb3921f4332b4f8873be2caec2da8edc1054272a359533`  
		Last Modified: Fri, 27 Jul 2018 22:38:18 GMT  
		Size: 5.0 MB (4965280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f412645bbd56e23bd1d56d853a82656eabc14c0b5ed398f32ad5968e391763e`  
		Last Modified: Fri, 27 Jul 2018 22:38:14 GMT  
		Size: 4.7 KB (4680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43226a1a776b09edb18edba49c98548b525899e985b03643ac9ea02ff909161e`  
		Last Modified: Fri, 27 Jul 2018 22:38:14 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d5f40fc230319d6208686e738276af57c565a5a9bb0c034beaaca2db8d0510b`  
		Last Modified: Fri, 27 Jul 2018 22:38:42 GMT  
		Size: 82.6 MB (82594022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f94ad35818662a603fbba2d7706e44dc15b5db7df36bfadb6202010a28a63d`  
		Last Modified: Fri, 27 Jul 2018 22:38:14 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e89b931e07f87f1e29f7328aeb6511948194b4a471b23afdfe1c581c25db29e`  
		Last Modified: Fri, 27 Jul 2018 22:38:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7.22`

```console
$ docker pull percona@sha256:8b7344e486a44e95185bdfa850213cb54206f38c517eb5aeadd8323948169e64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7.22` - linux; amd64

```console
$ docker pull percona@sha256:2575ac496358b083ae5f9fac86bd392ca103fe6b6b62c384e1eda604bd4aafb7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.8 MB (142810161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6287f51662890f79dcfcec775c69d06bf7a2768fcdb204965920750da530e6b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:24:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 27 Jul 2018 22:29:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 22:29:04 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 22:29:59 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 27 Jul 2018 22:30:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 22:30:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 22:30:41 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 27 Jul 2018 22:30:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 22:30:58 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Fri, 27 Jul 2018 22:30:59 GMT
ENV PERCONA_MAJOR=5.7
# Fri, 27 Jul 2018 22:30:59 GMT
ENV PERCONA_VERSION=5.7.22-22-1.jessie
# Fri, 27 Jul 2018 22:32:15 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 27 Jul 2018 22:32:27 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Fri, 27 Jul 2018 22:32:28 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Fri, 27 Jul 2018 22:32:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 27 Jul 2018 22:32:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jul 2018 22:32:30 GMT
EXPOSE 3306/tcp
# Fri, 27 Jul 2018 22:32:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac90ebb2fa217ec78ac1def4262632e742d60301da3746bf5a945d0820280`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd3e12c64eb6250bb2c11ae3120f5785e7ca9df03676eca3a48a4f384c7df84`  
		Last Modified: Fri, 27 Jul 2018 22:38:17 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3752994c7d070bc8da129997204ef535206f928f27fc1c18a94ae6266d79872`  
		Last Modified: Fri, 27 Jul 2018 22:38:17 GMT  
		Size: 988.8 KB (988777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca9401025a4e98c377a5b38eb13650ee8df1715715a21fb0bdb3faae8defbf5`  
		Last Modified: Fri, 27 Jul 2018 22:38:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae04cdd9cd039850eeb3921f4332b4f8873be2caec2da8edc1054272a359533`  
		Last Modified: Fri, 27 Jul 2018 22:38:18 GMT  
		Size: 5.0 MB (4965280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f412645bbd56e23bd1d56d853a82656eabc14c0b5ed398f32ad5968e391763e`  
		Last Modified: Fri, 27 Jul 2018 22:38:14 GMT  
		Size: 4.7 KB (4680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43226a1a776b09edb18edba49c98548b525899e985b03643ac9ea02ff909161e`  
		Last Modified: Fri, 27 Jul 2018 22:38:14 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d5f40fc230319d6208686e738276af57c565a5a9bb0c034beaaca2db8d0510b`  
		Last Modified: Fri, 27 Jul 2018 22:38:42 GMT  
		Size: 82.6 MB (82594022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f94ad35818662a603fbba2d7706e44dc15b5db7df36bfadb6202010a28a63d`  
		Last Modified: Fri, 27 Jul 2018 22:38:14 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e89b931e07f87f1e29f7328aeb6511948194b4a471b23afdfe1c581c25db29e`  
		Last Modified: Fri, 27 Jul 2018 22:38:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7.22-jessie`

```console
$ docker pull percona@sha256:8b7344e486a44e95185bdfa850213cb54206f38c517eb5aeadd8323948169e64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7.22-jessie` - linux; amd64

```console
$ docker pull percona@sha256:2575ac496358b083ae5f9fac86bd392ca103fe6b6b62c384e1eda604bd4aafb7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.8 MB (142810161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6287f51662890f79dcfcec775c69d06bf7a2768fcdb204965920750da530e6b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:24:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 27 Jul 2018 22:29:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 22:29:04 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 22:29:59 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 27 Jul 2018 22:30:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 22:30:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 22:30:41 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 27 Jul 2018 22:30:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 22:30:58 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Fri, 27 Jul 2018 22:30:59 GMT
ENV PERCONA_MAJOR=5.7
# Fri, 27 Jul 2018 22:30:59 GMT
ENV PERCONA_VERSION=5.7.22-22-1.jessie
# Fri, 27 Jul 2018 22:32:15 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 27 Jul 2018 22:32:27 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Fri, 27 Jul 2018 22:32:28 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Fri, 27 Jul 2018 22:32:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 27 Jul 2018 22:32:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jul 2018 22:32:30 GMT
EXPOSE 3306/tcp
# Fri, 27 Jul 2018 22:32:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac90ebb2fa217ec78ac1def4262632e742d60301da3746bf5a945d0820280`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd3e12c64eb6250bb2c11ae3120f5785e7ca9df03676eca3a48a4f384c7df84`  
		Last Modified: Fri, 27 Jul 2018 22:38:17 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3752994c7d070bc8da129997204ef535206f928f27fc1c18a94ae6266d79872`  
		Last Modified: Fri, 27 Jul 2018 22:38:17 GMT  
		Size: 988.8 KB (988777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca9401025a4e98c377a5b38eb13650ee8df1715715a21fb0bdb3faae8defbf5`  
		Last Modified: Fri, 27 Jul 2018 22:38:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae04cdd9cd039850eeb3921f4332b4f8873be2caec2da8edc1054272a359533`  
		Last Modified: Fri, 27 Jul 2018 22:38:18 GMT  
		Size: 5.0 MB (4965280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f412645bbd56e23bd1d56d853a82656eabc14c0b5ed398f32ad5968e391763e`  
		Last Modified: Fri, 27 Jul 2018 22:38:14 GMT  
		Size: 4.7 KB (4680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43226a1a776b09edb18edba49c98548b525899e985b03643ac9ea02ff909161e`  
		Last Modified: Fri, 27 Jul 2018 22:38:14 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d5f40fc230319d6208686e738276af57c565a5a9bb0c034beaaca2db8d0510b`  
		Last Modified: Fri, 27 Jul 2018 22:38:42 GMT  
		Size: 82.6 MB (82594022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f94ad35818662a603fbba2d7706e44dc15b5db7df36bfadb6202010a28a63d`  
		Last Modified: Fri, 27 Jul 2018 22:38:14 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e89b931e07f87f1e29f7328aeb6511948194b4a471b23afdfe1c581c25db29e`  
		Last Modified: Fri, 27 Jul 2018 22:38:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7-jessie`

```console
$ docker pull percona@sha256:8b7344e486a44e95185bdfa850213cb54206f38c517eb5aeadd8323948169e64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7-jessie` - linux; amd64

```console
$ docker pull percona@sha256:2575ac496358b083ae5f9fac86bd392ca103fe6b6b62c384e1eda604bd4aafb7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.8 MB (142810161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6287f51662890f79dcfcec775c69d06bf7a2768fcdb204965920750da530e6b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:24:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 27 Jul 2018 22:29:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 22:29:04 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 22:29:59 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 27 Jul 2018 22:30:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 22:30:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 22:30:41 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 27 Jul 2018 22:30:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 22:30:58 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Fri, 27 Jul 2018 22:30:59 GMT
ENV PERCONA_MAJOR=5.7
# Fri, 27 Jul 2018 22:30:59 GMT
ENV PERCONA_VERSION=5.7.22-22-1.jessie
# Fri, 27 Jul 2018 22:32:15 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 27 Jul 2018 22:32:27 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Fri, 27 Jul 2018 22:32:28 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Fri, 27 Jul 2018 22:32:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 27 Jul 2018 22:32:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jul 2018 22:32:30 GMT
EXPOSE 3306/tcp
# Fri, 27 Jul 2018 22:32:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac90ebb2fa217ec78ac1def4262632e742d60301da3746bf5a945d0820280`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd3e12c64eb6250bb2c11ae3120f5785e7ca9df03676eca3a48a4f384c7df84`  
		Last Modified: Fri, 27 Jul 2018 22:38:17 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3752994c7d070bc8da129997204ef535206f928f27fc1c18a94ae6266d79872`  
		Last Modified: Fri, 27 Jul 2018 22:38:17 GMT  
		Size: 988.8 KB (988777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca9401025a4e98c377a5b38eb13650ee8df1715715a21fb0bdb3faae8defbf5`  
		Last Modified: Fri, 27 Jul 2018 22:38:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae04cdd9cd039850eeb3921f4332b4f8873be2caec2da8edc1054272a359533`  
		Last Modified: Fri, 27 Jul 2018 22:38:18 GMT  
		Size: 5.0 MB (4965280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f412645bbd56e23bd1d56d853a82656eabc14c0b5ed398f32ad5968e391763e`  
		Last Modified: Fri, 27 Jul 2018 22:38:14 GMT  
		Size: 4.7 KB (4680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43226a1a776b09edb18edba49c98548b525899e985b03643ac9ea02ff909161e`  
		Last Modified: Fri, 27 Jul 2018 22:38:14 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d5f40fc230319d6208686e738276af57c565a5a9bb0c034beaaca2db8d0510b`  
		Last Modified: Fri, 27 Jul 2018 22:38:42 GMT  
		Size: 82.6 MB (82594022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f94ad35818662a603fbba2d7706e44dc15b5db7df36bfadb6202010a28a63d`  
		Last Modified: Fri, 27 Jul 2018 22:38:14 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e89b931e07f87f1e29f7328aeb6511948194b4a471b23afdfe1c581c25db29e`  
		Last Modified: Fri, 27 Jul 2018 22:38:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5-jessie`

```console
$ docker pull percona@sha256:8b7344e486a44e95185bdfa850213cb54206f38c517eb5aeadd8323948169e64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5-jessie` - linux; amd64

```console
$ docker pull percona@sha256:2575ac496358b083ae5f9fac86bd392ca103fe6b6b62c384e1eda604bd4aafb7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.8 MB (142810161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6287f51662890f79dcfcec775c69d06bf7a2768fcdb204965920750da530e6b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:24:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 27 Jul 2018 22:29:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 22:29:04 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 22:29:59 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 27 Jul 2018 22:30:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 22:30:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 22:30:41 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 27 Jul 2018 22:30:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 22:30:58 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Fri, 27 Jul 2018 22:30:59 GMT
ENV PERCONA_MAJOR=5.7
# Fri, 27 Jul 2018 22:30:59 GMT
ENV PERCONA_VERSION=5.7.22-22-1.jessie
# Fri, 27 Jul 2018 22:32:15 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 27 Jul 2018 22:32:27 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Fri, 27 Jul 2018 22:32:28 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Fri, 27 Jul 2018 22:32:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 27 Jul 2018 22:32:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jul 2018 22:32:30 GMT
EXPOSE 3306/tcp
# Fri, 27 Jul 2018 22:32:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac90ebb2fa217ec78ac1def4262632e742d60301da3746bf5a945d0820280`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd3e12c64eb6250bb2c11ae3120f5785e7ca9df03676eca3a48a4f384c7df84`  
		Last Modified: Fri, 27 Jul 2018 22:38:17 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3752994c7d070bc8da129997204ef535206f928f27fc1c18a94ae6266d79872`  
		Last Modified: Fri, 27 Jul 2018 22:38:17 GMT  
		Size: 988.8 KB (988777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca9401025a4e98c377a5b38eb13650ee8df1715715a21fb0bdb3faae8defbf5`  
		Last Modified: Fri, 27 Jul 2018 22:38:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae04cdd9cd039850eeb3921f4332b4f8873be2caec2da8edc1054272a359533`  
		Last Modified: Fri, 27 Jul 2018 22:38:18 GMT  
		Size: 5.0 MB (4965280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f412645bbd56e23bd1d56d853a82656eabc14c0b5ed398f32ad5968e391763e`  
		Last Modified: Fri, 27 Jul 2018 22:38:14 GMT  
		Size: 4.7 KB (4680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43226a1a776b09edb18edba49c98548b525899e985b03643ac9ea02ff909161e`  
		Last Modified: Fri, 27 Jul 2018 22:38:14 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d5f40fc230319d6208686e738276af57c565a5a9bb0c034beaaca2db8d0510b`  
		Last Modified: Fri, 27 Jul 2018 22:38:42 GMT  
		Size: 82.6 MB (82594022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f94ad35818662a603fbba2d7706e44dc15b5db7df36bfadb6202010a28a63d`  
		Last Modified: Fri, 27 Jul 2018 22:38:14 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e89b931e07f87f1e29f7328aeb6511948194b4a471b23afdfe1c581c25db29e`  
		Last Modified: Fri, 27 Jul 2018 22:38:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:jessie`

```console
$ docker pull percona@sha256:8b7344e486a44e95185bdfa850213cb54206f38c517eb5aeadd8323948169e64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:jessie` - linux; amd64

```console
$ docker pull percona@sha256:2575ac496358b083ae5f9fac86bd392ca103fe6b6b62c384e1eda604bd4aafb7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.8 MB (142810161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6287f51662890f79dcfcec775c69d06bf7a2768fcdb204965920750da530e6b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:24:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 27 Jul 2018 22:29:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 22:29:04 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 22:29:59 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 27 Jul 2018 22:30:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 22:30:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 22:30:41 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 27 Jul 2018 22:30:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 22:30:58 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Fri, 27 Jul 2018 22:30:59 GMT
ENV PERCONA_MAJOR=5.7
# Fri, 27 Jul 2018 22:30:59 GMT
ENV PERCONA_VERSION=5.7.22-22-1.jessie
# Fri, 27 Jul 2018 22:32:15 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 27 Jul 2018 22:32:27 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Fri, 27 Jul 2018 22:32:28 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Fri, 27 Jul 2018 22:32:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 27 Jul 2018 22:32:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jul 2018 22:32:30 GMT
EXPOSE 3306/tcp
# Fri, 27 Jul 2018 22:32:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac90ebb2fa217ec78ac1def4262632e742d60301da3746bf5a945d0820280`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd3e12c64eb6250bb2c11ae3120f5785e7ca9df03676eca3a48a4f384c7df84`  
		Last Modified: Fri, 27 Jul 2018 22:38:17 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3752994c7d070bc8da129997204ef535206f928f27fc1c18a94ae6266d79872`  
		Last Modified: Fri, 27 Jul 2018 22:38:17 GMT  
		Size: 988.8 KB (988777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca9401025a4e98c377a5b38eb13650ee8df1715715a21fb0bdb3faae8defbf5`  
		Last Modified: Fri, 27 Jul 2018 22:38:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae04cdd9cd039850eeb3921f4332b4f8873be2caec2da8edc1054272a359533`  
		Last Modified: Fri, 27 Jul 2018 22:38:18 GMT  
		Size: 5.0 MB (4965280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f412645bbd56e23bd1d56d853a82656eabc14c0b5ed398f32ad5968e391763e`  
		Last Modified: Fri, 27 Jul 2018 22:38:14 GMT  
		Size: 4.7 KB (4680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43226a1a776b09edb18edba49c98548b525899e985b03643ac9ea02ff909161e`  
		Last Modified: Fri, 27 Jul 2018 22:38:14 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d5f40fc230319d6208686e738276af57c565a5a9bb0c034beaaca2db8d0510b`  
		Last Modified: Fri, 27 Jul 2018 22:38:42 GMT  
		Size: 82.6 MB (82594022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f94ad35818662a603fbba2d7706e44dc15b5db7df36bfadb6202010a28a63d`  
		Last Modified: Fri, 27 Jul 2018 22:38:14 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e89b931e07f87f1e29f7328aeb6511948194b4a471b23afdfe1c581c25db29e`  
		Last Modified: Fri, 27 Jul 2018 22:38:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:latest`

```console
$ docker pull percona@sha256:6a60eeb57e14a4053c411579b536725093be0473d1da845c00f991eb1659d71a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:latest` - linux; amd64

```console
$ docker pull percona@sha256:f25dffb8748eb20b3c3405ba48071223fefd165582c2f6104dbefef2b44988f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.1 MB (143127697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03dba90d5b6baeee450220bf6ab33622b79636a48e535beea2b7ec5b137fce7b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:24:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 04:47:57 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jul 2018 04:48:52 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jul 2018 04:49:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 04:49:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:49:45 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jul 2018 04:49:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 04:49:54 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Tue, 17 Jul 2018 04:49:54 GMT
ENV PERCONA_MAJOR=5.7
# Tue, 17 Jul 2018 04:49:54 GMT
ENV PERCONA_VERSION=5.7.22-22-1.jessie
# Tue, 17 Jul 2018 04:51:07 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jul 2018 04:51:08 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 17 Jul 2018 04:51:08 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:51:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jul 2018 04:51:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 04:51:10 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 04:51:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac90ebb2fa217ec78ac1def4262632e742d60301da3746bf5a945d0820280`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf79d0a4e735d4880997e71cb52030cb03031981c1f4e04c5550f4ddcb5dea48`  
		Last Modified: Tue, 17 Jul 2018 04:54:43 GMT  
		Size: 1.3 MB (1306696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7403f7bbf8d66cbdd1b5d824d90d5b45d804d9c4ab591ab4f7306888bc2487a1`  
		Last Modified: Tue, 17 Jul 2018 04:54:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b351401413de84bcc7afdf3da30bd7548585afedde91f939f215336c87211950`  
		Last Modified: Tue, 17 Jul 2018 04:54:43 GMT  
		Size: 5.0 MB (4965034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449cc603c20958038d2f3db339a8fc728e6298b33a0aaab6ce9acc61fe1ad3ca`  
		Last Modified: Tue, 17 Jul 2018 04:54:39 GMT  
		Size: 4.7 KB (4679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a922c10c1418f97de3d6c801d14f2f54c711cb432f57a641d7471dda04d116c`  
		Last Modified: Tue, 17 Jul 2018 04:54:39 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63622a1a1dc090065c384cf19ae9c1b9fe82d8bfaf8935a37b80a569b3c7d5ea`  
		Last Modified: Tue, 17 Jul 2018 04:55:07 GMT  
		Size: 82.6 MB (82594180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a9e37434666b5bd5e8e907b038b0a14df78c10ee6931d1ae9ad446a2baf6548`  
		Last Modified: Tue, 17 Jul 2018 04:54:39 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3e8b22d90c0ff326f318f7fe086b4a602e2a5faf1dfe08a778b70f390c5f86`  
		Last Modified: Tue, 17 Jul 2018 04:54:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
