<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `percona`

-	[`percona:5`](#percona5)
-	[`percona:5.5`](#percona55)
-	[`percona:5.5.61`](#percona5561)
-	[`percona:5.5.61-stretch`](#percona5561-stretch)
-	[`percona:5.5-stretch`](#percona55-stretch)
-	[`percona:5.6`](#percona56)
-	[`percona:5.6.41`](#percona5641)
-	[`percona:5.6.41-stretch`](#percona5641-stretch)
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
$ docker pull percona@sha256:b93ba73345ca07ac67c65c89cdf3b2d7aa71653729c2a5198f29d48400c16f65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5` - linux; amd64

```console
$ docker pull percona@sha256:711325ceb28f133b0f9be7afb6b5ab8ef45360ec36100da41446dab15d0869e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.0 MB (146015972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa8dc9140daaaba92a37f4e95262db727832d92c384d86a8c2bc9518971f0837`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 31 Jul 2018 17:14:25 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 31 Jul 2018 17:14:39 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 17:14:45 GMT
ENV GOSU_VERSION=1.10
# Tue, 31 Jul 2018 17:15:04 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 31 Jul 2018 17:15:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 31 Jul 2018 17:15:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 17:15:27 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 31 Jul 2018 17:15:30 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 31 Jul 2018 17:15:31 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Tue, 31 Jul 2018 17:15:47 GMT
ENV PERCONA_MAJOR=5.7
# Tue, 31 Jul 2018 17:15:47 GMT
ENV PERCONA_VERSION=5.7.22-22-1.stretch
# Tue, 31 Jul 2018 17:16:15 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 31 Jul 2018 17:16:16 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 31 Jul 2018 17:16:17 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Tue, 31 Jul 2018 17:16:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 31 Jul 2018 17:16:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 17:16:19 GMT
EXPOSE 3306/tcp
# Tue, 31 Jul 2018 17:16:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03ec8e94d89fbc1f9ad54ab00147e84dfce81c30f5cebf24666edb7a2da6d66`  
		Last Modified: Tue, 31 Jul 2018 17:20:15 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cc3dfa773b05cc0faf62e4f2ba1270995b63c615b944176ba981808ce8ceaf`  
		Last Modified: Tue, 31 Jul 2018 17:20:15 GMT  
		Size: 6.6 MB (6561887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55fb6f07193d5ed89098a371d9cd7a57e9487e02f2eca26b19f81558d292590f`  
		Last Modified: Tue, 31 Jul 2018 17:20:14 GMT  
		Size: 956.5 KB (956476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e6c7969d08ac634ff6771fc4b73fc9761e0664a0efb4d624ff7736dae737e7`  
		Last Modified: Tue, 31 Jul 2018 17:20:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474e344ff69b3b274c8e5d0f3364a994feea90badccd1a9c23fad1883733aee9`  
		Last Modified: Tue, 31 Jul 2018 17:20:15 GMT  
		Size: 5.5 MB (5517406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76bcd0e0011678f3a7d8060849895a5bd0e530e2e8a6bd59aae5d72712e1fff`  
		Last Modified: Tue, 31 Jul 2018 17:20:11 GMT  
		Size: 4.7 KB (4672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c16035b5454d0396c118d6c60730e1e985e7b64cdef93d03e93c597a98c627d`  
		Last Modified: Tue, 31 Jul 2018 17:20:10 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd5646c90434fe5a481e35bcffd930952b7dd2de3fc6ec1cc0c872fed3ae757`  
		Last Modified: Tue, 31 Jul 2018 17:20:40 GMT  
		Size: 87.7 MB (87660845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f247efae0153bff9b3625863e92432a7878a1f42a8b143296e54da9978229614`  
		Last Modified: Tue, 31 Jul 2018 17:20:11 GMT  
		Size: 2.4 KB (2445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bd8ee8f35f32d5ab2d6a77a1cdbd91e1e6ed6b349bf78aac8ba72ccadd4954`  
		Last Modified: Tue, 31 Jul 2018 17:20:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5`

```console
$ docker pull percona@sha256:374dee51aa0057fede71b1907976290b7821968510f97afd6719be95a1807b62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.5` - linux; amd64

```console
$ docker pull percona@sha256:d0517f33dcb8cbdef5ac69bbb4cd3ddb6570526dede4d388f232a5e6ae8769d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.7 MB (105705553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a7920529d5931f3b432f16cf9f96dce8abd7455976fb9a53a93e208173fc5b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 31 Jul 2018 17:14:25 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 31 Jul 2018 17:14:39 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 17:14:45 GMT
ENV GOSU_VERSION=1.10
# Tue, 31 Jul 2018 17:15:04 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 31 Jul 2018 17:15:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 31 Jul 2018 17:15:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 17:15:27 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 31 Jul 2018 17:15:30 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 31 Jul 2018 17:15:31 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Tue, 31 Jul 2018 17:18:45 GMT
ENV PERCONA_MAJOR=5.5
# Tue, 31 Jul 2018 17:18:45 GMT
ENV PERCONA_VERSION=5.5.60-rel38.12-1.stretch
# Tue, 31 Jul 2018 17:19:30 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 31 Jul 2018 17:19:31 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 31 Jul 2018 17:19:31 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Tue, 31 Jul 2018 17:19:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 31 Jul 2018 17:19:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 17:19:33 GMT
EXPOSE 3306/tcp
# Tue, 31 Jul 2018 17:19:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03ec8e94d89fbc1f9ad54ab00147e84dfce81c30f5cebf24666edb7a2da6d66`  
		Last Modified: Tue, 31 Jul 2018 17:20:15 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cc3dfa773b05cc0faf62e4f2ba1270995b63c615b944176ba981808ce8ceaf`  
		Last Modified: Tue, 31 Jul 2018 17:20:15 GMT  
		Size: 6.6 MB (6561887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55fb6f07193d5ed89098a371d9cd7a57e9487e02f2eca26b19f81558d292590f`  
		Last Modified: Tue, 31 Jul 2018 17:20:14 GMT  
		Size: 956.5 KB (956476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e6c7969d08ac634ff6771fc4b73fc9761e0664a0efb4d624ff7736dae737e7`  
		Last Modified: Tue, 31 Jul 2018 17:20:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474e344ff69b3b274c8e5d0f3364a994feea90badccd1a9c23fad1883733aee9`  
		Last Modified: Tue, 31 Jul 2018 17:20:15 GMT  
		Size: 5.5 MB (5517406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76bcd0e0011678f3a7d8060849895a5bd0e530e2e8a6bd59aae5d72712e1fff`  
		Last Modified: Tue, 31 Jul 2018 17:20:11 GMT  
		Size: 4.7 KB (4672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c16035b5454d0396c118d6c60730e1e985e7b64cdef93d03e93c597a98c627d`  
		Last Modified: Tue, 31 Jul 2018 17:20:10 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3da64558b3b1a23b921b753a4d94a9e38762e6421eda7dd2f9aff00c508075`  
		Last Modified: Tue, 31 Jul 2018 17:26:34 GMT  
		Size: 47.4 MB (47350424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd38820b23c1584316b81019c6d434917c59b58430c77e4ec7b8980f8f299362`  
		Last Modified: Tue, 31 Jul 2018 17:26:17 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5081573fcbc9e625cbaf619543d69dd7ffaab60a6e34271ef37ff5392a61039c`  
		Last Modified: Tue, 31 Jul 2018 17:26:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5.61`

**does not exist** (yet?)

## `percona:5.5.61-stretch`

**does not exist** (yet?)

## `percona:5.5-stretch`

```console
$ docker pull percona@sha256:374dee51aa0057fede71b1907976290b7821968510f97afd6719be95a1807b62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.5-stretch` - linux; amd64

```console
$ docker pull percona@sha256:d0517f33dcb8cbdef5ac69bbb4cd3ddb6570526dede4d388f232a5e6ae8769d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.7 MB (105705553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a7920529d5931f3b432f16cf9f96dce8abd7455976fb9a53a93e208173fc5b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 31 Jul 2018 17:14:25 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 31 Jul 2018 17:14:39 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 17:14:45 GMT
ENV GOSU_VERSION=1.10
# Tue, 31 Jul 2018 17:15:04 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 31 Jul 2018 17:15:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 31 Jul 2018 17:15:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 17:15:27 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 31 Jul 2018 17:15:30 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 31 Jul 2018 17:15:31 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Tue, 31 Jul 2018 17:18:45 GMT
ENV PERCONA_MAJOR=5.5
# Tue, 31 Jul 2018 17:18:45 GMT
ENV PERCONA_VERSION=5.5.60-rel38.12-1.stretch
# Tue, 31 Jul 2018 17:19:30 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 31 Jul 2018 17:19:31 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 31 Jul 2018 17:19:31 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Tue, 31 Jul 2018 17:19:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 31 Jul 2018 17:19:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 17:19:33 GMT
EXPOSE 3306/tcp
# Tue, 31 Jul 2018 17:19:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03ec8e94d89fbc1f9ad54ab00147e84dfce81c30f5cebf24666edb7a2da6d66`  
		Last Modified: Tue, 31 Jul 2018 17:20:15 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cc3dfa773b05cc0faf62e4f2ba1270995b63c615b944176ba981808ce8ceaf`  
		Last Modified: Tue, 31 Jul 2018 17:20:15 GMT  
		Size: 6.6 MB (6561887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55fb6f07193d5ed89098a371d9cd7a57e9487e02f2eca26b19f81558d292590f`  
		Last Modified: Tue, 31 Jul 2018 17:20:14 GMT  
		Size: 956.5 KB (956476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e6c7969d08ac634ff6771fc4b73fc9761e0664a0efb4d624ff7736dae737e7`  
		Last Modified: Tue, 31 Jul 2018 17:20:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474e344ff69b3b274c8e5d0f3364a994feea90badccd1a9c23fad1883733aee9`  
		Last Modified: Tue, 31 Jul 2018 17:20:15 GMT  
		Size: 5.5 MB (5517406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76bcd0e0011678f3a7d8060849895a5bd0e530e2e8a6bd59aae5d72712e1fff`  
		Last Modified: Tue, 31 Jul 2018 17:20:11 GMT  
		Size: 4.7 KB (4672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c16035b5454d0396c118d6c60730e1e985e7b64cdef93d03e93c597a98c627d`  
		Last Modified: Tue, 31 Jul 2018 17:20:10 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3da64558b3b1a23b921b753a4d94a9e38762e6421eda7dd2f9aff00c508075`  
		Last Modified: Tue, 31 Jul 2018 17:26:34 GMT  
		Size: 47.4 MB (47350424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd38820b23c1584316b81019c6d434917c59b58430c77e4ec7b8980f8f299362`  
		Last Modified: Tue, 31 Jul 2018 17:26:17 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5081573fcbc9e625cbaf619543d69dd7ffaab60a6e34271ef37ff5392a61039c`  
		Last Modified: Tue, 31 Jul 2018 17:26:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6`

```console
$ docker pull percona@sha256:81423fb5f590c3d264b5c0ba5227abbfbbeeeabae01747a50aa0e774c1f47ff6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6` - linux; amd64

```console
$ docker pull percona@sha256:ef80024e832bb4df93d24562484d542aa56d25ff17e93bf549edbfaf9d63ea3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.9 MB (113915282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc07fcebcda3398b6041970d1aa0137ac61cad837b0b3c8f1ff944dc88101975`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 31 Jul 2018 17:14:25 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 31 Jul 2018 17:14:39 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 17:14:45 GMT
ENV GOSU_VERSION=1.10
# Tue, 31 Jul 2018 17:15:04 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 31 Jul 2018 17:15:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 31 Jul 2018 17:15:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 17:15:27 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 31 Jul 2018 17:15:30 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 31 Jul 2018 17:15:31 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Tue, 31 Jul 2018 17:17:18 GMT
ENV PERCONA_MAJOR=5.6
# Tue, 31 Jul 2018 17:17:18 GMT
ENV PERCONA_VERSION=5.6.40-84.0-1.stretch
# Tue, 31 Jul 2018 17:17:49 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 31 Jul 2018 17:17:57 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 31 Jul 2018 17:17:57 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Tue, 31 Jul 2018 17:17:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 31 Jul 2018 17:17:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 17:17:59 GMT
EXPOSE 3306/tcp
# Tue, 31 Jul 2018 17:17:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03ec8e94d89fbc1f9ad54ab00147e84dfce81c30f5cebf24666edb7a2da6d66`  
		Last Modified: Tue, 31 Jul 2018 17:20:15 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cc3dfa773b05cc0faf62e4f2ba1270995b63c615b944176ba981808ce8ceaf`  
		Last Modified: Tue, 31 Jul 2018 17:20:15 GMT  
		Size: 6.6 MB (6561887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55fb6f07193d5ed89098a371d9cd7a57e9487e02f2eca26b19f81558d292590f`  
		Last Modified: Tue, 31 Jul 2018 17:20:14 GMT  
		Size: 956.5 KB (956476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e6c7969d08ac634ff6771fc4b73fc9761e0664a0efb4d624ff7736dae737e7`  
		Last Modified: Tue, 31 Jul 2018 17:20:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474e344ff69b3b274c8e5d0f3364a994feea90badccd1a9c23fad1883733aee9`  
		Last Modified: Tue, 31 Jul 2018 17:20:15 GMT  
		Size: 5.5 MB (5517406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76bcd0e0011678f3a7d8060849895a5bd0e530e2e8a6bd59aae5d72712e1fff`  
		Last Modified: Tue, 31 Jul 2018 17:20:11 GMT  
		Size: 4.7 KB (4672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c16035b5454d0396c118d6c60730e1e985e7b64cdef93d03e93c597a98c627d`  
		Last Modified: Tue, 31 Jul 2018 17:20:10 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e266c60e93f3f94c8f6c80fcd4956f0cc91a86116fce57886df069a8952c42`  
		Last Modified: Tue, 31 Jul 2018 17:24:28 GMT  
		Size: 55.6 MB (55560153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c417356ff13189d5cb3df1a097ceb6fcde660bf315c9af401903b46c99b962c7`  
		Last Modified: Tue, 31 Jul 2018 17:24:07 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824be2c959820b2b65157cfefaaa94515f91bb404ac8cef995c45f64d55ebe54`  
		Last Modified: Tue, 31 Jul 2018 17:24:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.41`

**does not exist** (yet?)

## `percona:5.6.41-stretch`

**does not exist** (yet?)

## `percona:5.6-stretch`

```console
$ docker pull percona@sha256:81423fb5f590c3d264b5c0ba5227abbfbbeeeabae01747a50aa0e774c1f47ff6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6-stretch` - linux; amd64

```console
$ docker pull percona@sha256:ef80024e832bb4df93d24562484d542aa56d25ff17e93bf549edbfaf9d63ea3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.9 MB (113915282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc07fcebcda3398b6041970d1aa0137ac61cad837b0b3c8f1ff944dc88101975`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 31 Jul 2018 17:14:25 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 31 Jul 2018 17:14:39 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 17:14:45 GMT
ENV GOSU_VERSION=1.10
# Tue, 31 Jul 2018 17:15:04 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 31 Jul 2018 17:15:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 31 Jul 2018 17:15:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 17:15:27 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 31 Jul 2018 17:15:30 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 31 Jul 2018 17:15:31 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Tue, 31 Jul 2018 17:17:18 GMT
ENV PERCONA_MAJOR=5.6
# Tue, 31 Jul 2018 17:17:18 GMT
ENV PERCONA_VERSION=5.6.40-84.0-1.stretch
# Tue, 31 Jul 2018 17:17:49 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 31 Jul 2018 17:17:57 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 31 Jul 2018 17:17:57 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Tue, 31 Jul 2018 17:17:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 31 Jul 2018 17:17:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 17:17:59 GMT
EXPOSE 3306/tcp
# Tue, 31 Jul 2018 17:17:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03ec8e94d89fbc1f9ad54ab00147e84dfce81c30f5cebf24666edb7a2da6d66`  
		Last Modified: Tue, 31 Jul 2018 17:20:15 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cc3dfa773b05cc0faf62e4f2ba1270995b63c615b944176ba981808ce8ceaf`  
		Last Modified: Tue, 31 Jul 2018 17:20:15 GMT  
		Size: 6.6 MB (6561887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55fb6f07193d5ed89098a371d9cd7a57e9487e02f2eca26b19f81558d292590f`  
		Last Modified: Tue, 31 Jul 2018 17:20:14 GMT  
		Size: 956.5 KB (956476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e6c7969d08ac634ff6771fc4b73fc9761e0664a0efb4d624ff7736dae737e7`  
		Last Modified: Tue, 31 Jul 2018 17:20:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474e344ff69b3b274c8e5d0f3364a994feea90badccd1a9c23fad1883733aee9`  
		Last Modified: Tue, 31 Jul 2018 17:20:15 GMT  
		Size: 5.5 MB (5517406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76bcd0e0011678f3a7d8060849895a5bd0e530e2e8a6bd59aae5d72712e1fff`  
		Last Modified: Tue, 31 Jul 2018 17:20:11 GMT  
		Size: 4.7 KB (4672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c16035b5454d0396c118d6c60730e1e985e7b64cdef93d03e93c597a98c627d`  
		Last Modified: Tue, 31 Jul 2018 17:20:10 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e266c60e93f3f94c8f6c80fcd4956f0cc91a86116fce57886df069a8952c42`  
		Last Modified: Tue, 31 Jul 2018 17:24:28 GMT  
		Size: 55.6 MB (55560153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c417356ff13189d5cb3df1a097ceb6fcde660bf315c9af401903b46c99b962c7`  
		Last Modified: Tue, 31 Jul 2018 17:24:07 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824be2c959820b2b65157cfefaaa94515f91bb404ac8cef995c45f64d55ebe54`  
		Last Modified: Tue, 31 Jul 2018 17:24:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7`

```console
$ docker pull percona@sha256:b93ba73345ca07ac67c65c89cdf3b2d7aa71653729c2a5198f29d48400c16f65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7` - linux; amd64

```console
$ docker pull percona@sha256:711325ceb28f133b0f9be7afb6b5ab8ef45360ec36100da41446dab15d0869e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.0 MB (146015972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa8dc9140daaaba92a37f4e95262db727832d92c384d86a8c2bc9518971f0837`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 31 Jul 2018 17:14:25 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 31 Jul 2018 17:14:39 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 17:14:45 GMT
ENV GOSU_VERSION=1.10
# Tue, 31 Jul 2018 17:15:04 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 31 Jul 2018 17:15:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 31 Jul 2018 17:15:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 17:15:27 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 31 Jul 2018 17:15:30 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 31 Jul 2018 17:15:31 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Tue, 31 Jul 2018 17:15:47 GMT
ENV PERCONA_MAJOR=5.7
# Tue, 31 Jul 2018 17:15:47 GMT
ENV PERCONA_VERSION=5.7.22-22-1.stretch
# Tue, 31 Jul 2018 17:16:15 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 31 Jul 2018 17:16:16 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 31 Jul 2018 17:16:17 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Tue, 31 Jul 2018 17:16:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 31 Jul 2018 17:16:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 17:16:19 GMT
EXPOSE 3306/tcp
# Tue, 31 Jul 2018 17:16:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03ec8e94d89fbc1f9ad54ab00147e84dfce81c30f5cebf24666edb7a2da6d66`  
		Last Modified: Tue, 31 Jul 2018 17:20:15 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cc3dfa773b05cc0faf62e4f2ba1270995b63c615b944176ba981808ce8ceaf`  
		Last Modified: Tue, 31 Jul 2018 17:20:15 GMT  
		Size: 6.6 MB (6561887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55fb6f07193d5ed89098a371d9cd7a57e9487e02f2eca26b19f81558d292590f`  
		Last Modified: Tue, 31 Jul 2018 17:20:14 GMT  
		Size: 956.5 KB (956476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e6c7969d08ac634ff6771fc4b73fc9761e0664a0efb4d624ff7736dae737e7`  
		Last Modified: Tue, 31 Jul 2018 17:20:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474e344ff69b3b274c8e5d0f3364a994feea90badccd1a9c23fad1883733aee9`  
		Last Modified: Tue, 31 Jul 2018 17:20:15 GMT  
		Size: 5.5 MB (5517406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76bcd0e0011678f3a7d8060849895a5bd0e530e2e8a6bd59aae5d72712e1fff`  
		Last Modified: Tue, 31 Jul 2018 17:20:11 GMT  
		Size: 4.7 KB (4672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c16035b5454d0396c118d6c60730e1e985e7b64cdef93d03e93c597a98c627d`  
		Last Modified: Tue, 31 Jul 2018 17:20:10 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd5646c90434fe5a481e35bcffd930952b7dd2de3fc6ec1cc0c872fed3ae757`  
		Last Modified: Tue, 31 Jul 2018 17:20:40 GMT  
		Size: 87.7 MB (87660845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f247efae0153bff9b3625863e92432a7878a1f42a8b143296e54da9978229614`  
		Last Modified: Tue, 31 Jul 2018 17:20:11 GMT  
		Size: 2.4 KB (2445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bd8ee8f35f32d5ab2d6a77a1cdbd91e1e6ed6b349bf78aac8ba72ccadd4954`  
		Last Modified: Tue, 31 Jul 2018 17:20:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7.22`

```console
$ docker pull percona@sha256:b93ba73345ca07ac67c65c89cdf3b2d7aa71653729c2a5198f29d48400c16f65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7.22` - linux; amd64

```console
$ docker pull percona@sha256:711325ceb28f133b0f9be7afb6b5ab8ef45360ec36100da41446dab15d0869e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.0 MB (146015972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa8dc9140daaaba92a37f4e95262db727832d92c384d86a8c2bc9518971f0837`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 31 Jul 2018 17:14:25 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 31 Jul 2018 17:14:39 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 17:14:45 GMT
ENV GOSU_VERSION=1.10
# Tue, 31 Jul 2018 17:15:04 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 31 Jul 2018 17:15:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 31 Jul 2018 17:15:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 17:15:27 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 31 Jul 2018 17:15:30 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 31 Jul 2018 17:15:31 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Tue, 31 Jul 2018 17:15:47 GMT
ENV PERCONA_MAJOR=5.7
# Tue, 31 Jul 2018 17:15:47 GMT
ENV PERCONA_VERSION=5.7.22-22-1.stretch
# Tue, 31 Jul 2018 17:16:15 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 31 Jul 2018 17:16:16 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 31 Jul 2018 17:16:17 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Tue, 31 Jul 2018 17:16:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 31 Jul 2018 17:16:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 17:16:19 GMT
EXPOSE 3306/tcp
# Tue, 31 Jul 2018 17:16:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03ec8e94d89fbc1f9ad54ab00147e84dfce81c30f5cebf24666edb7a2da6d66`  
		Last Modified: Tue, 31 Jul 2018 17:20:15 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cc3dfa773b05cc0faf62e4f2ba1270995b63c615b944176ba981808ce8ceaf`  
		Last Modified: Tue, 31 Jul 2018 17:20:15 GMT  
		Size: 6.6 MB (6561887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55fb6f07193d5ed89098a371d9cd7a57e9487e02f2eca26b19f81558d292590f`  
		Last Modified: Tue, 31 Jul 2018 17:20:14 GMT  
		Size: 956.5 KB (956476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e6c7969d08ac634ff6771fc4b73fc9761e0664a0efb4d624ff7736dae737e7`  
		Last Modified: Tue, 31 Jul 2018 17:20:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474e344ff69b3b274c8e5d0f3364a994feea90badccd1a9c23fad1883733aee9`  
		Last Modified: Tue, 31 Jul 2018 17:20:15 GMT  
		Size: 5.5 MB (5517406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76bcd0e0011678f3a7d8060849895a5bd0e530e2e8a6bd59aae5d72712e1fff`  
		Last Modified: Tue, 31 Jul 2018 17:20:11 GMT  
		Size: 4.7 KB (4672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c16035b5454d0396c118d6c60730e1e985e7b64cdef93d03e93c597a98c627d`  
		Last Modified: Tue, 31 Jul 2018 17:20:10 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd5646c90434fe5a481e35bcffd930952b7dd2de3fc6ec1cc0c872fed3ae757`  
		Last Modified: Tue, 31 Jul 2018 17:20:40 GMT  
		Size: 87.7 MB (87660845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f247efae0153bff9b3625863e92432a7878a1f42a8b143296e54da9978229614`  
		Last Modified: Tue, 31 Jul 2018 17:20:11 GMT  
		Size: 2.4 KB (2445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bd8ee8f35f32d5ab2d6a77a1cdbd91e1e6ed6b349bf78aac8ba72ccadd4954`  
		Last Modified: Tue, 31 Jul 2018 17:20:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7.22-stretch`

```console
$ docker pull percona@sha256:b93ba73345ca07ac67c65c89cdf3b2d7aa71653729c2a5198f29d48400c16f65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7.22-stretch` - linux; amd64

```console
$ docker pull percona@sha256:711325ceb28f133b0f9be7afb6b5ab8ef45360ec36100da41446dab15d0869e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.0 MB (146015972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa8dc9140daaaba92a37f4e95262db727832d92c384d86a8c2bc9518971f0837`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 31 Jul 2018 17:14:25 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 31 Jul 2018 17:14:39 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 17:14:45 GMT
ENV GOSU_VERSION=1.10
# Tue, 31 Jul 2018 17:15:04 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 31 Jul 2018 17:15:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 31 Jul 2018 17:15:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 17:15:27 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 31 Jul 2018 17:15:30 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 31 Jul 2018 17:15:31 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Tue, 31 Jul 2018 17:15:47 GMT
ENV PERCONA_MAJOR=5.7
# Tue, 31 Jul 2018 17:15:47 GMT
ENV PERCONA_VERSION=5.7.22-22-1.stretch
# Tue, 31 Jul 2018 17:16:15 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 31 Jul 2018 17:16:16 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 31 Jul 2018 17:16:17 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Tue, 31 Jul 2018 17:16:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 31 Jul 2018 17:16:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 17:16:19 GMT
EXPOSE 3306/tcp
# Tue, 31 Jul 2018 17:16:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03ec8e94d89fbc1f9ad54ab00147e84dfce81c30f5cebf24666edb7a2da6d66`  
		Last Modified: Tue, 31 Jul 2018 17:20:15 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cc3dfa773b05cc0faf62e4f2ba1270995b63c615b944176ba981808ce8ceaf`  
		Last Modified: Tue, 31 Jul 2018 17:20:15 GMT  
		Size: 6.6 MB (6561887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55fb6f07193d5ed89098a371d9cd7a57e9487e02f2eca26b19f81558d292590f`  
		Last Modified: Tue, 31 Jul 2018 17:20:14 GMT  
		Size: 956.5 KB (956476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e6c7969d08ac634ff6771fc4b73fc9761e0664a0efb4d624ff7736dae737e7`  
		Last Modified: Tue, 31 Jul 2018 17:20:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474e344ff69b3b274c8e5d0f3364a994feea90badccd1a9c23fad1883733aee9`  
		Last Modified: Tue, 31 Jul 2018 17:20:15 GMT  
		Size: 5.5 MB (5517406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76bcd0e0011678f3a7d8060849895a5bd0e530e2e8a6bd59aae5d72712e1fff`  
		Last Modified: Tue, 31 Jul 2018 17:20:11 GMT  
		Size: 4.7 KB (4672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c16035b5454d0396c118d6c60730e1e985e7b64cdef93d03e93c597a98c627d`  
		Last Modified: Tue, 31 Jul 2018 17:20:10 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd5646c90434fe5a481e35bcffd930952b7dd2de3fc6ec1cc0c872fed3ae757`  
		Last Modified: Tue, 31 Jul 2018 17:20:40 GMT  
		Size: 87.7 MB (87660845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f247efae0153bff9b3625863e92432a7878a1f42a8b143296e54da9978229614`  
		Last Modified: Tue, 31 Jul 2018 17:20:11 GMT  
		Size: 2.4 KB (2445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bd8ee8f35f32d5ab2d6a77a1cdbd91e1e6ed6b349bf78aac8ba72ccadd4954`  
		Last Modified: Tue, 31 Jul 2018 17:20:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7-stretch`

```console
$ docker pull percona@sha256:b93ba73345ca07ac67c65c89cdf3b2d7aa71653729c2a5198f29d48400c16f65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7-stretch` - linux; amd64

```console
$ docker pull percona@sha256:711325ceb28f133b0f9be7afb6b5ab8ef45360ec36100da41446dab15d0869e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.0 MB (146015972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa8dc9140daaaba92a37f4e95262db727832d92c384d86a8c2bc9518971f0837`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 31 Jul 2018 17:14:25 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 31 Jul 2018 17:14:39 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 17:14:45 GMT
ENV GOSU_VERSION=1.10
# Tue, 31 Jul 2018 17:15:04 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 31 Jul 2018 17:15:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 31 Jul 2018 17:15:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 17:15:27 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 31 Jul 2018 17:15:30 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 31 Jul 2018 17:15:31 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Tue, 31 Jul 2018 17:15:47 GMT
ENV PERCONA_MAJOR=5.7
# Tue, 31 Jul 2018 17:15:47 GMT
ENV PERCONA_VERSION=5.7.22-22-1.stretch
# Tue, 31 Jul 2018 17:16:15 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 31 Jul 2018 17:16:16 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 31 Jul 2018 17:16:17 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Tue, 31 Jul 2018 17:16:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 31 Jul 2018 17:16:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 17:16:19 GMT
EXPOSE 3306/tcp
# Tue, 31 Jul 2018 17:16:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03ec8e94d89fbc1f9ad54ab00147e84dfce81c30f5cebf24666edb7a2da6d66`  
		Last Modified: Tue, 31 Jul 2018 17:20:15 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cc3dfa773b05cc0faf62e4f2ba1270995b63c615b944176ba981808ce8ceaf`  
		Last Modified: Tue, 31 Jul 2018 17:20:15 GMT  
		Size: 6.6 MB (6561887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55fb6f07193d5ed89098a371d9cd7a57e9487e02f2eca26b19f81558d292590f`  
		Last Modified: Tue, 31 Jul 2018 17:20:14 GMT  
		Size: 956.5 KB (956476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e6c7969d08ac634ff6771fc4b73fc9761e0664a0efb4d624ff7736dae737e7`  
		Last Modified: Tue, 31 Jul 2018 17:20:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474e344ff69b3b274c8e5d0f3364a994feea90badccd1a9c23fad1883733aee9`  
		Last Modified: Tue, 31 Jul 2018 17:20:15 GMT  
		Size: 5.5 MB (5517406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76bcd0e0011678f3a7d8060849895a5bd0e530e2e8a6bd59aae5d72712e1fff`  
		Last Modified: Tue, 31 Jul 2018 17:20:11 GMT  
		Size: 4.7 KB (4672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c16035b5454d0396c118d6c60730e1e985e7b64cdef93d03e93c597a98c627d`  
		Last Modified: Tue, 31 Jul 2018 17:20:10 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd5646c90434fe5a481e35bcffd930952b7dd2de3fc6ec1cc0c872fed3ae757`  
		Last Modified: Tue, 31 Jul 2018 17:20:40 GMT  
		Size: 87.7 MB (87660845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f247efae0153bff9b3625863e92432a7878a1f42a8b143296e54da9978229614`  
		Last Modified: Tue, 31 Jul 2018 17:20:11 GMT  
		Size: 2.4 KB (2445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bd8ee8f35f32d5ab2d6a77a1cdbd91e1e6ed6b349bf78aac8ba72ccadd4954`  
		Last Modified: Tue, 31 Jul 2018 17:20:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5-stretch`

```console
$ docker pull percona@sha256:b93ba73345ca07ac67c65c89cdf3b2d7aa71653729c2a5198f29d48400c16f65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5-stretch` - linux; amd64

```console
$ docker pull percona@sha256:711325ceb28f133b0f9be7afb6b5ab8ef45360ec36100da41446dab15d0869e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.0 MB (146015972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa8dc9140daaaba92a37f4e95262db727832d92c384d86a8c2bc9518971f0837`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 31 Jul 2018 17:14:25 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 31 Jul 2018 17:14:39 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 17:14:45 GMT
ENV GOSU_VERSION=1.10
# Tue, 31 Jul 2018 17:15:04 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 31 Jul 2018 17:15:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 31 Jul 2018 17:15:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 17:15:27 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 31 Jul 2018 17:15:30 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 31 Jul 2018 17:15:31 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Tue, 31 Jul 2018 17:15:47 GMT
ENV PERCONA_MAJOR=5.7
# Tue, 31 Jul 2018 17:15:47 GMT
ENV PERCONA_VERSION=5.7.22-22-1.stretch
# Tue, 31 Jul 2018 17:16:15 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 31 Jul 2018 17:16:16 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 31 Jul 2018 17:16:17 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Tue, 31 Jul 2018 17:16:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 31 Jul 2018 17:16:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 17:16:19 GMT
EXPOSE 3306/tcp
# Tue, 31 Jul 2018 17:16:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03ec8e94d89fbc1f9ad54ab00147e84dfce81c30f5cebf24666edb7a2da6d66`  
		Last Modified: Tue, 31 Jul 2018 17:20:15 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cc3dfa773b05cc0faf62e4f2ba1270995b63c615b944176ba981808ce8ceaf`  
		Last Modified: Tue, 31 Jul 2018 17:20:15 GMT  
		Size: 6.6 MB (6561887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55fb6f07193d5ed89098a371d9cd7a57e9487e02f2eca26b19f81558d292590f`  
		Last Modified: Tue, 31 Jul 2018 17:20:14 GMT  
		Size: 956.5 KB (956476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e6c7969d08ac634ff6771fc4b73fc9761e0664a0efb4d624ff7736dae737e7`  
		Last Modified: Tue, 31 Jul 2018 17:20:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474e344ff69b3b274c8e5d0f3364a994feea90badccd1a9c23fad1883733aee9`  
		Last Modified: Tue, 31 Jul 2018 17:20:15 GMT  
		Size: 5.5 MB (5517406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76bcd0e0011678f3a7d8060849895a5bd0e530e2e8a6bd59aae5d72712e1fff`  
		Last Modified: Tue, 31 Jul 2018 17:20:11 GMT  
		Size: 4.7 KB (4672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c16035b5454d0396c118d6c60730e1e985e7b64cdef93d03e93c597a98c627d`  
		Last Modified: Tue, 31 Jul 2018 17:20:10 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd5646c90434fe5a481e35bcffd930952b7dd2de3fc6ec1cc0c872fed3ae757`  
		Last Modified: Tue, 31 Jul 2018 17:20:40 GMT  
		Size: 87.7 MB (87660845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f247efae0153bff9b3625863e92432a7878a1f42a8b143296e54da9978229614`  
		Last Modified: Tue, 31 Jul 2018 17:20:11 GMT  
		Size: 2.4 KB (2445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bd8ee8f35f32d5ab2d6a77a1cdbd91e1e6ed6b349bf78aac8ba72ccadd4954`  
		Last Modified: Tue, 31 Jul 2018 17:20:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:latest`

```console
$ docker pull percona@sha256:b93ba73345ca07ac67c65c89cdf3b2d7aa71653729c2a5198f29d48400c16f65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:latest` - linux; amd64

```console
$ docker pull percona@sha256:711325ceb28f133b0f9be7afb6b5ab8ef45360ec36100da41446dab15d0869e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.0 MB (146015972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa8dc9140daaaba92a37f4e95262db727832d92c384d86a8c2bc9518971f0837`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 31 Jul 2018 17:14:25 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 31 Jul 2018 17:14:39 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 17:14:45 GMT
ENV GOSU_VERSION=1.10
# Tue, 31 Jul 2018 17:15:04 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 31 Jul 2018 17:15:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 31 Jul 2018 17:15:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 17:15:27 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 31 Jul 2018 17:15:30 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 31 Jul 2018 17:15:31 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Tue, 31 Jul 2018 17:15:47 GMT
ENV PERCONA_MAJOR=5.7
# Tue, 31 Jul 2018 17:15:47 GMT
ENV PERCONA_VERSION=5.7.22-22-1.stretch
# Tue, 31 Jul 2018 17:16:15 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 31 Jul 2018 17:16:16 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 31 Jul 2018 17:16:17 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Tue, 31 Jul 2018 17:16:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 31 Jul 2018 17:16:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 17:16:19 GMT
EXPOSE 3306/tcp
# Tue, 31 Jul 2018 17:16:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03ec8e94d89fbc1f9ad54ab00147e84dfce81c30f5cebf24666edb7a2da6d66`  
		Last Modified: Tue, 31 Jul 2018 17:20:15 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cc3dfa773b05cc0faf62e4f2ba1270995b63c615b944176ba981808ce8ceaf`  
		Last Modified: Tue, 31 Jul 2018 17:20:15 GMT  
		Size: 6.6 MB (6561887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55fb6f07193d5ed89098a371d9cd7a57e9487e02f2eca26b19f81558d292590f`  
		Last Modified: Tue, 31 Jul 2018 17:20:14 GMT  
		Size: 956.5 KB (956476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e6c7969d08ac634ff6771fc4b73fc9761e0664a0efb4d624ff7736dae737e7`  
		Last Modified: Tue, 31 Jul 2018 17:20:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474e344ff69b3b274c8e5d0f3364a994feea90badccd1a9c23fad1883733aee9`  
		Last Modified: Tue, 31 Jul 2018 17:20:15 GMT  
		Size: 5.5 MB (5517406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76bcd0e0011678f3a7d8060849895a5bd0e530e2e8a6bd59aae5d72712e1fff`  
		Last Modified: Tue, 31 Jul 2018 17:20:11 GMT  
		Size: 4.7 KB (4672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c16035b5454d0396c118d6c60730e1e985e7b64cdef93d03e93c597a98c627d`  
		Last Modified: Tue, 31 Jul 2018 17:20:10 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd5646c90434fe5a481e35bcffd930952b7dd2de3fc6ec1cc0c872fed3ae757`  
		Last Modified: Tue, 31 Jul 2018 17:20:40 GMT  
		Size: 87.7 MB (87660845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f247efae0153bff9b3625863e92432a7878a1f42a8b143296e54da9978229614`  
		Last Modified: Tue, 31 Jul 2018 17:20:11 GMT  
		Size: 2.4 KB (2445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bd8ee8f35f32d5ab2d6a77a1cdbd91e1e6ed6b349bf78aac8ba72ccadd4954`  
		Last Modified: Tue, 31 Jul 2018 17:20:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:stretch`

```console
$ docker pull percona@sha256:b93ba73345ca07ac67c65c89cdf3b2d7aa71653729c2a5198f29d48400c16f65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:stretch` - linux; amd64

```console
$ docker pull percona@sha256:711325ceb28f133b0f9be7afb6b5ab8ef45360ec36100da41446dab15d0869e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.0 MB (146015972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa8dc9140daaaba92a37f4e95262db727832d92c384d86a8c2bc9518971f0837`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 31 Jul 2018 17:14:25 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 31 Jul 2018 17:14:39 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 17:14:45 GMT
ENV GOSU_VERSION=1.10
# Tue, 31 Jul 2018 17:15:04 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 31 Jul 2018 17:15:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 31 Jul 2018 17:15:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 17:15:27 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 31 Jul 2018 17:15:30 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 31 Jul 2018 17:15:31 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Tue, 31 Jul 2018 17:15:47 GMT
ENV PERCONA_MAJOR=5.7
# Tue, 31 Jul 2018 17:15:47 GMT
ENV PERCONA_VERSION=5.7.22-22-1.stretch
# Tue, 31 Jul 2018 17:16:15 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 31 Jul 2018 17:16:16 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 31 Jul 2018 17:16:17 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Tue, 31 Jul 2018 17:16:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 31 Jul 2018 17:16:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 17:16:19 GMT
EXPOSE 3306/tcp
# Tue, 31 Jul 2018 17:16:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03ec8e94d89fbc1f9ad54ab00147e84dfce81c30f5cebf24666edb7a2da6d66`  
		Last Modified: Tue, 31 Jul 2018 17:20:15 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cc3dfa773b05cc0faf62e4f2ba1270995b63c615b944176ba981808ce8ceaf`  
		Last Modified: Tue, 31 Jul 2018 17:20:15 GMT  
		Size: 6.6 MB (6561887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55fb6f07193d5ed89098a371d9cd7a57e9487e02f2eca26b19f81558d292590f`  
		Last Modified: Tue, 31 Jul 2018 17:20:14 GMT  
		Size: 956.5 KB (956476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e6c7969d08ac634ff6771fc4b73fc9761e0664a0efb4d624ff7736dae737e7`  
		Last Modified: Tue, 31 Jul 2018 17:20:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474e344ff69b3b274c8e5d0f3364a994feea90badccd1a9c23fad1883733aee9`  
		Last Modified: Tue, 31 Jul 2018 17:20:15 GMT  
		Size: 5.5 MB (5517406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76bcd0e0011678f3a7d8060849895a5bd0e530e2e8a6bd59aae5d72712e1fff`  
		Last Modified: Tue, 31 Jul 2018 17:20:11 GMT  
		Size: 4.7 KB (4672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c16035b5454d0396c118d6c60730e1e985e7b64cdef93d03e93c597a98c627d`  
		Last Modified: Tue, 31 Jul 2018 17:20:10 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd5646c90434fe5a481e35bcffd930952b7dd2de3fc6ec1cc0c872fed3ae757`  
		Last Modified: Tue, 31 Jul 2018 17:20:40 GMT  
		Size: 87.7 MB (87660845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f247efae0153bff9b3625863e92432a7878a1f42a8b143296e54da9978229614`  
		Last Modified: Tue, 31 Jul 2018 17:20:11 GMT  
		Size: 2.4 KB (2445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bd8ee8f35f32d5ab2d6a77a1cdbd91e1e6ed6b349bf78aac8ba72ccadd4954`  
		Last Modified: Tue, 31 Jul 2018 17:20:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
