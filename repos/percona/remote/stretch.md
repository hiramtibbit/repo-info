## `percona:stretch`

```console
$ docker pull percona@sha256:c8b69b3c753cb04f1cbf8a4a1f295f51675761ee6368a47808a5205e2d45cfeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:stretch` - linux; amd64

```console
$ docker pull percona@sha256:312da3d6fed91e0e92d388a15f6559b93d67e0ff3f8c4851be4ee34fcf0e456b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.3 MB (146345674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c72fe1539c241e52c0e48a5bc961717f3f944582aef2d6bab200bf3c08082e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 01:27:31 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 16 Nov 2018 01:27:41 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 01:27:41 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 01:27:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 01:27:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 01:28:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 01:28:10 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 01:28:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 01:28:15 GMT
RUN echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list
# Fri, 16 Nov 2018 01:28:15 GMT
ENV PERCONA_MAJOR=5.7
# Fri, 16 Nov 2018 01:28:15 GMT
ENV PERCONA_VERSION=5.7.23-24-1.stretch
# Fri, 16 Nov 2018 01:28:40 GMT
RUN set -ex; 	{ 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 01:28:41 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Fri, 16 Nov 2018 01:28:42 GMT
COPY file:5ddddac029091d7992b7abda3872f8bba6cb13d58fa16a64d281066400851f77 in /usr/local/bin/ 
# Fri, 16 Nov 2018 01:28:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 01:28:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 01:28:44 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 01:28:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:004164b6b92404389de3cb63abee62265bb7d55a278d8226c9509144e222ec6d`  
		Last Modified: Fri, 16 Nov 2018 01:31:37 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94929fd955a2195d86e797b134e74ec1fbfd4bce41e18d29f4d2943dd0be3de6`  
		Last Modified: Fri, 16 Nov 2018 01:31:39 GMT  
		Size: 6.6 MB (6565523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e82542d30795968ff0d115a2872f66694f8136da4a3349cc2c2630f0f39898c3`  
		Last Modified: Fri, 16 Nov 2018 01:31:37 GMT  
		Size: 956.5 KB (956483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515a8779ac53ffb64def4f6cc75eb8e9adcdccdd3a7d68a73133371c8ac3c86a`  
		Last Modified: Fri, 16 Nov 2018 01:31:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6179be048fe609538c5ad637d0c213813b89089918f2fc428ba3bde1ac9a494`  
		Last Modified: Fri, 16 Nov 2018 01:31:36 GMT  
		Size: 5.5 MB (5517529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b305b0411a80c37c62b77446d0f582db88e675721782cff669a15050a6c499`  
		Last Modified: Fri, 16 Nov 2018 01:31:31 GMT  
		Size: 4.7 KB (4670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843d7a2ec1548501410ffd585c71c921efef0b98ee78e307102ab8e273a8ed0e`  
		Last Modified: Fri, 16 Nov 2018 01:31:32 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8273a0f410ed5644ef32daf712226026f3a2fe0e81d6612dae04baf28c2075`  
		Last Modified: Fri, 16 Nov 2018 01:31:56 GMT  
		Size: 88.0 MB (87976556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5ab48cec6cbb5db9125cdce714e8ea33b18cfe89a93abdfd791ab137ec4164`  
		Last Modified: Fri, 16 Nov 2018 01:31:31 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d938301966fcc36ef9e9c062bd61a002f86ee17a522db8111528bab2a7f265b4`  
		Last Modified: Fri, 16 Nov 2018 01:31:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
