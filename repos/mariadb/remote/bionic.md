## `mariadb:bionic`

```console
$ docker pull mariadb@sha256:29e6b7cff37f102aea741de2005f5b007031a003223e010c9b78a34f91ec069d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:c5451930cc3ef856ef692819b4871826f5426ad575985995854ff1c3145f0f86
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113581305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1e4084965e5ec0ad678aca1b1d790fec14f831864c1e63a34aaddf43b793232`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 18 Jun 2019 22:51:33 GMT
ADD file:4e6b5d9ca371eb881c581574b8dc4f5391eff2872db364af0f8d9804e4890098 in / 
# Tue, 18 Jun 2019 22:51:35 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:51:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:51:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:51:38 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 02:58:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 19 Jun 2019 02:58:15 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 19 Jun 2019 02:58:15 GMT
ENV GOSU_VERSION=1.10
# Wed, 19 Jun 2019 02:58:24 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 19 Jun 2019 02:58:25 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 19 Jun 2019 02:58:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Jun 2019 02:58:37 GMT
ENV GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Wed, 19 Jun 2019 02:58:38 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 19 Jun 2019 02:58:38 GMT
ENV MARIADB_MAJOR=10.4
# Wed, 19 Jun 2019 20:23:51 GMT
ENV MARIADB_VERSION=1:10.4.6+maria~bionic
# Wed, 19 Jun 2019 20:23:52 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 19 Jun 2019 20:24:36 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		mariadb-backup 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 19 Jun 2019 20:24:36 GMT
VOLUME [/var/lib/mysql]
# Wed, 19 Jun 2019 20:24:36 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 19 Jun 2019 20:24:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 19 Jun 2019 20:24:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Jun 2019 20:24:38 GMT
EXPOSE 3306
# Wed, 19 Jun 2019 20:24:38 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:5b7339215d1d5f8e68622d584a224f60339f5bef41dbd74330d081e912f0cddd`  
		Last Modified: Thu, 13 Jun 2019 00:24:57 GMT  
		Size: 26.7 MB (26684508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ca88e9f6723ce82bc14b241cda8634f6d19677184691d086662641ab96fe68`  
		Last Modified: Tue, 18 Jun 2019 22:53:58 GMT  
		Size: 35.4 KB (35352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31c3b1caad473a474d574283741f880e37c708cc06ee620d3e93fa602125ee0`  
		Last Modified: Tue, 18 Jun 2019 22:53:57 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b054a26005b7f3b032577f811421fab5ec3b42ce45a4012dfa00cf6ed6191b0f`  
		Last Modified: Tue, 18 Jun 2019 22:53:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33ab3607a892b3a8902964868f63382784d70ee824428eec26f73ee0e6a302b0`  
		Last Modified: Wed, 19 Jun 2019 03:03:28 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e609e6ad1312b94bebaa4b3a509fa28c42d86ca146d4f65950d0cf61ae477a`  
		Last Modified: Wed, 19 Jun 2019 03:03:28 GMT  
		Size: 4.8 MB (4804540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae7cb4e985f9b83438bdbbc72ed08105c36afcfa2b9b39fa9f874023cdc7a02`  
		Last Modified: Wed, 19 Jun 2019 03:03:27 GMT  
		Size: 863.8 KB (863839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea55566251212d79cb788566b56866ce5c4a7490645293b8d0c3e365ac61419e`  
		Last Modified: Wed, 19 Jun 2019 03:03:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8642d3bfe3a3137e61be8cee3411d558ea0f1a87d8197228530cdfa3a7389a05`  
		Last Modified: Wed, 19 Jun 2019 03:03:27 GMT  
		Size: 3.2 MB (3201094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2d5ebdb2f999ae7424e630aea40784b654b4d0afba23b62a88c0d182d46e3b`  
		Last Modified: Wed, 19 Jun 2019 03:03:25 GMT  
		Size: 5.0 KB (5029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:001998a680e7a156c57348ea6aa8279de7bde30db23d03352e3e3cca1f0cca8b`  
		Last Modified: Wed, 19 Jun 2019 20:24:59 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5049077b79c5adc07aa220c32c19230be1177bc898d0087b22ee8eed00a037`  
		Last Modified: Wed, 19 Jun 2019 20:25:13 GMT  
		Size: 78.0 MB (77980544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52daf77af80c85b37e6f4c1849a5e74f6d0bd43a05c524520414ef7706939f70`  
		Last Modified: Wed, 19 Jun 2019 20:24:59 GMT  
		Size: 2.9 KB (2945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28f14bca66df416fdf1c651452d0faa680e84acde74ec6a36e7b41abb47940f`  
		Last Modified: Wed, 19 Jun 2019 20:25:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:4b000e38693bef768952dcb8c372abafe2b48ef7531a7553011c9507c0c8cdce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.8 MB (108778950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4ad33ae7e780720940c661173fb5e1c0fc3bb74aced23770e74b5f004327f79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:20 GMT
ADD file:5a85b2cf366cbf793b3cd89f16906c1221128e020868bf7593cf85df20370c31 in / 
# Tue, 18 Jun 2019 21:40:22 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:26 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 23:18:54 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 18 Jun 2019 23:19:16 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:19:17 GMT
ENV GOSU_VERSION=1.10
# Tue, 18 Jun 2019 23:19:39 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 18 Jun 2019 23:19:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 18 Jun 2019 23:20:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:20:01 GMT
ENV GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Tue, 18 Jun 2019 23:20:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 18 Jun 2019 23:20:04 GMT
ENV MARIADB_MAJOR=10.4
# Wed, 19 Jun 2019 20:23:38 GMT
ENV MARIADB_VERSION=1:10.4.6+maria~bionic
# Wed, 19 Jun 2019 20:23:41 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 19 Jun 2019 20:24:41 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		mariadb-backup 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 19 Jun 2019 20:24:42 GMT
VOLUME [/var/lib/mysql]
# Wed, 19 Jun 2019 20:24:42 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 19 Jun 2019 20:24:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 19 Jun 2019 20:24:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Jun 2019 20:24:46 GMT
EXPOSE 3306
# Wed, 19 Jun 2019 20:24:47 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85df13e07ac866f0749412605b4d04aef859d2d116979e1dad9da5093585ce3c`  
		Last Modified: Fri, 14 Jun 2019 14:38:29 GMT  
		Size: 23.7 MB (23704318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627bf1c6512dd26e72f564465b94d24232e3221dc649211b6c2169cd9bae0f7`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 35.2 KB (35201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99ec04f469874c69bd01d057f54593e5346d90cfba712152008d76624217ddb`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc2e75663b5f54850089251d728dea5cb0b29b1e95e1bc0785c801bd2dc3092`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646bdf826cf667c698726bfdee4c1e39459914e32c879ec16d1aebb2f4894f2e`  
		Last Modified: Tue, 18 Jun 2019 23:24:47 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf6587b79b09614a6811098a21e9d09352726162c5f3f44642b92c151851baf`  
		Last Modified: Tue, 18 Jun 2019 23:24:47 GMT  
		Size: 4.4 MB (4390366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b414db5b4f36fb86b3fc4304a4acbb3efc355d2c5d687f9df3103f64728c74`  
		Last Modified: Tue, 18 Jun 2019 23:24:45 GMT  
		Size: 830.9 KB (830877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f989291c40dacec3d1f88760fd6331dd566b1a2bb2744ef75c76e849d82b5696`  
		Last Modified: Tue, 18 Jun 2019 23:24:43 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0bbc21d4bcfc6806fa70686c9517d0dc1ce4f54c87c3258c12d1b95f4f587b`  
		Last Modified: Tue, 18 Jun 2019 23:24:44 GMT  
		Size: 2.9 MB (2925619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee5ac5c653bae8a0d6eae334dcb81603bca37e953c3fe0f567d1fcb70742825`  
		Last Modified: Tue, 18 Jun 2019 23:24:43 GMT  
		Size: 5.0 KB (5028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f802fc3843ff70fb0f3168b83bed320dcfef4acba33824b1ee827af03741551c`  
		Last Modified: Wed, 19 Jun 2019 20:25:15 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f860e992bff9b5c9fa213d66fcfdae80d3041cfc8cdded54572b6300b83c1e97`  
		Last Modified: Wed, 19 Jun 2019 20:25:39 GMT  
		Size: 76.9 MB (76881077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595ff40d5cd7e909b3756cb1d5ba691d2b85f545b12049c489dba2735b76a056`  
		Last Modified: Wed, 19 Jun 2019 20:25:15 GMT  
		Size: 2.9 KB (2943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cd1570f5556e4e2d217137908aa2d8a511c072941fcfaa1ea2c37ae313064d5`  
		Last Modified: Wed, 19 Jun 2019 20:25:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:d4327c5e0819b3573e476d31a383c4301ce429b825b27955e87b1d700f3da688
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.3 MB (121294496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5c1c521e32a25f92b54dab69eb24dec97e5f249b5b1d2bf8894d2eb3f8699b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 18 Jun 2019 22:48:01 GMT
ADD file:fffa2939fb9dcbb708086aef7eaeec85560e44db64ec7228205cc0dffdfde2b3 in / 
# Tue, 18 Jun 2019 22:48:08 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:48:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:48:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:48:22 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 00:16:33 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 19 Jun 2019 00:17:21 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 19 Jun 2019 00:17:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 19 Jun 2019 00:18:04 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 19 Jun 2019 00:18:09 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 19 Jun 2019 00:18:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Jun 2019 00:18:45 GMT
ENV GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Wed, 19 Jun 2019 00:18:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 19 Jun 2019 00:18:54 GMT
ENV MARIADB_MAJOR=10.4
# Wed, 19 Jun 2019 20:25:54 GMT
ENV MARIADB_VERSION=1:10.4.6+maria~bionic
# Wed, 19 Jun 2019 20:26:02 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 19 Jun 2019 20:28:10 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		mariadb-backup 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 19 Jun 2019 20:28:15 GMT
VOLUME [/var/lib/mysql]
# Wed, 19 Jun 2019 20:28:16 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 19 Jun 2019 20:28:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 19 Jun 2019 20:28:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Jun 2019 20:28:26 GMT
EXPOSE 3306
# Wed, 19 Jun 2019 20:28:29 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ef5b5b197566d2f3081c54f8e5ce315ef1bb409a622708e21f26f8a316324dc9`  
		Last Modified: Tue, 18 Jun 2019 22:51:11 GMT  
		Size: 30.4 MB (30389695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb5943989879ea71f39058451b18a9cfe7c8d63d5e98bea0f8ce8398b662cfd`  
		Last Modified: Tue, 18 Jun 2019 22:51:00 GMT  
		Size: 35.2 KB (35187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03367c790f847a4fb9da497ba924c531b08ed840ced5ddebd576b1e617fdeabc`  
		Last Modified: Tue, 18 Jun 2019 22:51:00 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0dfc04432356cee71730dc1476c35948bcaa233371a0bee11cf8be333b28da`  
		Last Modified: Tue, 18 Jun 2019 22:50:59 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3f77c79518e15da1592c26758280f9ded7a8074b5cf5b77030aef259e39f74`  
		Last Modified: Wed, 19 Jun 2019 00:27:04 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff7f7d134f87047ec87c8b9103bb9f3ab8af5198249a8975b25736055ad6156`  
		Last Modified: Wed, 19 Jun 2019 00:27:02 GMT  
		Size: 5.6 MB (5625743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a233b6ea484f430c81e2563793056ccb39b85c09317f831dbf18fff95cb8ef4`  
		Last Modified: Wed, 19 Jun 2019 00:27:01 GMT  
		Size: 832.9 KB (832886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71eb491a11789b5822a1d99c7660af51ab4b6e7a0d945abcdfacc6de0fb4754`  
		Last Modified: Wed, 19 Jun 2019 00:27:01 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b785db66db2030e75d6c139821c5b997c30752de5fefe4771c3d2b8d36fe50`  
		Last Modified: Wed, 19 Jun 2019 00:27:02 GMT  
		Size: 3.3 MB (3283921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8751413352dd03ea79bd43f44582b6425161cba363541ad0e16f16ddabfc82`  
		Last Modified: Wed, 19 Jun 2019 00:26:57 GMT  
		Size: 5.0 KB (5029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe093989b3081fcc004891404ff52ac963d16ccf41cda511e45cea8af425395`  
		Last Modified: Wed, 19 Jun 2019 20:29:23 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f8a091bacbbab678021db846643a8dbcffd6457566d6b84657266168ecdc45`  
		Last Modified: Wed, 19 Jun 2019 20:29:48 GMT  
		Size: 81.1 MB (81115567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce135c4d2d80d0069ae7abfd09608ecbeeec1da2611ca68046d267cb62dce5c`  
		Last Modified: Wed, 19 Jun 2019 20:29:23 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcf6080131ebc0a83f4b7f9537b7a9782b4d38c0107b83e2ae15140c0854ba97`  
		Last Modified: Wed, 19 Jun 2019 20:29:23 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
