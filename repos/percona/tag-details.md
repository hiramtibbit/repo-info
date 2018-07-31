<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `percona`

-	[`percona:5`](#percona5)
-	[`percona:5.5`](#percona55)
-	[`percona:5.5.60`](#percona5560)
-	[`percona:5.5.60-stretch`](#percona5560-stretch)
-	[`percona:5.5-stretch`](#percona55-stretch)
-	[`percona:5.6`](#percona56)
-	[`percona:5.6.40`](#percona5640)
-	[`percona:5.6.40-stretch`](#percona5640-stretch)
-	[`percona:5.6-stretch`](#percona56-stretch)
-	[`percona:5.7`](#percona57)
-	[`percona:5.7.22`](#percona5722)
-	[`percona:5.7.22-stretch`](#percona5722-stretch)
-	[`percona:5.7-stretch`](#percona57-stretch)
-	[`percona:5-stretch`](#percona5-stretch)
-	[`percona:latest`](#perconalatest)
-	[`percona:stretch`](#perconastretch)

## `percona:5`

```console
$ docker pull percona@sha256:b3af730c0aa8bad3c26ac53350764eceb74c3f2ec32df136adc092798334aec7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

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

### `percona:5` - linux; 386

```console
$ docker pull percona@sha256:6260e095e00ad2738d8a5902eb3bc0cd2d7f86a8c69baf5037c9d079b91148cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132200869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d84851b646daa0a9d3e43ac575494dffc002836771c49f4f86c3d76775cd1f6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 10:41:14 GMT
ADD file:edf13e4ea5255fbdbe91ff11bf281f8dc1ed1790ea095ab1ff341f0abc03f58c in / 
# Tue, 17 Jul 2018 10:41:14 GMT
CMD ["bash"]
# Tue, 31 Jul 2018 10:49:57 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 31 Jul 2018 10:50:26 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 10:50:26 GMT
ENV GOSU_VERSION=1.10
# Tue, 31 Jul 2018 10:51:31 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 31 Jul 2018 10:51:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 31 Jul 2018 10:52:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 10:52:22 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 31 Jul 2018 10:52:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 31 Jul 2018 10:52:38 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Tue, 31 Jul 2018 10:52:38 GMT
ENV PERCONA_MAJOR=5.7
# Tue, 31 Jul 2018 10:52:38 GMT
ENV PERCONA_VERSION=5.7.22-22-1.jessie
# Tue, 31 Jul 2018 10:54:03 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 31 Jul 2018 10:54:04 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 31 Jul 2018 10:54:04 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Tue, 31 Jul 2018 10:54:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 31 Jul 2018 10:54:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 10:54:06 GMT
EXPOSE 3306/tcp
# Tue, 31 Jul 2018 10:54:06 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:357075fdb6ed4cabaab3293713922024245238f5596815e10a36b24c0a498f08`  
		Last Modified: Tue, 17 Jul 2018 10:56:53 GMT  
		Size: 54.5 MB (54483269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41984b880013b927997c85a6afed9b5d24dba0f5e44f2e1300d343f8f6156a87`  
		Last Modified: Tue, 31 Jul 2018 10:58:41 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19908aaed944eb4fb70a5f34adde57f47cdc7c168e6ec371a3d13f738c9a559a`  
		Last Modified: Tue, 31 Jul 2018 10:58:40 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93e9d73128b4b41981c6708d8fb19548acab721f38b413a27576c7275227de2`  
		Last Modified: Tue, 31 Jul 2018 10:58:38 GMT  
		Size: 967.6 KB (967640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e909c3b874aac0aa7667cef9dfe647da1f69dd893fd3c9be4ed63fa8f9146d`  
		Last Modified: Tue, 31 Jul 2018 10:58:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1203c2ba4cef02bfa927c88dde383ad4ead13e4afecc2b53205fd63de0fae0`  
		Last Modified: Tue, 31 Jul 2018 10:58:39 GMT  
		Size: 7.1 MB (7128115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45e0897bcdf555d724a17b22dd60ddc8d5d36cd3d36f51ab2b6bebb10b0e0fa2`  
		Last Modified: Tue, 31 Jul 2018 10:58:35 GMT  
		Size: 4.7 KB (4677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc0d19d06ca61972d951a21fda3f2aacd5c834751913bc20483d22810417b86d`  
		Last Modified: Tue, 31 Jul 2018 10:58:35 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9854dbd2bfa38cc4c9699b2c4007bf9453b5b82dfd3380d953abe7a26e9cf3de`  
		Last Modified: Tue, 31 Jul 2018 10:58:53 GMT  
		Size: 69.6 MB (69611898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93e089752ce13f80e8ab4de132b6090af0b580d66845115a5249401ea3a2213`  
		Last Modified: Tue, 31 Jul 2018 10:58:35 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de636f5e6084d578c443ccead6c012520bd20fafdcb7adf41e8921fd4c9010f2`  
		Last Modified: Tue, 31 Jul 2018 10:58:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5`

```console
$ docker pull percona@sha256:8e4431c9147cd146a45d525209c6a418c2a3e2d97574933e619aed31d9b2221b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `percona:5.5` - linux; amd64

```console
$ docker pull percona@sha256:9ffca84bf6ef8b54b3550bf8e1bb43d631abdaab10d8b283f3612d079b9aedcd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106714373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8b7a6ae6d74f797c94e34ce3bfb629efcbdcd39526d6bf4dcd8703c72c6e09f`
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
# Fri, 27 Jul 2018 22:35:52 GMT
ENV PERCONA_MAJOR=5.5
# Fri, 27 Jul 2018 22:35:52 GMT
ENV PERCONA_VERSION=5.5.60-rel38.12-1.jessie
# Fri, 27 Jul 2018 22:37:14 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 27 Jul 2018 22:37:17 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Fri, 27 Jul 2018 22:37:18 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Fri, 27 Jul 2018 22:37:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 27 Jul 2018 22:37:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jul 2018 22:37:36 GMT
EXPOSE 3306/tcp
# Fri, 27 Jul 2018 22:37:37 GMT
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
	-	`sha256:2c38f5d9488343481a465063040f0f4687f00e0b6fe64d313b32064a8f29ba91`  
		Last Modified: Fri, 27 Jul 2018 22:44:33 GMT  
		Size: 46.5 MB (46498237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29146edcb6be2653e62c20100e0de2aef2256ca1ee05de2ab3110eb95e4640e4`  
		Last Modified: Fri, 27 Jul 2018 22:44:17 GMT  
		Size: 2.4 KB (2444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dded1f6d7e5f37880542060f27a6d12d124b5d91a89d0a54eb2459da8dd6f74`  
		Last Modified: Fri, 27 Jul 2018 22:44:17 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `percona:5.5` - linux; 386

```console
$ docker pull percona@sha256:2ab5cf680c3f0e03ddda937c14bdce57832e095c2d403ced62c2e203de561d01
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.1 MB (108066520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:863d2edea94fcd51b71998685d4382ab8295c6d88361d26fce46aeb5ea06607b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 10:41:14 GMT
ADD file:edf13e4ea5255fbdbe91ff11bf281f8dc1ed1790ea095ab1ff341f0abc03f58c in / 
# Tue, 17 Jul 2018 10:41:14 GMT
CMD ["bash"]
# Tue, 31 Jul 2018 10:49:57 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 31 Jul 2018 10:50:26 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 10:50:26 GMT
ENV GOSU_VERSION=1.10
# Tue, 31 Jul 2018 10:51:31 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 31 Jul 2018 10:51:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 31 Jul 2018 10:52:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 10:52:22 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 31 Jul 2018 10:52:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 31 Jul 2018 10:52:38 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Tue, 31 Jul 2018 10:56:39 GMT
ENV PERCONA_MAJOR=5.5
# Tue, 31 Jul 2018 10:56:40 GMT
ENV PERCONA_VERSION=5.5.60-rel38.12-1.jessie
# Tue, 31 Jul 2018 10:58:06 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 31 Jul 2018 10:58:07 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 31 Jul 2018 10:58:07 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Tue, 31 Jul 2018 10:58:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 31 Jul 2018 10:58:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 10:58:09 GMT
EXPOSE 3306/tcp
# Tue, 31 Jul 2018 10:58:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:357075fdb6ed4cabaab3293713922024245238f5596815e10a36b24c0a498f08`  
		Last Modified: Tue, 17 Jul 2018 10:56:53 GMT  
		Size: 54.5 MB (54483269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41984b880013b927997c85a6afed9b5d24dba0f5e44f2e1300d343f8f6156a87`  
		Last Modified: Tue, 31 Jul 2018 10:58:41 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19908aaed944eb4fb70a5f34adde57f47cdc7c168e6ec371a3d13f738c9a559a`  
		Last Modified: Tue, 31 Jul 2018 10:58:40 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93e9d73128b4b41981c6708d8fb19548acab721f38b413a27576c7275227de2`  
		Last Modified: Tue, 31 Jul 2018 10:58:38 GMT  
		Size: 967.6 KB (967640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e909c3b874aac0aa7667cef9dfe647da1f69dd893fd3c9be4ed63fa8f9146d`  
		Last Modified: Tue, 31 Jul 2018 10:58:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1203c2ba4cef02bfa927c88dde383ad4ead13e4afecc2b53205fd63de0fae0`  
		Last Modified: Tue, 31 Jul 2018 10:58:39 GMT  
		Size: 7.1 MB (7128115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45e0897bcdf555d724a17b22dd60ddc8d5d36cd3d36f51ab2b6bebb10b0e0fa2`  
		Last Modified: Tue, 31 Jul 2018 10:58:35 GMT  
		Size: 4.7 KB (4677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc0d19d06ca61972d951a21fda3f2aacd5c834751913bc20483d22810417b86d`  
		Last Modified: Tue, 31 Jul 2018 10:58:35 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64676d404480e02e9199f13bb7cca90f9ea072c8b722c3dc6aeb9648cec8748f`  
		Last Modified: Tue, 31 Jul 2018 11:02:48 GMT  
		Size: 45.5 MB (45477557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b3ee49ae06b7eba0dead31228e63990d790edc98a913db15f8a1856dfa91a9d`  
		Last Modified: Tue, 31 Jul 2018 11:02:31 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf382d3c07ece7abb11f4ac56fedd6637f1c52d901df200532dc071e3980e3c2`  
		Last Modified: Tue, 31 Jul 2018 11:02:30 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5.60`

```console
$ docker pull percona@sha256:8e4431c9147cd146a45d525209c6a418c2a3e2d97574933e619aed31d9b2221b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `percona:5.5.60` - linux; amd64

```console
$ docker pull percona@sha256:9ffca84bf6ef8b54b3550bf8e1bb43d631abdaab10d8b283f3612d079b9aedcd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106714373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8b7a6ae6d74f797c94e34ce3bfb629efcbdcd39526d6bf4dcd8703c72c6e09f`
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
# Fri, 27 Jul 2018 22:35:52 GMT
ENV PERCONA_MAJOR=5.5
# Fri, 27 Jul 2018 22:35:52 GMT
ENV PERCONA_VERSION=5.5.60-rel38.12-1.jessie
# Fri, 27 Jul 2018 22:37:14 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 27 Jul 2018 22:37:17 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Fri, 27 Jul 2018 22:37:18 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Fri, 27 Jul 2018 22:37:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 27 Jul 2018 22:37:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jul 2018 22:37:36 GMT
EXPOSE 3306/tcp
# Fri, 27 Jul 2018 22:37:37 GMT
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
	-	`sha256:2c38f5d9488343481a465063040f0f4687f00e0b6fe64d313b32064a8f29ba91`  
		Last Modified: Fri, 27 Jul 2018 22:44:33 GMT  
		Size: 46.5 MB (46498237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29146edcb6be2653e62c20100e0de2aef2256ca1ee05de2ab3110eb95e4640e4`  
		Last Modified: Fri, 27 Jul 2018 22:44:17 GMT  
		Size: 2.4 KB (2444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dded1f6d7e5f37880542060f27a6d12d124b5d91a89d0a54eb2459da8dd6f74`  
		Last Modified: Fri, 27 Jul 2018 22:44:17 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `percona:5.5.60` - linux; 386

```console
$ docker pull percona@sha256:2ab5cf680c3f0e03ddda937c14bdce57832e095c2d403ced62c2e203de561d01
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.1 MB (108066520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:863d2edea94fcd51b71998685d4382ab8295c6d88361d26fce46aeb5ea06607b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 10:41:14 GMT
ADD file:edf13e4ea5255fbdbe91ff11bf281f8dc1ed1790ea095ab1ff341f0abc03f58c in / 
# Tue, 17 Jul 2018 10:41:14 GMT
CMD ["bash"]
# Tue, 31 Jul 2018 10:49:57 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 31 Jul 2018 10:50:26 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 10:50:26 GMT
ENV GOSU_VERSION=1.10
# Tue, 31 Jul 2018 10:51:31 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 31 Jul 2018 10:51:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 31 Jul 2018 10:52:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 10:52:22 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 31 Jul 2018 10:52:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 31 Jul 2018 10:52:38 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Tue, 31 Jul 2018 10:56:39 GMT
ENV PERCONA_MAJOR=5.5
# Tue, 31 Jul 2018 10:56:40 GMT
ENV PERCONA_VERSION=5.5.60-rel38.12-1.jessie
# Tue, 31 Jul 2018 10:58:06 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 31 Jul 2018 10:58:07 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 31 Jul 2018 10:58:07 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Tue, 31 Jul 2018 10:58:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 31 Jul 2018 10:58:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 10:58:09 GMT
EXPOSE 3306/tcp
# Tue, 31 Jul 2018 10:58:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:357075fdb6ed4cabaab3293713922024245238f5596815e10a36b24c0a498f08`  
		Last Modified: Tue, 17 Jul 2018 10:56:53 GMT  
		Size: 54.5 MB (54483269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41984b880013b927997c85a6afed9b5d24dba0f5e44f2e1300d343f8f6156a87`  
		Last Modified: Tue, 31 Jul 2018 10:58:41 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19908aaed944eb4fb70a5f34adde57f47cdc7c168e6ec371a3d13f738c9a559a`  
		Last Modified: Tue, 31 Jul 2018 10:58:40 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93e9d73128b4b41981c6708d8fb19548acab721f38b413a27576c7275227de2`  
		Last Modified: Tue, 31 Jul 2018 10:58:38 GMT  
		Size: 967.6 KB (967640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e909c3b874aac0aa7667cef9dfe647da1f69dd893fd3c9be4ed63fa8f9146d`  
		Last Modified: Tue, 31 Jul 2018 10:58:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1203c2ba4cef02bfa927c88dde383ad4ead13e4afecc2b53205fd63de0fae0`  
		Last Modified: Tue, 31 Jul 2018 10:58:39 GMT  
		Size: 7.1 MB (7128115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45e0897bcdf555d724a17b22dd60ddc8d5d36cd3d36f51ab2b6bebb10b0e0fa2`  
		Last Modified: Tue, 31 Jul 2018 10:58:35 GMT  
		Size: 4.7 KB (4677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc0d19d06ca61972d951a21fda3f2aacd5c834751913bc20483d22810417b86d`  
		Last Modified: Tue, 31 Jul 2018 10:58:35 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64676d404480e02e9199f13bb7cca90f9ea072c8b722c3dc6aeb9648cec8748f`  
		Last Modified: Tue, 31 Jul 2018 11:02:48 GMT  
		Size: 45.5 MB (45477557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b3ee49ae06b7eba0dead31228e63990d790edc98a913db15f8a1856dfa91a9d`  
		Last Modified: Tue, 31 Jul 2018 11:02:31 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf382d3c07ece7abb11f4ac56fedd6637f1c52d901df200532dc071e3980e3c2`  
		Last Modified: Tue, 31 Jul 2018 11:02:30 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5.60-stretch`

**does not exist** (yet?)

## `percona:5.5-stretch`

**does not exist** (yet?)

## `percona:5.6`

```console
$ docker pull percona@sha256:6e719fffa580ecdc8765685211793fbac6ee1c83307b84a7ea24103ff223bcc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

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

### `percona:5.6` - linux; 386

```console
$ docker pull percona@sha256:ba5b1e8517f29e11aa6ef3f0572af6c051f023ef78687fe72dd29f652a993064
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.1 MB (116102973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d968c366d1c64b9671c2d58dee0c3e015cb4fb015a9afe3d96fd48f451a667e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 10:41:14 GMT
ADD file:edf13e4ea5255fbdbe91ff11bf281f8dc1ed1790ea095ab1ff341f0abc03f58c in / 
# Tue, 17 Jul 2018 10:41:14 GMT
CMD ["bash"]
# Tue, 31 Jul 2018 10:49:57 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 31 Jul 2018 10:50:26 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 10:50:26 GMT
ENV GOSU_VERSION=1.10
# Tue, 31 Jul 2018 10:51:31 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 31 Jul 2018 10:51:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 31 Jul 2018 10:52:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 10:52:22 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 31 Jul 2018 10:52:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 31 Jul 2018 10:52:38 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Tue, 31 Jul 2018 10:54:36 GMT
ENV PERCONA_MAJOR=5.6
# Tue, 31 Jul 2018 10:54:36 GMT
ENV PERCONA_VERSION=5.6.40-84.0-1.jessie
# Tue, 31 Jul 2018 10:56:14 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 31 Jul 2018 10:56:15 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 31 Jul 2018 10:56:15 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Tue, 31 Jul 2018 10:56:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 31 Jul 2018 10:56:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 10:56:17 GMT
EXPOSE 3306/tcp
# Tue, 31 Jul 2018 10:56:17 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:357075fdb6ed4cabaab3293713922024245238f5596815e10a36b24c0a498f08`  
		Last Modified: Tue, 17 Jul 2018 10:56:53 GMT  
		Size: 54.5 MB (54483269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41984b880013b927997c85a6afed9b5d24dba0f5e44f2e1300d343f8f6156a87`  
		Last Modified: Tue, 31 Jul 2018 10:58:41 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19908aaed944eb4fb70a5f34adde57f47cdc7c168e6ec371a3d13f738c9a559a`  
		Last Modified: Tue, 31 Jul 2018 10:58:40 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93e9d73128b4b41981c6708d8fb19548acab721f38b413a27576c7275227de2`  
		Last Modified: Tue, 31 Jul 2018 10:58:38 GMT  
		Size: 967.6 KB (967640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e909c3b874aac0aa7667cef9dfe647da1f69dd893fd3c9be4ed63fa8f9146d`  
		Last Modified: Tue, 31 Jul 2018 10:58:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1203c2ba4cef02bfa927c88dde383ad4ead13e4afecc2b53205fd63de0fae0`  
		Last Modified: Tue, 31 Jul 2018 10:58:39 GMT  
		Size: 7.1 MB (7128115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45e0897bcdf555d724a17b22dd60ddc8d5d36cd3d36f51ab2b6bebb10b0e0fa2`  
		Last Modified: Tue, 31 Jul 2018 10:58:35 GMT  
		Size: 4.7 KB (4677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc0d19d06ca61972d951a21fda3f2aacd5c834751913bc20483d22810417b86d`  
		Last Modified: Tue, 31 Jul 2018 10:58:35 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257dd1d19a2f183d26eb539caeb32e70f3ab19d40b83304696f959d1e4b10b2f`  
		Last Modified: Tue, 31 Jul 2018 11:01:21 GMT  
		Size: 53.5 MB (53514003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:253509e60fcc051a9f4739f676a016d32c248b1f5eedca7bfc4e70f339839530`  
		Last Modified: Tue, 31 Jul 2018 11:00:55 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36baf4d6fc7051a2be2f3544c237a4e66d22679aec197e5502ee0289d17fbcf9`  
		Last Modified: Tue, 31 Jul 2018 11:00:54 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.40`

```console
$ docker pull percona@sha256:6e719fffa580ecdc8765685211793fbac6ee1c83307b84a7ea24103ff223bcc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

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

### `percona:5.6.40` - linux; 386

```console
$ docker pull percona@sha256:ba5b1e8517f29e11aa6ef3f0572af6c051f023ef78687fe72dd29f652a993064
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.1 MB (116102973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d968c366d1c64b9671c2d58dee0c3e015cb4fb015a9afe3d96fd48f451a667e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 10:41:14 GMT
ADD file:edf13e4ea5255fbdbe91ff11bf281f8dc1ed1790ea095ab1ff341f0abc03f58c in / 
# Tue, 17 Jul 2018 10:41:14 GMT
CMD ["bash"]
# Tue, 31 Jul 2018 10:49:57 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 31 Jul 2018 10:50:26 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 10:50:26 GMT
ENV GOSU_VERSION=1.10
# Tue, 31 Jul 2018 10:51:31 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 31 Jul 2018 10:51:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 31 Jul 2018 10:52:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 10:52:22 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 31 Jul 2018 10:52:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 31 Jul 2018 10:52:38 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Tue, 31 Jul 2018 10:54:36 GMT
ENV PERCONA_MAJOR=5.6
# Tue, 31 Jul 2018 10:54:36 GMT
ENV PERCONA_VERSION=5.6.40-84.0-1.jessie
# Tue, 31 Jul 2018 10:56:14 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 31 Jul 2018 10:56:15 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 31 Jul 2018 10:56:15 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Tue, 31 Jul 2018 10:56:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 31 Jul 2018 10:56:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 10:56:17 GMT
EXPOSE 3306/tcp
# Tue, 31 Jul 2018 10:56:17 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:357075fdb6ed4cabaab3293713922024245238f5596815e10a36b24c0a498f08`  
		Last Modified: Tue, 17 Jul 2018 10:56:53 GMT  
		Size: 54.5 MB (54483269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41984b880013b927997c85a6afed9b5d24dba0f5e44f2e1300d343f8f6156a87`  
		Last Modified: Tue, 31 Jul 2018 10:58:41 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19908aaed944eb4fb70a5f34adde57f47cdc7c168e6ec371a3d13f738c9a559a`  
		Last Modified: Tue, 31 Jul 2018 10:58:40 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93e9d73128b4b41981c6708d8fb19548acab721f38b413a27576c7275227de2`  
		Last Modified: Tue, 31 Jul 2018 10:58:38 GMT  
		Size: 967.6 KB (967640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e909c3b874aac0aa7667cef9dfe647da1f69dd893fd3c9be4ed63fa8f9146d`  
		Last Modified: Tue, 31 Jul 2018 10:58:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1203c2ba4cef02bfa927c88dde383ad4ead13e4afecc2b53205fd63de0fae0`  
		Last Modified: Tue, 31 Jul 2018 10:58:39 GMT  
		Size: 7.1 MB (7128115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45e0897bcdf555d724a17b22dd60ddc8d5d36cd3d36f51ab2b6bebb10b0e0fa2`  
		Last Modified: Tue, 31 Jul 2018 10:58:35 GMT  
		Size: 4.7 KB (4677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc0d19d06ca61972d951a21fda3f2aacd5c834751913bc20483d22810417b86d`  
		Last Modified: Tue, 31 Jul 2018 10:58:35 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257dd1d19a2f183d26eb539caeb32e70f3ab19d40b83304696f959d1e4b10b2f`  
		Last Modified: Tue, 31 Jul 2018 11:01:21 GMT  
		Size: 53.5 MB (53514003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:253509e60fcc051a9f4739f676a016d32c248b1f5eedca7bfc4e70f339839530`  
		Last Modified: Tue, 31 Jul 2018 11:00:55 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36baf4d6fc7051a2be2f3544c237a4e66d22679aec197e5502ee0289d17fbcf9`  
		Last Modified: Tue, 31 Jul 2018 11:00:54 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.40-stretch`

**does not exist** (yet?)

## `percona:5.6-stretch`

**does not exist** (yet?)

## `percona:5.7`

```console
$ docker pull percona@sha256:b3af730c0aa8bad3c26ac53350764eceb74c3f2ec32df136adc092798334aec7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

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

### `percona:5.7` - linux; 386

```console
$ docker pull percona@sha256:6260e095e00ad2738d8a5902eb3bc0cd2d7f86a8c69baf5037c9d079b91148cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132200869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d84851b646daa0a9d3e43ac575494dffc002836771c49f4f86c3d76775cd1f6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 10:41:14 GMT
ADD file:edf13e4ea5255fbdbe91ff11bf281f8dc1ed1790ea095ab1ff341f0abc03f58c in / 
# Tue, 17 Jul 2018 10:41:14 GMT
CMD ["bash"]
# Tue, 31 Jul 2018 10:49:57 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 31 Jul 2018 10:50:26 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 10:50:26 GMT
ENV GOSU_VERSION=1.10
# Tue, 31 Jul 2018 10:51:31 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 31 Jul 2018 10:51:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 31 Jul 2018 10:52:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 10:52:22 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 31 Jul 2018 10:52:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 31 Jul 2018 10:52:38 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Tue, 31 Jul 2018 10:52:38 GMT
ENV PERCONA_MAJOR=5.7
# Tue, 31 Jul 2018 10:52:38 GMT
ENV PERCONA_VERSION=5.7.22-22-1.jessie
# Tue, 31 Jul 2018 10:54:03 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 31 Jul 2018 10:54:04 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 31 Jul 2018 10:54:04 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Tue, 31 Jul 2018 10:54:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 31 Jul 2018 10:54:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 10:54:06 GMT
EXPOSE 3306/tcp
# Tue, 31 Jul 2018 10:54:06 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:357075fdb6ed4cabaab3293713922024245238f5596815e10a36b24c0a498f08`  
		Last Modified: Tue, 17 Jul 2018 10:56:53 GMT  
		Size: 54.5 MB (54483269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41984b880013b927997c85a6afed9b5d24dba0f5e44f2e1300d343f8f6156a87`  
		Last Modified: Tue, 31 Jul 2018 10:58:41 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19908aaed944eb4fb70a5f34adde57f47cdc7c168e6ec371a3d13f738c9a559a`  
		Last Modified: Tue, 31 Jul 2018 10:58:40 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93e9d73128b4b41981c6708d8fb19548acab721f38b413a27576c7275227de2`  
		Last Modified: Tue, 31 Jul 2018 10:58:38 GMT  
		Size: 967.6 KB (967640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e909c3b874aac0aa7667cef9dfe647da1f69dd893fd3c9be4ed63fa8f9146d`  
		Last Modified: Tue, 31 Jul 2018 10:58:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1203c2ba4cef02bfa927c88dde383ad4ead13e4afecc2b53205fd63de0fae0`  
		Last Modified: Tue, 31 Jul 2018 10:58:39 GMT  
		Size: 7.1 MB (7128115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45e0897bcdf555d724a17b22dd60ddc8d5d36cd3d36f51ab2b6bebb10b0e0fa2`  
		Last Modified: Tue, 31 Jul 2018 10:58:35 GMT  
		Size: 4.7 KB (4677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc0d19d06ca61972d951a21fda3f2aacd5c834751913bc20483d22810417b86d`  
		Last Modified: Tue, 31 Jul 2018 10:58:35 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9854dbd2bfa38cc4c9699b2c4007bf9453b5b82dfd3380d953abe7a26e9cf3de`  
		Last Modified: Tue, 31 Jul 2018 10:58:53 GMT  
		Size: 69.6 MB (69611898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93e089752ce13f80e8ab4de132b6090af0b580d66845115a5249401ea3a2213`  
		Last Modified: Tue, 31 Jul 2018 10:58:35 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de636f5e6084d578c443ccead6c012520bd20fafdcb7adf41e8921fd4c9010f2`  
		Last Modified: Tue, 31 Jul 2018 10:58:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7.22`

```console
$ docker pull percona@sha256:b3af730c0aa8bad3c26ac53350764eceb74c3f2ec32df136adc092798334aec7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

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

### `percona:5.7.22` - linux; 386

```console
$ docker pull percona@sha256:6260e095e00ad2738d8a5902eb3bc0cd2d7f86a8c69baf5037c9d079b91148cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132200869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d84851b646daa0a9d3e43ac575494dffc002836771c49f4f86c3d76775cd1f6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 10:41:14 GMT
ADD file:edf13e4ea5255fbdbe91ff11bf281f8dc1ed1790ea095ab1ff341f0abc03f58c in / 
# Tue, 17 Jul 2018 10:41:14 GMT
CMD ["bash"]
# Tue, 31 Jul 2018 10:49:57 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 31 Jul 2018 10:50:26 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 10:50:26 GMT
ENV GOSU_VERSION=1.10
# Tue, 31 Jul 2018 10:51:31 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 31 Jul 2018 10:51:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 31 Jul 2018 10:52:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 10:52:22 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 31 Jul 2018 10:52:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 31 Jul 2018 10:52:38 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Tue, 31 Jul 2018 10:52:38 GMT
ENV PERCONA_MAJOR=5.7
# Tue, 31 Jul 2018 10:52:38 GMT
ENV PERCONA_VERSION=5.7.22-22-1.jessie
# Tue, 31 Jul 2018 10:54:03 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 31 Jul 2018 10:54:04 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 31 Jul 2018 10:54:04 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Tue, 31 Jul 2018 10:54:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 31 Jul 2018 10:54:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 10:54:06 GMT
EXPOSE 3306/tcp
# Tue, 31 Jul 2018 10:54:06 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:357075fdb6ed4cabaab3293713922024245238f5596815e10a36b24c0a498f08`  
		Last Modified: Tue, 17 Jul 2018 10:56:53 GMT  
		Size: 54.5 MB (54483269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41984b880013b927997c85a6afed9b5d24dba0f5e44f2e1300d343f8f6156a87`  
		Last Modified: Tue, 31 Jul 2018 10:58:41 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19908aaed944eb4fb70a5f34adde57f47cdc7c168e6ec371a3d13f738c9a559a`  
		Last Modified: Tue, 31 Jul 2018 10:58:40 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93e9d73128b4b41981c6708d8fb19548acab721f38b413a27576c7275227de2`  
		Last Modified: Tue, 31 Jul 2018 10:58:38 GMT  
		Size: 967.6 KB (967640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e909c3b874aac0aa7667cef9dfe647da1f69dd893fd3c9be4ed63fa8f9146d`  
		Last Modified: Tue, 31 Jul 2018 10:58:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1203c2ba4cef02bfa927c88dde383ad4ead13e4afecc2b53205fd63de0fae0`  
		Last Modified: Tue, 31 Jul 2018 10:58:39 GMT  
		Size: 7.1 MB (7128115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45e0897bcdf555d724a17b22dd60ddc8d5d36cd3d36f51ab2b6bebb10b0e0fa2`  
		Last Modified: Tue, 31 Jul 2018 10:58:35 GMT  
		Size: 4.7 KB (4677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc0d19d06ca61972d951a21fda3f2aacd5c834751913bc20483d22810417b86d`  
		Last Modified: Tue, 31 Jul 2018 10:58:35 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9854dbd2bfa38cc4c9699b2c4007bf9453b5b82dfd3380d953abe7a26e9cf3de`  
		Last Modified: Tue, 31 Jul 2018 10:58:53 GMT  
		Size: 69.6 MB (69611898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93e089752ce13f80e8ab4de132b6090af0b580d66845115a5249401ea3a2213`  
		Last Modified: Tue, 31 Jul 2018 10:58:35 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de636f5e6084d578c443ccead6c012520bd20fafdcb7adf41e8921fd4c9010f2`  
		Last Modified: Tue, 31 Jul 2018 10:58:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7.22-stretch`

**does not exist** (yet?)

## `percona:5.7-stretch`

**does not exist** (yet?)

## `percona:5-stretch`

**does not exist** (yet?)

## `percona:latest`

```console
$ docker pull percona@sha256:b3af730c0aa8bad3c26ac53350764eceb74c3f2ec32df136adc092798334aec7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `percona:latest` - linux; amd64

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

### `percona:latest` - linux; 386

```console
$ docker pull percona@sha256:6260e095e00ad2738d8a5902eb3bc0cd2d7f86a8c69baf5037c9d079b91148cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132200869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d84851b646daa0a9d3e43ac575494dffc002836771c49f4f86c3d76775cd1f6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 10:41:14 GMT
ADD file:edf13e4ea5255fbdbe91ff11bf281f8dc1ed1790ea095ab1ff341f0abc03f58c in / 
# Tue, 17 Jul 2018 10:41:14 GMT
CMD ["bash"]
# Tue, 31 Jul 2018 10:49:57 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 31 Jul 2018 10:50:26 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 10:50:26 GMT
ENV GOSU_VERSION=1.10
# Tue, 31 Jul 2018 10:51:31 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 31 Jul 2018 10:51:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 31 Jul 2018 10:52:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 10:52:22 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 31 Jul 2018 10:52:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 31 Jul 2018 10:52:38 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Tue, 31 Jul 2018 10:52:38 GMT
ENV PERCONA_MAJOR=5.7
# Tue, 31 Jul 2018 10:52:38 GMT
ENV PERCONA_VERSION=5.7.22-22-1.jessie
# Tue, 31 Jul 2018 10:54:03 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 31 Jul 2018 10:54:04 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 31 Jul 2018 10:54:04 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Tue, 31 Jul 2018 10:54:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 31 Jul 2018 10:54:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 10:54:06 GMT
EXPOSE 3306/tcp
# Tue, 31 Jul 2018 10:54:06 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:357075fdb6ed4cabaab3293713922024245238f5596815e10a36b24c0a498f08`  
		Last Modified: Tue, 17 Jul 2018 10:56:53 GMT  
		Size: 54.5 MB (54483269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41984b880013b927997c85a6afed9b5d24dba0f5e44f2e1300d343f8f6156a87`  
		Last Modified: Tue, 31 Jul 2018 10:58:41 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19908aaed944eb4fb70a5f34adde57f47cdc7c168e6ec371a3d13f738c9a559a`  
		Last Modified: Tue, 31 Jul 2018 10:58:40 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93e9d73128b4b41981c6708d8fb19548acab721f38b413a27576c7275227de2`  
		Last Modified: Tue, 31 Jul 2018 10:58:38 GMT  
		Size: 967.6 KB (967640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e909c3b874aac0aa7667cef9dfe647da1f69dd893fd3c9be4ed63fa8f9146d`  
		Last Modified: Tue, 31 Jul 2018 10:58:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1203c2ba4cef02bfa927c88dde383ad4ead13e4afecc2b53205fd63de0fae0`  
		Last Modified: Tue, 31 Jul 2018 10:58:39 GMT  
		Size: 7.1 MB (7128115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45e0897bcdf555d724a17b22dd60ddc8d5d36cd3d36f51ab2b6bebb10b0e0fa2`  
		Last Modified: Tue, 31 Jul 2018 10:58:35 GMT  
		Size: 4.7 KB (4677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc0d19d06ca61972d951a21fda3f2aacd5c834751913bc20483d22810417b86d`  
		Last Modified: Tue, 31 Jul 2018 10:58:35 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9854dbd2bfa38cc4c9699b2c4007bf9453b5b82dfd3380d953abe7a26e9cf3de`  
		Last Modified: Tue, 31 Jul 2018 10:58:53 GMT  
		Size: 69.6 MB (69611898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93e089752ce13f80e8ab4de132b6090af0b580d66845115a5249401ea3a2213`  
		Last Modified: Tue, 31 Jul 2018 10:58:35 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de636f5e6084d578c443ccead6c012520bd20fafdcb7adf41e8921fd4c9010f2`  
		Last Modified: Tue, 31 Jul 2018 10:58:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:stretch`

**does not exist** (yet?)
