## `percona:5-stretch`

```console
$ docker pull percona@sha256:9846a05c46ec8f696b8fb91c7a55f24d2a76e7555e70909209019f729d868d2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5-stretch` - linux; amd64

```console
$ docker pull percona@sha256:4a48b768009313972530017dc222b42e70d9a766e8e681cba19af4f6087f91cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.1 MB (146068563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ed8bf8721187626a2142eec175aa8dcd69bd172abe20db01ffb87fa1e1074e9`
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
# Tue, 02 Oct 2018 17:59:47 GMT
COPY file:5ddddac029091d7992b7abda3872f8bba6cb13d58fa16a64d281066400851f77 in /usr/local/bin/ 
# Tue, 02 Oct 2018 17:59:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 02 Oct 2018 17:59:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 02 Oct 2018 17:59:48 GMT
EXPOSE 3306/tcp
# Tue, 02 Oct 2018 17:59:49 GMT
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
	-	`sha256:9cf728e6ba3e3a730791ae694fb492b88c3bd850157000023e4275ae89d11dda`  
		Last Modified: Tue, 02 Oct 2018 18:00:28 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:438cf6f57812dbf467d68f178d2542304227906791c26b8039f41e959eead058`  
		Last Modified: Tue, 02 Oct 2018 18:00:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
