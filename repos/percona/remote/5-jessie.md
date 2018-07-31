## `percona:5-jessie`

```console
$ docker pull percona@sha256:b3af730c0aa8bad3c26ac53350764eceb74c3f2ec32df136adc092798334aec7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

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

### `percona:5-jessie` - linux; 386

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
