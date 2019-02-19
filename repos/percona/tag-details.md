<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `percona`

-	[`percona:5`](#percona5)
-	[`percona:5.6`](#percona56)
-	[`percona:5.6.43`](#percona5643)
-	[`percona:5.6.43-centos`](#percona5643-centos)
-	[`percona:5.6-centos`](#percona56-centos)
-	[`percona:5.7`](#percona57)
-	[`percona:5.7.25`](#percona5725)
-	[`percona:5.7.25-centos`](#percona5725-centos)
-	[`percona:5.7-centos`](#percona57-centos)
-	[`percona:5-centos`](#percona5-centos)
-	[`percona:8`](#percona8)
-	[`percona:8.0`](#percona80)
-	[`percona:8.0.13-4`](#percona8013-4)
-	[`percona:8.0.13-4-centos`](#percona8013-4-centos)
-	[`percona:8.0-centos`](#percona80-centos)
-	[`percona:8-centos`](#percona8-centos)
-	[`percona:centos`](#perconacentos)
-	[`percona:latest`](#perconalatest)
-	[`percona:ps-5`](#perconaps-5)
-	[`percona:ps-5.6`](#perconaps-56)
-	[`percona:ps-5.6.43`](#perconaps-5643)
-	[`percona:ps-5.7`](#perconaps-57)
-	[`percona:ps-5.7.25`](#perconaps-5725)
-	[`percona:ps-8`](#perconaps-8)
-	[`percona:ps-8.0`](#perconaps-80)
-	[`percona:ps-8.0.13-4`](#perconaps-8013-4)
-	[`percona:psmdb-3.6`](#perconapsmdb-36)
-	[`percona:psmdb-3.6.10`](#perconapsmdb-3610)
-	[`percona:psmdb-4.0`](#perconapsmdb-40)
-	[`percona:psmdb-4.0.5`](#perconapsmdb-405)

## `percona:5`

```console
$ docker pull percona@sha256:3ce8cfb4130f13c47eb87347bab81e216e7685ed50193628dad03f1d6ae94e46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5` - linux; amd64

```console
$ docker pull percona@sha256:728bba043726ed5c82b8cb4819d02068f47cbfec768a6641d663896be2b9dd73
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.3 MB (192283404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae9775984a9efb79dc32fb1bfe1bd8a8ee061b2003521af251325b43789f828`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 06 Dec 2018 00:51:57 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 06 Dec 2018 00:51:58 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Tue, 19 Feb 2019 22:25:04 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7         && curl -L -o /tmp/percona-release.rpm https://repo.percona.com/percona/yum/percona-release-0.1-10.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm         && percona-release enable original release
# Tue, 19 Feb 2019 22:25:05 GMT
ENV PERCONA_VERSION=5.7.25-28.1.el7
# Tue, 19 Feb 2019 22:26:06 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Tue, 19 Feb 2019 22:26:07 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Tue, 19 Feb 2019 22:26:08 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 19 Feb 2019 22:26:08 GMT
COPY file:8da6ca55fbd697af8ce67f582b55e6e21956a9f1a34618fb299f82d13032a67c in /docker-entrypoint.sh 
# Tue, 19 Feb 2019 22:26:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 19 Feb 2019 22:26:08 GMT
USER mysql
# Tue, 19 Feb 2019 22:26:09 GMT
EXPOSE 3306
# Tue, 19 Feb 2019 22:26:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c9949b6b67e4236f5b5abeac7171fa3c0c9884f17e292571774f3f0b23821d`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3a16f63d7e54379670bae4157d428ed66f44ccab9df929e6df51e5ffe46019`  
		Last Modified: Thu, 06 Dec 2018 00:59:20 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e3e7b32b9c409d0ae9c31a87a5a0315e9d1c79d3b5242ad709d0dabeb70240`  
		Last Modified: Tue, 19 Feb 2019 22:28:59 GMT  
		Size: 6.2 MB (6180721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07341880df468609c1f7c9516499511e2a6d0e3b26ab1a1b111a1915168379c2`  
		Last Modified: Tue, 19 Feb 2019 22:29:29 GMT  
		Size: 110.9 MB (110930827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e9cd003811724feca56ea0dda54a5b78fff33252d8f174343792aa0c3c70fc`  
		Last Modified: Tue, 19 Feb 2019 22:28:57 GMT  
		Size: 1.4 KB (1385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:122e12184dbf06c81a3a61faa63403bceefcd5eecc276fa4d97b4d92670e11e2`  
		Last Modified: Tue, 19 Feb 2019 22:28:57 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6`

```console
$ docker pull percona@sha256:9eda09cbc2b4e7877f9bcb4748937c96cd7b8a1ec45401a9b401df7ccbb0a25d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6` - linux; amd64

```console
$ docker pull percona@sha256:df06040e14599314f412270e548ffafdec505d29ef5245b91c32181f533f9ed5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.5 MB (138511287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccc5875cb148f5d9057d5d35ca5550955c7d755d4318438c0c9357115e40061e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 06 Dec 2018 00:51:57 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 06 Dec 2018 00:51:58 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Wed, 30 Jan 2019 02:20:24 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY 	&& percona-release disable all 	&& percona-release enable percona release
# Wed, 30 Jan 2019 02:20:24 GMT
ENV PERCONA_VERSION=5.6.43-rel84.3.el7
# Wed, 30 Jan 2019 02:20:59 GMT
RUN yum install -y 		Percona-Server-server-56-${PERCONA_VERSION} 		Percona-Server-tokudb-56-${PERCONA_VERSION} 		Percona-Server-rocksdb-56-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Wed, 30 Jan 2019 02:21:00 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /etc/my.cnf.d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user|sql_mode)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user|sql_mode)/#&/' 	&& sed -i '/Make sure only root/,/fi/d' /usr/bin/ps_tokudb_admin 	&& echo "thp-setting=never" >> /etc/my.cnf 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Wed, 30 Jan 2019 02:21:00 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 30 Jan 2019 02:21:01 GMT
COPY file:901ced2ffcf1945c034e123402c75e7363c1cc0a3a037fa1c559cad28013c95e in /docker-entrypoint.sh 
# Wed, 30 Jan 2019 02:21:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 30 Jan 2019 02:21:01 GMT
USER mysql
# Wed, 30 Jan 2019 02:21:01 GMT
EXPOSE 3306
# Wed, 30 Jan 2019 02:21:01 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c9949b6b67e4236f5b5abeac7171fa3c0c9884f17e292571774f3f0b23821d`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3a16f63d7e54379670bae4157d428ed66f44ccab9df929e6df51e5ffe46019`  
		Last Modified: Thu, 06 Dec 2018 00:59:20 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b279da37e09a582fa7b90e289f0b0e5c0e7aa58315a46a996fc408e2e84854dd`  
		Last Modified: Wed, 30 Jan 2019 02:21:34 GMT  
		Size: 6.2 MB (6168839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f2452fdab22ffb7d02262d65e5ba5ce99b7ee3b591935efede40349fba7c49`  
		Last Modified: Wed, 30 Jan 2019 02:21:43 GMT  
		Size: 57.2 MB (57167217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1401342492813f089438f187e24b3f5344d6dd94a5fc443cd9c6c014f600a7c6`  
		Last Modified: Wed, 30 Jan 2019 02:21:32 GMT  
		Size: 4.9 KB (4879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69e38fd69beca19fcb5b7950c7e8671fa550962d0af47ca2631826f7b99b49a`  
		Last Modified: Wed, 30 Jan 2019 02:21:32 GMT  
		Size: 2.9 KB (2858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.43`

```console
$ docker pull percona@sha256:9eda09cbc2b4e7877f9bcb4748937c96cd7b8a1ec45401a9b401df7ccbb0a25d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6.43` - linux; amd64

```console
$ docker pull percona@sha256:df06040e14599314f412270e548ffafdec505d29ef5245b91c32181f533f9ed5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.5 MB (138511287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccc5875cb148f5d9057d5d35ca5550955c7d755d4318438c0c9357115e40061e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 06 Dec 2018 00:51:57 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 06 Dec 2018 00:51:58 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Wed, 30 Jan 2019 02:20:24 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY 	&& percona-release disable all 	&& percona-release enable percona release
# Wed, 30 Jan 2019 02:20:24 GMT
ENV PERCONA_VERSION=5.6.43-rel84.3.el7
# Wed, 30 Jan 2019 02:20:59 GMT
RUN yum install -y 		Percona-Server-server-56-${PERCONA_VERSION} 		Percona-Server-tokudb-56-${PERCONA_VERSION} 		Percona-Server-rocksdb-56-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Wed, 30 Jan 2019 02:21:00 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /etc/my.cnf.d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user|sql_mode)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user|sql_mode)/#&/' 	&& sed -i '/Make sure only root/,/fi/d' /usr/bin/ps_tokudb_admin 	&& echo "thp-setting=never" >> /etc/my.cnf 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Wed, 30 Jan 2019 02:21:00 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 30 Jan 2019 02:21:01 GMT
COPY file:901ced2ffcf1945c034e123402c75e7363c1cc0a3a037fa1c559cad28013c95e in /docker-entrypoint.sh 
# Wed, 30 Jan 2019 02:21:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 30 Jan 2019 02:21:01 GMT
USER mysql
# Wed, 30 Jan 2019 02:21:01 GMT
EXPOSE 3306
# Wed, 30 Jan 2019 02:21:01 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c9949b6b67e4236f5b5abeac7171fa3c0c9884f17e292571774f3f0b23821d`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3a16f63d7e54379670bae4157d428ed66f44ccab9df929e6df51e5ffe46019`  
		Last Modified: Thu, 06 Dec 2018 00:59:20 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b279da37e09a582fa7b90e289f0b0e5c0e7aa58315a46a996fc408e2e84854dd`  
		Last Modified: Wed, 30 Jan 2019 02:21:34 GMT  
		Size: 6.2 MB (6168839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f2452fdab22ffb7d02262d65e5ba5ce99b7ee3b591935efede40349fba7c49`  
		Last Modified: Wed, 30 Jan 2019 02:21:43 GMT  
		Size: 57.2 MB (57167217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1401342492813f089438f187e24b3f5344d6dd94a5fc443cd9c6c014f600a7c6`  
		Last Modified: Wed, 30 Jan 2019 02:21:32 GMT  
		Size: 4.9 KB (4879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69e38fd69beca19fcb5b7950c7e8671fa550962d0af47ca2631826f7b99b49a`  
		Last Modified: Wed, 30 Jan 2019 02:21:32 GMT  
		Size: 2.9 KB (2858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.43-centos`

```console
$ docker pull percona@sha256:9eda09cbc2b4e7877f9bcb4748937c96cd7b8a1ec45401a9b401df7ccbb0a25d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6.43-centos` - linux; amd64

```console
$ docker pull percona@sha256:df06040e14599314f412270e548ffafdec505d29ef5245b91c32181f533f9ed5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.5 MB (138511287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccc5875cb148f5d9057d5d35ca5550955c7d755d4318438c0c9357115e40061e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 06 Dec 2018 00:51:57 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 06 Dec 2018 00:51:58 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Wed, 30 Jan 2019 02:20:24 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY 	&& percona-release disable all 	&& percona-release enable percona release
# Wed, 30 Jan 2019 02:20:24 GMT
ENV PERCONA_VERSION=5.6.43-rel84.3.el7
# Wed, 30 Jan 2019 02:20:59 GMT
RUN yum install -y 		Percona-Server-server-56-${PERCONA_VERSION} 		Percona-Server-tokudb-56-${PERCONA_VERSION} 		Percona-Server-rocksdb-56-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Wed, 30 Jan 2019 02:21:00 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /etc/my.cnf.d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user|sql_mode)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user|sql_mode)/#&/' 	&& sed -i '/Make sure only root/,/fi/d' /usr/bin/ps_tokudb_admin 	&& echo "thp-setting=never" >> /etc/my.cnf 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Wed, 30 Jan 2019 02:21:00 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 30 Jan 2019 02:21:01 GMT
COPY file:901ced2ffcf1945c034e123402c75e7363c1cc0a3a037fa1c559cad28013c95e in /docker-entrypoint.sh 
# Wed, 30 Jan 2019 02:21:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 30 Jan 2019 02:21:01 GMT
USER mysql
# Wed, 30 Jan 2019 02:21:01 GMT
EXPOSE 3306
# Wed, 30 Jan 2019 02:21:01 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c9949b6b67e4236f5b5abeac7171fa3c0c9884f17e292571774f3f0b23821d`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3a16f63d7e54379670bae4157d428ed66f44ccab9df929e6df51e5ffe46019`  
		Last Modified: Thu, 06 Dec 2018 00:59:20 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b279da37e09a582fa7b90e289f0b0e5c0e7aa58315a46a996fc408e2e84854dd`  
		Last Modified: Wed, 30 Jan 2019 02:21:34 GMT  
		Size: 6.2 MB (6168839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f2452fdab22ffb7d02262d65e5ba5ce99b7ee3b591935efede40349fba7c49`  
		Last Modified: Wed, 30 Jan 2019 02:21:43 GMT  
		Size: 57.2 MB (57167217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1401342492813f089438f187e24b3f5344d6dd94a5fc443cd9c6c014f600a7c6`  
		Last Modified: Wed, 30 Jan 2019 02:21:32 GMT  
		Size: 4.9 KB (4879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69e38fd69beca19fcb5b7950c7e8671fa550962d0af47ca2631826f7b99b49a`  
		Last Modified: Wed, 30 Jan 2019 02:21:32 GMT  
		Size: 2.9 KB (2858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6-centos`

```console
$ docker pull percona@sha256:9eda09cbc2b4e7877f9bcb4748937c96cd7b8a1ec45401a9b401df7ccbb0a25d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6-centos` - linux; amd64

```console
$ docker pull percona@sha256:df06040e14599314f412270e548ffafdec505d29ef5245b91c32181f533f9ed5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.5 MB (138511287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccc5875cb148f5d9057d5d35ca5550955c7d755d4318438c0c9357115e40061e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 06 Dec 2018 00:51:57 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 06 Dec 2018 00:51:58 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Wed, 30 Jan 2019 02:20:24 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY 	&& percona-release disable all 	&& percona-release enable percona release
# Wed, 30 Jan 2019 02:20:24 GMT
ENV PERCONA_VERSION=5.6.43-rel84.3.el7
# Wed, 30 Jan 2019 02:20:59 GMT
RUN yum install -y 		Percona-Server-server-56-${PERCONA_VERSION} 		Percona-Server-tokudb-56-${PERCONA_VERSION} 		Percona-Server-rocksdb-56-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Wed, 30 Jan 2019 02:21:00 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /etc/my.cnf.d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user|sql_mode)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user|sql_mode)/#&/' 	&& sed -i '/Make sure only root/,/fi/d' /usr/bin/ps_tokudb_admin 	&& echo "thp-setting=never" >> /etc/my.cnf 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Wed, 30 Jan 2019 02:21:00 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 30 Jan 2019 02:21:01 GMT
COPY file:901ced2ffcf1945c034e123402c75e7363c1cc0a3a037fa1c559cad28013c95e in /docker-entrypoint.sh 
# Wed, 30 Jan 2019 02:21:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 30 Jan 2019 02:21:01 GMT
USER mysql
# Wed, 30 Jan 2019 02:21:01 GMT
EXPOSE 3306
# Wed, 30 Jan 2019 02:21:01 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c9949b6b67e4236f5b5abeac7171fa3c0c9884f17e292571774f3f0b23821d`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3a16f63d7e54379670bae4157d428ed66f44ccab9df929e6df51e5ffe46019`  
		Last Modified: Thu, 06 Dec 2018 00:59:20 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b279da37e09a582fa7b90e289f0b0e5c0e7aa58315a46a996fc408e2e84854dd`  
		Last Modified: Wed, 30 Jan 2019 02:21:34 GMT  
		Size: 6.2 MB (6168839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f2452fdab22ffb7d02262d65e5ba5ce99b7ee3b591935efede40349fba7c49`  
		Last Modified: Wed, 30 Jan 2019 02:21:43 GMT  
		Size: 57.2 MB (57167217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1401342492813f089438f187e24b3f5344d6dd94a5fc443cd9c6c014f600a7c6`  
		Last Modified: Wed, 30 Jan 2019 02:21:32 GMT  
		Size: 4.9 KB (4879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69e38fd69beca19fcb5b7950c7e8671fa550962d0af47ca2631826f7b99b49a`  
		Last Modified: Wed, 30 Jan 2019 02:21:32 GMT  
		Size: 2.9 KB (2858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7`

```console
$ docker pull percona@sha256:3ce8cfb4130f13c47eb87347bab81e216e7685ed50193628dad03f1d6ae94e46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7` - linux; amd64

```console
$ docker pull percona@sha256:728bba043726ed5c82b8cb4819d02068f47cbfec768a6641d663896be2b9dd73
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.3 MB (192283404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae9775984a9efb79dc32fb1bfe1bd8a8ee061b2003521af251325b43789f828`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 06 Dec 2018 00:51:57 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 06 Dec 2018 00:51:58 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Tue, 19 Feb 2019 22:25:04 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7         && curl -L -o /tmp/percona-release.rpm https://repo.percona.com/percona/yum/percona-release-0.1-10.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm         && percona-release enable original release
# Tue, 19 Feb 2019 22:25:05 GMT
ENV PERCONA_VERSION=5.7.25-28.1.el7
# Tue, 19 Feb 2019 22:26:06 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Tue, 19 Feb 2019 22:26:07 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Tue, 19 Feb 2019 22:26:08 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 19 Feb 2019 22:26:08 GMT
COPY file:8da6ca55fbd697af8ce67f582b55e6e21956a9f1a34618fb299f82d13032a67c in /docker-entrypoint.sh 
# Tue, 19 Feb 2019 22:26:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 19 Feb 2019 22:26:08 GMT
USER mysql
# Tue, 19 Feb 2019 22:26:09 GMT
EXPOSE 3306
# Tue, 19 Feb 2019 22:26:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c9949b6b67e4236f5b5abeac7171fa3c0c9884f17e292571774f3f0b23821d`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3a16f63d7e54379670bae4157d428ed66f44ccab9df929e6df51e5ffe46019`  
		Last Modified: Thu, 06 Dec 2018 00:59:20 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e3e7b32b9c409d0ae9c31a87a5a0315e9d1c79d3b5242ad709d0dabeb70240`  
		Last Modified: Tue, 19 Feb 2019 22:28:59 GMT  
		Size: 6.2 MB (6180721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07341880df468609c1f7c9516499511e2a6d0e3b26ab1a1b111a1915168379c2`  
		Last Modified: Tue, 19 Feb 2019 22:29:29 GMT  
		Size: 110.9 MB (110930827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e9cd003811724feca56ea0dda54a5b78fff33252d8f174343792aa0c3c70fc`  
		Last Modified: Tue, 19 Feb 2019 22:28:57 GMT  
		Size: 1.4 KB (1385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:122e12184dbf06c81a3a61faa63403bceefcd5eecc276fa4d97b4d92670e11e2`  
		Last Modified: Tue, 19 Feb 2019 22:28:57 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7.25`

```console
$ docker pull percona@sha256:3ce8cfb4130f13c47eb87347bab81e216e7685ed50193628dad03f1d6ae94e46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7.25` - linux; amd64

```console
$ docker pull percona@sha256:728bba043726ed5c82b8cb4819d02068f47cbfec768a6641d663896be2b9dd73
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.3 MB (192283404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae9775984a9efb79dc32fb1bfe1bd8a8ee061b2003521af251325b43789f828`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 06 Dec 2018 00:51:57 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 06 Dec 2018 00:51:58 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Tue, 19 Feb 2019 22:25:04 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7         && curl -L -o /tmp/percona-release.rpm https://repo.percona.com/percona/yum/percona-release-0.1-10.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm         && percona-release enable original release
# Tue, 19 Feb 2019 22:25:05 GMT
ENV PERCONA_VERSION=5.7.25-28.1.el7
# Tue, 19 Feb 2019 22:26:06 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Tue, 19 Feb 2019 22:26:07 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Tue, 19 Feb 2019 22:26:08 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 19 Feb 2019 22:26:08 GMT
COPY file:8da6ca55fbd697af8ce67f582b55e6e21956a9f1a34618fb299f82d13032a67c in /docker-entrypoint.sh 
# Tue, 19 Feb 2019 22:26:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 19 Feb 2019 22:26:08 GMT
USER mysql
# Tue, 19 Feb 2019 22:26:09 GMT
EXPOSE 3306
# Tue, 19 Feb 2019 22:26:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c9949b6b67e4236f5b5abeac7171fa3c0c9884f17e292571774f3f0b23821d`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3a16f63d7e54379670bae4157d428ed66f44ccab9df929e6df51e5ffe46019`  
		Last Modified: Thu, 06 Dec 2018 00:59:20 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e3e7b32b9c409d0ae9c31a87a5a0315e9d1c79d3b5242ad709d0dabeb70240`  
		Last Modified: Tue, 19 Feb 2019 22:28:59 GMT  
		Size: 6.2 MB (6180721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07341880df468609c1f7c9516499511e2a6d0e3b26ab1a1b111a1915168379c2`  
		Last Modified: Tue, 19 Feb 2019 22:29:29 GMT  
		Size: 110.9 MB (110930827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e9cd003811724feca56ea0dda54a5b78fff33252d8f174343792aa0c3c70fc`  
		Last Modified: Tue, 19 Feb 2019 22:28:57 GMT  
		Size: 1.4 KB (1385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:122e12184dbf06c81a3a61faa63403bceefcd5eecc276fa4d97b4d92670e11e2`  
		Last Modified: Tue, 19 Feb 2019 22:28:57 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7.25-centos`

```console
$ docker pull percona@sha256:3ce8cfb4130f13c47eb87347bab81e216e7685ed50193628dad03f1d6ae94e46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7.25-centos` - linux; amd64

```console
$ docker pull percona@sha256:728bba043726ed5c82b8cb4819d02068f47cbfec768a6641d663896be2b9dd73
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.3 MB (192283404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae9775984a9efb79dc32fb1bfe1bd8a8ee061b2003521af251325b43789f828`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 06 Dec 2018 00:51:57 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 06 Dec 2018 00:51:58 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Tue, 19 Feb 2019 22:25:04 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7         && curl -L -o /tmp/percona-release.rpm https://repo.percona.com/percona/yum/percona-release-0.1-10.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm         && percona-release enable original release
# Tue, 19 Feb 2019 22:25:05 GMT
ENV PERCONA_VERSION=5.7.25-28.1.el7
# Tue, 19 Feb 2019 22:26:06 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Tue, 19 Feb 2019 22:26:07 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Tue, 19 Feb 2019 22:26:08 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 19 Feb 2019 22:26:08 GMT
COPY file:8da6ca55fbd697af8ce67f582b55e6e21956a9f1a34618fb299f82d13032a67c in /docker-entrypoint.sh 
# Tue, 19 Feb 2019 22:26:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 19 Feb 2019 22:26:08 GMT
USER mysql
# Tue, 19 Feb 2019 22:26:09 GMT
EXPOSE 3306
# Tue, 19 Feb 2019 22:26:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c9949b6b67e4236f5b5abeac7171fa3c0c9884f17e292571774f3f0b23821d`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3a16f63d7e54379670bae4157d428ed66f44ccab9df929e6df51e5ffe46019`  
		Last Modified: Thu, 06 Dec 2018 00:59:20 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e3e7b32b9c409d0ae9c31a87a5a0315e9d1c79d3b5242ad709d0dabeb70240`  
		Last Modified: Tue, 19 Feb 2019 22:28:59 GMT  
		Size: 6.2 MB (6180721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07341880df468609c1f7c9516499511e2a6d0e3b26ab1a1b111a1915168379c2`  
		Last Modified: Tue, 19 Feb 2019 22:29:29 GMT  
		Size: 110.9 MB (110930827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e9cd003811724feca56ea0dda54a5b78fff33252d8f174343792aa0c3c70fc`  
		Last Modified: Tue, 19 Feb 2019 22:28:57 GMT  
		Size: 1.4 KB (1385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:122e12184dbf06c81a3a61faa63403bceefcd5eecc276fa4d97b4d92670e11e2`  
		Last Modified: Tue, 19 Feb 2019 22:28:57 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7-centos`

```console
$ docker pull percona@sha256:3ce8cfb4130f13c47eb87347bab81e216e7685ed50193628dad03f1d6ae94e46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7-centos` - linux; amd64

```console
$ docker pull percona@sha256:728bba043726ed5c82b8cb4819d02068f47cbfec768a6641d663896be2b9dd73
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.3 MB (192283404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae9775984a9efb79dc32fb1bfe1bd8a8ee061b2003521af251325b43789f828`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 06 Dec 2018 00:51:57 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 06 Dec 2018 00:51:58 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Tue, 19 Feb 2019 22:25:04 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7         && curl -L -o /tmp/percona-release.rpm https://repo.percona.com/percona/yum/percona-release-0.1-10.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm         && percona-release enable original release
# Tue, 19 Feb 2019 22:25:05 GMT
ENV PERCONA_VERSION=5.7.25-28.1.el7
# Tue, 19 Feb 2019 22:26:06 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Tue, 19 Feb 2019 22:26:07 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Tue, 19 Feb 2019 22:26:08 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 19 Feb 2019 22:26:08 GMT
COPY file:8da6ca55fbd697af8ce67f582b55e6e21956a9f1a34618fb299f82d13032a67c in /docker-entrypoint.sh 
# Tue, 19 Feb 2019 22:26:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 19 Feb 2019 22:26:08 GMT
USER mysql
# Tue, 19 Feb 2019 22:26:09 GMT
EXPOSE 3306
# Tue, 19 Feb 2019 22:26:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c9949b6b67e4236f5b5abeac7171fa3c0c9884f17e292571774f3f0b23821d`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3a16f63d7e54379670bae4157d428ed66f44ccab9df929e6df51e5ffe46019`  
		Last Modified: Thu, 06 Dec 2018 00:59:20 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e3e7b32b9c409d0ae9c31a87a5a0315e9d1c79d3b5242ad709d0dabeb70240`  
		Last Modified: Tue, 19 Feb 2019 22:28:59 GMT  
		Size: 6.2 MB (6180721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07341880df468609c1f7c9516499511e2a6d0e3b26ab1a1b111a1915168379c2`  
		Last Modified: Tue, 19 Feb 2019 22:29:29 GMT  
		Size: 110.9 MB (110930827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e9cd003811724feca56ea0dda54a5b78fff33252d8f174343792aa0c3c70fc`  
		Last Modified: Tue, 19 Feb 2019 22:28:57 GMT  
		Size: 1.4 KB (1385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:122e12184dbf06c81a3a61faa63403bceefcd5eecc276fa4d97b4d92670e11e2`  
		Last Modified: Tue, 19 Feb 2019 22:28:57 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5-centos`

```console
$ docker pull percona@sha256:3ce8cfb4130f13c47eb87347bab81e216e7685ed50193628dad03f1d6ae94e46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5-centos` - linux; amd64

```console
$ docker pull percona@sha256:728bba043726ed5c82b8cb4819d02068f47cbfec768a6641d663896be2b9dd73
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.3 MB (192283404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae9775984a9efb79dc32fb1bfe1bd8a8ee061b2003521af251325b43789f828`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 06 Dec 2018 00:51:57 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 06 Dec 2018 00:51:58 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Tue, 19 Feb 2019 22:25:04 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7         && curl -L -o /tmp/percona-release.rpm https://repo.percona.com/percona/yum/percona-release-0.1-10.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm         && percona-release enable original release
# Tue, 19 Feb 2019 22:25:05 GMT
ENV PERCONA_VERSION=5.7.25-28.1.el7
# Tue, 19 Feb 2019 22:26:06 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Tue, 19 Feb 2019 22:26:07 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Tue, 19 Feb 2019 22:26:08 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 19 Feb 2019 22:26:08 GMT
COPY file:8da6ca55fbd697af8ce67f582b55e6e21956a9f1a34618fb299f82d13032a67c in /docker-entrypoint.sh 
# Tue, 19 Feb 2019 22:26:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 19 Feb 2019 22:26:08 GMT
USER mysql
# Tue, 19 Feb 2019 22:26:09 GMT
EXPOSE 3306
# Tue, 19 Feb 2019 22:26:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c9949b6b67e4236f5b5abeac7171fa3c0c9884f17e292571774f3f0b23821d`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3a16f63d7e54379670bae4157d428ed66f44ccab9df929e6df51e5ffe46019`  
		Last Modified: Thu, 06 Dec 2018 00:59:20 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e3e7b32b9c409d0ae9c31a87a5a0315e9d1c79d3b5242ad709d0dabeb70240`  
		Last Modified: Tue, 19 Feb 2019 22:28:59 GMT  
		Size: 6.2 MB (6180721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07341880df468609c1f7c9516499511e2a6d0e3b26ab1a1b111a1915168379c2`  
		Last Modified: Tue, 19 Feb 2019 22:29:29 GMT  
		Size: 110.9 MB (110930827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e9cd003811724feca56ea0dda54a5b78fff33252d8f174343792aa0c3c70fc`  
		Last Modified: Tue, 19 Feb 2019 22:28:57 GMT  
		Size: 1.4 KB (1385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:122e12184dbf06c81a3a61faa63403bceefcd5eecc276fa4d97b4d92670e11e2`  
		Last Modified: Tue, 19 Feb 2019 22:28:57 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:8`

```console
$ docker pull percona@sha256:650345f24c82af6ab79e8f1c01dc72fb27d6d75de69b97fa5ba2141bb6d2acec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:8` - linux; amd64

```console
$ docker pull percona@sha256:e2285673e3ce5d35317e6bffda53ec38f670248f78073d398f18d215397684f6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.5 MB (216542670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85c3683c84f34033abea77772ca27f555a1dcf01c8ead8b578936c2a8001b616`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 06 Dec 2018 00:50:52 GMT
RUN groupadd -g 1001 mysql
# Thu, 06 Dec 2018 00:50:53 GMT
RUN useradd -u 1001 -r -g 1001 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 17 Jan 2019 23:24:23 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY 	&& percona-release disable all 	&& percona-release enable ps-80 release
# Thu, 17 Jan 2019 23:24:23 GMT
ENV PERCONA_VERSION=8.0.13-4.1.el7
# Thu, 17 Jan 2019 23:25:10 GMT
RUN yum install -y 		percona-server-server-${PERCONA_VERSION} 		percona-server-tokudb-${PERCONA_VERSION} 		percona-server-rocksdb-${PERCONA_VERSION} 		which 		policycoreutils 		https://repo.percona.com/percona/yum/release/7/RPMS/x86_64/jemalloc-3.6.0-1.el7.x86_64.rpm 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 17 Jan 2019 23:25:17 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 17 Jan 2019 23:25:17 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 17 Jan 2019 23:25:17 GMT
COPY file:44b2f1e944885f8e6d3df030f872085ad4291f2ab0b4afe3dbedf4527fcd3207 in /docker-entrypoint.sh 
# Thu, 17 Jan 2019 23:25:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 17 Jan 2019 23:25:18 GMT
USER mysql
# Thu, 17 Jan 2019 23:25:18 GMT
EXPOSE 3306 33060
# Thu, 17 Jan 2019 23:25:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e19bbb608a4343d46c7d0b51977bf90c384097cd3954a55775e16e762cb3acc9`  
		Last Modified: Thu, 06 Dec 2018 00:54:17 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a535fe28f4bb7f1c713d8dfada59cf1b2995ee38aa93d7674726c18bd4b0c489`  
		Last Modified: Thu, 06 Dec 2018 00:54:16 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5f9b51ac823ee16e14cd815a0f0b2ef6113ff22fa705dac250a1983ff81a1b`  
		Last Modified: Thu, 17 Jan 2019 23:25:51 GMT  
		Size: 6.2 MB (6168854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8696034fae33d95b36a1fcfce91cf17b0d9606d99c7cd9feef5bbf0bf440da34`  
		Last Modified: Thu, 17 Jan 2019 23:26:17 GMT  
		Size: 135.2 MB (135202205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5234706d1d355ef20df49c2522164a9339cac66f0847d12f0387c254827e8459`  
		Last Modified: Thu, 17 Jan 2019 23:25:50 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae526c8f19c2d50415b449d54b10d55bb10680c19b0ef40db43235599d89040`  
		Last Modified: Thu, 17 Jan 2019 23:25:50 GMT  
		Size: 3.0 KB (2979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:8.0`

```console
$ docker pull percona@sha256:650345f24c82af6ab79e8f1c01dc72fb27d6d75de69b97fa5ba2141bb6d2acec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:8.0` - linux; amd64

```console
$ docker pull percona@sha256:e2285673e3ce5d35317e6bffda53ec38f670248f78073d398f18d215397684f6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.5 MB (216542670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85c3683c84f34033abea77772ca27f555a1dcf01c8ead8b578936c2a8001b616`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 06 Dec 2018 00:50:52 GMT
RUN groupadd -g 1001 mysql
# Thu, 06 Dec 2018 00:50:53 GMT
RUN useradd -u 1001 -r -g 1001 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 17 Jan 2019 23:24:23 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY 	&& percona-release disable all 	&& percona-release enable ps-80 release
# Thu, 17 Jan 2019 23:24:23 GMT
ENV PERCONA_VERSION=8.0.13-4.1.el7
# Thu, 17 Jan 2019 23:25:10 GMT
RUN yum install -y 		percona-server-server-${PERCONA_VERSION} 		percona-server-tokudb-${PERCONA_VERSION} 		percona-server-rocksdb-${PERCONA_VERSION} 		which 		policycoreutils 		https://repo.percona.com/percona/yum/release/7/RPMS/x86_64/jemalloc-3.6.0-1.el7.x86_64.rpm 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 17 Jan 2019 23:25:17 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 17 Jan 2019 23:25:17 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 17 Jan 2019 23:25:17 GMT
COPY file:44b2f1e944885f8e6d3df030f872085ad4291f2ab0b4afe3dbedf4527fcd3207 in /docker-entrypoint.sh 
# Thu, 17 Jan 2019 23:25:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 17 Jan 2019 23:25:18 GMT
USER mysql
# Thu, 17 Jan 2019 23:25:18 GMT
EXPOSE 3306 33060
# Thu, 17 Jan 2019 23:25:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e19bbb608a4343d46c7d0b51977bf90c384097cd3954a55775e16e762cb3acc9`  
		Last Modified: Thu, 06 Dec 2018 00:54:17 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a535fe28f4bb7f1c713d8dfada59cf1b2995ee38aa93d7674726c18bd4b0c489`  
		Last Modified: Thu, 06 Dec 2018 00:54:16 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5f9b51ac823ee16e14cd815a0f0b2ef6113ff22fa705dac250a1983ff81a1b`  
		Last Modified: Thu, 17 Jan 2019 23:25:51 GMT  
		Size: 6.2 MB (6168854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8696034fae33d95b36a1fcfce91cf17b0d9606d99c7cd9feef5bbf0bf440da34`  
		Last Modified: Thu, 17 Jan 2019 23:26:17 GMT  
		Size: 135.2 MB (135202205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5234706d1d355ef20df49c2522164a9339cac66f0847d12f0387c254827e8459`  
		Last Modified: Thu, 17 Jan 2019 23:25:50 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae526c8f19c2d50415b449d54b10d55bb10680c19b0ef40db43235599d89040`  
		Last Modified: Thu, 17 Jan 2019 23:25:50 GMT  
		Size: 3.0 KB (2979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:8.0.13-4`

```console
$ docker pull percona@sha256:650345f24c82af6ab79e8f1c01dc72fb27d6d75de69b97fa5ba2141bb6d2acec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:8.0.13-4` - linux; amd64

```console
$ docker pull percona@sha256:e2285673e3ce5d35317e6bffda53ec38f670248f78073d398f18d215397684f6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.5 MB (216542670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85c3683c84f34033abea77772ca27f555a1dcf01c8ead8b578936c2a8001b616`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 06 Dec 2018 00:50:52 GMT
RUN groupadd -g 1001 mysql
# Thu, 06 Dec 2018 00:50:53 GMT
RUN useradd -u 1001 -r -g 1001 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 17 Jan 2019 23:24:23 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY 	&& percona-release disable all 	&& percona-release enable ps-80 release
# Thu, 17 Jan 2019 23:24:23 GMT
ENV PERCONA_VERSION=8.0.13-4.1.el7
# Thu, 17 Jan 2019 23:25:10 GMT
RUN yum install -y 		percona-server-server-${PERCONA_VERSION} 		percona-server-tokudb-${PERCONA_VERSION} 		percona-server-rocksdb-${PERCONA_VERSION} 		which 		policycoreutils 		https://repo.percona.com/percona/yum/release/7/RPMS/x86_64/jemalloc-3.6.0-1.el7.x86_64.rpm 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 17 Jan 2019 23:25:17 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 17 Jan 2019 23:25:17 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 17 Jan 2019 23:25:17 GMT
COPY file:44b2f1e944885f8e6d3df030f872085ad4291f2ab0b4afe3dbedf4527fcd3207 in /docker-entrypoint.sh 
# Thu, 17 Jan 2019 23:25:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 17 Jan 2019 23:25:18 GMT
USER mysql
# Thu, 17 Jan 2019 23:25:18 GMT
EXPOSE 3306 33060
# Thu, 17 Jan 2019 23:25:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e19bbb608a4343d46c7d0b51977bf90c384097cd3954a55775e16e762cb3acc9`  
		Last Modified: Thu, 06 Dec 2018 00:54:17 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a535fe28f4bb7f1c713d8dfada59cf1b2995ee38aa93d7674726c18bd4b0c489`  
		Last Modified: Thu, 06 Dec 2018 00:54:16 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5f9b51ac823ee16e14cd815a0f0b2ef6113ff22fa705dac250a1983ff81a1b`  
		Last Modified: Thu, 17 Jan 2019 23:25:51 GMT  
		Size: 6.2 MB (6168854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8696034fae33d95b36a1fcfce91cf17b0d9606d99c7cd9feef5bbf0bf440da34`  
		Last Modified: Thu, 17 Jan 2019 23:26:17 GMT  
		Size: 135.2 MB (135202205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5234706d1d355ef20df49c2522164a9339cac66f0847d12f0387c254827e8459`  
		Last Modified: Thu, 17 Jan 2019 23:25:50 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae526c8f19c2d50415b449d54b10d55bb10680c19b0ef40db43235599d89040`  
		Last Modified: Thu, 17 Jan 2019 23:25:50 GMT  
		Size: 3.0 KB (2979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:8.0.13-4-centos`

```console
$ docker pull percona@sha256:650345f24c82af6ab79e8f1c01dc72fb27d6d75de69b97fa5ba2141bb6d2acec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:8.0.13-4-centos` - linux; amd64

```console
$ docker pull percona@sha256:e2285673e3ce5d35317e6bffda53ec38f670248f78073d398f18d215397684f6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.5 MB (216542670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85c3683c84f34033abea77772ca27f555a1dcf01c8ead8b578936c2a8001b616`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 06 Dec 2018 00:50:52 GMT
RUN groupadd -g 1001 mysql
# Thu, 06 Dec 2018 00:50:53 GMT
RUN useradd -u 1001 -r -g 1001 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 17 Jan 2019 23:24:23 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY 	&& percona-release disable all 	&& percona-release enable ps-80 release
# Thu, 17 Jan 2019 23:24:23 GMT
ENV PERCONA_VERSION=8.0.13-4.1.el7
# Thu, 17 Jan 2019 23:25:10 GMT
RUN yum install -y 		percona-server-server-${PERCONA_VERSION} 		percona-server-tokudb-${PERCONA_VERSION} 		percona-server-rocksdb-${PERCONA_VERSION} 		which 		policycoreutils 		https://repo.percona.com/percona/yum/release/7/RPMS/x86_64/jemalloc-3.6.0-1.el7.x86_64.rpm 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 17 Jan 2019 23:25:17 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 17 Jan 2019 23:25:17 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 17 Jan 2019 23:25:17 GMT
COPY file:44b2f1e944885f8e6d3df030f872085ad4291f2ab0b4afe3dbedf4527fcd3207 in /docker-entrypoint.sh 
# Thu, 17 Jan 2019 23:25:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 17 Jan 2019 23:25:18 GMT
USER mysql
# Thu, 17 Jan 2019 23:25:18 GMT
EXPOSE 3306 33060
# Thu, 17 Jan 2019 23:25:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e19bbb608a4343d46c7d0b51977bf90c384097cd3954a55775e16e762cb3acc9`  
		Last Modified: Thu, 06 Dec 2018 00:54:17 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a535fe28f4bb7f1c713d8dfada59cf1b2995ee38aa93d7674726c18bd4b0c489`  
		Last Modified: Thu, 06 Dec 2018 00:54:16 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5f9b51ac823ee16e14cd815a0f0b2ef6113ff22fa705dac250a1983ff81a1b`  
		Last Modified: Thu, 17 Jan 2019 23:25:51 GMT  
		Size: 6.2 MB (6168854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8696034fae33d95b36a1fcfce91cf17b0d9606d99c7cd9feef5bbf0bf440da34`  
		Last Modified: Thu, 17 Jan 2019 23:26:17 GMT  
		Size: 135.2 MB (135202205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5234706d1d355ef20df49c2522164a9339cac66f0847d12f0387c254827e8459`  
		Last Modified: Thu, 17 Jan 2019 23:25:50 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae526c8f19c2d50415b449d54b10d55bb10680c19b0ef40db43235599d89040`  
		Last Modified: Thu, 17 Jan 2019 23:25:50 GMT  
		Size: 3.0 KB (2979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:8.0-centos`

```console
$ docker pull percona@sha256:650345f24c82af6ab79e8f1c01dc72fb27d6d75de69b97fa5ba2141bb6d2acec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:8.0-centos` - linux; amd64

```console
$ docker pull percona@sha256:e2285673e3ce5d35317e6bffda53ec38f670248f78073d398f18d215397684f6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.5 MB (216542670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85c3683c84f34033abea77772ca27f555a1dcf01c8ead8b578936c2a8001b616`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 06 Dec 2018 00:50:52 GMT
RUN groupadd -g 1001 mysql
# Thu, 06 Dec 2018 00:50:53 GMT
RUN useradd -u 1001 -r -g 1001 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 17 Jan 2019 23:24:23 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY 	&& percona-release disable all 	&& percona-release enable ps-80 release
# Thu, 17 Jan 2019 23:24:23 GMT
ENV PERCONA_VERSION=8.0.13-4.1.el7
# Thu, 17 Jan 2019 23:25:10 GMT
RUN yum install -y 		percona-server-server-${PERCONA_VERSION} 		percona-server-tokudb-${PERCONA_VERSION} 		percona-server-rocksdb-${PERCONA_VERSION} 		which 		policycoreutils 		https://repo.percona.com/percona/yum/release/7/RPMS/x86_64/jemalloc-3.6.0-1.el7.x86_64.rpm 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 17 Jan 2019 23:25:17 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 17 Jan 2019 23:25:17 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 17 Jan 2019 23:25:17 GMT
COPY file:44b2f1e944885f8e6d3df030f872085ad4291f2ab0b4afe3dbedf4527fcd3207 in /docker-entrypoint.sh 
# Thu, 17 Jan 2019 23:25:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 17 Jan 2019 23:25:18 GMT
USER mysql
# Thu, 17 Jan 2019 23:25:18 GMT
EXPOSE 3306 33060
# Thu, 17 Jan 2019 23:25:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e19bbb608a4343d46c7d0b51977bf90c384097cd3954a55775e16e762cb3acc9`  
		Last Modified: Thu, 06 Dec 2018 00:54:17 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a535fe28f4bb7f1c713d8dfada59cf1b2995ee38aa93d7674726c18bd4b0c489`  
		Last Modified: Thu, 06 Dec 2018 00:54:16 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5f9b51ac823ee16e14cd815a0f0b2ef6113ff22fa705dac250a1983ff81a1b`  
		Last Modified: Thu, 17 Jan 2019 23:25:51 GMT  
		Size: 6.2 MB (6168854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8696034fae33d95b36a1fcfce91cf17b0d9606d99c7cd9feef5bbf0bf440da34`  
		Last Modified: Thu, 17 Jan 2019 23:26:17 GMT  
		Size: 135.2 MB (135202205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5234706d1d355ef20df49c2522164a9339cac66f0847d12f0387c254827e8459`  
		Last Modified: Thu, 17 Jan 2019 23:25:50 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae526c8f19c2d50415b449d54b10d55bb10680c19b0ef40db43235599d89040`  
		Last Modified: Thu, 17 Jan 2019 23:25:50 GMT  
		Size: 3.0 KB (2979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:8-centos`

```console
$ docker pull percona@sha256:650345f24c82af6ab79e8f1c01dc72fb27d6d75de69b97fa5ba2141bb6d2acec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:8-centos` - linux; amd64

```console
$ docker pull percona@sha256:e2285673e3ce5d35317e6bffda53ec38f670248f78073d398f18d215397684f6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.5 MB (216542670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85c3683c84f34033abea77772ca27f555a1dcf01c8ead8b578936c2a8001b616`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 06 Dec 2018 00:50:52 GMT
RUN groupadd -g 1001 mysql
# Thu, 06 Dec 2018 00:50:53 GMT
RUN useradd -u 1001 -r -g 1001 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 17 Jan 2019 23:24:23 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY 	&& percona-release disable all 	&& percona-release enable ps-80 release
# Thu, 17 Jan 2019 23:24:23 GMT
ENV PERCONA_VERSION=8.0.13-4.1.el7
# Thu, 17 Jan 2019 23:25:10 GMT
RUN yum install -y 		percona-server-server-${PERCONA_VERSION} 		percona-server-tokudb-${PERCONA_VERSION} 		percona-server-rocksdb-${PERCONA_VERSION} 		which 		policycoreutils 		https://repo.percona.com/percona/yum/release/7/RPMS/x86_64/jemalloc-3.6.0-1.el7.x86_64.rpm 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 17 Jan 2019 23:25:17 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 17 Jan 2019 23:25:17 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 17 Jan 2019 23:25:17 GMT
COPY file:44b2f1e944885f8e6d3df030f872085ad4291f2ab0b4afe3dbedf4527fcd3207 in /docker-entrypoint.sh 
# Thu, 17 Jan 2019 23:25:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 17 Jan 2019 23:25:18 GMT
USER mysql
# Thu, 17 Jan 2019 23:25:18 GMT
EXPOSE 3306 33060
# Thu, 17 Jan 2019 23:25:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e19bbb608a4343d46c7d0b51977bf90c384097cd3954a55775e16e762cb3acc9`  
		Last Modified: Thu, 06 Dec 2018 00:54:17 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a535fe28f4bb7f1c713d8dfada59cf1b2995ee38aa93d7674726c18bd4b0c489`  
		Last Modified: Thu, 06 Dec 2018 00:54:16 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5f9b51ac823ee16e14cd815a0f0b2ef6113ff22fa705dac250a1983ff81a1b`  
		Last Modified: Thu, 17 Jan 2019 23:25:51 GMT  
		Size: 6.2 MB (6168854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8696034fae33d95b36a1fcfce91cf17b0d9606d99c7cd9feef5bbf0bf440da34`  
		Last Modified: Thu, 17 Jan 2019 23:26:17 GMT  
		Size: 135.2 MB (135202205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5234706d1d355ef20df49c2522164a9339cac66f0847d12f0387c254827e8459`  
		Last Modified: Thu, 17 Jan 2019 23:25:50 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae526c8f19c2d50415b449d54b10d55bb10680c19b0ef40db43235599d89040`  
		Last Modified: Thu, 17 Jan 2019 23:25:50 GMT  
		Size: 3.0 KB (2979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:centos`

```console
$ docker pull percona@sha256:3ce8cfb4130f13c47eb87347bab81e216e7685ed50193628dad03f1d6ae94e46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:centos` - linux; amd64

```console
$ docker pull percona@sha256:728bba043726ed5c82b8cb4819d02068f47cbfec768a6641d663896be2b9dd73
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.3 MB (192283404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae9775984a9efb79dc32fb1bfe1bd8a8ee061b2003521af251325b43789f828`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 06 Dec 2018 00:51:57 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 06 Dec 2018 00:51:58 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Tue, 19 Feb 2019 22:25:04 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7         && curl -L -o /tmp/percona-release.rpm https://repo.percona.com/percona/yum/percona-release-0.1-10.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm         && percona-release enable original release
# Tue, 19 Feb 2019 22:25:05 GMT
ENV PERCONA_VERSION=5.7.25-28.1.el7
# Tue, 19 Feb 2019 22:26:06 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Tue, 19 Feb 2019 22:26:07 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Tue, 19 Feb 2019 22:26:08 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 19 Feb 2019 22:26:08 GMT
COPY file:8da6ca55fbd697af8ce67f582b55e6e21956a9f1a34618fb299f82d13032a67c in /docker-entrypoint.sh 
# Tue, 19 Feb 2019 22:26:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 19 Feb 2019 22:26:08 GMT
USER mysql
# Tue, 19 Feb 2019 22:26:09 GMT
EXPOSE 3306
# Tue, 19 Feb 2019 22:26:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c9949b6b67e4236f5b5abeac7171fa3c0c9884f17e292571774f3f0b23821d`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3a16f63d7e54379670bae4157d428ed66f44ccab9df929e6df51e5ffe46019`  
		Last Modified: Thu, 06 Dec 2018 00:59:20 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e3e7b32b9c409d0ae9c31a87a5a0315e9d1c79d3b5242ad709d0dabeb70240`  
		Last Modified: Tue, 19 Feb 2019 22:28:59 GMT  
		Size: 6.2 MB (6180721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07341880df468609c1f7c9516499511e2a6d0e3b26ab1a1b111a1915168379c2`  
		Last Modified: Tue, 19 Feb 2019 22:29:29 GMT  
		Size: 110.9 MB (110930827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e9cd003811724feca56ea0dda54a5b78fff33252d8f174343792aa0c3c70fc`  
		Last Modified: Tue, 19 Feb 2019 22:28:57 GMT  
		Size: 1.4 KB (1385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:122e12184dbf06c81a3a61faa63403bceefcd5eecc276fa4d97b4d92670e11e2`  
		Last Modified: Tue, 19 Feb 2019 22:28:57 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:latest`

```console
$ docker pull percona@sha256:3ce8cfb4130f13c47eb87347bab81e216e7685ed50193628dad03f1d6ae94e46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:latest` - linux; amd64

```console
$ docker pull percona@sha256:728bba043726ed5c82b8cb4819d02068f47cbfec768a6641d663896be2b9dd73
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.3 MB (192283404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae9775984a9efb79dc32fb1bfe1bd8a8ee061b2003521af251325b43789f828`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 06 Dec 2018 00:51:57 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 06 Dec 2018 00:51:58 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Tue, 19 Feb 2019 22:25:04 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7         && curl -L -o /tmp/percona-release.rpm https://repo.percona.com/percona/yum/percona-release-0.1-10.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm         && percona-release enable original release
# Tue, 19 Feb 2019 22:25:05 GMT
ENV PERCONA_VERSION=5.7.25-28.1.el7
# Tue, 19 Feb 2019 22:26:06 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Tue, 19 Feb 2019 22:26:07 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Tue, 19 Feb 2019 22:26:08 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 19 Feb 2019 22:26:08 GMT
COPY file:8da6ca55fbd697af8ce67f582b55e6e21956a9f1a34618fb299f82d13032a67c in /docker-entrypoint.sh 
# Tue, 19 Feb 2019 22:26:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 19 Feb 2019 22:26:08 GMT
USER mysql
# Tue, 19 Feb 2019 22:26:09 GMT
EXPOSE 3306
# Tue, 19 Feb 2019 22:26:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c9949b6b67e4236f5b5abeac7171fa3c0c9884f17e292571774f3f0b23821d`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3a16f63d7e54379670bae4157d428ed66f44ccab9df929e6df51e5ffe46019`  
		Last Modified: Thu, 06 Dec 2018 00:59:20 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e3e7b32b9c409d0ae9c31a87a5a0315e9d1c79d3b5242ad709d0dabeb70240`  
		Last Modified: Tue, 19 Feb 2019 22:28:59 GMT  
		Size: 6.2 MB (6180721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07341880df468609c1f7c9516499511e2a6d0e3b26ab1a1b111a1915168379c2`  
		Last Modified: Tue, 19 Feb 2019 22:29:29 GMT  
		Size: 110.9 MB (110930827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e9cd003811724feca56ea0dda54a5b78fff33252d8f174343792aa0c3c70fc`  
		Last Modified: Tue, 19 Feb 2019 22:28:57 GMT  
		Size: 1.4 KB (1385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:122e12184dbf06c81a3a61faa63403bceefcd5eecc276fa4d97b4d92670e11e2`  
		Last Modified: Tue, 19 Feb 2019 22:28:57 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:ps-5`

```console
$ docker pull percona@sha256:3ce8cfb4130f13c47eb87347bab81e216e7685ed50193628dad03f1d6ae94e46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:ps-5` - linux; amd64

```console
$ docker pull percona@sha256:728bba043726ed5c82b8cb4819d02068f47cbfec768a6641d663896be2b9dd73
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.3 MB (192283404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae9775984a9efb79dc32fb1bfe1bd8a8ee061b2003521af251325b43789f828`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 06 Dec 2018 00:51:57 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 06 Dec 2018 00:51:58 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Tue, 19 Feb 2019 22:25:04 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7         && curl -L -o /tmp/percona-release.rpm https://repo.percona.com/percona/yum/percona-release-0.1-10.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm         && percona-release enable original release
# Tue, 19 Feb 2019 22:25:05 GMT
ENV PERCONA_VERSION=5.7.25-28.1.el7
# Tue, 19 Feb 2019 22:26:06 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Tue, 19 Feb 2019 22:26:07 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Tue, 19 Feb 2019 22:26:08 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 19 Feb 2019 22:26:08 GMT
COPY file:8da6ca55fbd697af8ce67f582b55e6e21956a9f1a34618fb299f82d13032a67c in /docker-entrypoint.sh 
# Tue, 19 Feb 2019 22:26:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 19 Feb 2019 22:26:08 GMT
USER mysql
# Tue, 19 Feb 2019 22:26:09 GMT
EXPOSE 3306
# Tue, 19 Feb 2019 22:26:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c9949b6b67e4236f5b5abeac7171fa3c0c9884f17e292571774f3f0b23821d`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3a16f63d7e54379670bae4157d428ed66f44ccab9df929e6df51e5ffe46019`  
		Last Modified: Thu, 06 Dec 2018 00:59:20 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e3e7b32b9c409d0ae9c31a87a5a0315e9d1c79d3b5242ad709d0dabeb70240`  
		Last Modified: Tue, 19 Feb 2019 22:28:59 GMT  
		Size: 6.2 MB (6180721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07341880df468609c1f7c9516499511e2a6d0e3b26ab1a1b111a1915168379c2`  
		Last Modified: Tue, 19 Feb 2019 22:29:29 GMT  
		Size: 110.9 MB (110930827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e9cd003811724feca56ea0dda54a5b78fff33252d8f174343792aa0c3c70fc`  
		Last Modified: Tue, 19 Feb 2019 22:28:57 GMT  
		Size: 1.4 KB (1385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:122e12184dbf06c81a3a61faa63403bceefcd5eecc276fa4d97b4d92670e11e2`  
		Last Modified: Tue, 19 Feb 2019 22:28:57 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:ps-5.6`

```console
$ docker pull percona@sha256:9eda09cbc2b4e7877f9bcb4748937c96cd7b8a1ec45401a9b401df7ccbb0a25d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:ps-5.6` - linux; amd64

```console
$ docker pull percona@sha256:df06040e14599314f412270e548ffafdec505d29ef5245b91c32181f533f9ed5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.5 MB (138511287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccc5875cb148f5d9057d5d35ca5550955c7d755d4318438c0c9357115e40061e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 06 Dec 2018 00:51:57 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 06 Dec 2018 00:51:58 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Wed, 30 Jan 2019 02:20:24 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY 	&& percona-release disable all 	&& percona-release enable percona release
# Wed, 30 Jan 2019 02:20:24 GMT
ENV PERCONA_VERSION=5.6.43-rel84.3.el7
# Wed, 30 Jan 2019 02:20:59 GMT
RUN yum install -y 		Percona-Server-server-56-${PERCONA_VERSION} 		Percona-Server-tokudb-56-${PERCONA_VERSION} 		Percona-Server-rocksdb-56-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Wed, 30 Jan 2019 02:21:00 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /etc/my.cnf.d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user|sql_mode)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user|sql_mode)/#&/' 	&& sed -i '/Make sure only root/,/fi/d' /usr/bin/ps_tokudb_admin 	&& echo "thp-setting=never" >> /etc/my.cnf 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Wed, 30 Jan 2019 02:21:00 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 30 Jan 2019 02:21:01 GMT
COPY file:901ced2ffcf1945c034e123402c75e7363c1cc0a3a037fa1c559cad28013c95e in /docker-entrypoint.sh 
# Wed, 30 Jan 2019 02:21:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 30 Jan 2019 02:21:01 GMT
USER mysql
# Wed, 30 Jan 2019 02:21:01 GMT
EXPOSE 3306
# Wed, 30 Jan 2019 02:21:01 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c9949b6b67e4236f5b5abeac7171fa3c0c9884f17e292571774f3f0b23821d`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3a16f63d7e54379670bae4157d428ed66f44ccab9df929e6df51e5ffe46019`  
		Last Modified: Thu, 06 Dec 2018 00:59:20 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b279da37e09a582fa7b90e289f0b0e5c0e7aa58315a46a996fc408e2e84854dd`  
		Last Modified: Wed, 30 Jan 2019 02:21:34 GMT  
		Size: 6.2 MB (6168839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f2452fdab22ffb7d02262d65e5ba5ce99b7ee3b591935efede40349fba7c49`  
		Last Modified: Wed, 30 Jan 2019 02:21:43 GMT  
		Size: 57.2 MB (57167217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1401342492813f089438f187e24b3f5344d6dd94a5fc443cd9c6c014f600a7c6`  
		Last Modified: Wed, 30 Jan 2019 02:21:32 GMT  
		Size: 4.9 KB (4879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69e38fd69beca19fcb5b7950c7e8671fa550962d0af47ca2631826f7b99b49a`  
		Last Modified: Wed, 30 Jan 2019 02:21:32 GMT  
		Size: 2.9 KB (2858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:ps-5.6.43`

```console
$ docker pull percona@sha256:9eda09cbc2b4e7877f9bcb4748937c96cd7b8a1ec45401a9b401df7ccbb0a25d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:ps-5.6.43` - linux; amd64

```console
$ docker pull percona@sha256:df06040e14599314f412270e548ffafdec505d29ef5245b91c32181f533f9ed5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.5 MB (138511287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccc5875cb148f5d9057d5d35ca5550955c7d755d4318438c0c9357115e40061e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 06 Dec 2018 00:51:57 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 06 Dec 2018 00:51:58 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Wed, 30 Jan 2019 02:20:24 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY 	&& percona-release disable all 	&& percona-release enable percona release
# Wed, 30 Jan 2019 02:20:24 GMT
ENV PERCONA_VERSION=5.6.43-rel84.3.el7
# Wed, 30 Jan 2019 02:20:59 GMT
RUN yum install -y 		Percona-Server-server-56-${PERCONA_VERSION} 		Percona-Server-tokudb-56-${PERCONA_VERSION} 		Percona-Server-rocksdb-56-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Wed, 30 Jan 2019 02:21:00 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /etc/my.cnf.d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user|sql_mode)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user|sql_mode)/#&/' 	&& sed -i '/Make sure only root/,/fi/d' /usr/bin/ps_tokudb_admin 	&& echo "thp-setting=never" >> /etc/my.cnf 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Wed, 30 Jan 2019 02:21:00 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 30 Jan 2019 02:21:01 GMT
COPY file:901ced2ffcf1945c034e123402c75e7363c1cc0a3a037fa1c559cad28013c95e in /docker-entrypoint.sh 
# Wed, 30 Jan 2019 02:21:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 30 Jan 2019 02:21:01 GMT
USER mysql
# Wed, 30 Jan 2019 02:21:01 GMT
EXPOSE 3306
# Wed, 30 Jan 2019 02:21:01 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c9949b6b67e4236f5b5abeac7171fa3c0c9884f17e292571774f3f0b23821d`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3a16f63d7e54379670bae4157d428ed66f44ccab9df929e6df51e5ffe46019`  
		Last Modified: Thu, 06 Dec 2018 00:59:20 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b279da37e09a582fa7b90e289f0b0e5c0e7aa58315a46a996fc408e2e84854dd`  
		Last Modified: Wed, 30 Jan 2019 02:21:34 GMT  
		Size: 6.2 MB (6168839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f2452fdab22ffb7d02262d65e5ba5ce99b7ee3b591935efede40349fba7c49`  
		Last Modified: Wed, 30 Jan 2019 02:21:43 GMT  
		Size: 57.2 MB (57167217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1401342492813f089438f187e24b3f5344d6dd94a5fc443cd9c6c014f600a7c6`  
		Last Modified: Wed, 30 Jan 2019 02:21:32 GMT  
		Size: 4.9 KB (4879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69e38fd69beca19fcb5b7950c7e8671fa550962d0af47ca2631826f7b99b49a`  
		Last Modified: Wed, 30 Jan 2019 02:21:32 GMT  
		Size: 2.9 KB (2858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:ps-5.7`

```console
$ docker pull percona@sha256:3ce8cfb4130f13c47eb87347bab81e216e7685ed50193628dad03f1d6ae94e46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:ps-5.7` - linux; amd64

```console
$ docker pull percona@sha256:728bba043726ed5c82b8cb4819d02068f47cbfec768a6641d663896be2b9dd73
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.3 MB (192283404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae9775984a9efb79dc32fb1bfe1bd8a8ee061b2003521af251325b43789f828`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 06 Dec 2018 00:51:57 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 06 Dec 2018 00:51:58 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Tue, 19 Feb 2019 22:25:04 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7         && curl -L -o /tmp/percona-release.rpm https://repo.percona.com/percona/yum/percona-release-0.1-10.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm         && percona-release enable original release
# Tue, 19 Feb 2019 22:25:05 GMT
ENV PERCONA_VERSION=5.7.25-28.1.el7
# Tue, 19 Feb 2019 22:26:06 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Tue, 19 Feb 2019 22:26:07 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Tue, 19 Feb 2019 22:26:08 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 19 Feb 2019 22:26:08 GMT
COPY file:8da6ca55fbd697af8ce67f582b55e6e21956a9f1a34618fb299f82d13032a67c in /docker-entrypoint.sh 
# Tue, 19 Feb 2019 22:26:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 19 Feb 2019 22:26:08 GMT
USER mysql
# Tue, 19 Feb 2019 22:26:09 GMT
EXPOSE 3306
# Tue, 19 Feb 2019 22:26:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c9949b6b67e4236f5b5abeac7171fa3c0c9884f17e292571774f3f0b23821d`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3a16f63d7e54379670bae4157d428ed66f44ccab9df929e6df51e5ffe46019`  
		Last Modified: Thu, 06 Dec 2018 00:59:20 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e3e7b32b9c409d0ae9c31a87a5a0315e9d1c79d3b5242ad709d0dabeb70240`  
		Last Modified: Tue, 19 Feb 2019 22:28:59 GMT  
		Size: 6.2 MB (6180721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07341880df468609c1f7c9516499511e2a6d0e3b26ab1a1b111a1915168379c2`  
		Last Modified: Tue, 19 Feb 2019 22:29:29 GMT  
		Size: 110.9 MB (110930827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e9cd003811724feca56ea0dda54a5b78fff33252d8f174343792aa0c3c70fc`  
		Last Modified: Tue, 19 Feb 2019 22:28:57 GMT  
		Size: 1.4 KB (1385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:122e12184dbf06c81a3a61faa63403bceefcd5eecc276fa4d97b4d92670e11e2`  
		Last Modified: Tue, 19 Feb 2019 22:28:57 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:ps-5.7.25`

```console
$ docker pull percona@sha256:3ce8cfb4130f13c47eb87347bab81e216e7685ed50193628dad03f1d6ae94e46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:ps-5.7.25` - linux; amd64

```console
$ docker pull percona@sha256:728bba043726ed5c82b8cb4819d02068f47cbfec768a6641d663896be2b9dd73
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.3 MB (192283404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae9775984a9efb79dc32fb1bfe1bd8a8ee061b2003521af251325b43789f828`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 06 Dec 2018 00:51:57 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 06 Dec 2018 00:51:58 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Tue, 19 Feb 2019 22:25:04 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7         && curl -L -o /tmp/percona-release.rpm https://repo.percona.com/percona/yum/percona-release-0.1-10.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm         && percona-release enable original release
# Tue, 19 Feb 2019 22:25:05 GMT
ENV PERCONA_VERSION=5.7.25-28.1.el7
# Tue, 19 Feb 2019 22:26:06 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Tue, 19 Feb 2019 22:26:07 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Tue, 19 Feb 2019 22:26:08 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 19 Feb 2019 22:26:08 GMT
COPY file:8da6ca55fbd697af8ce67f582b55e6e21956a9f1a34618fb299f82d13032a67c in /docker-entrypoint.sh 
# Tue, 19 Feb 2019 22:26:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 19 Feb 2019 22:26:08 GMT
USER mysql
# Tue, 19 Feb 2019 22:26:09 GMT
EXPOSE 3306
# Tue, 19 Feb 2019 22:26:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c9949b6b67e4236f5b5abeac7171fa3c0c9884f17e292571774f3f0b23821d`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3a16f63d7e54379670bae4157d428ed66f44ccab9df929e6df51e5ffe46019`  
		Last Modified: Thu, 06 Dec 2018 00:59:20 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e3e7b32b9c409d0ae9c31a87a5a0315e9d1c79d3b5242ad709d0dabeb70240`  
		Last Modified: Tue, 19 Feb 2019 22:28:59 GMT  
		Size: 6.2 MB (6180721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07341880df468609c1f7c9516499511e2a6d0e3b26ab1a1b111a1915168379c2`  
		Last Modified: Tue, 19 Feb 2019 22:29:29 GMT  
		Size: 110.9 MB (110930827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e9cd003811724feca56ea0dda54a5b78fff33252d8f174343792aa0c3c70fc`  
		Last Modified: Tue, 19 Feb 2019 22:28:57 GMT  
		Size: 1.4 KB (1385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:122e12184dbf06c81a3a61faa63403bceefcd5eecc276fa4d97b4d92670e11e2`  
		Last Modified: Tue, 19 Feb 2019 22:28:57 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:ps-8`

```console
$ docker pull percona@sha256:650345f24c82af6ab79e8f1c01dc72fb27d6d75de69b97fa5ba2141bb6d2acec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:ps-8` - linux; amd64

```console
$ docker pull percona@sha256:e2285673e3ce5d35317e6bffda53ec38f670248f78073d398f18d215397684f6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.5 MB (216542670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85c3683c84f34033abea77772ca27f555a1dcf01c8ead8b578936c2a8001b616`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 06 Dec 2018 00:50:52 GMT
RUN groupadd -g 1001 mysql
# Thu, 06 Dec 2018 00:50:53 GMT
RUN useradd -u 1001 -r -g 1001 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 17 Jan 2019 23:24:23 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY 	&& percona-release disable all 	&& percona-release enable ps-80 release
# Thu, 17 Jan 2019 23:24:23 GMT
ENV PERCONA_VERSION=8.0.13-4.1.el7
# Thu, 17 Jan 2019 23:25:10 GMT
RUN yum install -y 		percona-server-server-${PERCONA_VERSION} 		percona-server-tokudb-${PERCONA_VERSION} 		percona-server-rocksdb-${PERCONA_VERSION} 		which 		policycoreutils 		https://repo.percona.com/percona/yum/release/7/RPMS/x86_64/jemalloc-3.6.0-1.el7.x86_64.rpm 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 17 Jan 2019 23:25:17 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 17 Jan 2019 23:25:17 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 17 Jan 2019 23:25:17 GMT
COPY file:44b2f1e944885f8e6d3df030f872085ad4291f2ab0b4afe3dbedf4527fcd3207 in /docker-entrypoint.sh 
# Thu, 17 Jan 2019 23:25:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 17 Jan 2019 23:25:18 GMT
USER mysql
# Thu, 17 Jan 2019 23:25:18 GMT
EXPOSE 3306 33060
# Thu, 17 Jan 2019 23:25:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e19bbb608a4343d46c7d0b51977bf90c384097cd3954a55775e16e762cb3acc9`  
		Last Modified: Thu, 06 Dec 2018 00:54:17 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a535fe28f4bb7f1c713d8dfada59cf1b2995ee38aa93d7674726c18bd4b0c489`  
		Last Modified: Thu, 06 Dec 2018 00:54:16 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5f9b51ac823ee16e14cd815a0f0b2ef6113ff22fa705dac250a1983ff81a1b`  
		Last Modified: Thu, 17 Jan 2019 23:25:51 GMT  
		Size: 6.2 MB (6168854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8696034fae33d95b36a1fcfce91cf17b0d9606d99c7cd9feef5bbf0bf440da34`  
		Last Modified: Thu, 17 Jan 2019 23:26:17 GMT  
		Size: 135.2 MB (135202205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5234706d1d355ef20df49c2522164a9339cac66f0847d12f0387c254827e8459`  
		Last Modified: Thu, 17 Jan 2019 23:25:50 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae526c8f19c2d50415b449d54b10d55bb10680c19b0ef40db43235599d89040`  
		Last Modified: Thu, 17 Jan 2019 23:25:50 GMT  
		Size: 3.0 KB (2979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:ps-8.0`

```console
$ docker pull percona@sha256:650345f24c82af6ab79e8f1c01dc72fb27d6d75de69b97fa5ba2141bb6d2acec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:ps-8.0` - linux; amd64

```console
$ docker pull percona@sha256:e2285673e3ce5d35317e6bffda53ec38f670248f78073d398f18d215397684f6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.5 MB (216542670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85c3683c84f34033abea77772ca27f555a1dcf01c8ead8b578936c2a8001b616`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 06 Dec 2018 00:50:52 GMT
RUN groupadd -g 1001 mysql
# Thu, 06 Dec 2018 00:50:53 GMT
RUN useradd -u 1001 -r -g 1001 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 17 Jan 2019 23:24:23 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY 	&& percona-release disable all 	&& percona-release enable ps-80 release
# Thu, 17 Jan 2019 23:24:23 GMT
ENV PERCONA_VERSION=8.0.13-4.1.el7
# Thu, 17 Jan 2019 23:25:10 GMT
RUN yum install -y 		percona-server-server-${PERCONA_VERSION} 		percona-server-tokudb-${PERCONA_VERSION} 		percona-server-rocksdb-${PERCONA_VERSION} 		which 		policycoreutils 		https://repo.percona.com/percona/yum/release/7/RPMS/x86_64/jemalloc-3.6.0-1.el7.x86_64.rpm 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 17 Jan 2019 23:25:17 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 17 Jan 2019 23:25:17 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 17 Jan 2019 23:25:17 GMT
COPY file:44b2f1e944885f8e6d3df030f872085ad4291f2ab0b4afe3dbedf4527fcd3207 in /docker-entrypoint.sh 
# Thu, 17 Jan 2019 23:25:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 17 Jan 2019 23:25:18 GMT
USER mysql
# Thu, 17 Jan 2019 23:25:18 GMT
EXPOSE 3306 33060
# Thu, 17 Jan 2019 23:25:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e19bbb608a4343d46c7d0b51977bf90c384097cd3954a55775e16e762cb3acc9`  
		Last Modified: Thu, 06 Dec 2018 00:54:17 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a535fe28f4bb7f1c713d8dfada59cf1b2995ee38aa93d7674726c18bd4b0c489`  
		Last Modified: Thu, 06 Dec 2018 00:54:16 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5f9b51ac823ee16e14cd815a0f0b2ef6113ff22fa705dac250a1983ff81a1b`  
		Last Modified: Thu, 17 Jan 2019 23:25:51 GMT  
		Size: 6.2 MB (6168854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8696034fae33d95b36a1fcfce91cf17b0d9606d99c7cd9feef5bbf0bf440da34`  
		Last Modified: Thu, 17 Jan 2019 23:26:17 GMT  
		Size: 135.2 MB (135202205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5234706d1d355ef20df49c2522164a9339cac66f0847d12f0387c254827e8459`  
		Last Modified: Thu, 17 Jan 2019 23:25:50 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae526c8f19c2d50415b449d54b10d55bb10680c19b0ef40db43235599d89040`  
		Last Modified: Thu, 17 Jan 2019 23:25:50 GMT  
		Size: 3.0 KB (2979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:ps-8.0.13-4`

```console
$ docker pull percona@sha256:650345f24c82af6ab79e8f1c01dc72fb27d6d75de69b97fa5ba2141bb6d2acec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:ps-8.0.13-4` - linux; amd64

```console
$ docker pull percona@sha256:e2285673e3ce5d35317e6bffda53ec38f670248f78073d398f18d215397684f6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.5 MB (216542670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85c3683c84f34033abea77772ca27f555a1dcf01c8ead8b578936c2a8001b616`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 06 Dec 2018 00:50:52 GMT
RUN groupadd -g 1001 mysql
# Thu, 06 Dec 2018 00:50:53 GMT
RUN useradd -u 1001 -r -g 1001 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 17 Jan 2019 23:24:23 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY 	&& percona-release disable all 	&& percona-release enable ps-80 release
# Thu, 17 Jan 2019 23:24:23 GMT
ENV PERCONA_VERSION=8.0.13-4.1.el7
# Thu, 17 Jan 2019 23:25:10 GMT
RUN yum install -y 		percona-server-server-${PERCONA_VERSION} 		percona-server-tokudb-${PERCONA_VERSION} 		percona-server-rocksdb-${PERCONA_VERSION} 		which 		policycoreutils 		https://repo.percona.com/percona/yum/release/7/RPMS/x86_64/jemalloc-3.6.0-1.el7.x86_64.rpm 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 17 Jan 2019 23:25:17 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 17 Jan 2019 23:25:17 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 17 Jan 2019 23:25:17 GMT
COPY file:44b2f1e944885f8e6d3df030f872085ad4291f2ab0b4afe3dbedf4527fcd3207 in /docker-entrypoint.sh 
# Thu, 17 Jan 2019 23:25:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 17 Jan 2019 23:25:18 GMT
USER mysql
# Thu, 17 Jan 2019 23:25:18 GMT
EXPOSE 3306 33060
# Thu, 17 Jan 2019 23:25:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e19bbb608a4343d46c7d0b51977bf90c384097cd3954a55775e16e762cb3acc9`  
		Last Modified: Thu, 06 Dec 2018 00:54:17 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a535fe28f4bb7f1c713d8dfada59cf1b2995ee38aa93d7674726c18bd4b0c489`  
		Last Modified: Thu, 06 Dec 2018 00:54:16 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5f9b51ac823ee16e14cd815a0f0b2ef6113ff22fa705dac250a1983ff81a1b`  
		Last Modified: Thu, 17 Jan 2019 23:25:51 GMT  
		Size: 6.2 MB (6168854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8696034fae33d95b36a1fcfce91cf17b0d9606d99c7cd9feef5bbf0bf440da34`  
		Last Modified: Thu, 17 Jan 2019 23:26:17 GMT  
		Size: 135.2 MB (135202205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5234706d1d355ef20df49c2522164a9339cac66f0847d12f0387c254827e8459`  
		Last Modified: Thu, 17 Jan 2019 23:25:50 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae526c8f19c2d50415b449d54b10d55bb10680c19b0ef40db43235599d89040`  
		Last Modified: Thu, 17 Jan 2019 23:25:50 GMT  
		Size: 3.0 KB (2979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:psmdb-3.6`

```console
$ docker pull percona@sha256:7829f8b75d8945933b3573735eeb76ca07f0f0f991f74a39c73617285a15fe7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:psmdb-3.6` - linux; amd64

```console
$ docker pull percona@sha256:5ada9232064563212efeac00c11e6cbd0a6bed91419c3e287b9077443db311a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175095945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fb79d8f4ddaf2143f7f503c67b9960e29140ceacb83509c600a68858fd319cb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
MAINTAINER Percona Development <info@percona.com>
# Tue, 19 Feb 2019 22:27:28 GMT
RUN export GNUPGHOME="$(mktemp -d)"         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A         && gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona         && rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7         && curl -L -o /tmp/percona-release.rpm https://repo.percona.com/percona/yum/percona-release-1.0-7.noarch.rpm         && rpmkeys --checksig /tmp/percona-release.rpm         && yum install -y /tmp/percona-release.rpm         && rm -rf "$GNUPGHOME" /tmp/percona-release.rpm         && rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY         && percona-release disable all         && percona-release enable original release
# Tue, 19 Feb 2019 22:27:29 GMT
RUN useradd -u 1001 -r -g 0 -s /sbin/nologin             -c "Default Application User" mongodb
# Tue, 19 Feb 2019 22:27:29 GMT
ENV PERCONA_MAJOR=36
# Tue, 19 Feb 2019 22:27:29 GMT
ENV PERCONA_VERSION=3.6.10-3.0.el7
# Tue, 19 Feb 2019 22:27:29 GMT
ENV K8S_TOOLS_VERSION=0.4.1
# Tue, 19 Feb 2019 22:28:14 GMT
RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm         && yum install -y                 Percona-Server-MongoDB-36-server-${PERCONA_VERSION}                 Percona-Server-MongoDB-36-mongos-${PERCONA_VERSION}                 Percona-Server-MongoDB-36-tools-${PERCONA_VERSION}                 Percona-Server-MongoDB-36-shell-${PERCONA_VERSION}                 curl                 jq         && yum clean all         && rm -rf /var/cache/yum /data/db  && mkdir -p /data/db         && chown -R 1001:0 /data/db
# Tue, 19 Feb 2019 22:28:16 GMT
RUN curl -fSL https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/k8s-mongodb-initiator -o /usr/local/bin/k8s-mongodb-initiator     && curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/mongodb-healthcheck -o /usr/local/bin/mongodb-healthcheck     && chmod 0755 /usr/local/bin/k8s-mongodb-initiator /usr/local/bin/mongodb-healthcheck
# Tue, 19 Feb 2019 22:28:16 GMT
VOLUME [/data/db]
# Tue, 19 Feb 2019 22:28:16 GMT
COPY file:73b257e28d42d38a579e50c8dbd964c054f38728692627d5438a0aa11526970b in /entrypoint.sh 
# Tue, 19 Feb 2019 22:28:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 19 Feb 2019 22:28:17 GMT
EXPOSE 27017
# Tue, 19 Feb 2019 22:28:17 GMT
USER 1001
# Tue, 19 Feb 2019 22:28:17 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12bf5b6dac6fa0eae329991f85e2b20f89168ef30a2f2cb5b620977a1ac95435`  
		Last Modified: Tue, 19 Feb 2019 22:30:18 GMT  
		Size: 6.2 MB (6173286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98db15b38a7851b8126c2302d29b6d03d1ed3c4977d5bfcb8a6676556f85b688`  
		Last Modified: Tue, 19 Feb 2019 22:30:16 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f60903d73272bb76bc900bcb57512546abf18dfccc579c982145c94fb4c9664`  
		Last Modified: Tue, 19 Feb 2019 22:30:40 GMT  
		Size: 87.5 MB (87451520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c12c57cd8867680e722a2dd8e10379fff312ac20ce906e4fc794d75a93d3795`  
		Last Modified: Tue, 19 Feb 2019 22:30:17 GMT  
		Size: 6.3 MB (6300370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9a9e80119a63ee700d3c9cdcbd65cf5742b314703e124719aeda5761cd57d7`  
		Last Modified: Tue, 19 Feb 2019 22:30:16 GMT  
		Size: 3.8 KB (3808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:psmdb-3.6.10`

```console
$ docker pull percona@sha256:7829f8b75d8945933b3573735eeb76ca07f0f0f991f74a39c73617285a15fe7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:psmdb-3.6.10` - linux; amd64

```console
$ docker pull percona@sha256:5ada9232064563212efeac00c11e6cbd0a6bed91419c3e287b9077443db311a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175095945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fb79d8f4ddaf2143f7f503c67b9960e29140ceacb83509c600a68858fd319cb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
MAINTAINER Percona Development <info@percona.com>
# Tue, 19 Feb 2019 22:27:28 GMT
RUN export GNUPGHOME="$(mktemp -d)"         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A         && gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona         && rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7         && curl -L -o /tmp/percona-release.rpm https://repo.percona.com/percona/yum/percona-release-1.0-7.noarch.rpm         && rpmkeys --checksig /tmp/percona-release.rpm         && yum install -y /tmp/percona-release.rpm         && rm -rf "$GNUPGHOME" /tmp/percona-release.rpm         && rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY         && percona-release disable all         && percona-release enable original release
# Tue, 19 Feb 2019 22:27:29 GMT
RUN useradd -u 1001 -r -g 0 -s /sbin/nologin             -c "Default Application User" mongodb
# Tue, 19 Feb 2019 22:27:29 GMT
ENV PERCONA_MAJOR=36
# Tue, 19 Feb 2019 22:27:29 GMT
ENV PERCONA_VERSION=3.6.10-3.0.el7
# Tue, 19 Feb 2019 22:27:29 GMT
ENV K8S_TOOLS_VERSION=0.4.1
# Tue, 19 Feb 2019 22:28:14 GMT
RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm         && yum install -y                 Percona-Server-MongoDB-36-server-${PERCONA_VERSION}                 Percona-Server-MongoDB-36-mongos-${PERCONA_VERSION}                 Percona-Server-MongoDB-36-tools-${PERCONA_VERSION}                 Percona-Server-MongoDB-36-shell-${PERCONA_VERSION}                 curl                 jq         && yum clean all         && rm -rf /var/cache/yum /data/db  && mkdir -p /data/db         && chown -R 1001:0 /data/db
# Tue, 19 Feb 2019 22:28:16 GMT
RUN curl -fSL https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/k8s-mongodb-initiator -o /usr/local/bin/k8s-mongodb-initiator     && curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/mongodb-healthcheck -o /usr/local/bin/mongodb-healthcheck     && chmod 0755 /usr/local/bin/k8s-mongodb-initiator /usr/local/bin/mongodb-healthcheck
# Tue, 19 Feb 2019 22:28:16 GMT
VOLUME [/data/db]
# Tue, 19 Feb 2019 22:28:16 GMT
COPY file:73b257e28d42d38a579e50c8dbd964c054f38728692627d5438a0aa11526970b in /entrypoint.sh 
# Tue, 19 Feb 2019 22:28:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 19 Feb 2019 22:28:17 GMT
EXPOSE 27017
# Tue, 19 Feb 2019 22:28:17 GMT
USER 1001
# Tue, 19 Feb 2019 22:28:17 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12bf5b6dac6fa0eae329991f85e2b20f89168ef30a2f2cb5b620977a1ac95435`  
		Last Modified: Tue, 19 Feb 2019 22:30:18 GMT  
		Size: 6.2 MB (6173286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98db15b38a7851b8126c2302d29b6d03d1ed3c4977d5bfcb8a6676556f85b688`  
		Last Modified: Tue, 19 Feb 2019 22:30:16 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f60903d73272bb76bc900bcb57512546abf18dfccc579c982145c94fb4c9664`  
		Last Modified: Tue, 19 Feb 2019 22:30:40 GMT  
		Size: 87.5 MB (87451520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c12c57cd8867680e722a2dd8e10379fff312ac20ce906e4fc794d75a93d3795`  
		Last Modified: Tue, 19 Feb 2019 22:30:17 GMT  
		Size: 6.3 MB (6300370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9a9e80119a63ee700d3c9cdcbd65cf5742b314703e124719aeda5761cd57d7`  
		Last Modified: Tue, 19 Feb 2019 22:30:16 GMT  
		Size: 3.8 KB (3808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:psmdb-4.0`

```console
$ docker pull percona@sha256:4260c7a3ad94b1d4ab1758c6d1f6e893df72bb913b5f0d61c2dd8d5afbff8ff4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:psmdb-4.0` - linux; amd64

```console
$ docker pull percona@sha256:7e5e2d08f28e8f3181681717daab2a2d86430dce4292ade84e5e75933f0585be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.3 MB (178325203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50eec4df2be4a8f5c2e7ba15fddbcd6426d7f6765d2b6d758a291b4dc3dca176`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
MAINTAINER Percona Development <info@percona.com>
# Tue, 19 Feb 2019 22:26:25 GMT
RUN export GNUPGHOME="$(mktemp -d)"         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A         && gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona         && rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7         && curl -L -o /tmp/percona-release.rpm https://repo.percona.com/percona/yum/percona-release-1.0-7.noarch.rpm         && rpmkeys --checksig /tmp/percona-release.rpm         && yum install -y /tmp/percona-release.rpm         && rm -rf "$GNUPGHOME" /tmp/percona-release.rpm         && rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY         && percona-release disable all         && percona-release enable psmdb-40 release
# Tue, 19 Feb 2019 22:26:26 GMT
RUN useradd -u 1001 -r -g 0 -s /sbin/nologin             -c "Default Application User" mongodb
# Tue, 19 Feb 2019 22:26:26 GMT
ENV PERCONA_MAJOR=40
# Tue, 19 Feb 2019 22:26:26 GMT
ENV PERCONA_VERSION=4.0.5-2.el7
# Tue, 19 Feb 2019 22:26:26 GMT
ENV K8S_TOOLS_VERSION=0.4.1
# Tue, 19 Feb 2019 22:27:08 GMT
RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm         && yum install -y                 percona-server-mongodb-server-${PERCONA_VERSION}                 percona-server-mongodb-mongos-${PERCONA_VERSION}                 percona-server-mongodb-shell-${PERCONA_VERSION}                 percona-server-mongodb-tools-${PERCONA_VERSION}                 curl                 jq         && yum clean all         && rm -rf /var/cache/yum /data/db  && mkdir -p /data/db         && chown -R 1001:0 /data/db
# Tue, 19 Feb 2019 22:27:09 GMT
RUN curl -fSL https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/k8s-mongodb-initiator -o /usr/local/bin/k8s-mongodb-initiator     && curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/mongodb-healthcheck -o /usr/local/bin/mongodb-healthcheck     && chmod 0755 /usr/local/bin/k8s-mongodb-initiator /usr/local/bin/mongodb-healthcheck
# Tue, 19 Feb 2019 22:27:09 GMT
VOLUME [/data/db]
# Tue, 19 Feb 2019 22:27:10 GMT
COPY file:73b257e28d42d38a579e50c8dbd964c054f38728692627d5438a0aa11526970b in /entrypoint.sh 
# Tue, 19 Feb 2019 22:27:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 19 Feb 2019 22:27:10 GMT
EXPOSE 27017
# Tue, 19 Feb 2019 22:27:10 GMT
USER 1001
# Tue, 19 Feb 2019 22:27:10 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ff176ced20d87265d5222bbdb5e4dfc1a97e861d1d9554248fc3012a488657`  
		Last Modified: Tue, 19 Feb 2019 22:29:47 GMT  
		Size: 6.2 MB (6173384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f97017e3b3e9413a21ba4cc1ff8138060d480624fccf9af76c96e00c20523d`  
		Last Modified: Tue, 19 Feb 2019 22:29:45 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f52ad039572485247711d4d7ebd1cc617db9210d6e17651f448e997f78624d`  
		Last Modified: Tue, 19 Feb 2019 22:30:10 GMT  
		Size: 90.7 MB (90680686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba2c545ed8955569c57045d9957726e61f73b8abe6fc2b0806baed684105cef`  
		Last Modified: Tue, 19 Feb 2019 22:29:46 GMT  
		Size: 6.3 MB (6300364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c38adefef0a1547a54f34ada375dea916ac233cd5a1f1a2572b0c4855529046`  
		Last Modified: Tue, 19 Feb 2019 22:29:45 GMT  
		Size: 3.8 KB (3808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:psmdb-4.0.5`

```console
$ docker pull percona@sha256:4260c7a3ad94b1d4ab1758c6d1f6e893df72bb913b5f0d61c2dd8d5afbff8ff4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:psmdb-4.0.5` - linux; amd64

```console
$ docker pull percona@sha256:7e5e2d08f28e8f3181681717daab2a2d86430dce4292ade84e5e75933f0585be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.3 MB (178325203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50eec4df2be4a8f5c2e7ba15fddbcd6426d7f6765d2b6d758a291b4dc3dca176`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
MAINTAINER Percona Development <info@percona.com>
# Tue, 19 Feb 2019 22:26:25 GMT
RUN export GNUPGHOME="$(mktemp -d)"         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A         && gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona         && rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7         && curl -L -o /tmp/percona-release.rpm https://repo.percona.com/percona/yum/percona-release-1.0-7.noarch.rpm         && rpmkeys --checksig /tmp/percona-release.rpm         && yum install -y /tmp/percona-release.rpm         && rm -rf "$GNUPGHOME" /tmp/percona-release.rpm         && rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY         && percona-release disable all         && percona-release enable psmdb-40 release
# Tue, 19 Feb 2019 22:26:26 GMT
RUN useradd -u 1001 -r -g 0 -s /sbin/nologin             -c "Default Application User" mongodb
# Tue, 19 Feb 2019 22:26:26 GMT
ENV PERCONA_MAJOR=40
# Tue, 19 Feb 2019 22:26:26 GMT
ENV PERCONA_VERSION=4.0.5-2.el7
# Tue, 19 Feb 2019 22:26:26 GMT
ENV K8S_TOOLS_VERSION=0.4.1
# Tue, 19 Feb 2019 22:27:08 GMT
RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm         && yum install -y                 percona-server-mongodb-server-${PERCONA_VERSION}                 percona-server-mongodb-mongos-${PERCONA_VERSION}                 percona-server-mongodb-shell-${PERCONA_VERSION}                 percona-server-mongodb-tools-${PERCONA_VERSION}                 curl                 jq         && yum clean all         && rm -rf /var/cache/yum /data/db  && mkdir -p /data/db         && chown -R 1001:0 /data/db
# Tue, 19 Feb 2019 22:27:09 GMT
RUN curl -fSL https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/k8s-mongodb-initiator -o /usr/local/bin/k8s-mongodb-initiator     && curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/mongodb-healthcheck -o /usr/local/bin/mongodb-healthcheck     && chmod 0755 /usr/local/bin/k8s-mongodb-initiator /usr/local/bin/mongodb-healthcheck
# Tue, 19 Feb 2019 22:27:09 GMT
VOLUME [/data/db]
# Tue, 19 Feb 2019 22:27:10 GMT
COPY file:73b257e28d42d38a579e50c8dbd964c054f38728692627d5438a0aa11526970b in /entrypoint.sh 
# Tue, 19 Feb 2019 22:27:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 19 Feb 2019 22:27:10 GMT
EXPOSE 27017
# Tue, 19 Feb 2019 22:27:10 GMT
USER 1001
# Tue, 19 Feb 2019 22:27:10 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ff176ced20d87265d5222bbdb5e4dfc1a97e861d1d9554248fc3012a488657`  
		Last Modified: Tue, 19 Feb 2019 22:29:47 GMT  
		Size: 6.2 MB (6173384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f97017e3b3e9413a21ba4cc1ff8138060d480624fccf9af76c96e00c20523d`  
		Last Modified: Tue, 19 Feb 2019 22:29:45 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f52ad039572485247711d4d7ebd1cc617db9210d6e17651f448e997f78624d`  
		Last Modified: Tue, 19 Feb 2019 22:30:10 GMT  
		Size: 90.7 MB (90680686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba2c545ed8955569c57045d9957726e61f73b8abe6fc2b0806baed684105cef`  
		Last Modified: Tue, 19 Feb 2019 22:29:46 GMT  
		Size: 6.3 MB (6300364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c38adefef0a1547a54f34ada375dea916ac233cd5a1f1a2572b0c4855529046`  
		Last Modified: Tue, 19 Feb 2019 22:29:45 GMT  
		Size: 3.8 KB (3808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
