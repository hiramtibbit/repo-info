## `mariadb:rc-bionic`

```console
$ docker pull mariadb@sha256:13bde6b21074f1e57f0ada6a196a13789d6a90e0ad92a6a757ef6eb1975b9cee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:rc-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:ebf991956febd9bd2d445020a959fcc0d5b176dc40657c33323e39436d432fc2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 MB (115445512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d3edbb60f1111f79c2552e6da9e7403954fd9d042f7fd30df9220b2f7c3516`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:41:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:42:11 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:42:22 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:42:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:42:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:42:34 GMT
ENV MARIADB_MAJOR=10.4
# Thu, 23 May 2019 21:19:44 GMT
ENV MARIADB_VERSION=1:10.4.5+maria~bionic
# Thu, 23 May 2019 21:19:44 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 May 2019 21:20:25 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 May 2019 21:20:26 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 May 2019 21:20:27 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 23 May 2019 21:20:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 May 2019 21:20:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 21:20:28 GMT
EXPOSE 3306
# Thu, 23 May 2019 21:20:28 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab62701212b1fdd5526620057075d9edf8ae2158fae5dcb54c4f0eac12372049`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 1.9 KB (1869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f6f41348efabbee383038e44c62ec2dba25fed9093e979c57e33e2127d2a84`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 4.8 MB (4804241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdaf925d088ad207faedb351807b4c3f29fb5efa90e3dc32c119ecee1a9a839`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 863.5 KB (863501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ba8f10417bdbfa626929e4bd6d949d6f05d528db2e7f6f7262e052751c47ee`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3806bed5c6919b13da417bb65b16ec1c6ef2e77b2be8e2b23e8c8c3c7a907ff8`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 3.0 MB (2961336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24aae6d0fc18ee7fb83c13f5f4bf1d7487e65121dccf95c0808e47639d24a483`  
		Last Modified: Wed, 15 May 2019 22:47:46 GMT  
		Size: 26.6 KB (26550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4189206ef632ac1a84f7ad7a96f080e4f8f2cebab35488d670de8e9f30cccb07`  
		Last Modified: Thu, 23 May 2019 21:21:06 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1747b9129756936d08cd668dd31e0bc04eccc91e8857cc865dab4f3391bf6d0c`  
		Last Modified: Thu, 23 May 2019 21:21:23 GMT  
		Size: 77.9 MB (77928435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91e507fb89c8c32a15443b8b5d7d9dd481f823d3a1a5c6a9c3c53626302d943`  
		Last Modified: Thu, 23 May 2019 21:21:06 GMT  
		Size: 2.9 KB (2945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c14754d0f6d35a254ebfbeb5de205141a928050f3287d30f4fb6dfba8a003b`  
		Last Modified: Thu, 23 May 2019 21:21:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:rc-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:b80f61be1b87c46116cf9273152fbea008ed6128688cc3ac952999af155d7179
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.7 MB (110678747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a449b1209c5d5418ddf2e65fc38539702679eda9492e4e631f69bd73fdd695dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Thu, 16 May 2019 00:49:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 May 2019 00:49:41 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:49:41 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 00:50:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:50:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 May 2019 00:50:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:50:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 May 2019 00:50:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 May 2019 00:50:35 GMT
ENV MARIADB_MAJOR=10.4
# Thu, 23 May 2019 21:39:37 GMT
ENV MARIADB_VERSION=1:10.4.5+maria~bionic
# Thu, 23 May 2019 21:39:39 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 May 2019 21:40:14 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 May 2019 21:40:16 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 May 2019 21:40:17 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 23 May 2019 21:40:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 May 2019 21:40:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 21:40:19 GMT
EXPOSE 3306
# Thu, 23 May 2019 21:40:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b425ae17c2ff8633ae556e7b893f1a72122d256be441d9e99b0a53061cf601c9`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e862902688b6dbb6776f6ed1fc30ba00c61d8d2ccee08536c5dfabb132d82e`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 4.4 MB (4390100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307f49aaf70f91b346f23915164eca121530565e1eaa824cc29d5a85bbbf82fa`  
		Last Modified: Thu, 16 May 2019 00:58:13 GMT  
		Size: 830.6 KB (830623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f9c65b99eda2c5a9253034122d92c191c9bf91201b6947a445c04aac9a8232`  
		Last Modified: Thu, 16 May 2019 00:58:12 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f3956e2c3091b63e8922bd4136cb9b966ccfb42f99780f0e1470be23e57e5d`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 2.7 MB (2705398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9404cc89e32bd31b48e6bbe2ad5f3ac9f78be76003b762d913dc132b9e7d75d`  
		Last Modified: Thu, 16 May 2019 00:58:11 GMT  
		Size: 26.6 KB (26551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1583e3cc4214bea72012cb6e9f31fd7027c1126d198ed0c1e2748fd6eb3238d`  
		Last Modified: Thu, 23 May 2019 21:40:53 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b110dd2189b9080d5026fa942fea3517dd399b91b98199aeaac12816934985d3`  
		Last Modified: Thu, 23 May 2019 21:41:16 GMT  
		Size: 76.8 MB (76844823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28935a24ee2af758e0956fb480d4b204c5866f15a48c56afbbfb588c004f2bf0`  
		Last Modified: Thu, 23 May 2019 21:40:53 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbaebbb400b9e6a8b9be797c2c894ef8a9bcc30701db6740a29f951b47ad785`  
		Last Modified: Thu, 23 May 2019 21:40:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:rc-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:5ade85809ab986f923c799189d93e19d0249dee3e12287d23bcd8a493a5cd2cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.7 MB (122665242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9d0c47e50c9267a05afc5c84ce87142c74d5d1e5adeb3a2158b959fa39e95bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:22:53 GMT
ADD file:f41b697e1dfb953c707b36804e362c7f39555ea72e42f91accbc2d003eb7a8e4 in / 
# Wed, 15 May 2019 22:23:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:23:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:23:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:23:21 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:07:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 23:08:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:08:07 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 23:08:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 23:08:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:09:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:09:23 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 23:09:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:09:30 GMT
ENV MARIADB_MAJOR=10.4
# Wed, 15 May 2019 23:09:32 GMT
ENV MARIADB_VERSION=1:10.4.4+maria~bionic
# Wed, 15 May 2019 23:09:35 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 23:10:52 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 23:10:56 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 23:10:57 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 23:11:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 23:11:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:11:06 GMT
EXPOSE 3306
# Wed, 15 May 2019 23:11:08 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fe2c0e1c2ef60bdf8f65a2f45d232bd20d20e2a49d4bdd0ccf1a6e7e20184510`  
		Last Modified: Wed, 15 May 2019 22:28:38 GMT  
		Size: 32.6 MB (32559272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fbd1cbb08d35dad634c7997b32f338a35c83bf1e04f29deb15c521dc5093`  
		Last Modified: Wed, 15 May 2019 22:28:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069807fa449f2b2cfa8520cbd8a4f0cbffaf3445664f4f000df1bb4e4207fc0`  
		Last Modified: Wed, 15 May 2019 22:28:10 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69ca156d731e31800e6b031385fc851a50668133a2d9335e8fe789a8b745767`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34502880a24395b9c124b66fbb2d08537d907ba627e3326bb1a646a41e6931b`  
		Last Modified: Wed, 15 May 2019 23:29:35 GMT  
		Size: 5.6 MB (5625315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5560607ca919b599c7809c5c31fb0df1cad460cdd8c67735d3351007fd06cfb4`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 832.5 KB (832543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25bc4b05192c1f2ea81daad682ce19614952746fd1de844fece0f02826fa2477`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb30a07df05489f61ec79becb7abc4b05989414424818b1ba4023c549865c32`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 2.8 MB (2843075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013ec91f628ce1ba9f005f07744f27f866959399c134c4d28874c779973173b1`  
		Last Modified: Wed, 15 May 2019 23:29:25 GMT  
		Size: 26.5 KB (26549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b13bfe97bd3223aab4448af75b33de8250ec884c240694fffbb6fc9b12a7fc`  
		Last Modified: Wed, 15 May 2019 23:29:25 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dadf08713204e3dae87d8a823a21988b061f6d4b842d1092fd93ce9abe2a2c9`  
		Last Modified: Wed, 15 May 2019 23:29:58 GMT  
		Size: 80.8 MB (80772034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040ca1c8014de7d32ce5124dd941bd3e4932c6c468fb29330cd9a20fe165ffcd`  
		Last Modified: Wed, 15 May 2019 23:29:25 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb498d9c09aa4329343dbb3fda7cee81317e86ee48fb90fc194e0b2962e4eb69`  
		Last Modified: Wed, 15 May 2019 23:29:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
