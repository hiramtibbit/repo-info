## `percona:latest`

```console
$ docker pull percona@sha256:da5090852414016e5a0d540b4eabedc548ef8b0bca60e54613b9d5b0a662de4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:latest` - linux; amd64

```console
$ docker pull percona@sha256:2ccc0883c0aa983af815d5675c25f230aee4ad3b60cc925c4565ef4d21c2c5c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.2 MB (143183990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94a2cf0efaba5abc41bdf1435849055985dc84fca6c18aedb65ad637902e2ec5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 18:35:02 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 06 Jun 2018 18:35:02 GMT
ENV GOSU_VERSION=1.7
# Wed, 06 Jun 2018 18:35:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Jun 2018 18:36:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Jun 2018 18:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:36:43 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 06 Jun 2018 18:36:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 06 Jun 2018 18:36:53 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Wed, 06 Jun 2018 18:36:53 GMT
ENV PERCONA_MAJOR=5.7
# Wed, 06 Jun 2018 18:36:53 GMT
ENV PERCONA_VERSION=5.7.22-22-1.jessie
# Wed, 06 Jun 2018 18:38:41 GMT
RUN { 		for key in 			percona-server-server/root_password 			percona-server-server/root_password_again 			"percona-server-server-$PERCONA_MAJOR/root-pass" 			"percona-server-server-$PERCONA_MAJOR/re-root-pass" 		; do 			echo "percona-server-server-$PERCONA_MAJOR" "$key" password 'unused'; 		done; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 06 Jun 2018 18:38:42 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 06 Jun 2018 18:38:42 GMT
COPY file:ff55c7472da1028b4f65163094878d7e111bf055794e1db6f6adbc876a67481b in /usr/local/bin/ 
# Wed, 06 Jun 2018 18:38:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 06 Jun 2018 18:38:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Jun 2018 18:38:43 GMT
EXPOSE 3306/tcp
# Wed, 06 Jun 2018 18:38:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79b1d6f55d834d4cc91cd78e5871d28314aa9ec9f422f3bf6dfc0cbde930d13`  
		Last Modified: Wed, 06 Jun 2018 18:42:38 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0ba166e699ffeee0a4312dedcdc918965226d02f092c1064caff46c1704331`  
		Last Modified: Wed, 06 Jun 2018 18:42:39 GMT  
		Size: 1.3 MB (1306699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad2850e6f91bc294dfe67381c4ccd63c6c51e324bbc9b7b59c1657c10a75647`  
		Last Modified: Wed, 06 Jun 2018 18:42:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc5233fb42a40f1f1701445ec42ec7daada3cd5c0fe570a3fa380e710672256`  
		Last Modified: Wed, 06 Jun 2018 18:42:40 GMT  
		Size: 5.0 MB (5010560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:388c414acb58379064b0b9a90f8c70642db3bda5d2eea2665523d4180c1c7c41`  
		Last Modified: Wed, 06 Jun 2018 18:42:36 GMT  
		Size: 4.7 KB (4678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7896f6b84f562efc0677c559f414d11b23f3f0f02495d98a0b404466de40423`  
		Last Modified: Wed, 06 Jun 2018 18:42:35 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e6079c2b2870b1d813cc7a7015e6129116036df7abc8e3f88c1ba9d9bdc8a0e`  
		Last Modified: Wed, 06 Jun 2018 18:43:04 GMT  
		Size: 82.6 MB (82594496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05ec4b77eba32c1cfd644d68cd10fb3a5a4d682bd062f3b72d37ade8a970e5f`  
		Last Modified: Wed, 06 Jun 2018 18:42:35 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5c6acf969ce194e5a87a59e1681168c3797b1b05d1b4164b5785de8971fe0d`  
		Last Modified: Wed, 06 Jun 2018 18:42:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
