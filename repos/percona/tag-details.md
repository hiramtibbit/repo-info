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
-	[`percona:5.7.23`](#percona5723)
-	[`percona:5.7.23-stretch`](#percona5723-stretch)
-	[`percona:5.7-stretch`](#percona57-stretch)
-	[`percona:5-stretch`](#percona5-stretch)
-	[`percona:latest`](#perconalatest)
-	[`percona:stretch`](#perconastretch)

## `percona:5`

```console
$ docker pull percona@sha256:09996d7e0cee9debcac7bbf056081dd64ed8fddaa4d74da19f9ebbda9a95c178
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5` - linux; amd64

```console
$ docker pull percona@sha256:92dcf8640df978dffe174899c52d7e608e0748a20fada18e987e28fb789b14c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.1 MB (146068554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efcbfb5c16bab190eed828c5b9a5831b5aed77171b79d55a94bea3dbb3b82820`
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
# Wed, 12 Sep 2018 20:25:09 GMT
ENV PERCONA_VERSION=5.7.23-23-1.stretch
# Wed, 12 Sep 2018 20:25:30 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 12 Sep 2018 20:25:32 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 12 Sep 2018 20:25:32 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Wed, 12 Sep 2018 20:25:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 12 Sep 2018 20:25:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 20:25:34 GMT
EXPOSE 3306/tcp
# Wed, 12 Sep 2018 20:25:34 GMT
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
	-	`sha256:a2360b39dcebeb2087411469be34084f908f3292f10460c042e39644f7f2d553`  
		Last Modified: Wed, 12 Sep 2018 20:26:09 GMT  
		Size: 87.7 MB (87713347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343c7c8bb00d074d07c72f998d1f51affcc33115fddacbf8f56253a65e35332d`  
		Last Modified: Wed, 12 Sep 2018 20:25:52 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d82954faa77a012c5b30467424b55fd70a3fcf3f26aab8321ce823b5a3d147e`  
		Last Modified: Wed, 12 Sep 2018 20:25:52 GMT  
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
$ docker pull percona@sha256:09996d7e0cee9debcac7bbf056081dd64ed8fddaa4d74da19f9ebbda9a95c178
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7` - linux; amd64

```console
$ docker pull percona@sha256:92dcf8640df978dffe174899c52d7e608e0748a20fada18e987e28fb789b14c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.1 MB (146068554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efcbfb5c16bab190eed828c5b9a5831b5aed77171b79d55a94bea3dbb3b82820`
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
# Wed, 12 Sep 2018 20:25:09 GMT
ENV PERCONA_VERSION=5.7.23-23-1.stretch
# Wed, 12 Sep 2018 20:25:30 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 12 Sep 2018 20:25:32 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 12 Sep 2018 20:25:32 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Wed, 12 Sep 2018 20:25:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 12 Sep 2018 20:25:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 20:25:34 GMT
EXPOSE 3306/tcp
# Wed, 12 Sep 2018 20:25:34 GMT
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
	-	`sha256:a2360b39dcebeb2087411469be34084f908f3292f10460c042e39644f7f2d553`  
		Last Modified: Wed, 12 Sep 2018 20:26:09 GMT  
		Size: 87.7 MB (87713347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343c7c8bb00d074d07c72f998d1f51affcc33115fddacbf8f56253a65e35332d`  
		Last Modified: Wed, 12 Sep 2018 20:25:52 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d82954faa77a012c5b30467424b55fd70a3fcf3f26aab8321ce823b5a3d147e`  
		Last Modified: Wed, 12 Sep 2018 20:25:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7.23`

```console
$ docker pull percona@sha256:09996d7e0cee9debcac7bbf056081dd64ed8fddaa4d74da19f9ebbda9a95c178
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7.23` - linux; amd64

```console
$ docker pull percona@sha256:92dcf8640df978dffe174899c52d7e608e0748a20fada18e987e28fb789b14c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.1 MB (146068554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efcbfb5c16bab190eed828c5b9a5831b5aed77171b79d55a94bea3dbb3b82820`
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
# Wed, 12 Sep 2018 20:25:09 GMT
ENV PERCONA_VERSION=5.7.23-23-1.stretch
# Wed, 12 Sep 2018 20:25:30 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 12 Sep 2018 20:25:32 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 12 Sep 2018 20:25:32 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Wed, 12 Sep 2018 20:25:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 12 Sep 2018 20:25:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 20:25:34 GMT
EXPOSE 3306/tcp
# Wed, 12 Sep 2018 20:25:34 GMT
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
	-	`sha256:a2360b39dcebeb2087411469be34084f908f3292f10460c042e39644f7f2d553`  
		Last Modified: Wed, 12 Sep 2018 20:26:09 GMT  
		Size: 87.7 MB (87713347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343c7c8bb00d074d07c72f998d1f51affcc33115fddacbf8f56253a65e35332d`  
		Last Modified: Wed, 12 Sep 2018 20:25:52 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d82954faa77a012c5b30467424b55fd70a3fcf3f26aab8321ce823b5a3d147e`  
		Last Modified: Wed, 12 Sep 2018 20:25:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7.23-stretch`

```console
$ docker pull percona@sha256:09996d7e0cee9debcac7bbf056081dd64ed8fddaa4d74da19f9ebbda9a95c178
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7.23-stretch` - linux; amd64

```console
$ docker pull percona@sha256:92dcf8640df978dffe174899c52d7e608e0748a20fada18e987e28fb789b14c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.1 MB (146068554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efcbfb5c16bab190eed828c5b9a5831b5aed77171b79d55a94bea3dbb3b82820`
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
# Wed, 12 Sep 2018 20:25:09 GMT
ENV PERCONA_VERSION=5.7.23-23-1.stretch
# Wed, 12 Sep 2018 20:25:30 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 12 Sep 2018 20:25:32 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 12 Sep 2018 20:25:32 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Wed, 12 Sep 2018 20:25:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 12 Sep 2018 20:25:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 20:25:34 GMT
EXPOSE 3306/tcp
# Wed, 12 Sep 2018 20:25:34 GMT
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
	-	`sha256:a2360b39dcebeb2087411469be34084f908f3292f10460c042e39644f7f2d553`  
		Last Modified: Wed, 12 Sep 2018 20:26:09 GMT  
		Size: 87.7 MB (87713347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343c7c8bb00d074d07c72f998d1f51affcc33115fddacbf8f56253a65e35332d`  
		Last Modified: Wed, 12 Sep 2018 20:25:52 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d82954faa77a012c5b30467424b55fd70a3fcf3f26aab8321ce823b5a3d147e`  
		Last Modified: Wed, 12 Sep 2018 20:25:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7-stretch`

```console
$ docker pull percona@sha256:09996d7e0cee9debcac7bbf056081dd64ed8fddaa4d74da19f9ebbda9a95c178
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7-stretch` - linux; amd64

```console
$ docker pull percona@sha256:92dcf8640df978dffe174899c52d7e608e0748a20fada18e987e28fb789b14c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.1 MB (146068554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efcbfb5c16bab190eed828c5b9a5831b5aed77171b79d55a94bea3dbb3b82820`
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
# Wed, 12 Sep 2018 20:25:09 GMT
ENV PERCONA_VERSION=5.7.23-23-1.stretch
# Wed, 12 Sep 2018 20:25:30 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 12 Sep 2018 20:25:32 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 12 Sep 2018 20:25:32 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Wed, 12 Sep 2018 20:25:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 12 Sep 2018 20:25:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 20:25:34 GMT
EXPOSE 3306/tcp
# Wed, 12 Sep 2018 20:25:34 GMT
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
	-	`sha256:a2360b39dcebeb2087411469be34084f908f3292f10460c042e39644f7f2d553`  
		Last Modified: Wed, 12 Sep 2018 20:26:09 GMT  
		Size: 87.7 MB (87713347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343c7c8bb00d074d07c72f998d1f51affcc33115fddacbf8f56253a65e35332d`  
		Last Modified: Wed, 12 Sep 2018 20:25:52 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d82954faa77a012c5b30467424b55fd70a3fcf3f26aab8321ce823b5a3d147e`  
		Last Modified: Wed, 12 Sep 2018 20:25:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5-stretch`

```console
$ docker pull percona@sha256:09996d7e0cee9debcac7bbf056081dd64ed8fddaa4d74da19f9ebbda9a95c178
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5-stretch` - linux; amd64

```console
$ docker pull percona@sha256:92dcf8640df978dffe174899c52d7e608e0748a20fada18e987e28fb789b14c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.1 MB (146068554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efcbfb5c16bab190eed828c5b9a5831b5aed77171b79d55a94bea3dbb3b82820`
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
# Wed, 12 Sep 2018 20:25:09 GMT
ENV PERCONA_VERSION=5.7.23-23-1.stretch
# Wed, 12 Sep 2018 20:25:30 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 12 Sep 2018 20:25:32 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 12 Sep 2018 20:25:32 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Wed, 12 Sep 2018 20:25:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 12 Sep 2018 20:25:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 20:25:34 GMT
EXPOSE 3306/tcp
# Wed, 12 Sep 2018 20:25:34 GMT
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
	-	`sha256:a2360b39dcebeb2087411469be34084f908f3292f10460c042e39644f7f2d553`  
		Last Modified: Wed, 12 Sep 2018 20:26:09 GMT  
		Size: 87.7 MB (87713347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343c7c8bb00d074d07c72f998d1f51affcc33115fddacbf8f56253a65e35332d`  
		Last Modified: Wed, 12 Sep 2018 20:25:52 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d82954faa77a012c5b30467424b55fd70a3fcf3f26aab8321ce823b5a3d147e`  
		Last Modified: Wed, 12 Sep 2018 20:25:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:latest`

```console
$ docker pull percona@sha256:09996d7e0cee9debcac7bbf056081dd64ed8fddaa4d74da19f9ebbda9a95c178
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:latest` - linux; amd64

```console
$ docker pull percona@sha256:92dcf8640df978dffe174899c52d7e608e0748a20fada18e987e28fb789b14c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.1 MB (146068554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efcbfb5c16bab190eed828c5b9a5831b5aed77171b79d55a94bea3dbb3b82820`
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
# Wed, 12 Sep 2018 20:25:09 GMT
ENV PERCONA_VERSION=5.7.23-23-1.stretch
# Wed, 12 Sep 2018 20:25:30 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 12 Sep 2018 20:25:32 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 12 Sep 2018 20:25:32 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Wed, 12 Sep 2018 20:25:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 12 Sep 2018 20:25:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 20:25:34 GMT
EXPOSE 3306/tcp
# Wed, 12 Sep 2018 20:25:34 GMT
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
	-	`sha256:a2360b39dcebeb2087411469be34084f908f3292f10460c042e39644f7f2d553`  
		Last Modified: Wed, 12 Sep 2018 20:26:09 GMT  
		Size: 87.7 MB (87713347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343c7c8bb00d074d07c72f998d1f51affcc33115fddacbf8f56253a65e35332d`  
		Last Modified: Wed, 12 Sep 2018 20:25:52 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d82954faa77a012c5b30467424b55fd70a3fcf3f26aab8321ce823b5a3d147e`  
		Last Modified: Wed, 12 Sep 2018 20:25:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:stretch`

```console
$ docker pull percona@sha256:09996d7e0cee9debcac7bbf056081dd64ed8fddaa4d74da19f9ebbda9a95c178
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:stretch` - linux; amd64

```console
$ docker pull percona@sha256:92dcf8640df978dffe174899c52d7e608e0748a20fada18e987e28fb789b14c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.1 MB (146068554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efcbfb5c16bab190eed828c5b9a5831b5aed77171b79d55a94bea3dbb3b82820`
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
# Wed, 12 Sep 2018 20:25:09 GMT
ENV PERCONA_VERSION=5.7.23-23-1.stretch
# Wed, 12 Sep 2018 20:25:30 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 12 Sep 2018 20:25:32 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 12 Sep 2018 20:25:32 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Wed, 12 Sep 2018 20:25:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 12 Sep 2018 20:25:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 20:25:34 GMT
EXPOSE 3306/tcp
# Wed, 12 Sep 2018 20:25:34 GMT
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
	-	`sha256:a2360b39dcebeb2087411469be34084f908f3292f10460c042e39644f7f2d553`  
		Last Modified: Wed, 12 Sep 2018 20:26:09 GMT  
		Size: 87.7 MB (87713347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343c7c8bb00d074d07c72f998d1f51affcc33115fddacbf8f56253a65e35332d`  
		Last Modified: Wed, 12 Sep 2018 20:25:52 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d82954faa77a012c5b30467424b55fd70a3fcf3f26aab8321ce823b5a3d147e`  
		Last Modified: Wed, 12 Sep 2018 20:25:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
