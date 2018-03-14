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
$ docker pull percona@sha256:d86cf09f14643a97ef5c1a85c4a5b5636f1a1d58fa44f243175ad620902301d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5` - linux; amd64

```console
$ docker pull percona@sha256:bd15650694e98597c7735a5b4257982763418f2915ef8b590aa8cf94298a9f73
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.4 MB (141382891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:892c97e4dcb024cd908b92848cb98dd1bf8dee667710ecb0d12787c372615f18`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:22:25 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Mar 2018 13:44:57 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Mar 2018 13:45:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 13:45:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 13:45:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:45:51 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 14 Mar 2018 13:45:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 13:45:58 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Wed, 14 Mar 2018 13:45:58 GMT
ENV PERCONA_MAJOR=5.7
# Wed, 14 Mar 2018 13:45:58 GMT
ENV PERCONA_VERSION=5.7.21-20-1.jessie
# Wed, 14 Mar 2018 13:46:40 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 14 Mar 2018 13:46:40 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 14 Mar 2018 13:46:41 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Wed, 14 Mar 2018 13:46:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 13:46:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 13:46:42 GMT
EXPOSE 3306/tcp
# Wed, 14 Mar 2018 13:46:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d8bdca4f3e3d03817be0249f4df6c3ab8e80c95011ca20e25bdfaeca3c3e3c`  
		Last Modified: Wed, 14 Mar 2018 05:46:22 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85f27b5d44ae5a3be6e5c3384ba37e551751cb4ff0485d3c098d2c43f06ae5f`  
		Last Modified: Wed, 14 Mar 2018 13:51:22 GMT  
		Size: 1.3 MB (1303026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c135060cc63e2e6dc288d516eb81da0ee8e1956c94f10ac95b62f6cc00f7bbe7`  
		Last Modified: Wed, 14 Mar 2018 13:51:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2925e9ebdd42ba8ba72e0d10742bf48a583d4d346504f8d81a051c4faf152e`  
		Last Modified: Wed, 14 Mar 2018 13:51:22 GMT  
		Size: 6.7 MB (6671946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fd03d2dee93ab0b4beb55935a4a314de82feb04e8183c13fd964e806190d26`  
		Last Modified: Wed, 14 Mar 2018 13:51:19 GMT  
		Size: 4.7 KB (4679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78379637ee7213379c78ec628984d8311acc6fdfd957b8798adb9a2cd55ed85`  
		Last Modified: Wed, 14 Mar 2018 13:51:19 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb2044f04049d9176ba96680c0a5fed528ad3513468779ce703477218a8f4ac`  
		Last Modified: Wed, 14 Mar 2018 13:51:36 GMT  
		Size: 80.8 MB (80789737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6010c14a01faa3c1af308ba33bcc96df9db011c3bf496c36dafe3f23190d9a46`  
		Last Modified: Wed, 14 Mar 2018 13:51:19 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2446afee4e74b6d5fec2ff6ca8616c472397e9b8a2ba1e67022bfe93f5c392a`  
		Last Modified: Wed, 14 Mar 2018 13:51:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5`

```console
$ docker pull percona@sha256:0fdfa1d35199695a1f32108c95592d57e78fdc66a72aa75d533c3de4a07dbd76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.5` - linux; amd64

```console
$ docker pull percona@sha256:b71bd8cd3ea5a3f18a2cd55f79c9ca84370e9db2ca8798bda396d8b7970f10aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.7 MB (105702519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e2c0d0082b37f61c9738af4e6975f0aa94eb278d6291f7804494f46bce63637`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:22:25 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Mar 2018 13:44:57 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Mar 2018 13:45:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 13:45:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 13:45:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:45:51 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 14 Mar 2018 13:45:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 13:45:58 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Wed, 14 Mar 2018 13:49:50 GMT
ENV PERCONA_MAJOR=5.5
# Wed, 14 Mar 2018 13:49:50 GMT
ENV PERCONA_VERSION=5.5.59-rel38.11-1.jessie
# Wed, 14 Mar 2018 13:50:48 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 14 Mar 2018 13:50:49 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 14 Mar 2018 13:50:50 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Wed, 14 Mar 2018 13:50:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 13:50:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 13:50:51 GMT
EXPOSE 3306/tcp
# Wed, 14 Mar 2018 13:50:52 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d8bdca4f3e3d03817be0249f4df6c3ab8e80c95011ca20e25bdfaeca3c3e3c`  
		Last Modified: Wed, 14 Mar 2018 05:46:22 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85f27b5d44ae5a3be6e5c3384ba37e551751cb4ff0485d3c098d2c43f06ae5f`  
		Last Modified: Wed, 14 Mar 2018 13:51:22 GMT  
		Size: 1.3 MB (1303026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c135060cc63e2e6dc288d516eb81da0ee8e1956c94f10ac95b62f6cc00f7bbe7`  
		Last Modified: Wed, 14 Mar 2018 13:51:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2925e9ebdd42ba8ba72e0d10742bf48a583d4d346504f8d81a051c4faf152e`  
		Last Modified: Wed, 14 Mar 2018 13:51:22 GMT  
		Size: 6.7 MB (6671946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fd03d2dee93ab0b4beb55935a4a314de82feb04e8183c13fd964e806190d26`  
		Last Modified: Wed, 14 Mar 2018 13:51:19 GMT  
		Size: 4.7 KB (4679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78379637ee7213379c78ec628984d8311acc6fdfd957b8798adb9a2cd55ed85`  
		Last Modified: Wed, 14 Mar 2018 13:51:19 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3763a4f7fe20956182a8e061672b013a809f87112db66a3936e70a780b84295`  
		Last Modified: Wed, 14 Mar 2018 13:53:46 GMT  
		Size: 45.1 MB (45109370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd127aaca55b086eb49194e1bc3071beae479678e85601b5e2752d274161ab16`  
		Last Modified: Wed, 14 Mar 2018 13:53:36 GMT  
		Size: 2.4 KB (2444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:534ad6dfbf2aeff051e2916f612e45c4c2ea41f858bf0dc7ff5fda5d047c1b6e`  
		Last Modified: Wed, 14 Mar 2018 13:53:36 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5.59`

```console
$ docker pull percona@sha256:0fdfa1d35199695a1f32108c95592d57e78fdc66a72aa75d533c3de4a07dbd76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.5.59` - linux; amd64

```console
$ docker pull percona@sha256:b71bd8cd3ea5a3f18a2cd55f79c9ca84370e9db2ca8798bda396d8b7970f10aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.7 MB (105702519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e2c0d0082b37f61c9738af4e6975f0aa94eb278d6291f7804494f46bce63637`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:22:25 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Mar 2018 13:44:57 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Mar 2018 13:45:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 13:45:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 13:45:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:45:51 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 14 Mar 2018 13:45:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 13:45:58 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Wed, 14 Mar 2018 13:49:50 GMT
ENV PERCONA_MAJOR=5.5
# Wed, 14 Mar 2018 13:49:50 GMT
ENV PERCONA_VERSION=5.5.59-rel38.11-1.jessie
# Wed, 14 Mar 2018 13:50:48 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 14 Mar 2018 13:50:49 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 14 Mar 2018 13:50:50 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Wed, 14 Mar 2018 13:50:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 13:50:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 13:50:51 GMT
EXPOSE 3306/tcp
# Wed, 14 Mar 2018 13:50:52 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d8bdca4f3e3d03817be0249f4df6c3ab8e80c95011ca20e25bdfaeca3c3e3c`  
		Last Modified: Wed, 14 Mar 2018 05:46:22 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85f27b5d44ae5a3be6e5c3384ba37e551751cb4ff0485d3c098d2c43f06ae5f`  
		Last Modified: Wed, 14 Mar 2018 13:51:22 GMT  
		Size: 1.3 MB (1303026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c135060cc63e2e6dc288d516eb81da0ee8e1956c94f10ac95b62f6cc00f7bbe7`  
		Last Modified: Wed, 14 Mar 2018 13:51:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2925e9ebdd42ba8ba72e0d10742bf48a583d4d346504f8d81a051c4faf152e`  
		Last Modified: Wed, 14 Mar 2018 13:51:22 GMT  
		Size: 6.7 MB (6671946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fd03d2dee93ab0b4beb55935a4a314de82feb04e8183c13fd964e806190d26`  
		Last Modified: Wed, 14 Mar 2018 13:51:19 GMT  
		Size: 4.7 KB (4679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78379637ee7213379c78ec628984d8311acc6fdfd957b8798adb9a2cd55ed85`  
		Last Modified: Wed, 14 Mar 2018 13:51:19 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3763a4f7fe20956182a8e061672b013a809f87112db66a3936e70a780b84295`  
		Last Modified: Wed, 14 Mar 2018 13:53:46 GMT  
		Size: 45.1 MB (45109370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd127aaca55b086eb49194e1bc3071beae479678e85601b5e2752d274161ab16`  
		Last Modified: Wed, 14 Mar 2018 13:53:36 GMT  
		Size: 2.4 KB (2444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:534ad6dfbf2aeff051e2916f612e45c4c2ea41f858bf0dc7ff5fda5d047c1b6e`  
		Last Modified: Wed, 14 Mar 2018 13:53:36 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6`

```console
$ docker pull percona@sha256:2bcb93e29a19a1c4d8e0fbc89bd7c806baee642959d2d1c82bbfba4306952bfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6` - linux; amd64

```console
$ docker pull percona@sha256:d501a757828416b952323d44ffe220775e4149e9a66a25b4ee4843a591422a4b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113588355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0d6aa9b1c7bf1999324306e2cffe877e719123ba234355030bfd9135950b39`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:22:25 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Mar 2018 13:44:57 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Mar 2018 13:45:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 13:45:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 13:45:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:45:51 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 14 Mar 2018 13:45:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 13:45:58 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Wed, 14 Mar 2018 13:47:57 GMT
ENV PERCONA_MAJOR=5.6
# Wed, 14 Mar 2018 13:47:57 GMT
ENV PERCONA_VERSION=5.6.39-83.1-1.jessie
# Wed, 14 Mar 2018 13:48:37 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 14 Mar 2018 13:48:37 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 14 Mar 2018 13:48:38 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Wed, 14 Mar 2018 13:48:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 13:48:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 13:48:39 GMT
EXPOSE 3306/tcp
# Wed, 14 Mar 2018 13:48:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d8bdca4f3e3d03817be0249f4df6c3ab8e80c95011ca20e25bdfaeca3c3e3c`  
		Last Modified: Wed, 14 Mar 2018 05:46:22 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85f27b5d44ae5a3be6e5c3384ba37e551751cb4ff0485d3c098d2c43f06ae5f`  
		Last Modified: Wed, 14 Mar 2018 13:51:22 GMT  
		Size: 1.3 MB (1303026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c135060cc63e2e6dc288d516eb81da0ee8e1956c94f10ac95b62f6cc00f7bbe7`  
		Last Modified: Wed, 14 Mar 2018 13:51:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2925e9ebdd42ba8ba72e0d10742bf48a583d4d346504f8d81a051c4faf152e`  
		Last Modified: Wed, 14 Mar 2018 13:51:22 GMT  
		Size: 6.7 MB (6671946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fd03d2dee93ab0b4beb55935a4a314de82feb04e8183c13fd964e806190d26`  
		Last Modified: Wed, 14 Mar 2018 13:51:19 GMT  
		Size: 4.7 KB (4679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78379637ee7213379c78ec628984d8311acc6fdfd957b8798adb9a2cd55ed85`  
		Last Modified: Wed, 14 Mar 2018 13:51:19 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:789420d415aaec090629aa4b427d44cc682e6e2ea234dc12b83a883c6c10f966`  
		Last Modified: Wed, 14 Mar 2018 13:52:58 GMT  
		Size: 53.0 MB (52995203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb30dcce815b843a4f14fa00ba816416be51ba0011a4a6746a154d1df8e33e5`  
		Last Modified: Wed, 14 Mar 2018 13:52:47 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171d228f522890bff10f7d601d61c7ea2826346c9e088f79854f92695013b346`  
		Last Modified: Wed, 14 Mar 2018 13:52:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.39`

```console
$ docker pull percona@sha256:2bcb93e29a19a1c4d8e0fbc89bd7c806baee642959d2d1c82bbfba4306952bfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6.39` - linux; amd64

```console
$ docker pull percona@sha256:d501a757828416b952323d44ffe220775e4149e9a66a25b4ee4843a591422a4b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113588355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0d6aa9b1c7bf1999324306e2cffe877e719123ba234355030bfd9135950b39`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:22:25 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Mar 2018 13:44:57 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Mar 2018 13:45:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 13:45:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 13:45:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:45:51 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 14 Mar 2018 13:45:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 13:45:58 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Wed, 14 Mar 2018 13:47:57 GMT
ENV PERCONA_MAJOR=5.6
# Wed, 14 Mar 2018 13:47:57 GMT
ENV PERCONA_VERSION=5.6.39-83.1-1.jessie
# Wed, 14 Mar 2018 13:48:37 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 14 Mar 2018 13:48:37 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 14 Mar 2018 13:48:38 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Wed, 14 Mar 2018 13:48:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 13:48:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 13:48:39 GMT
EXPOSE 3306/tcp
# Wed, 14 Mar 2018 13:48:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d8bdca4f3e3d03817be0249f4df6c3ab8e80c95011ca20e25bdfaeca3c3e3c`  
		Last Modified: Wed, 14 Mar 2018 05:46:22 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85f27b5d44ae5a3be6e5c3384ba37e551751cb4ff0485d3c098d2c43f06ae5f`  
		Last Modified: Wed, 14 Mar 2018 13:51:22 GMT  
		Size: 1.3 MB (1303026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c135060cc63e2e6dc288d516eb81da0ee8e1956c94f10ac95b62f6cc00f7bbe7`  
		Last Modified: Wed, 14 Mar 2018 13:51:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2925e9ebdd42ba8ba72e0d10742bf48a583d4d346504f8d81a051c4faf152e`  
		Last Modified: Wed, 14 Mar 2018 13:51:22 GMT  
		Size: 6.7 MB (6671946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fd03d2dee93ab0b4beb55935a4a314de82feb04e8183c13fd964e806190d26`  
		Last Modified: Wed, 14 Mar 2018 13:51:19 GMT  
		Size: 4.7 KB (4679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78379637ee7213379c78ec628984d8311acc6fdfd957b8798adb9a2cd55ed85`  
		Last Modified: Wed, 14 Mar 2018 13:51:19 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:789420d415aaec090629aa4b427d44cc682e6e2ea234dc12b83a883c6c10f966`  
		Last Modified: Wed, 14 Mar 2018 13:52:58 GMT  
		Size: 53.0 MB (52995203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb30dcce815b843a4f14fa00ba816416be51ba0011a4a6746a154d1df8e33e5`  
		Last Modified: Wed, 14 Mar 2018 13:52:47 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171d228f522890bff10f7d601d61c7ea2826346c9e088f79854f92695013b346`  
		Last Modified: Wed, 14 Mar 2018 13:52:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7`

```console
$ docker pull percona@sha256:d86cf09f14643a97ef5c1a85c4a5b5636f1a1d58fa44f243175ad620902301d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7` - linux; amd64

```console
$ docker pull percona@sha256:bd15650694e98597c7735a5b4257982763418f2915ef8b590aa8cf94298a9f73
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.4 MB (141382891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:892c97e4dcb024cd908b92848cb98dd1bf8dee667710ecb0d12787c372615f18`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:22:25 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Mar 2018 13:44:57 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Mar 2018 13:45:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 13:45:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 13:45:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:45:51 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 14 Mar 2018 13:45:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 13:45:58 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Wed, 14 Mar 2018 13:45:58 GMT
ENV PERCONA_MAJOR=5.7
# Wed, 14 Mar 2018 13:45:58 GMT
ENV PERCONA_VERSION=5.7.21-20-1.jessie
# Wed, 14 Mar 2018 13:46:40 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 14 Mar 2018 13:46:40 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 14 Mar 2018 13:46:41 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Wed, 14 Mar 2018 13:46:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 13:46:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 13:46:42 GMT
EXPOSE 3306/tcp
# Wed, 14 Mar 2018 13:46:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d8bdca4f3e3d03817be0249f4df6c3ab8e80c95011ca20e25bdfaeca3c3e3c`  
		Last Modified: Wed, 14 Mar 2018 05:46:22 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85f27b5d44ae5a3be6e5c3384ba37e551751cb4ff0485d3c098d2c43f06ae5f`  
		Last Modified: Wed, 14 Mar 2018 13:51:22 GMT  
		Size: 1.3 MB (1303026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c135060cc63e2e6dc288d516eb81da0ee8e1956c94f10ac95b62f6cc00f7bbe7`  
		Last Modified: Wed, 14 Mar 2018 13:51:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2925e9ebdd42ba8ba72e0d10742bf48a583d4d346504f8d81a051c4faf152e`  
		Last Modified: Wed, 14 Mar 2018 13:51:22 GMT  
		Size: 6.7 MB (6671946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fd03d2dee93ab0b4beb55935a4a314de82feb04e8183c13fd964e806190d26`  
		Last Modified: Wed, 14 Mar 2018 13:51:19 GMT  
		Size: 4.7 KB (4679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78379637ee7213379c78ec628984d8311acc6fdfd957b8798adb9a2cd55ed85`  
		Last Modified: Wed, 14 Mar 2018 13:51:19 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb2044f04049d9176ba96680c0a5fed528ad3513468779ce703477218a8f4ac`  
		Last Modified: Wed, 14 Mar 2018 13:51:36 GMT  
		Size: 80.8 MB (80789737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6010c14a01faa3c1af308ba33bcc96df9db011c3bf496c36dafe3f23190d9a46`  
		Last Modified: Wed, 14 Mar 2018 13:51:19 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2446afee4e74b6d5fec2ff6ca8616c472397e9b8a2ba1e67022bfe93f5c392a`  
		Last Modified: Wed, 14 Mar 2018 13:51:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7.21`

```console
$ docker pull percona@sha256:d86cf09f14643a97ef5c1a85c4a5b5636f1a1d58fa44f243175ad620902301d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7.21` - linux; amd64

```console
$ docker pull percona@sha256:bd15650694e98597c7735a5b4257982763418f2915ef8b590aa8cf94298a9f73
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.4 MB (141382891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:892c97e4dcb024cd908b92848cb98dd1bf8dee667710ecb0d12787c372615f18`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:22:25 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Mar 2018 13:44:57 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Mar 2018 13:45:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 13:45:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 13:45:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:45:51 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 14 Mar 2018 13:45:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 13:45:58 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Wed, 14 Mar 2018 13:45:58 GMT
ENV PERCONA_MAJOR=5.7
# Wed, 14 Mar 2018 13:45:58 GMT
ENV PERCONA_VERSION=5.7.21-20-1.jessie
# Wed, 14 Mar 2018 13:46:40 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 14 Mar 2018 13:46:40 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 14 Mar 2018 13:46:41 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Wed, 14 Mar 2018 13:46:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 13:46:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 13:46:42 GMT
EXPOSE 3306/tcp
# Wed, 14 Mar 2018 13:46:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d8bdca4f3e3d03817be0249f4df6c3ab8e80c95011ca20e25bdfaeca3c3e3c`  
		Last Modified: Wed, 14 Mar 2018 05:46:22 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85f27b5d44ae5a3be6e5c3384ba37e551751cb4ff0485d3c098d2c43f06ae5f`  
		Last Modified: Wed, 14 Mar 2018 13:51:22 GMT  
		Size: 1.3 MB (1303026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c135060cc63e2e6dc288d516eb81da0ee8e1956c94f10ac95b62f6cc00f7bbe7`  
		Last Modified: Wed, 14 Mar 2018 13:51:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2925e9ebdd42ba8ba72e0d10742bf48a583d4d346504f8d81a051c4faf152e`  
		Last Modified: Wed, 14 Mar 2018 13:51:22 GMT  
		Size: 6.7 MB (6671946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fd03d2dee93ab0b4beb55935a4a314de82feb04e8183c13fd964e806190d26`  
		Last Modified: Wed, 14 Mar 2018 13:51:19 GMT  
		Size: 4.7 KB (4679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78379637ee7213379c78ec628984d8311acc6fdfd957b8798adb9a2cd55ed85`  
		Last Modified: Wed, 14 Mar 2018 13:51:19 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb2044f04049d9176ba96680c0a5fed528ad3513468779ce703477218a8f4ac`  
		Last Modified: Wed, 14 Mar 2018 13:51:36 GMT  
		Size: 80.8 MB (80789737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6010c14a01faa3c1af308ba33bcc96df9db011c3bf496c36dafe3f23190d9a46`  
		Last Modified: Wed, 14 Mar 2018 13:51:19 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2446afee4e74b6d5fec2ff6ca8616c472397e9b8a2ba1e67022bfe93f5c392a`  
		Last Modified: Wed, 14 Mar 2018 13:51:19 GMT  
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
