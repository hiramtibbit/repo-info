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
$ docker pull percona@sha256:514771dd6caf6f3758840d281c7d942b31d48efb90d07392023e4ec8ebf7a791
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5` - linux; amd64

```console
$ docker pull percona@sha256:62968d0d81bd90f78b06fc72cbdb377e36f12e3f5042813c628cb29e93447ab2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.0 MB (146016141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:656ff8ddd1b64635104e68c9a9080aa69a21981a6516b83cb8141ec3fe18c42c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:19:13 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 01:19:22 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:19:22 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 01:19:38 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 01:19:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 01:19:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:19:48 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 01:19:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 01:19:52 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Wed, 05 Sep 2018 01:19:52 GMT
ENV PERCONA_MAJOR=5.7
# Wed, 05 Sep 2018 01:19:52 GMT
ENV PERCONA_VERSION=5.7.22-22-1.stretch
# Wed, 05 Sep 2018 01:20:12 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 01:20:12 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 05 Sep 2018 01:20:12 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Wed, 05 Sep 2018 01:20:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 01:20:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 01:20:14 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 01:20:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f54ba5d341f9e6e7027886a408e9df3dbe643eb2522b95fb29636bbdc53316`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce092446f1dd0e9b109cb84d7568d6fbc007d81d8105118817dda44b68a4ace`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 6.6 MB (6561958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baf831e176d7d645b0694f1a062ff3ba18770806a488e84ddb1684385b9a04f`  
		Last Modified: Wed, 05 Sep 2018 01:21:52 GMT  
		Size: 956.5 KB (956478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a68c6c2f8572945e64496f3ba347d8f0fb901ce85823abb6cd4c492e6720a4`  
		Last Modified: Wed, 05 Sep 2018 01:21:52 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206ebf8d0e69a179b5500a76cac600e43de50b423d3300db2c738d7916538e68`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 5.5 MB (5517398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffa1fabed4cf5759baaadf3e03c59988ab90508a989d46884ea60e0e1ad2357`  
		Last Modified: Wed, 05 Sep 2018 01:21:50 GMT  
		Size: 4.7 KB (4671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d20863b29b52a04a7397eaafe19eda4c11e3282d9e69711953e20edb05b386`  
		Last Modified: Wed, 05 Sep 2018 01:21:50 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc40f2b51ef755040a3c4bffd4e6482920946400c9d6fbbf301d59b1b1a863d`  
		Last Modified: Wed, 05 Sep 2018 01:22:08 GMT  
		Size: 87.7 MB (87660935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548854d287ae320b98aeaeb566e889512a7e31a7149a62666b376396e1e0cad6`  
		Last Modified: Wed, 05 Sep 2018 01:21:51 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55bb57671b5953f89db2b3de18474e0b9fb407e8e7d1fffc466e708129a1c53e`  
		Last Modified: Wed, 05 Sep 2018 01:21:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5`

```console
$ docker pull percona@sha256:091176f447cfc3ec9e5271c47eca90629d4baede39aaf95929ef8888cc015f8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.5` - linux; amd64

```console
$ docker pull percona@sha256:de1df8a09d3d0c2faafce57f3fe0d06a72faba324116c88b69d35229305aa593
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.7 MB (105707855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:464fb86a055d9791fa0efc358c78c6fea16ae91bddcdbdd371d7aabf278c8be8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:19:13 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 01:19:22 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:19:22 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 01:19:38 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 01:19:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 01:19:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:19:48 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 01:19:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 01:19:52 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Wed, 05 Sep 2018 01:20:57 GMT
ENV PERCONA_MAJOR=5.5
# Wed, 05 Sep 2018 01:20:58 GMT
ENV PERCONA_VERSION=5.5.61-rel38.13-1.stretch
# Wed, 05 Sep 2018 01:21:36 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 01:21:36 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 05 Sep 2018 01:21:36 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Wed, 05 Sep 2018 01:21:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 01:21:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 01:21:37 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 01:21:38 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f54ba5d341f9e6e7027886a408e9df3dbe643eb2522b95fb29636bbdc53316`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce092446f1dd0e9b109cb84d7568d6fbc007d81d8105118817dda44b68a4ace`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 6.6 MB (6561958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baf831e176d7d645b0694f1a062ff3ba18770806a488e84ddb1684385b9a04f`  
		Last Modified: Wed, 05 Sep 2018 01:21:52 GMT  
		Size: 956.5 KB (956478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a68c6c2f8572945e64496f3ba347d8f0fb901ce85823abb6cd4c492e6720a4`  
		Last Modified: Wed, 05 Sep 2018 01:21:52 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206ebf8d0e69a179b5500a76cac600e43de50b423d3300db2c738d7916538e68`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 5.5 MB (5517398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffa1fabed4cf5759baaadf3e03c59988ab90508a989d46884ea60e0e1ad2357`  
		Last Modified: Wed, 05 Sep 2018 01:21:50 GMT  
		Size: 4.7 KB (4671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d20863b29b52a04a7397eaafe19eda4c11e3282d9e69711953e20edb05b386`  
		Last Modified: Wed, 05 Sep 2018 01:21:50 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f656793641b5f5ebf485ff6ca6728c9d1ac770f77855f8d32438157bc3b97e`  
		Last Modified: Wed, 05 Sep 2018 01:22:57 GMT  
		Size: 47.4 MB (47352650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadf9469693a574bdc349f45ce9f1bd9748b206b7d0003a171aa20a5891769f1`  
		Last Modified: Wed, 05 Sep 2018 01:22:47 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2417877980a557dfab6e03dcc79ec3938c82a0546f95b0fd3f51b6c672a714c5`  
		Last Modified: Wed, 05 Sep 2018 01:22:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5.61`

```console
$ docker pull percona@sha256:091176f447cfc3ec9e5271c47eca90629d4baede39aaf95929ef8888cc015f8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.5.61` - linux; amd64

```console
$ docker pull percona@sha256:de1df8a09d3d0c2faafce57f3fe0d06a72faba324116c88b69d35229305aa593
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.7 MB (105707855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:464fb86a055d9791fa0efc358c78c6fea16ae91bddcdbdd371d7aabf278c8be8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:19:13 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 01:19:22 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:19:22 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 01:19:38 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 01:19:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 01:19:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:19:48 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 01:19:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 01:19:52 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Wed, 05 Sep 2018 01:20:57 GMT
ENV PERCONA_MAJOR=5.5
# Wed, 05 Sep 2018 01:20:58 GMT
ENV PERCONA_VERSION=5.5.61-rel38.13-1.stretch
# Wed, 05 Sep 2018 01:21:36 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 01:21:36 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 05 Sep 2018 01:21:36 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Wed, 05 Sep 2018 01:21:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 01:21:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 01:21:37 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 01:21:38 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f54ba5d341f9e6e7027886a408e9df3dbe643eb2522b95fb29636bbdc53316`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce092446f1dd0e9b109cb84d7568d6fbc007d81d8105118817dda44b68a4ace`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 6.6 MB (6561958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baf831e176d7d645b0694f1a062ff3ba18770806a488e84ddb1684385b9a04f`  
		Last Modified: Wed, 05 Sep 2018 01:21:52 GMT  
		Size: 956.5 KB (956478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a68c6c2f8572945e64496f3ba347d8f0fb901ce85823abb6cd4c492e6720a4`  
		Last Modified: Wed, 05 Sep 2018 01:21:52 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206ebf8d0e69a179b5500a76cac600e43de50b423d3300db2c738d7916538e68`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 5.5 MB (5517398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffa1fabed4cf5759baaadf3e03c59988ab90508a989d46884ea60e0e1ad2357`  
		Last Modified: Wed, 05 Sep 2018 01:21:50 GMT  
		Size: 4.7 KB (4671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d20863b29b52a04a7397eaafe19eda4c11e3282d9e69711953e20edb05b386`  
		Last Modified: Wed, 05 Sep 2018 01:21:50 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f656793641b5f5ebf485ff6ca6728c9d1ac770f77855f8d32438157bc3b97e`  
		Last Modified: Wed, 05 Sep 2018 01:22:57 GMT  
		Size: 47.4 MB (47352650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadf9469693a574bdc349f45ce9f1bd9748b206b7d0003a171aa20a5891769f1`  
		Last Modified: Wed, 05 Sep 2018 01:22:47 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2417877980a557dfab6e03dcc79ec3938c82a0546f95b0fd3f51b6c672a714c5`  
		Last Modified: Wed, 05 Sep 2018 01:22:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5.61-stretch`

```console
$ docker pull percona@sha256:091176f447cfc3ec9e5271c47eca90629d4baede39aaf95929ef8888cc015f8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.5.61-stretch` - linux; amd64

```console
$ docker pull percona@sha256:de1df8a09d3d0c2faafce57f3fe0d06a72faba324116c88b69d35229305aa593
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.7 MB (105707855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:464fb86a055d9791fa0efc358c78c6fea16ae91bddcdbdd371d7aabf278c8be8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:19:13 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 01:19:22 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:19:22 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 01:19:38 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 01:19:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 01:19:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:19:48 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 01:19:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 01:19:52 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Wed, 05 Sep 2018 01:20:57 GMT
ENV PERCONA_MAJOR=5.5
# Wed, 05 Sep 2018 01:20:58 GMT
ENV PERCONA_VERSION=5.5.61-rel38.13-1.stretch
# Wed, 05 Sep 2018 01:21:36 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 01:21:36 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 05 Sep 2018 01:21:36 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Wed, 05 Sep 2018 01:21:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 01:21:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 01:21:37 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 01:21:38 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f54ba5d341f9e6e7027886a408e9df3dbe643eb2522b95fb29636bbdc53316`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce092446f1dd0e9b109cb84d7568d6fbc007d81d8105118817dda44b68a4ace`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 6.6 MB (6561958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baf831e176d7d645b0694f1a062ff3ba18770806a488e84ddb1684385b9a04f`  
		Last Modified: Wed, 05 Sep 2018 01:21:52 GMT  
		Size: 956.5 KB (956478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a68c6c2f8572945e64496f3ba347d8f0fb901ce85823abb6cd4c492e6720a4`  
		Last Modified: Wed, 05 Sep 2018 01:21:52 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206ebf8d0e69a179b5500a76cac600e43de50b423d3300db2c738d7916538e68`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 5.5 MB (5517398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffa1fabed4cf5759baaadf3e03c59988ab90508a989d46884ea60e0e1ad2357`  
		Last Modified: Wed, 05 Sep 2018 01:21:50 GMT  
		Size: 4.7 KB (4671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d20863b29b52a04a7397eaafe19eda4c11e3282d9e69711953e20edb05b386`  
		Last Modified: Wed, 05 Sep 2018 01:21:50 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f656793641b5f5ebf485ff6ca6728c9d1ac770f77855f8d32438157bc3b97e`  
		Last Modified: Wed, 05 Sep 2018 01:22:57 GMT  
		Size: 47.4 MB (47352650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadf9469693a574bdc349f45ce9f1bd9748b206b7d0003a171aa20a5891769f1`  
		Last Modified: Wed, 05 Sep 2018 01:22:47 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2417877980a557dfab6e03dcc79ec3938c82a0546f95b0fd3f51b6c672a714c5`  
		Last Modified: Wed, 05 Sep 2018 01:22:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5-stretch`

```console
$ docker pull percona@sha256:091176f447cfc3ec9e5271c47eca90629d4baede39aaf95929ef8888cc015f8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.5-stretch` - linux; amd64

```console
$ docker pull percona@sha256:de1df8a09d3d0c2faafce57f3fe0d06a72faba324116c88b69d35229305aa593
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.7 MB (105707855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:464fb86a055d9791fa0efc358c78c6fea16ae91bddcdbdd371d7aabf278c8be8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:19:13 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 01:19:22 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:19:22 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 01:19:38 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 01:19:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 01:19:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:19:48 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 01:19:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 01:19:52 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Wed, 05 Sep 2018 01:20:57 GMT
ENV PERCONA_MAJOR=5.5
# Wed, 05 Sep 2018 01:20:58 GMT
ENV PERCONA_VERSION=5.5.61-rel38.13-1.stretch
# Wed, 05 Sep 2018 01:21:36 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 01:21:36 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 05 Sep 2018 01:21:36 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Wed, 05 Sep 2018 01:21:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 01:21:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 01:21:37 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 01:21:38 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f54ba5d341f9e6e7027886a408e9df3dbe643eb2522b95fb29636bbdc53316`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce092446f1dd0e9b109cb84d7568d6fbc007d81d8105118817dda44b68a4ace`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 6.6 MB (6561958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baf831e176d7d645b0694f1a062ff3ba18770806a488e84ddb1684385b9a04f`  
		Last Modified: Wed, 05 Sep 2018 01:21:52 GMT  
		Size: 956.5 KB (956478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a68c6c2f8572945e64496f3ba347d8f0fb901ce85823abb6cd4c492e6720a4`  
		Last Modified: Wed, 05 Sep 2018 01:21:52 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206ebf8d0e69a179b5500a76cac600e43de50b423d3300db2c738d7916538e68`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 5.5 MB (5517398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffa1fabed4cf5759baaadf3e03c59988ab90508a989d46884ea60e0e1ad2357`  
		Last Modified: Wed, 05 Sep 2018 01:21:50 GMT  
		Size: 4.7 KB (4671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d20863b29b52a04a7397eaafe19eda4c11e3282d9e69711953e20edb05b386`  
		Last Modified: Wed, 05 Sep 2018 01:21:50 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f656793641b5f5ebf485ff6ca6728c9d1ac770f77855f8d32438157bc3b97e`  
		Last Modified: Wed, 05 Sep 2018 01:22:57 GMT  
		Size: 47.4 MB (47352650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadf9469693a574bdc349f45ce9f1bd9748b206b7d0003a171aa20a5891769f1`  
		Last Modified: Wed, 05 Sep 2018 01:22:47 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2417877980a557dfab6e03dcc79ec3938c82a0546f95b0fd3f51b6c672a714c5`  
		Last Modified: Wed, 05 Sep 2018 01:22:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6`

```console
$ docker pull percona@sha256:1c811b938efba73eda0b84feebcb7df4d7ac4f213983f197285030c00102040f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6` - linux; amd64

```console
$ docker pull percona@sha256:fcc69e9a65a0af4e2dca99f6cc3bd9c7ed41f32411c72e0d80c20134940f9eb9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.9 MB (113926606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b43d3eaadb17e66cd6c8f4062148e367f17b38fa199276f346eea44cc345a2f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:19:13 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 01:19:22 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:19:22 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 01:19:38 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 01:19:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 01:19:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:19:48 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 01:19:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 01:19:52 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Wed, 05 Sep 2018 01:20:28 GMT
ENV PERCONA_MAJOR=5.6
# Wed, 05 Sep 2018 01:20:28 GMT
ENV PERCONA_VERSION=5.6.41-84.1-1.stretch
# Wed, 05 Sep 2018 01:20:52 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 01:20:52 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 05 Sep 2018 01:20:52 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Wed, 05 Sep 2018 01:20:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 01:20:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 01:20:53 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 01:20:54 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f54ba5d341f9e6e7027886a408e9df3dbe643eb2522b95fb29636bbdc53316`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce092446f1dd0e9b109cb84d7568d6fbc007d81d8105118817dda44b68a4ace`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 6.6 MB (6561958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baf831e176d7d645b0694f1a062ff3ba18770806a488e84ddb1684385b9a04f`  
		Last Modified: Wed, 05 Sep 2018 01:21:52 GMT  
		Size: 956.5 KB (956478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a68c6c2f8572945e64496f3ba347d8f0fb901ce85823abb6cd4c492e6720a4`  
		Last Modified: Wed, 05 Sep 2018 01:21:52 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206ebf8d0e69a179b5500a76cac600e43de50b423d3300db2c738d7916538e68`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 5.5 MB (5517398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffa1fabed4cf5759baaadf3e03c59988ab90508a989d46884ea60e0e1ad2357`  
		Last Modified: Wed, 05 Sep 2018 01:21:50 GMT  
		Size: 4.7 KB (4671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d20863b29b52a04a7397eaafe19eda4c11e3282d9e69711953e20edb05b386`  
		Last Modified: Wed, 05 Sep 2018 01:21:50 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124f338c3f22cb7b4dab20c3d00ede9520b4391c52d7f9ab98716f3ac4871535`  
		Last Modified: Wed, 05 Sep 2018 01:22:37 GMT  
		Size: 55.6 MB (55571407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd9c59e4d431119e18e7ad78a072b21c101e3bdd63f4eed1631acd098f149ad`  
		Last Modified: Wed, 05 Sep 2018 01:22:26 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0f7e295effd4955d05013558a1133640f4f74e6ec3c6bf8cde5eb02e9ec5ac`  
		Last Modified: Wed, 05 Sep 2018 01:22:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.41`

```console
$ docker pull percona@sha256:1c811b938efba73eda0b84feebcb7df4d7ac4f213983f197285030c00102040f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6.41` - linux; amd64

```console
$ docker pull percona@sha256:fcc69e9a65a0af4e2dca99f6cc3bd9c7ed41f32411c72e0d80c20134940f9eb9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.9 MB (113926606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b43d3eaadb17e66cd6c8f4062148e367f17b38fa199276f346eea44cc345a2f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:19:13 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 01:19:22 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:19:22 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 01:19:38 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 01:19:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 01:19:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:19:48 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 01:19:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 01:19:52 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Wed, 05 Sep 2018 01:20:28 GMT
ENV PERCONA_MAJOR=5.6
# Wed, 05 Sep 2018 01:20:28 GMT
ENV PERCONA_VERSION=5.6.41-84.1-1.stretch
# Wed, 05 Sep 2018 01:20:52 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 01:20:52 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 05 Sep 2018 01:20:52 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Wed, 05 Sep 2018 01:20:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 01:20:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 01:20:53 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 01:20:54 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f54ba5d341f9e6e7027886a408e9df3dbe643eb2522b95fb29636bbdc53316`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce092446f1dd0e9b109cb84d7568d6fbc007d81d8105118817dda44b68a4ace`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 6.6 MB (6561958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baf831e176d7d645b0694f1a062ff3ba18770806a488e84ddb1684385b9a04f`  
		Last Modified: Wed, 05 Sep 2018 01:21:52 GMT  
		Size: 956.5 KB (956478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a68c6c2f8572945e64496f3ba347d8f0fb901ce85823abb6cd4c492e6720a4`  
		Last Modified: Wed, 05 Sep 2018 01:21:52 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206ebf8d0e69a179b5500a76cac600e43de50b423d3300db2c738d7916538e68`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 5.5 MB (5517398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffa1fabed4cf5759baaadf3e03c59988ab90508a989d46884ea60e0e1ad2357`  
		Last Modified: Wed, 05 Sep 2018 01:21:50 GMT  
		Size: 4.7 KB (4671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d20863b29b52a04a7397eaafe19eda4c11e3282d9e69711953e20edb05b386`  
		Last Modified: Wed, 05 Sep 2018 01:21:50 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124f338c3f22cb7b4dab20c3d00ede9520b4391c52d7f9ab98716f3ac4871535`  
		Last Modified: Wed, 05 Sep 2018 01:22:37 GMT  
		Size: 55.6 MB (55571407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd9c59e4d431119e18e7ad78a072b21c101e3bdd63f4eed1631acd098f149ad`  
		Last Modified: Wed, 05 Sep 2018 01:22:26 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0f7e295effd4955d05013558a1133640f4f74e6ec3c6bf8cde5eb02e9ec5ac`  
		Last Modified: Wed, 05 Sep 2018 01:22:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.41-stretch`

```console
$ docker pull percona@sha256:1c811b938efba73eda0b84feebcb7df4d7ac4f213983f197285030c00102040f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6.41-stretch` - linux; amd64

```console
$ docker pull percona@sha256:fcc69e9a65a0af4e2dca99f6cc3bd9c7ed41f32411c72e0d80c20134940f9eb9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.9 MB (113926606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b43d3eaadb17e66cd6c8f4062148e367f17b38fa199276f346eea44cc345a2f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:19:13 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 01:19:22 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:19:22 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 01:19:38 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 01:19:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 01:19:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:19:48 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 01:19:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 01:19:52 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Wed, 05 Sep 2018 01:20:28 GMT
ENV PERCONA_MAJOR=5.6
# Wed, 05 Sep 2018 01:20:28 GMT
ENV PERCONA_VERSION=5.6.41-84.1-1.stretch
# Wed, 05 Sep 2018 01:20:52 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 01:20:52 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 05 Sep 2018 01:20:52 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Wed, 05 Sep 2018 01:20:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 01:20:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 01:20:53 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 01:20:54 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f54ba5d341f9e6e7027886a408e9df3dbe643eb2522b95fb29636bbdc53316`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce092446f1dd0e9b109cb84d7568d6fbc007d81d8105118817dda44b68a4ace`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 6.6 MB (6561958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baf831e176d7d645b0694f1a062ff3ba18770806a488e84ddb1684385b9a04f`  
		Last Modified: Wed, 05 Sep 2018 01:21:52 GMT  
		Size: 956.5 KB (956478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a68c6c2f8572945e64496f3ba347d8f0fb901ce85823abb6cd4c492e6720a4`  
		Last Modified: Wed, 05 Sep 2018 01:21:52 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206ebf8d0e69a179b5500a76cac600e43de50b423d3300db2c738d7916538e68`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 5.5 MB (5517398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffa1fabed4cf5759baaadf3e03c59988ab90508a989d46884ea60e0e1ad2357`  
		Last Modified: Wed, 05 Sep 2018 01:21:50 GMT  
		Size: 4.7 KB (4671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d20863b29b52a04a7397eaafe19eda4c11e3282d9e69711953e20edb05b386`  
		Last Modified: Wed, 05 Sep 2018 01:21:50 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124f338c3f22cb7b4dab20c3d00ede9520b4391c52d7f9ab98716f3ac4871535`  
		Last Modified: Wed, 05 Sep 2018 01:22:37 GMT  
		Size: 55.6 MB (55571407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd9c59e4d431119e18e7ad78a072b21c101e3bdd63f4eed1631acd098f149ad`  
		Last Modified: Wed, 05 Sep 2018 01:22:26 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0f7e295effd4955d05013558a1133640f4f74e6ec3c6bf8cde5eb02e9ec5ac`  
		Last Modified: Wed, 05 Sep 2018 01:22:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6-stretch`

```console
$ docker pull percona@sha256:1c811b938efba73eda0b84feebcb7df4d7ac4f213983f197285030c00102040f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6-stretch` - linux; amd64

```console
$ docker pull percona@sha256:fcc69e9a65a0af4e2dca99f6cc3bd9c7ed41f32411c72e0d80c20134940f9eb9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.9 MB (113926606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b43d3eaadb17e66cd6c8f4062148e367f17b38fa199276f346eea44cc345a2f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:19:13 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 01:19:22 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:19:22 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 01:19:38 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 01:19:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 01:19:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:19:48 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 01:19:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 01:19:52 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Wed, 05 Sep 2018 01:20:28 GMT
ENV PERCONA_MAJOR=5.6
# Wed, 05 Sep 2018 01:20:28 GMT
ENV PERCONA_VERSION=5.6.41-84.1-1.stretch
# Wed, 05 Sep 2018 01:20:52 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 01:20:52 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 05 Sep 2018 01:20:52 GMT
COPY file:94fa57663801d527011f870d44de30ea1645a41a57e724dbb8c1b48a8c450c1d in /usr/local/bin/ 
# Wed, 05 Sep 2018 01:20:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 01:20:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 01:20:53 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 01:20:54 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f54ba5d341f9e6e7027886a408e9df3dbe643eb2522b95fb29636bbdc53316`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce092446f1dd0e9b109cb84d7568d6fbc007d81d8105118817dda44b68a4ace`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 6.6 MB (6561958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baf831e176d7d645b0694f1a062ff3ba18770806a488e84ddb1684385b9a04f`  
		Last Modified: Wed, 05 Sep 2018 01:21:52 GMT  
		Size: 956.5 KB (956478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a68c6c2f8572945e64496f3ba347d8f0fb901ce85823abb6cd4c492e6720a4`  
		Last Modified: Wed, 05 Sep 2018 01:21:52 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206ebf8d0e69a179b5500a76cac600e43de50b423d3300db2c738d7916538e68`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 5.5 MB (5517398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffa1fabed4cf5759baaadf3e03c59988ab90508a989d46884ea60e0e1ad2357`  
		Last Modified: Wed, 05 Sep 2018 01:21:50 GMT  
		Size: 4.7 KB (4671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d20863b29b52a04a7397eaafe19eda4c11e3282d9e69711953e20edb05b386`  
		Last Modified: Wed, 05 Sep 2018 01:21:50 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124f338c3f22cb7b4dab20c3d00ede9520b4391c52d7f9ab98716f3ac4871535`  
		Last Modified: Wed, 05 Sep 2018 01:22:37 GMT  
		Size: 55.6 MB (55571407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd9c59e4d431119e18e7ad78a072b21c101e3bdd63f4eed1631acd098f149ad`  
		Last Modified: Wed, 05 Sep 2018 01:22:26 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0f7e295effd4955d05013558a1133640f4f74e6ec3c6bf8cde5eb02e9ec5ac`  
		Last Modified: Wed, 05 Sep 2018 01:22:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7`

```console
$ docker pull percona@sha256:514771dd6caf6f3758840d281c7d942b31d48efb90d07392023e4ec8ebf7a791
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7` - linux; amd64

```console
$ docker pull percona@sha256:62968d0d81bd90f78b06fc72cbdb377e36f12e3f5042813c628cb29e93447ab2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.0 MB (146016141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:656ff8ddd1b64635104e68c9a9080aa69a21981a6516b83cb8141ec3fe18c42c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:19:13 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 01:19:22 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:19:22 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 01:19:38 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 01:19:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 01:19:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:19:48 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 01:19:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 01:19:52 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Wed, 05 Sep 2018 01:19:52 GMT
ENV PERCONA_MAJOR=5.7
# Wed, 05 Sep 2018 01:19:52 GMT
ENV PERCONA_VERSION=5.7.22-22-1.stretch
# Wed, 05 Sep 2018 01:20:12 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 01:20:12 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 05 Sep 2018 01:20:12 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Wed, 05 Sep 2018 01:20:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 01:20:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 01:20:14 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 01:20:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f54ba5d341f9e6e7027886a408e9df3dbe643eb2522b95fb29636bbdc53316`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce092446f1dd0e9b109cb84d7568d6fbc007d81d8105118817dda44b68a4ace`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 6.6 MB (6561958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baf831e176d7d645b0694f1a062ff3ba18770806a488e84ddb1684385b9a04f`  
		Last Modified: Wed, 05 Sep 2018 01:21:52 GMT  
		Size: 956.5 KB (956478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a68c6c2f8572945e64496f3ba347d8f0fb901ce85823abb6cd4c492e6720a4`  
		Last Modified: Wed, 05 Sep 2018 01:21:52 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206ebf8d0e69a179b5500a76cac600e43de50b423d3300db2c738d7916538e68`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 5.5 MB (5517398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffa1fabed4cf5759baaadf3e03c59988ab90508a989d46884ea60e0e1ad2357`  
		Last Modified: Wed, 05 Sep 2018 01:21:50 GMT  
		Size: 4.7 KB (4671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d20863b29b52a04a7397eaafe19eda4c11e3282d9e69711953e20edb05b386`  
		Last Modified: Wed, 05 Sep 2018 01:21:50 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc40f2b51ef755040a3c4bffd4e6482920946400c9d6fbbf301d59b1b1a863d`  
		Last Modified: Wed, 05 Sep 2018 01:22:08 GMT  
		Size: 87.7 MB (87660935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548854d287ae320b98aeaeb566e889512a7e31a7149a62666b376396e1e0cad6`  
		Last Modified: Wed, 05 Sep 2018 01:21:51 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55bb57671b5953f89db2b3de18474e0b9fb407e8e7d1fffc466e708129a1c53e`  
		Last Modified: Wed, 05 Sep 2018 01:21:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7.22`

```console
$ docker pull percona@sha256:514771dd6caf6f3758840d281c7d942b31d48efb90d07392023e4ec8ebf7a791
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7.22` - linux; amd64

```console
$ docker pull percona@sha256:62968d0d81bd90f78b06fc72cbdb377e36f12e3f5042813c628cb29e93447ab2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.0 MB (146016141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:656ff8ddd1b64635104e68c9a9080aa69a21981a6516b83cb8141ec3fe18c42c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:19:13 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 01:19:22 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:19:22 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 01:19:38 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 01:19:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 01:19:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:19:48 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 01:19:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 01:19:52 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Wed, 05 Sep 2018 01:19:52 GMT
ENV PERCONA_MAJOR=5.7
# Wed, 05 Sep 2018 01:19:52 GMT
ENV PERCONA_VERSION=5.7.22-22-1.stretch
# Wed, 05 Sep 2018 01:20:12 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 01:20:12 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 05 Sep 2018 01:20:12 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Wed, 05 Sep 2018 01:20:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 01:20:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 01:20:14 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 01:20:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f54ba5d341f9e6e7027886a408e9df3dbe643eb2522b95fb29636bbdc53316`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce092446f1dd0e9b109cb84d7568d6fbc007d81d8105118817dda44b68a4ace`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 6.6 MB (6561958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baf831e176d7d645b0694f1a062ff3ba18770806a488e84ddb1684385b9a04f`  
		Last Modified: Wed, 05 Sep 2018 01:21:52 GMT  
		Size: 956.5 KB (956478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a68c6c2f8572945e64496f3ba347d8f0fb901ce85823abb6cd4c492e6720a4`  
		Last Modified: Wed, 05 Sep 2018 01:21:52 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206ebf8d0e69a179b5500a76cac600e43de50b423d3300db2c738d7916538e68`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 5.5 MB (5517398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffa1fabed4cf5759baaadf3e03c59988ab90508a989d46884ea60e0e1ad2357`  
		Last Modified: Wed, 05 Sep 2018 01:21:50 GMT  
		Size: 4.7 KB (4671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d20863b29b52a04a7397eaafe19eda4c11e3282d9e69711953e20edb05b386`  
		Last Modified: Wed, 05 Sep 2018 01:21:50 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc40f2b51ef755040a3c4bffd4e6482920946400c9d6fbbf301d59b1b1a863d`  
		Last Modified: Wed, 05 Sep 2018 01:22:08 GMT  
		Size: 87.7 MB (87660935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548854d287ae320b98aeaeb566e889512a7e31a7149a62666b376396e1e0cad6`  
		Last Modified: Wed, 05 Sep 2018 01:21:51 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55bb57671b5953f89db2b3de18474e0b9fb407e8e7d1fffc466e708129a1c53e`  
		Last Modified: Wed, 05 Sep 2018 01:21:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7.22-stretch`

```console
$ docker pull percona@sha256:514771dd6caf6f3758840d281c7d942b31d48efb90d07392023e4ec8ebf7a791
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7.22-stretch` - linux; amd64

```console
$ docker pull percona@sha256:62968d0d81bd90f78b06fc72cbdb377e36f12e3f5042813c628cb29e93447ab2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.0 MB (146016141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:656ff8ddd1b64635104e68c9a9080aa69a21981a6516b83cb8141ec3fe18c42c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:19:13 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 01:19:22 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:19:22 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 01:19:38 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 01:19:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 01:19:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:19:48 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 01:19:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 01:19:52 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Wed, 05 Sep 2018 01:19:52 GMT
ENV PERCONA_MAJOR=5.7
# Wed, 05 Sep 2018 01:19:52 GMT
ENV PERCONA_VERSION=5.7.22-22-1.stretch
# Wed, 05 Sep 2018 01:20:12 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 01:20:12 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 05 Sep 2018 01:20:12 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Wed, 05 Sep 2018 01:20:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 01:20:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 01:20:14 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 01:20:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f54ba5d341f9e6e7027886a408e9df3dbe643eb2522b95fb29636bbdc53316`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce092446f1dd0e9b109cb84d7568d6fbc007d81d8105118817dda44b68a4ace`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 6.6 MB (6561958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baf831e176d7d645b0694f1a062ff3ba18770806a488e84ddb1684385b9a04f`  
		Last Modified: Wed, 05 Sep 2018 01:21:52 GMT  
		Size: 956.5 KB (956478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a68c6c2f8572945e64496f3ba347d8f0fb901ce85823abb6cd4c492e6720a4`  
		Last Modified: Wed, 05 Sep 2018 01:21:52 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206ebf8d0e69a179b5500a76cac600e43de50b423d3300db2c738d7916538e68`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 5.5 MB (5517398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffa1fabed4cf5759baaadf3e03c59988ab90508a989d46884ea60e0e1ad2357`  
		Last Modified: Wed, 05 Sep 2018 01:21:50 GMT  
		Size: 4.7 KB (4671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d20863b29b52a04a7397eaafe19eda4c11e3282d9e69711953e20edb05b386`  
		Last Modified: Wed, 05 Sep 2018 01:21:50 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc40f2b51ef755040a3c4bffd4e6482920946400c9d6fbbf301d59b1b1a863d`  
		Last Modified: Wed, 05 Sep 2018 01:22:08 GMT  
		Size: 87.7 MB (87660935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548854d287ae320b98aeaeb566e889512a7e31a7149a62666b376396e1e0cad6`  
		Last Modified: Wed, 05 Sep 2018 01:21:51 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55bb57671b5953f89db2b3de18474e0b9fb407e8e7d1fffc466e708129a1c53e`  
		Last Modified: Wed, 05 Sep 2018 01:21:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7-stretch`

```console
$ docker pull percona@sha256:514771dd6caf6f3758840d281c7d942b31d48efb90d07392023e4ec8ebf7a791
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7-stretch` - linux; amd64

```console
$ docker pull percona@sha256:62968d0d81bd90f78b06fc72cbdb377e36f12e3f5042813c628cb29e93447ab2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.0 MB (146016141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:656ff8ddd1b64635104e68c9a9080aa69a21981a6516b83cb8141ec3fe18c42c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:19:13 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 01:19:22 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:19:22 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 01:19:38 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 01:19:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 01:19:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:19:48 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 01:19:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 01:19:52 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Wed, 05 Sep 2018 01:19:52 GMT
ENV PERCONA_MAJOR=5.7
# Wed, 05 Sep 2018 01:19:52 GMT
ENV PERCONA_VERSION=5.7.22-22-1.stretch
# Wed, 05 Sep 2018 01:20:12 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 01:20:12 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 05 Sep 2018 01:20:12 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Wed, 05 Sep 2018 01:20:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 01:20:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 01:20:14 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 01:20:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f54ba5d341f9e6e7027886a408e9df3dbe643eb2522b95fb29636bbdc53316`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce092446f1dd0e9b109cb84d7568d6fbc007d81d8105118817dda44b68a4ace`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 6.6 MB (6561958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baf831e176d7d645b0694f1a062ff3ba18770806a488e84ddb1684385b9a04f`  
		Last Modified: Wed, 05 Sep 2018 01:21:52 GMT  
		Size: 956.5 KB (956478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a68c6c2f8572945e64496f3ba347d8f0fb901ce85823abb6cd4c492e6720a4`  
		Last Modified: Wed, 05 Sep 2018 01:21:52 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206ebf8d0e69a179b5500a76cac600e43de50b423d3300db2c738d7916538e68`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 5.5 MB (5517398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffa1fabed4cf5759baaadf3e03c59988ab90508a989d46884ea60e0e1ad2357`  
		Last Modified: Wed, 05 Sep 2018 01:21:50 GMT  
		Size: 4.7 KB (4671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d20863b29b52a04a7397eaafe19eda4c11e3282d9e69711953e20edb05b386`  
		Last Modified: Wed, 05 Sep 2018 01:21:50 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc40f2b51ef755040a3c4bffd4e6482920946400c9d6fbbf301d59b1b1a863d`  
		Last Modified: Wed, 05 Sep 2018 01:22:08 GMT  
		Size: 87.7 MB (87660935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548854d287ae320b98aeaeb566e889512a7e31a7149a62666b376396e1e0cad6`  
		Last Modified: Wed, 05 Sep 2018 01:21:51 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55bb57671b5953f89db2b3de18474e0b9fb407e8e7d1fffc466e708129a1c53e`  
		Last Modified: Wed, 05 Sep 2018 01:21:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5-stretch`

```console
$ docker pull percona@sha256:514771dd6caf6f3758840d281c7d942b31d48efb90d07392023e4ec8ebf7a791
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5-stretch` - linux; amd64

```console
$ docker pull percona@sha256:62968d0d81bd90f78b06fc72cbdb377e36f12e3f5042813c628cb29e93447ab2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.0 MB (146016141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:656ff8ddd1b64635104e68c9a9080aa69a21981a6516b83cb8141ec3fe18c42c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:19:13 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 01:19:22 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:19:22 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 01:19:38 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 01:19:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 01:19:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:19:48 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 01:19:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 01:19:52 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Wed, 05 Sep 2018 01:19:52 GMT
ENV PERCONA_MAJOR=5.7
# Wed, 05 Sep 2018 01:19:52 GMT
ENV PERCONA_VERSION=5.7.22-22-1.stretch
# Wed, 05 Sep 2018 01:20:12 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 01:20:12 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 05 Sep 2018 01:20:12 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Wed, 05 Sep 2018 01:20:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 01:20:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 01:20:14 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 01:20:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f54ba5d341f9e6e7027886a408e9df3dbe643eb2522b95fb29636bbdc53316`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce092446f1dd0e9b109cb84d7568d6fbc007d81d8105118817dda44b68a4ace`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 6.6 MB (6561958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baf831e176d7d645b0694f1a062ff3ba18770806a488e84ddb1684385b9a04f`  
		Last Modified: Wed, 05 Sep 2018 01:21:52 GMT  
		Size: 956.5 KB (956478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a68c6c2f8572945e64496f3ba347d8f0fb901ce85823abb6cd4c492e6720a4`  
		Last Modified: Wed, 05 Sep 2018 01:21:52 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206ebf8d0e69a179b5500a76cac600e43de50b423d3300db2c738d7916538e68`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 5.5 MB (5517398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffa1fabed4cf5759baaadf3e03c59988ab90508a989d46884ea60e0e1ad2357`  
		Last Modified: Wed, 05 Sep 2018 01:21:50 GMT  
		Size: 4.7 KB (4671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d20863b29b52a04a7397eaafe19eda4c11e3282d9e69711953e20edb05b386`  
		Last Modified: Wed, 05 Sep 2018 01:21:50 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc40f2b51ef755040a3c4bffd4e6482920946400c9d6fbbf301d59b1b1a863d`  
		Last Modified: Wed, 05 Sep 2018 01:22:08 GMT  
		Size: 87.7 MB (87660935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548854d287ae320b98aeaeb566e889512a7e31a7149a62666b376396e1e0cad6`  
		Last Modified: Wed, 05 Sep 2018 01:21:51 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55bb57671b5953f89db2b3de18474e0b9fb407e8e7d1fffc466e708129a1c53e`  
		Last Modified: Wed, 05 Sep 2018 01:21:50 GMT  
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
$ docker pull percona@sha256:514771dd6caf6f3758840d281c7d942b31d48efb90d07392023e4ec8ebf7a791
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:stretch` - linux; amd64

```console
$ docker pull percona@sha256:62968d0d81bd90f78b06fc72cbdb377e36f12e3f5042813c628cb29e93447ab2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.0 MB (146016141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:656ff8ddd1b64635104e68c9a9080aa69a21981a6516b83cb8141ec3fe18c42c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:19:13 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 01:19:22 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:19:22 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 01:19:38 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 01:19:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 01:19:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:19:48 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 01:19:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 01:19:52 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Wed, 05 Sep 2018 01:19:52 GMT
ENV PERCONA_MAJOR=5.7
# Wed, 05 Sep 2018 01:19:52 GMT
ENV PERCONA_VERSION=5.7.22-22-1.stretch
# Wed, 05 Sep 2018 01:20:12 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 01:20:12 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 05 Sep 2018 01:20:12 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Wed, 05 Sep 2018 01:20:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 01:20:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 01:20:14 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 01:20:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f54ba5d341f9e6e7027886a408e9df3dbe643eb2522b95fb29636bbdc53316`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce092446f1dd0e9b109cb84d7568d6fbc007d81d8105118817dda44b68a4ace`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 6.6 MB (6561958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baf831e176d7d645b0694f1a062ff3ba18770806a488e84ddb1684385b9a04f`  
		Last Modified: Wed, 05 Sep 2018 01:21:52 GMT  
		Size: 956.5 KB (956478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a68c6c2f8572945e64496f3ba347d8f0fb901ce85823abb6cd4c492e6720a4`  
		Last Modified: Wed, 05 Sep 2018 01:21:52 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206ebf8d0e69a179b5500a76cac600e43de50b423d3300db2c738d7916538e68`  
		Last Modified: Wed, 05 Sep 2018 01:21:53 GMT  
		Size: 5.5 MB (5517398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffa1fabed4cf5759baaadf3e03c59988ab90508a989d46884ea60e0e1ad2357`  
		Last Modified: Wed, 05 Sep 2018 01:21:50 GMT  
		Size: 4.7 KB (4671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d20863b29b52a04a7397eaafe19eda4c11e3282d9e69711953e20edb05b386`  
		Last Modified: Wed, 05 Sep 2018 01:21:50 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc40f2b51ef755040a3c4bffd4e6482920946400c9d6fbbf301d59b1b1a863d`  
		Last Modified: Wed, 05 Sep 2018 01:22:08 GMT  
		Size: 87.7 MB (87660935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548854d287ae320b98aeaeb566e889512a7e31a7149a62666b376396e1e0cad6`  
		Last Modified: Wed, 05 Sep 2018 01:21:51 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55bb57671b5953f89db2b3de18474e0b9fb407e8e7d1fffc466e708129a1c53e`  
		Last Modified: Wed, 05 Sep 2018 01:21:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
