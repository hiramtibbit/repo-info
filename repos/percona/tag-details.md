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
$ docker pull percona@sha256:bd191ffdd8891bdaf61deb9accac76daacb4c3729c1188d94848db3b02f2a6a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5` - linux; amd64

```console
$ docker pull percona@sha256:f7b1fd6db4f6bbf21d75cbf2099082edbe233b89e54542d5256241ff44b49d2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.1 MB (146068608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1344d5e50c9ffd9c3e5ce20d0d4ebb3d64be6c3e674f615b182b56e0bbc95366`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:14:34 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 16 Oct 2018 06:14:44 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:14:44 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 06:14:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 06:14:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 06:15:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:15:06 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 16 Oct 2018 06:15:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 06:15:10 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Tue, 16 Oct 2018 06:15:10 GMT
ENV PERCONA_MAJOR=5.7
# Tue, 16 Oct 2018 06:15:10 GMT
ENV PERCONA_VERSION=5.7.23-23-1.stretch
# Tue, 16 Oct 2018 06:15:36 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 16 Oct 2018 06:15:37 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 16 Oct 2018 06:15:38 GMT
COPY file:5ddddac029091d7992b7abda3872f8bba6cb13d58fa16a64d281066400851f77 in /usr/local/bin/ 
# Tue, 16 Oct 2018 06:15:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 16 Oct 2018 06:15:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 06:15:40 GMT
EXPOSE 3306/tcp
# Tue, 16 Oct 2018 06:15:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e095e593e2716e10386d8fa588c5bce98f5079c000ed2e22b4911c6d9e86ec2`  
		Last Modified: Tue, 16 Oct 2018 06:17:42 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175daef9231aee6d1ef189b8b8470ab99d090a0707a4d2350e724e5e36961537`  
		Last Modified: Tue, 16 Oct 2018 06:17:44 GMT  
		Size: 6.6 MB (6561904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e9f705a507a92dfec124eaa2e07c03b7958d4ed3393f724710a2bd1b848691`  
		Last Modified: Tue, 16 Oct 2018 06:17:41 GMT  
		Size: 956.4 KB (956418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c039e6f678b8dcd83be730469b91e1d9dffdee540123c2322b015b1a4c849cb`  
		Last Modified: Tue, 16 Oct 2018 06:17:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea59eddf613d2fefb3ff3b024e3bd22ecf85d6e72a498dc1424d9d41c158106f`  
		Last Modified: Tue, 16 Oct 2018 06:17:42 GMT  
		Size: 5.5 MB (5517372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa28f539f1268cdcf7738fbd5535efbba520eb3dd0e98ece9dbcc11f0b35584`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 4.7 KB (4672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d06caf5359775b82876716294aa7835ee6eec5b2e3ace104ba23b5f8855a71`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986d3b3b6401b70d77d460aa95a21e9207b5044b74690b28541a7cd585afc52f`  
		Last Modified: Tue, 16 Oct 2018 06:18:02 GMT  
		Size: 87.7 MB (87713651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d6db05ed7b908f7a1fd6849aa7c9dd5fb441c19d434968577f32d1f9b545da`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a667de5f0e79f2576c4abf96085dd5f87d7fd509df4da5e7e38f29149faeb7d4`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5`

```console
$ docker pull percona@sha256:08e8326c120a2ccee062feb99f10f55d9c388ecf1744c23caf0356a233ad6ae3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.5` - linux; amd64

```console
$ docker pull percona@sha256:c9a63e58cb8cdb4bc161360351909a3068204f5f689b87f02534f924181c67a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.7 MB (105707569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3e16513f52a354deff7146771d6f6011920187154b0bbe844400780309be324`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:14:34 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 16 Oct 2018 06:14:44 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:14:44 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 06:14:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 06:14:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 06:15:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:15:06 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 16 Oct 2018 06:15:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 06:15:10 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Tue, 16 Oct 2018 06:16:42 GMT
ENV PERCONA_MAJOR=5.5
# Tue, 16 Oct 2018 06:16:42 GMT
ENV PERCONA_VERSION=5.5.61-rel38.13-1.stretch
# Tue, 16 Oct 2018 06:17:19 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 16 Oct 2018 06:17:19 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 16 Oct 2018 06:17:19 GMT
COPY file:d6824321bf3f44873b9731ce58d10ae4abddf0c74dc670fcaa6c410718b55963 in /usr/local/bin/ 
# Tue, 16 Oct 2018 06:17:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 16 Oct 2018 06:17:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 06:17:20 GMT
EXPOSE 3306/tcp
# Tue, 16 Oct 2018 06:17:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e095e593e2716e10386d8fa588c5bce98f5079c000ed2e22b4911c6d9e86ec2`  
		Last Modified: Tue, 16 Oct 2018 06:17:42 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175daef9231aee6d1ef189b8b8470ab99d090a0707a4d2350e724e5e36961537`  
		Last Modified: Tue, 16 Oct 2018 06:17:44 GMT  
		Size: 6.6 MB (6561904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e9f705a507a92dfec124eaa2e07c03b7958d4ed3393f724710a2bd1b848691`  
		Last Modified: Tue, 16 Oct 2018 06:17:41 GMT  
		Size: 956.4 KB (956418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c039e6f678b8dcd83be730469b91e1d9dffdee540123c2322b015b1a4c849cb`  
		Last Modified: Tue, 16 Oct 2018 06:17:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea59eddf613d2fefb3ff3b024e3bd22ecf85d6e72a498dc1424d9d41c158106f`  
		Last Modified: Tue, 16 Oct 2018 06:17:42 GMT  
		Size: 5.5 MB (5517372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa28f539f1268cdcf7738fbd5535efbba520eb3dd0e98ece9dbcc11f0b35584`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 4.7 KB (4672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d06caf5359775b82876716294aa7835ee6eec5b2e3ace104ba23b5f8855a71`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749db071ef276b2cf646d1cfbb8fc65e364b92d76f44ebc5b230513012e32720`  
		Last Modified: Tue, 16 Oct 2018 06:21:22 GMT  
		Size: 47.4 MB (47352615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f390e2fac080a7292bd25a1940baa8baf8daa4e03672422003432e80af37684`  
		Last Modified: Tue, 16 Oct 2018 06:20:50 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7860b44c3bdd06bf4bd37eae215926f46fd5b4d85d6fb22213b0899fd1b6d14d`  
		Last Modified: Tue, 16 Oct 2018 06:20:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5.61`

```console
$ docker pull percona@sha256:08e8326c120a2ccee062feb99f10f55d9c388ecf1744c23caf0356a233ad6ae3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.5.61` - linux; amd64

```console
$ docker pull percona@sha256:c9a63e58cb8cdb4bc161360351909a3068204f5f689b87f02534f924181c67a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.7 MB (105707569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3e16513f52a354deff7146771d6f6011920187154b0bbe844400780309be324`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:14:34 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 16 Oct 2018 06:14:44 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:14:44 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 06:14:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 06:14:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 06:15:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:15:06 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 16 Oct 2018 06:15:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 06:15:10 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Tue, 16 Oct 2018 06:16:42 GMT
ENV PERCONA_MAJOR=5.5
# Tue, 16 Oct 2018 06:16:42 GMT
ENV PERCONA_VERSION=5.5.61-rel38.13-1.stretch
# Tue, 16 Oct 2018 06:17:19 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 16 Oct 2018 06:17:19 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 16 Oct 2018 06:17:19 GMT
COPY file:d6824321bf3f44873b9731ce58d10ae4abddf0c74dc670fcaa6c410718b55963 in /usr/local/bin/ 
# Tue, 16 Oct 2018 06:17:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 16 Oct 2018 06:17:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 06:17:20 GMT
EXPOSE 3306/tcp
# Tue, 16 Oct 2018 06:17:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e095e593e2716e10386d8fa588c5bce98f5079c000ed2e22b4911c6d9e86ec2`  
		Last Modified: Tue, 16 Oct 2018 06:17:42 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175daef9231aee6d1ef189b8b8470ab99d090a0707a4d2350e724e5e36961537`  
		Last Modified: Tue, 16 Oct 2018 06:17:44 GMT  
		Size: 6.6 MB (6561904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e9f705a507a92dfec124eaa2e07c03b7958d4ed3393f724710a2bd1b848691`  
		Last Modified: Tue, 16 Oct 2018 06:17:41 GMT  
		Size: 956.4 KB (956418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c039e6f678b8dcd83be730469b91e1d9dffdee540123c2322b015b1a4c849cb`  
		Last Modified: Tue, 16 Oct 2018 06:17:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea59eddf613d2fefb3ff3b024e3bd22ecf85d6e72a498dc1424d9d41c158106f`  
		Last Modified: Tue, 16 Oct 2018 06:17:42 GMT  
		Size: 5.5 MB (5517372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa28f539f1268cdcf7738fbd5535efbba520eb3dd0e98ece9dbcc11f0b35584`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 4.7 KB (4672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d06caf5359775b82876716294aa7835ee6eec5b2e3ace104ba23b5f8855a71`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749db071ef276b2cf646d1cfbb8fc65e364b92d76f44ebc5b230513012e32720`  
		Last Modified: Tue, 16 Oct 2018 06:21:22 GMT  
		Size: 47.4 MB (47352615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f390e2fac080a7292bd25a1940baa8baf8daa4e03672422003432e80af37684`  
		Last Modified: Tue, 16 Oct 2018 06:20:50 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7860b44c3bdd06bf4bd37eae215926f46fd5b4d85d6fb22213b0899fd1b6d14d`  
		Last Modified: Tue, 16 Oct 2018 06:20:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5.61-stretch`

```console
$ docker pull percona@sha256:08e8326c120a2ccee062feb99f10f55d9c388ecf1744c23caf0356a233ad6ae3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.5.61-stretch` - linux; amd64

```console
$ docker pull percona@sha256:c9a63e58cb8cdb4bc161360351909a3068204f5f689b87f02534f924181c67a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.7 MB (105707569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3e16513f52a354deff7146771d6f6011920187154b0bbe844400780309be324`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:14:34 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 16 Oct 2018 06:14:44 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:14:44 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 06:14:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 06:14:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 06:15:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:15:06 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 16 Oct 2018 06:15:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 06:15:10 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Tue, 16 Oct 2018 06:16:42 GMT
ENV PERCONA_MAJOR=5.5
# Tue, 16 Oct 2018 06:16:42 GMT
ENV PERCONA_VERSION=5.5.61-rel38.13-1.stretch
# Tue, 16 Oct 2018 06:17:19 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 16 Oct 2018 06:17:19 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 16 Oct 2018 06:17:19 GMT
COPY file:d6824321bf3f44873b9731ce58d10ae4abddf0c74dc670fcaa6c410718b55963 in /usr/local/bin/ 
# Tue, 16 Oct 2018 06:17:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 16 Oct 2018 06:17:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 06:17:20 GMT
EXPOSE 3306/tcp
# Tue, 16 Oct 2018 06:17:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e095e593e2716e10386d8fa588c5bce98f5079c000ed2e22b4911c6d9e86ec2`  
		Last Modified: Tue, 16 Oct 2018 06:17:42 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175daef9231aee6d1ef189b8b8470ab99d090a0707a4d2350e724e5e36961537`  
		Last Modified: Tue, 16 Oct 2018 06:17:44 GMT  
		Size: 6.6 MB (6561904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e9f705a507a92dfec124eaa2e07c03b7958d4ed3393f724710a2bd1b848691`  
		Last Modified: Tue, 16 Oct 2018 06:17:41 GMT  
		Size: 956.4 KB (956418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c039e6f678b8dcd83be730469b91e1d9dffdee540123c2322b015b1a4c849cb`  
		Last Modified: Tue, 16 Oct 2018 06:17:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea59eddf613d2fefb3ff3b024e3bd22ecf85d6e72a498dc1424d9d41c158106f`  
		Last Modified: Tue, 16 Oct 2018 06:17:42 GMT  
		Size: 5.5 MB (5517372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa28f539f1268cdcf7738fbd5535efbba520eb3dd0e98ece9dbcc11f0b35584`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 4.7 KB (4672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d06caf5359775b82876716294aa7835ee6eec5b2e3ace104ba23b5f8855a71`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749db071ef276b2cf646d1cfbb8fc65e364b92d76f44ebc5b230513012e32720`  
		Last Modified: Tue, 16 Oct 2018 06:21:22 GMT  
		Size: 47.4 MB (47352615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f390e2fac080a7292bd25a1940baa8baf8daa4e03672422003432e80af37684`  
		Last Modified: Tue, 16 Oct 2018 06:20:50 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7860b44c3bdd06bf4bd37eae215926f46fd5b4d85d6fb22213b0899fd1b6d14d`  
		Last Modified: Tue, 16 Oct 2018 06:20:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5-stretch`

```console
$ docker pull percona@sha256:08e8326c120a2ccee062feb99f10f55d9c388ecf1744c23caf0356a233ad6ae3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.5-stretch` - linux; amd64

```console
$ docker pull percona@sha256:c9a63e58cb8cdb4bc161360351909a3068204f5f689b87f02534f924181c67a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.7 MB (105707569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3e16513f52a354deff7146771d6f6011920187154b0bbe844400780309be324`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:14:34 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 16 Oct 2018 06:14:44 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:14:44 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 06:14:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 06:14:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 06:15:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:15:06 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 16 Oct 2018 06:15:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 06:15:10 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Tue, 16 Oct 2018 06:16:42 GMT
ENV PERCONA_MAJOR=5.5
# Tue, 16 Oct 2018 06:16:42 GMT
ENV PERCONA_VERSION=5.5.61-rel38.13-1.stretch
# Tue, 16 Oct 2018 06:17:19 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 16 Oct 2018 06:17:19 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 16 Oct 2018 06:17:19 GMT
COPY file:d6824321bf3f44873b9731ce58d10ae4abddf0c74dc670fcaa6c410718b55963 in /usr/local/bin/ 
# Tue, 16 Oct 2018 06:17:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 16 Oct 2018 06:17:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 06:17:20 GMT
EXPOSE 3306/tcp
# Tue, 16 Oct 2018 06:17:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e095e593e2716e10386d8fa588c5bce98f5079c000ed2e22b4911c6d9e86ec2`  
		Last Modified: Tue, 16 Oct 2018 06:17:42 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175daef9231aee6d1ef189b8b8470ab99d090a0707a4d2350e724e5e36961537`  
		Last Modified: Tue, 16 Oct 2018 06:17:44 GMT  
		Size: 6.6 MB (6561904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e9f705a507a92dfec124eaa2e07c03b7958d4ed3393f724710a2bd1b848691`  
		Last Modified: Tue, 16 Oct 2018 06:17:41 GMT  
		Size: 956.4 KB (956418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c039e6f678b8dcd83be730469b91e1d9dffdee540123c2322b015b1a4c849cb`  
		Last Modified: Tue, 16 Oct 2018 06:17:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea59eddf613d2fefb3ff3b024e3bd22ecf85d6e72a498dc1424d9d41c158106f`  
		Last Modified: Tue, 16 Oct 2018 06:17:42 GMT  
		Size: 5.5 MB (5517372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa28f539f1268cdcf7738fbd5535efbba520eb3dd0e98ece9dbcc11f0b35584`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 4.7 KB (4672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d06caf5359775b82876716294aa7835ee6eec5b2e3ace104ba23b5f8855a71`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749db071ef276b2cf646d1cfbb8fc65e364b92d76f44ebc5b230513012e32720`  
		Last Modified: Tue, 16 Oct 2018 06:21:22 GMT  
		Size: 47.4 MB (47352615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f390e2fac080a7292bd25a1940baa8baf8daa4e03672422003432e80af37684`  
		Last Modified: Tue, 16 Oct 2018 06:20:50 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7860b44c3bdd06bf4bd37eae215926f46fd5b4d85d6fb22213b0899fd1b6d14d`  
		Last Modified: Tue, 16 Oct 2018 06:20:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6`

```console
$ docker pull percona@sha256:0bf371fb175138a152935ed247ca2ba3c7cb65c51633db485291f13085a12d40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6` - linux; amd64

```console
$ docker pull percona@sha256:3a798646ed52707d4a325e645081500253650456d554965c13e8e6a7b499c99d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.9 MB (113926487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d2c4f3bf3e9d5e5fe5676666835731f6fd676d862dbe5fcc028c3eb06bfbf62`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:14:34 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 16 Oct 2018 06:14:44 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:14:44 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 06:14:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 06:14:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 06:15:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:15:06 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 16 Oct 2018 06:15:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 06:15:10 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Tue, 16 Oct 2018 06:15:56 GMT
ENV PERCONA_MAJOR=5.6
# Tue, 16 Oct 2018 06:15:57 GMT
ENV PERCONA_VERSION=5.6.41-84.1-1.stretch
# Tue, 16 Oct 2018 06:16:29 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 16 Oct 2018 06:16:30 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 16 Oct 2018 06:16:30 GMT
COPY file:d6824321bf3f44873b9731ce58d10ae4abddf0c74dc670fcaa6c410718b55963 in /usr/local/bin/ 
# Tue, 16 Oct 2018 06:16:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 16 Oct 2018 06:16:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 06:16:32 GMT
EXPOSE 3306/tcp
# Tue, 16 Oct 2018 06:16:32 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e095e593e2716e10386d8fa588c5bce98f5079c000ed2e22b4911c6d9e86ec2`  
		Last Modified: Tue, 16 Oct 2018 06:17:42 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175daef9231aee6d1ef189b8b8470ab99d090a0707a4d2350e724e5e36961537`  
		Last Modified: Tue, 16 Oct 2018 06:17:44 GMT  
		Size: 6.6 MB (6561904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e9f705a507a92dfec124eaa2e07c03b7958d4ed3393f724710a2bd1b848691`  
		Last Modified: Tue, 16 Oct 2018 06:17:41 GMT  
		Size: 956.4 KB (956418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c039e6f678b8dcd83be730469b91e1d9dffdee540123c2322b015b1a4c849cb`  
		Last Modified: Tue, 16 Oct 2018 06:17:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea59eddf613d2fefb3ff3b024e3bd22ecf85d6e72a498dc1424d9d41c158106f`  
		Last Modified: Tue, 16 Oct 2018 06:17:42 GMT  
		Size: 5.5 MB (5517372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa28f539f1268cdcf7738fbd5535efbba520eb3dd0e98ece9dbcc11f0b35584`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 4.7 KB (4672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d06caf5359775b82876716294aa7835ee6eec5b2e3ace104ba23b5f8855a71`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:037078efdbfc9314cd53928cf1b47cfa74c9359142d9ca3aec301c6e06eea485`  
		Last Modified: Tue, 16 Oct 2018 06:19:55 GMT  
		Size: 55.6 MB (55571535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ebe0e23c081514083578c2ac45ff000a85ca82349ed265a420db6f88ec2e95`  
		Last Modified: Tue, 16 Oct 2018 06:19:39 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b73c88c0365cefe5071749eafbc1103a48d4c9d6f3c2773234d8d17b814aa1`  
		Last Modified: Tue, 16 Oct 2018 06:19:39 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.41`

```console
$ docker pull percona@sha256:0bf371fb175138a152935ed247ca2ba3c7cb65c51633db485291f13085a12d40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6.41` - linux; amd64

```console
$ docker pull percona@sha256:3a798646ed52707d4a325e645081500253650456d554965c13e8e6a7b499c99d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.9 MB (113926487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d2c4f3bf3e9d5e5fe5676666835731f6fd676d862dbe5fcc028c3eb06bfbf62`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:14:34 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 16 Oct 2018 06:14:44 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:14:44 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 06:14:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 06:14:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 06:15:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:15:06 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 16 Oct 2018 06:15:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 06:15:10 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Tue, 16 Oct 2018 06:15:56 GMT
ENV PERCONA_MAJOR=5.6
# Tue, 16 Oct 2018 06:15:57 GMT
ENV PERCONA_VERSION=5.6.41-84.1-1.stretch
# Tue, 16 Oct 2018 06:16:29 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 16 Oct 2018 06:16:30 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 16 Oct 2018 06:16:30 GMT
COPY file:d6824321bf3f44873b9731ce58d10ae4abddf0c74dc670fcaa6c410718b55963 in /usr/local/bin/ 
# Tue, 16 Oct 2018 06:16:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 16 Oct 2018 06:16:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 06:16:32 GMT
EXPOSE 3306/tcp
# Tue, 16 Oct 2018 06:16:32 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e095e593e2716e10386d8fa588c5bce98f5079c000ed2e22b4911c6d9e86ec2`  
		Last Modified: Tue, 16 Oct 2018 06:17:42 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175daef9231aee6d1ef189b8b8470ab99d090a0707a4d2350e724e5e36961537`  
		Last Modified: Tue, 16 Oct 2018 06:17:44 GMT  
		Size: 6.6 MB (6561904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e9f705a507a92dfec124eaa2e07c03b7958d4ed3393f724710a2bd1b848691`  
		Last Modified: Tue, 16 Oct 2018 06:17:41 GMT  
		Size: 956.4 KB (956418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c039e6f678b8dcd83be730469b91e1d9dffdee540123c2322b015b1a4c849cb`  
		Last Modified: Tue, 16 Oct 2018 06:17:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea59eddf613d2fefb3ff3b024e3bd22ecf85d6e72a498dc1424d9d41c158106f`  
		Last Modified: Tue, 16 Oct 2018 06:17:42 GMT  
		Size: 5.5 MB (5517372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa28f539f1268cdcf7738fbd5535efbba520eb3dd0e98ece9dbcc11f0b35584`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 4.7 KB (4672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d06caf5359775b82876716294aa7835ee6eec5b2e3ace104ba23b5f8855a71`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:037078efdbfc9314cd53928cf1b47cfa74c9359142d9ca3aec301c6e06eea485`  
		Last Modified: Tue, 16 Oct 2018 06:19:55 GMT  
		Size: 55.6 MB (55571535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ebe0e23c081514083578c2ac45ff000a85ca82349ed265a420db6f88ec2e95`  
		Last Modified: Tue, 16 Oct 2018 06:19:39 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b73c88c0365cefe5071749eafbc1103a48d4c9d6f3c2773234d8d17b814aa1`  
		Last Modified: Tue, 16 Oct 2018 06:19:39 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.41-stretch`

```console
$ docker pull percona@sha256:0bf371fb175138a152935ed247ca2ba3c7cb65c51633db485291f13085a12d40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6.41-stretch` - linux; amd64

```console
$ docker pull percona@sha256:3a798646ed52707d4a325e645081500253650456d554965c13e8e6a7b499c99d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.9 MB (113926487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d2c4f3bf3e9d5e5fe5676666835731f6fd676d862dbe5fcc028c3eb06bfbf62`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:14:34 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 16 Oct 2018 06:14:44 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:14:44 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 06:14:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 06:14:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 06:15:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:15:06 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 16 Oct 2018 06:15:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 06:15:10 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Tue, 16 Oct 2018 06:15:56 GMT
ENV PERCONA_MAJOR=5.6
# Tue, 16 Oct 2018 06:15:57 GMT
ENV PERCONA_VERSION=5.6.41-84.1-1.stretch
# Tue, 16 Oct 2018 06:16:29 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 16 Oct 2018 06:16:30 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 16 Oct 2018 06:16:30 GMT
COPY file:d6824321bf3f44873b9731ce58d10ae4abddf0c74dc670fcaa6c410718b55963 in /usr/local/bin/ 
# Tue, 16 Oct 2018 06:16:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 16 Oct 2018 06:16:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 06:16:32 GMT
EXPOSE 3306/tcp
# Tue, 16 Oct 2018 06:16:32 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e095e593e2716e10386d8fa588c5bce98f5079c000ed2e22b4911c6d9e86ec2`  
		Last Modified: Tue, 16 Oct 2018 06:17:42 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175daef9231aee6d1ef189b8b8470ab99d090a0707a4d2350e724e5e36961537`  
		Last Modified: Tue, 16 Oct 2018 06:17:44 GMT  
		Size: 6.6 MB (6561904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e9f705a507a92dfec124eaa2e07c03b7958d4ed3393f724710a2bd1b848691`  
		Last Modified: Tue, 16 Oct 2018 06:17:41 GMT  
		Size: 956.4 KB (956418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c039e6f678b8dcd83be730469b91e1d9dffdee540123c2322b015b1a4c849cb`  
		Last Modified: Tue, 16 Oct 2018 06:17:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea59eddf613d2fefb3ff3b024e3bd22ecf85d6e72a498dc1424d9d41c158106f`  
		Last Modified: Tue, 16 Oct 2018 06:17:42 GMT  
		Size: 5.5 MB (5517372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa28f539f1268cdcf7738fbd5535efbba520eb3dd0e98ece9dbcc11f0b35584`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 4.7 KB (4672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d06caf5359775b82876716294aa7835ee6eec5b2e3ace104ba23b5f8855a71`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:037078efdbfc9314cd53928cf1b47cfa74c9359142d9ca3aec301c6e06eea485`  
		Last Modified: Tue, 16 Oct 2018 06:19:55 GMT  
		Size: 55.6 MB (55571535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ebe0e23c081514083578c2ac45ff000a85ca82349ed265a420db6f88ec2e95`  
		Last Modified: Tue, 16 Oct 2018 06:19:39 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b73c88c0365cefe5071749eafbc1103a48d4c9d6f3c2773234d8d17b814aa1`  
		Last Modified: Tue, 16 Oct 2018 06:19:39 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6-stretch`

```console
$ docker pull percona@sha256:0bf371fb175138a152935ed247ca2ba3c7cb65c51633db485291f13085a12d40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6-stretch` - linux; amd64

```console
$ docker pull percona@sha256:3a798646ed52707d4a325e645081500253650456d554965c13e8e6a7b499c99d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.9 MB (113926487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d2c4f3bf3e9d5e5fe5676666835731f6fd676d862dbe5fcc028c3eb06bfbf62`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:14:34 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 16 Oct 2018 06:14:44 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:14:44 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 06:14:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 06:14:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 06:15:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:15:06 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 16 Oct 2018 06:15:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 06:15:10 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Tue, 16 Oct 2018 06:15:56 GMT
ENV PERCONA_MAJOR=5.6
# Tue, 16 Oct 2018 06:15:57 GMT
ENV PERCONA_VERSION=5.6.41-84.1-1.stretch
# Tue, 16 Oct 2018 06:16:29 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 16 Oct 2018 06:16:30 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 16 Oct 2018 06:16:30 GMT
COPY file:d6824321bf3f44873b9731ce58d10ae4abddf0c74dc670fcaa6c410718b55963 in /usr/local/bin/ 
# Tue, 16 Oct 2018 06:16:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 16 Oct 2018 06:16:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 06:16:32 GMT
EXPOSE 3306/tcp
# Tue, 16 Oct 2018 06:16:32 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e095e593e2716e10386d8fa588c5bce98f5079c000ed2e22b4911c6d9e86ec2`  
		Last Modified: Tue, 16 Oct 2018 06:17:42 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175daef9231aee6d1ef189b8b8470ab99d090a0707a4d2350e724e5e36961537`  
		Last Modified: Tue, 16 Oct 2018 06:17:44 GMT  
		Size: 6.6 MB (6561904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e9f705a507a92dfec124eaa2e07c03b7958d4ed3393f724710a2bd1b848691`  
		Last Modified: Tue, 16 Oct 2018 06:17:41 GMT  
		Size: 956.4 KB (956418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c039e6f678b8dcd83be730469b91e1d9dffdee540123c2322b015b1a4c849cb`  
		Last Modified: Tue, 16 Oct 2018 06:17:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea59eddf613d2fefb3ff3b024e3bd22ecf85d6e72a498dc1424d9d41c158106f`  
		Last Modified: Tue, 16 Oct 2018 06:17:42 GMT  
		Size: 5.5 MB (5517372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa28f539f1268cdcf7738fbd5535efbba520eb3dd0e98ece9dbcc11f0b35584`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 4.7 KB (4672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d06caf5359775b82876716294aa7835ee6eec5b2e3ace104ba23b5f8855a71`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:037078efdbfc9314cd53928cf1b47cfa74c9359142d9ca3aec301c6e06eea485`  
		Last Modified: Tue, 16 Oct 2018 06:19:55 GMT  
		Size: 55.6 MB (55571535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ebe0e23c081514083578c2ac45ff000a85ca82349ed265a420db6f88ec2e95`  
		Last Modified: Tue, 16 Oct 2018 06:19:39 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b73c88c0365cefe5071749eafbc1103a48d4c9d6f3c2773234d8d17b814aa1`  
		Last Modified: Tue, 16 Oct 2018 06:19:39 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7`

```console
$ docker pull percona@sha256:bd191ffdd8891bdaf61deb9accac76daacb4c3729c1188d94848db3b02f2a6a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7` - linux; amd64

```console
$ docker pull percona@sha256:f7b1fd6db4f6bbf21d75cbf2099082edbe233b89e54542d5256241ff44b49d2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.1 MB (146068608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1344d5e50c9ffd9c3e5ce20d0d4ebb3d64be6c3e674f615b182b56e0bbc95366`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:14:34 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 16 Oct 2018 06:14:44 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:14:44 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 06:14:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 06:14:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 06:15:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:15:06 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 16 Oct 2018 06:15:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 06:15:10 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Tue, 16 Oct 2018 06:15:10 GMT
ENV PERCONA_MAJOR=5.7
# Tue, 16 Oct 2018 06:15:10 GMT
ENV PERCONA_VERSION=5.7.23-23-1.stretch
# Tue, 16 Oct 2018 06:15:36 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 16 Oct 2018 06:15:37 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 16 Oct 2018 06:15:38 GMT
COPY file:5ddddac029091d7992b7abda3872f8bba6cb13d58fa16a64d281066400851f77 in /usr/local/bin/ 
# Tue, 16 Oct 2018 06:15:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 16 Oct 2018 06:15:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 06:15:40 GMT
EXPOSE 3306/tcp
# Tue, 16 Oct 2018 06:15:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e095e593e2716e10386d8fa588c5bce98f5079c000ed2e22b4911c6d9e86ec2`  
		Last Modified: Tue, 16 Oct 2018 06:17:42 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175daef9231aee6d1ef189b8b8470ab99d090a0707a4d2350e724e5e36961537`  
		Last Modified: Tue, 16 Oct 2018 06:17:44 GMT  
		Size: 6.6 MB (6561904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e9f705a507a92dfec124eaa2e07c03b7958d4ed3393f724710a2bd1b848691`  
		Last Modified: Tue, 16 Oct 2018 06:17:41 GMT  
		Size: 956.4 KB (956418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c039e6f678b8dcd83be730469b91e1d9dffdee540123c2322b015b1a4c849cb`  
		Last Modified: Tue, 16 Oct 2018 06:17:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea59eddf613d2fefb3ff3b024e3bd22ecf85d6e72a498dc1424d9d41c158106f`  
		Last Modified: Tue, 16 Oct 2018 06:17:42 GMT  
		Size: 5.5 MB (5517372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa28f539f1268cdcf7738fbd5535efbba520eb3dd0e98ece9dbcc11f0b35584`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 4.7 KB (4672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d06caf5359775b82876716294aa7835ee6eec5b2e3ace104ba23b5f8855a71`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986d3b3b6401b70d77d460aa95a21e9207b5044b74690b28541a7cd585afc52f`  
		Last Modified: Tue, 16 Oct 2018 06:18:02 GMT  
		Size: 87.7 MB (87713651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d6db05ed7b908f7a1fd6849aa7c9dd5fb441c19d434968577f32d1f9b545da`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a667de5f0e79f2576c4abf96085dd5f87d7fd509df4da5e7e38f29149faeb7d4`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7.23`

```console
$ docker pull percona@sha256:bd191ffdd8891bdaf61deb9accac76daacb4c3729c1188d94848db3b02f2a6a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7.23` - linux; amd64

```console
$ docker pull percona@sha256:f7b1fd6db4f6bbf21d75cbf2099082edbe233b89e54542d5256241ff44b49d2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.1 MB (146068608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1344d5e50c9ffd9c3e5ce20d0d4ebb3d64be6c3e674f615b182b56e0bbc95366`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:14:34 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 16 Oct 2018 06:14:44 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:14:44 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 06:14:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 06:14:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 06:15:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:15:06 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 16 Oct 2018 06:15:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 06:15:10 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Tue, 16 Oct 2018 06:15:10 GMT
ENV PERCONA_MAJOR=5.7
# Tue, 16 Oct 2018 06:15:10 GMT
ENV PERCONA_VERSION=5.7.23-23-1.stretch
# Tue, 16 Oct 2018 06:15:36 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 16 Oct 2018 06:15:37 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 16 Oct 2018 06:15:38 GMT
COPY file:5ddddac029091d7992b7abda3872f8bba6cb13d58fa16a64d281066400851f77 in /usr/local/bin/ 
# Tue, 16 Oct 2018 06:15:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 16 Oct 2018 06:15:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 06:15:40 GMT
EXPOSE 3306/tcp
# Tue, 16 Oct 2018 06:15:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e095e593e2716e10386d8fa588c5bce98f5079c000ed2e22b4911c6d9e86ec2`  
		Last Modified: Tue, 16 Oct 2018 06:17:42 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175daef9231aee6d1ef189b8b8470ab99d090a0707a4d2350e724e5e36961537`  
		Last Modified: Tue, 16 Oct 2018 06:17:44 GMT  
		Size: 6.6 MB (6561904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e9f705a507a92dfec124eaa2e07c03b7958d4ed3393f724710a2bd1b848691`  
		Last Modified: Tue, 16 Oct 2018 06:17:41 GMT  
		Size: 956.4 KB (956418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c039e6f678b8dcd83be730469b91e1d9dffdee540123c2322b015b1a4c849cb`  
		Last Modified: Tue, 16 Oct 2018 06:17:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea59eddf613d2fefb3ff3b024e3bd22ecf85d6e72a498dc1424d9d41c158106f`  
		Last Modified: Tue, 16 Oct 2018 06:17:42 GMT  
		Size: 5.5 MB (5517372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa28f539f1268cdcf7738fbd5535efbba520eb3dd0e98ece9dbcc11f0b35584`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 4.7 KB (4672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d06caf5359775b82876716294aa7835ee6eec5b2e3ace104ba23b5f8855a71`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986d3b3b6401b70d77d460aa95a21e9207b5044b74690b28541a7cd585afc52f`  
		Last Modified: Tue, 16 Oct 2018 06:18:02 GMT  
		Size: 87.7 MB (87713651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d6db05ed7b908f7a1fd6849aa7c9dd5fb441c19d434968577f32d1f9b545da`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a667de5f0e79f2576c4abf96085dd5f87d7fd509df4da5e7e38f29149faeb7d4`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7.23-stretch`

```console
$ docker pull percona@sha256:bd191ffdd8891bdaf61deb9accac76daacb4c3729c1188d94848db3b02f2a6a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7.23-stretch` - linux; amd64

```console
$ docker pull percona@sha256:f7b1fd6db4f6bbf21d75cbf2099082edbe233b89e54542d5256241ff44b49d2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.1 MB (146068608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1344d5e50c9ffd9c3e5ce20d0d4ebb3d64be6c3e674f615b182b56e0bbc95366`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:14:34 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 16 Oct 2018 06:14:44 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:14:44 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 06:14:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 06:14:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 06:15:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:15:06 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 16 Oct 2018 06:15:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 06:15:10 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Tue, 16 Oct 2018 06:15:10 GMT
ENV PERCONA_MAJOR=5.7
# Tue, 16 Oct 2018 06:15:10 GMT
ENV PERCONA_VERSION=5.7.23-23-1.stretch
# Tue, 16 Oct 2018 06:15:36 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 16 Oct 2018 06:15:37 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 16 Oct 2018 06:15:38 GMT
COPY file:5ddddac029091d7992b7abda3872f8bba6cb13d58fa16a64d281066400851f77 in /usr/local/bin/ 
# Tue, 16 Oct 2018 06:15:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 16 Oct 2018 06:15:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 06:15:40 GMT
EXPOSE 3306/tcp
# Tue, 16 Oct 2018 06:15:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e095e593e2716e10386d8fa588c5bce98f5079c000ed2e22b4911c6d9e86ec2`  
		Last Modified: Tue, 16 Oct 2018 06:17:42 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175daef9231aee6d1ef189b8b8470ab99d090a0707a4d2350e724e5e36961537`  
		Last Modified: Tue, 16 Oct 2018 06:17:44 GMT  
		Size: 6.6 MB (6561904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e9f705a507a92dfec124eaa2e07c03b7958d4ed3393f724710a2bd1b848691`  
		Last Modified: Tue, 16 Oct 2018 06:17:41 GMT  
		Size: 956.4 KB (956418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c039e6f678b8dcd83be730469b91e1d9dffdee540123c2322b015b1a4c849cb`  
		Last Modified: Tue, 16 Oct 2018 06:17:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea59eddf613d2fefb3ff3b024e3bd22ecf85d6e72a498dc1424d9d41c158106f`  
		Last Modified: Tue, 16 Oct 2018 06:17:42 GMT  
		Size: 5.5 MB (5517372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa28f539f1268cdcf7738fbd5535efbba520eb3dd0e98ece9dbcc11f0b35584`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 4.7 KB (4672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d06caf5359775b82876716294aa7835ee6eec5b2e3ace104ba23b5f8855a71`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986d3b3b6401b70d77d460aa95a21e9207b5044b74690b28541a7cd585afc52f`  
		Last Modified: Tue, 16 Oct 2018 06:18:02 GMT  
		Size: 87.7 MB (87713651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d6db05ed7b908f7a1fd6849aa7c9dd5fb441c19d434968577f32d1f9b545da`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a667de5f0e79f2576c4abf96085dd5f87d7fd509df4da5e7e38f29149faeb7d4`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7-stretch`

```console
$ docker pull percona@sha256:bd191ffdd8891bdaf61deb9accac76daacb4c3729c1188d94848db3b02f2a6a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7-stretch` - linux; amd64

```console
$ docker pull percona@sha256:f7b1fd6db4f6bbf21d75cbf2099082edbe233b89e54542d5256241ff44b49d2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.1 MB (146068608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1344d5e50c9ffd9c3e5ce20d0d4ebb3d64be6c3e674f615b182b56e0bbc95366`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:14:34 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 16 Oct 2018 06:14:44 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:14:44 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 06:14:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 06:14:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 06:15:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:15:06 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 16 Oct 2018 06:15:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 06:15:10 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Tue, 16 Oct 2018 06:15:10 GMT
ENV PERCONA_MAJOR=5.7
# Tue, 16 Oct 2018 06:15:10 GMT
ENV PERCONA_VERSION=5.7.23-23-1.stretch
# Tue, 16 Oct 2018 06:15:36 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 16 Oct 2018 06:15:37 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 16 Oct 2018 06:15:38 GMT
COPY file:5ddddac029091d7992b7abda3872f8bba6cb13d58fa16a64d281066400851f77 in /usr/local/bin/ 
# Tue, 16 Oct 2018 06:15:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 16 Oct 2018 06:15:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 06:15:40 GMT
EXPOSE 3306/tcp
# Tue, 16 Oct 2018 06:15:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e095e593e2716e10386d8fa588c5bce98f5079c000ed2e22b4911c6d9e86ec2`  
		Last Modified: Tue, 16 Oct 2018 06:17:42 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175daef9231aee6d1ef189b8b8470ab99d090a0707a4d2350e724e5e36961537`  
		Last Modified: Tue, 16 Oct 2018 06:17:44 GMT  
		Size: 6.6 MB (6561904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e9f705a507a92dfec124eaa2e07c03b7958d4ed3393f724710a2bd1b848691`  
		Last Modified: Tue, 16 Oct 2018 06:17:41 GMT  
		Size: 956.4 KB (956418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c039e6f678b8dcd83be730469b91e1d9dffdee540123c2322b015b1a4c849cb`  
		Last Modified: Tue, 16 Oct 2018 06:17:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea59eddf613d2fefb3ff3b024e3bd22ecf85d6e72a498dc1424d9d41c158106f`  
		Last Modified: Tue, 16 Oct 2018 06:17:42 GMT  
		Size: 5.5 MB (5517372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa28f539f1268cdcf7738fbd5535efbba520eb3dd0e98ece9dbcc11f0b35584`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 4.7 KB (4672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d06caf5359775b82876716294aa7835ee6eec5b2e3ace104ba23b5f8855a71`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986d3b3b6401b70d77d460aa95a21e9207b5044b74690b28541a7cd585afc52f`  
		Last Modified: Tue, 16 Oct 2018 06:18:02 GMT  
		Size: 87.7 MB (87713651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d6db05ed7b908f7a1fd6849aa7c9dd5fb441c19d434968577f32d1f9b545da`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a667de5f0e79f2576c4abf96085dd5f87d7fd509df4da5e7e38f29149faeb7d4`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5-stretch`

```console
$ docker pull percona@sha256:bd191ffdd8891bdaf61deb9accac76daacb4c3729c1188d94848db3b02f2a6a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5-stretch` - linux; amd64

```console
$ docker pull percona@sha256:f7b1fd6db4f6bbf21d75cbf2099082edbe233b89e54542d5256241ff44b49d2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.1 MB (146068608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1344d5e50c9ffd9c3e5ce20d0d4ebb3d64be6c3e674f615b182b56e0bbc95366`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:14:34 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 16 Oct 2018 06:14:44 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:14:44 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 06:14:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 06:14:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 06:15:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:15:06 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 16 Oct 2018 06:15:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 06:15:10 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Tue, 16 Oct 2018 06:15:10 GMT
ENV PERCONA_MAJOR=5.7
# Tue, 16 Oct 2018 06:15:10 GMT
ENV PERCONA_VERSION=5.7.23-23-1.stretch
# Tue, 16 Oct 2018 06:15:36 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 16 Oct 2018 06:15:37 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 16 Oct 2018 06:15:38 GMT
COPY file:5ddddac029091d7992b7abda3872f8bba6cb13d58fa16a64d281066400851f77 in /usr/local/bin/ 
# Tue, 16 Oct 2018 06:15:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 16 Oct 2018 06:15:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 06:15:40 GMT
EXPOSE 3306/tcp
# Tue, 16 Oct 2018 06:15:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e095e593e2716e10386d8fa588c5bce98f5079c000ed2e22b4911c6d9e86ec2`  
		Last Modified: Tue, 16 Oct 2018 06:17:42 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175daef9231aee6d1ef189b8b8470ab99d090a0707a4d2350e724e5e36961537`  
		Last Modified: Tue, 16 Oct 2018 06:17:44 GMT  
		Size: 6.6 MB (6561904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e9f705a507a92dfec124eaa2e07c03b7958d4ed3393f724710a2bd1b848691`  
		Last Modified: Tue, 16 Oct 2018 06:17:41 GMT  
		Size: 956.4 KB (956418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c039e6f678b8dcd83be730469b91e1d9dffdee540123c2322b015b1a4c849cb`  
		Last Modified: Tue, 16 Oct 2018 06:17:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea59eddf613d2fefb3ff3b024e3bd22ecf85d6e72a498dc1424d9d41c158106f`  
		Last Modified: Tue, 16 Oct 2018 06:17:42 GMT  
		Size: 5.5 MB (5517372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa28f539f1268cdcf7738fbd5535efbba520eb3dd0e98ece9dbcc11f0b35584`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 4.7 KB (4672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d06caf5359775b82876716294aa7835ee6eec5b2e3ace104ba23b5f8855a71`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986d3b3b6401b70d77d460aa95a21e9207b5044b74690b28541a7cd585afc52f`  
		Last Modified: Tue, 16 Oct 2018 06:18:02 GMT  
		Size: 87.7 MB (87713651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d6db05ed7b908f7a1fd6849aa7c9dd5fb441c19d434968577f32d1f9b545da`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a667de5f0e79f2576c4abf96085dd5f87d7fd509df4da5e7e38f29149faeb7d4`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:latest`

```console
$ docker pull percona@sha256:bd191ffdd8891bdaf61deb9accac76daacb4c3729c1188d94848db3b02f2a6a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:latest` - linux; amd64

```console
$ docker pull percona@sha256:f7b1fd6db4f6bbf21d75cbf2099082edbe233b89e54542d5256241ff44b49d2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.1 MB (146068608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1344d5e50c9ffd9c3e5ce20d0d4ebb3d64be6c3e674f615b182b56e0bbc95366`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:14:34 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 16 Oct 2018 06:14:44 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:14:44 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 06:14:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 06:14:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 06:15:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:15:06 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 16 Oct 2018 06:15:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 06:15:10 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Tue, 16 Oct 2018 06:15:10 GMT
ENV PERCONA_MAJOR=5.7
# Tue, 16 Oct 2018 06:15:10 GMT
ENV PERCONA_VERSION=5.7.23-23-1.stretch
# Tue, 16 Oct 2018 06:15:36 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 16 Oct 2018 06:15:37 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 16 Oct 2018 06:15:38 GMT
COPY file:5ddddac029091d7992b7abda3872f8bba6cb13d58fa16a64d281066400851f77 in /usr/local/bin/ 
# Tue, 16 Oct 2018 06:15:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 16 Oct 2018 06:15:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 06:15:40 GMT
EXPOSE 3306/tcp
# Tue, 16 Oct 2018 06:15:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e095e593e2716e10386d8fa588c5bce98f5079c000ed2e22b4911c6d9e86ec2`  
		Last Modified: Tue, 16 Oct 2018 06:17:42 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175daef9231aee6d1ef189b8b8470ab99d090a0707a4d2350e724e5e36961537`  
		Last Modified: Tue, 16 Oct 2018 06:17:44 GMT  
		Size: 6.6 MB (6561904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e9f705a507a92dfec124eaa2e07c03b7958d4ed3393f724710a2bd1b848691`  
		Last Modified: Tue, 16 Oct 2018 06:17:41 GMT  
		Size: 956.4 KB (956418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c039e6f678b8dcd83be730469b91e1d9dffdee540123c2322b015b1a4c849cb`  
		Last Modified: Tue, 16 Oct 2018 06:17:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea59eddf613d2fefb3ff3b024e3bd22ecf85d6e72a498dc1424d9d41c158106f`  
		Last Modified: Tue, 16 Oct 2018 06:17:42 GMT  
		Size: 5.5 MB (5517372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa28f539f1268cdcf7738fbd5535efbba520eb3dd0e98ece9dbcc11f0b35584`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 4.7 KB (4672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d06caf5359775b82876716294aa7835ee6eec5b2e3ace104ba23b5f8855a71`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986d3b3b6401b70d77d460aa95a21e9207b5044b74690b28541a7cd585afc52f`  
		Last Modified: Tue, 16 Oct 2018 06:18:02 GMT  
		Size: 87.7 MB (87713651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d6db05ed7b908f7a1fd6849aa7c9dd5fb441c19d434968577f32d1f9b545da`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a667de5f0e79f2576c4abf96085dd5f87d7fd509df4da5e7e38f29149faeb7d4`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:stretch`

```console
$ docker pull percona@sha256:bd191ffdd8891bdaf61deb9accac76daacb4c3729c1188d94848db3b02f2a6a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:stretch` - linux; amd64

```console
$ docker pull percona@sha256:f7b1fd6db4f6bbf21d75cbf2099082edbe233b89e54542d5256241ff44b49d2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.1 MB (146068608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1344d5e50c9ffd9c3e5ce20d0d4ebb3d64be6c3e674f615b182b56e0bbc95366`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:14:34 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 16 Oct 2018 06:14:44 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:14:44 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 06:14:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 06:14:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 06:15:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:15:06 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 16 Oct 2018 06:15:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 06:15:10 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Tue, 16 Oct 2018 06:15:10 GMT
ENV PERCONA_MAJOR=5.7
# Tue, 16 Oct 2018 06:15:10 GMT
ENV PERCONA_VERSION=5.7.23-23-1.stretch
# Tue, 16 Oct 2018 06:15:36 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 16 Oct 2018 06:15:37 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 16 Oct 2018 06:15:38 GMT
COPY file:5ddddac029091d7992b7abda3872f8bba6cb13d58fa16a64d281066400851f77 in /usr/local/bin/ 
# Tue, 16 Oct 2018 06:15:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 16 Oct 2018 06:15:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 06:15:40 GMT
EXPOSE 3306/tcp
# Tue, 16 Oct 2018 06:15:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e095e593e2716e10386d8fa588c5bce98f5079c000ed2e22b4911c6d9e86ec2`  
		Last Modified: Tue, 16 Oct 2018 06:17:42 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175daef9231aee6d1ef189b8b8470ab99d090a0707a4d2350e724e5e36961537`  
		Last Modified: Tue, 16 Oct 2018 06:17:44 GMT  
		Size: 6.6 MB (6561904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e9f705a507a92dfec124eaa2e07c03b7958d4ed3393f724710a2bd1b848691`  
		Last Modified: Tue, 16 Oct 2018 06:17:41 GMT  
		Size: 956.4 KB (956418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c039e6f678b8dcd83be730469b91e1d9dffdee540123c2322b015b1a4c849cb`  
		Last Modified: Tue, 16 Oct 2018 06:17:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea59eddf613d2fefb3ff3b024e3bd22ecf85d6e72a498dc1424d9d41c158106f`  
		Last Modified: Tue, 16 Oct 2018 06:17:42 GMT  
		Size: 5.5 MB (5517372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa28f539f1268cdcf7738fbd5535efbba520eb3dd0e98ece9dbcc11f0b35584`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 4.7 KB (4672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d06caf5359775b82876716294aa7835ee6eec5b2e3ace104ba23b5f8855a71`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986d3b3b6401b70d77d460aa95a21e9207b5044b74690b28541a7cd585afc52f`  
		Last Modified: Tue, 16 Oct 2018 06:18:02 GMT  
		Size: 87.7 MB (87713651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d6db05ed7b908f7a1fd6849aa7c9dd5fb441c19d434968577f32d1f9b545da`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a667de5f0e79f2576c4abf96085dd5f87d7fd509df4da5e7e38f29149faeb7d4`  
		Last Modified: Tue, 16 Oct 2018 06:17:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
