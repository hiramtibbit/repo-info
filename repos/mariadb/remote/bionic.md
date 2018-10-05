## `mariadb:bionic`

```console
$ docker pull mariadb@sha256:8b091623e27cb0ef24f0f117d9201eb5020160f3818cd90d6336065cdcada079
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `mariadb:bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:0cdc56334e02af728c89c2b0e9dd29646861deb45415249adab0c780d7d5eefe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114668206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54514d54a4a598dc03d9501c5c76906c04e9cc4963bf9886f2515ba2d57dfe5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:09 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 05 Sep 2018 22:20:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:11 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:12 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 23:13:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 23:13:46 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:13:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 23:13:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 23:13:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 23:14:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:14:03 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 23:14:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 23:14:04 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 04 Oct 2018 20:19:33 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Thu, 04 Oct 2018 20:19:34 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 04 Oct 2018 20:20:11 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 04 Oct 2018 20:20:11 GMT
VOLUME [/var/lib/mysql]
# Thu, 04 Oct 2018 20:20:12 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Thu, 04 Oct 2018 20:20:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 04 Oct 2018 20:20:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 04 Oct 2018 20:20:14 GMT
EXPOSE 3306/tcp
# Thu, 04 Oct 2018 20:20:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d866f8bde2a0d607a6d17edc0fbd5e00b58306efc2b0a57e0ba72f269e7c6be`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3f2f277e67c5cbbf1dac21dc27111a60d3cd2ef494d94aa1515d3319f2a245`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398d32b153e84fe343f0c5b07d65e89b05551aae6cb8b3a03bb2b662976eb3b8`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afde35469481d2bc446d649a7a3d099147bbf7696b66333e76a411686b617ea1`  
		Last Modified: Wed, 05 Sep 2018 22:21:09 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f2ae82b3e3d01303f921ce48626dd7abcdc8cc3a8db989b4f9cda7d64c94d3`  
		Last Modified: Wed, 05 Sep 2018 23:18:41 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eeaf7e45ea6f1a43c24bf92f714fb66142be162501de2656a6b471d28024212`  
		Last Modified: Wed, 05 Sep 2018 23:18:42 GMT  
		Size: 4.8 MB (4803385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716982328e17da2b3e48bcca5ad647063efd991ac2e2df1736aebd51a6708283`  
		Last Modified: Wed, 05 Sep 2018 23:18:41 GMT  
		Size: 862.7 KB (862735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ce605c9036c5aab487cd12aef3aeadc0a11a0f7a631e2141dbce024f26a948`  
		Last Modified: Wed, 05 Sep 2018 23:18:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4502ed9073c052ae46ff6df809f5c5268a16c42c30e5f905621844abfc494055`  
		Last Modified: Wed, 05 Sep 2018 23:18:40 GMT  
		Size: 3.0 MB (2956415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2afafbdf5a96b3c9bfd846769d14696e3406ab22712b7a029a0e82384cc28382`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7997117735b2861ab20b19d8f0419aaa8acf6a48fb8b5aa1954adfc6155c2fda`  
		Last Modified: Thu, 04 Oct 2018 20:20:37 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4fd3d5963fea296a62a9076fc69090d246638832b0e4d997294c7758a1d41d6`  
		Last Modified: Thu, 04 Oct 2018 20:20:52 GMT  
		Size: 74.3 MB (74255792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ecbec33e2f8ccd3c4ef873ba204ff130b8d85e6fafdad233bdde7be642526f`  
		Last Modified: Thu, 04 Oct 2018 20:20:37 GMT  
		Size: 2.6 KB (2603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0053e3b37e074c758160f740a4e33d7dddaa48a41158118928dde25ce6138b85`  
		Last Modified: Thu, 04 Oct 2018 20:20:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:3f9e9d8d579f75d621ad0453b6daf3438d3aab1be96695d7c48b408ff8c12ae6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.7 MB (121748366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9d05658e3c305a4fc032fce6baf8be91bd8f0b4913c12f74485352bdb6f042a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 12:48:10 GMT
ADD file:f4ad8439ac930eb074774281cda34ea4735fbe8912b291656608f9612633fe51 in / 
# Thu, 23 Aug 2018 12:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:48:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:48:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:48:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:48:32 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:40:52 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 15:41:53 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:41:59 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 15:43:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 15:43:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 15:44:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:44:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 15:45:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 15:45:22 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 05 Oct 2018 08:18:03 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 05 Oct 2018 08:18:06 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 05 Oct 2018 08:19:27 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 05 Oct 2018 08:19:39 GMT
VOLUME [/var/lib/mysql]
# Fri, 05 Oct 2018 08:19:41 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 05 Oct 2018 08:19:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 05 Oct 2018 08:19:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Oct 2018 08:20:00 GMT
EXPOSE 3306/tcp
# Fri, 05 Oct 2018 08:20:02 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9966a1cbe6a604683180faf8c26d7967e212858e3822eeadb4efe87092f1e5a3`  
		Last Modified: Thu, 23 Aug 2018 12:50:58 GMT  
		Size: 35.3 MB (35255048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ab8351b8ccdddb963c9ccba37b828f0aad7e70cb9580573cd51c1b79433eaf`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f556f1e7497b3378c8a0fcebeb19757a181803cb88714de74ae45b9af26f76c7`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52fbca384794dc6e5ef2556ae5b50f56dd1371ac44d52835093023f0788059be`  
		Last Modified: Thu, 23 Aug 2018 12:50:49 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb493492ef317758bdf1610927e686717d217e461ab6592e066dea21bb18746`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ed18093684a91ea8b8cc7676b48a901712a585cbfb1a333255d8cba0f91cd1`  
		Last Modified: Thu, 23 Aug 2018 16:17:36 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab364c57f9b7b1a38a54bcf764371290f583b6e6d5a9bbb375118e3aa1e2f49e`  
		Last Modified: Thu, 23 Aug 2018 16:17:36 GMT  
		Size: 5.6 MB (5602394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ccc9f9b4a23cb341ce4241141779cfc32a040734c14f1a2cf005521330857cc`  
		Last Modified: Thu, 23 Aug 2018 16:17:30 GMT  
		Size: 831.3 KB (831274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c469e3bff80c3e5cd96deb10feb545339f107ae5680bac2622523bd5729bf22`  
		Last Modified: Thu, 23 Aug 2018 16:17:30 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53aeb324cc9b7a3ffc39f090b537832f9efed03ad770a269f999d3ec6ae7bd28`  
		Last Modified: Thu, 23 Aug 2018 16:17:31 GMT  
		Size: 2.8 MB (2838483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3e9ba62ad9e8878d7b20111267ea9ac65f5504739db510d11d71c9a8e6f081`  
		Last Modified: Thu, 23 Aug 2018 16:17:25 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8af11c8100d33f4ea6a2a07e4608294662e4183a10eff6683115a6e3ef58b4b`  
		Last Modified: Fri, 05 Oct 2018 08:20:36 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79abbc6bb656717a650f8c97f89f8c814c802c20dbb7d521d2df8e96013ecf89`  
		Last Modified: Fri, 05 Oct 2018 08:20:57 GMT  
		Size: 77.2 MB (77188541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3b1b4949ed8e1ff4c1e87eb47e2ad54ca200453aa5949bb94ce7fc6d1da052c`  
		Last Modified: Fri, 05 Oct 2018 08:20:36 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81696b4653b3427617477c4b407bafa9ef3b2776dfc6f84e25c366b1b6194c09`  
		Last Modified: Fri, 05 Oct 2018 08:20:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
