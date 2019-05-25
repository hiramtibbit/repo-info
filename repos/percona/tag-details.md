<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `percona`

-	[`percona:5`](#percona5)
-	[`percona:5.6`](#percona56)
-	[`percona:5.6.44`](#percona5644)
-	[`percona:5.6.44-centos`](#percona5644-centos)
-	[`percona:5.6-centos`](#percona56-centos)
-	[`percona:5.7`](#percona57)
-	[`percona:5.7.25`](#percona5725)
-	[`percona:5.7.25-centos`](#percona5725-centos)
-	[`percona:5.7-centos`](#percona57-centos)
-	[`percona:5-centos`](#percona5-centos)
-	[`percona:8`](#percona8)
-	[`percona:8.0`](#percona80)
-	[`percona:8.0.15-6`](#percona8015-6)
-	[`percona:8.0.15-6-centos`](#percona8015-6-centos)
-	[`percona:8.0-centos`](#percona80-centos)
-	[`percona:8-centos`](#percona8-centos)
-	[`percona:centos`](#perconacentos)
-	[`percona:latest`](#perconalatest)
-	[`percona:ps-5`](#perconaps-5)
-	[`percona:ps-5.6`](#perconaps-56)
-	[`percona:ps-5.6.44`](#perconaps-5644)
-	[`percona:ps-5.7`](#perconaps-57)
-	[`percona:ps-5.7.25`](#perconaps-5725)
-	[`percona:ps-8`](#perconaps-8)
-	[`percona:ps-8.0`](#perconaps-80)
-	[`percona:ps-8.0.15-6`](#perconaps-8015-6)
-	[`percona:psmdb-3.6`](#perconapsmdb-36)
-	[`percona:psmdb-3.6.12`](#perconapsmdb-3612)
-	[`percona:psmdb-4.0`](#perconapsmdb-40)
-	[`percona:psmdb-4.0.9`](#perconapsmdb-409)

## `percona:5`

```console
$ docker pull percona@sha256:744769bb87ea11ceeb9efe7cb04cc49a86db88a6b6449c19f743161be5f6f51a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5` - linux; amd64

```console
$ docker pull percona@sha256:50c3e70053e51bc1983dc292dcb3f2dd71771f20e64adc07045bcede560a5217
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192530683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69377a52e49adc78d8ef9cfe04f68a61c2fc8c17e8d7987db5045688be2a32a5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:12:46 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 14 Mar 2019 22:13:49 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 14 Mar 2019 22:13:50 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 14 Mar 2019 22:13:54 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7         && curl -L -o /tmp/percona-release.rpm https://repo.percona.com/percona/yum/percona-release-0.1-10.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm         && percona-release enable original release
# Thu, 14 Mar 2019 22:13:54 GMT
ENV PERCONA_VERSION=5.7.25-28.1.el7
# Thu, 14 Mar 2019 22:14:44 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 14 Mar 2019 22:14:45 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Thu, 14 Mar 2019 22:14:46 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 14 Mar 2019 22:14:46 GMT
COPY file:8da6ca55fbd697af8ce67f582b55e6e21956a9f1a34618fb299f82d13032a67c in /docker-entrypoint.sh 
# Thu, 14 Mar 2019 22:14:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Mar 2019 22:14:47 GMT
USER mysql
# Thu, 14 Mar 2019 22:14:47 GMT
EXPOSE 3306
# Thu, 14 Mar 2019 22:14:47 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f6865b89f9596325da4790ccaaf8ed5b4d9c696fb13767e75a1d87907c8ed2`  
		Last Modified: Thu, 14 Mar 2019 22:18:10 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422d044cecee4545f0f745cd8c534d7b80b2ebed3cb2246f8f1c591faffcbbc5`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8389af72ea04b1bb1f30fa5314babfec9a32763ed4c74ee71fd72a975503aa9b`  
		Last Modified: Thu, 14 Mar 2019 22:18:10 GMT  
		Size: 6.2 MB (6183652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f3664696cbb9c59a31fb0f03be5943b6aa5e2cd81e4a4bc954c3e1999ad807`  
		Last Modified: Thu, 14 Mar 2019 22:18:30 GMT  
		Size: 110.9 MB (110936872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ae0525f3a459b5f846202ea972d308d8d686a46eb3d0c9674a8a704bb66d88`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 1.4 KB (1384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3f3d8a2a2789720112d2a5cfc57ef102781536fced750be61ebe1b4c7bc13a`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6`

```console
$ docker pull percona@sha256:6162697db37c6a0d0505113a1ffec00bbb96f3f78a11dc73c2987c72f4602f77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6` - linux; amd64

```console
$ docker pull percona@sha256:4ac0623d0c80c5c800a81c8b2ad51c0ea89979b8c4842af2a509e5bffc3073b9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138893643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7197498867b32e057c825519489005e02e1626c2dacc28356c15e866571cef1e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:12:46 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 14 Mar 2019 22:13:49 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 14 Mar 2019 22:13:50 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 14 Mar 2019 22:14:55 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY 	&& percona-release disable all 	&& percona-release enable percona release
# Fri, 24 May 2019 22:33:37 GMT
ENV PERCONA_VERSION=5.6.44-rel86.0.el7
# Fri, 24 May 2019 22:34:17 GMT
RUN yum install -y 		Percona-Server-server-56-${PERCONA_VERSION} 		Percona-Server-tokudb-56-${PERCONA_VERSION} 		Percona-Server-rocksdb-56-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Fri, 24 May 2019 22:34:18 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /etc/my.cnf.d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user|sql_mode)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user|sql_mode)/#&/' 	&& sed -i '/Make sure only root/,/fi/d' /usr/bin/ps_tokudb_admin 	&& echo "thp-setting=never" >> /etc/my.cnf 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Fri, 24 May 2019 22:34:18 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Fri, 24 May 2019 22:34:18 GMT
COPY file:1d7c9d67c6f11e6632845ae6085c57582457d49c5e3d732f0b3bd3f40b8bf179 in /docker-entrypoint.sh 
# Fri, 24 May 2019 22:34:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:34:19 GMT
USER mysql
# Fri, 24 May 2019 22:34:19 GMT
EXPOSE 3306
# Fri, 24 May 2019 22:34:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f6865b89f9596325da4790ccaaf8ed5b4d9c696fb13767e75a1d87907c8ed2`  
		Last Modified: Thu, 14 Mar 2019 22:18:10 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422d044cecee4545f0f745cd8c534d7b80b2ebed3cb2246f8f1c591faffcbbc5`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d6920f041ed7140e59a761f9de2e0ce426feee57483e6d783e38cb9c5b6fa2`  
		Last Modified: Thu, 14 Mar 2019 22:18:43 GMT  
		Size: 6.2 MB (6175644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9139486a56fb8ca75a8b14ca162b7818a49627799997aed92170845e13bc0d4b`  
		Last Modified: Fri, 24 May 2019 22:34:51 GMT  
		Size: 57.3 MB (57304379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3851f272928d37929ac2cb8fa1489686ad2f93b538a796025447babe9fd88e39`  
		Last Modified: Fri, 24 May 2019 22:34:39 GMT  
		Size: 4.9 KB (4881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e979b426cb22cc67aa25ead3b78c87d1f7493751152dca898837546395124073`  
		Last Modified: Fri, 24 May 2019 22:34:39 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.44`

```console
$ docker pull percona@sha256:6162697db37c6a0d0505113a1ffec00bbb96f3f78a11dc73c2987c72f4602f77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6.44` - linux; amd64

```console
$ docker pull percona@sha256:4ac0623d0c80c5c800a81c8b2ad51c0ea89979b8c4842af2a509e5bffc3073b9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138893643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7197498867b32e057c825519489005e02e1626c2dacc28356c15e866571cef1e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:12:46 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 14 Mar 2019 22:13:49 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 14 Mar 2019 22:13:50 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 14 Mar 2019 22:14:55 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY 	&& percona-release disable all 	&& percona-release enable percona release
# Fri, 24 May 2019 22:33:37 GMT
ENV PERCONA_VERSION=5.6.44-rel86.0.el7
# Fri, 24 May 2019 22:34:17 GMT
RUN yum install -y 		Percona-Server-server-56-${PERCONA_VERSION} 		Percona-Server-tokudb-56-${PERCONA_VERSION} 		Percona-Server-rocksdb-56-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Fri, 24 May 2019 22:34:18 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /etc/my.cnf.d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user|sql_mode)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user|sql_mode)/#&/' 	&& sed -i '/Make sure only root/,/fi/d' /usr/bin/ps_tokudb_admin 	&& echo "thp-setting=never" >> /etc/my.cnf 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Fri, 24 May 2019 22:34:18 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Fri, 24 May 2019 22:34:18 GMT
COPY file:1d7c9d67c6f11e6632845ae6085c57582457d49c5e3d732f0b3bd3f40b8bf179 in /docker-entrypoint.sh 
# Fri, 24 May 2019 22:34:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:34:19 GMT
USER mysql
# Fri, 24 May 2019 22:34:19 GMT
EXPOSE 3306
# Fri, 24 May 2019 22:34:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f6865b89f9596325da4790ccaaf8ed5b4d9c696fb13767e75a1d87907c8ed2`  
		Last Modified: Thu, 14 Mar 2019 22:18:10 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422d044cecee4545f0f745cd8c534d7b80b2ebed3cb2246f8f1c591faffcbbc5`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d6920f041ed7140e59a761f9de2e0ce426feee57483e6d783e38cb9c5b6fa2`  
		Last Modified: Thu, 14 Mar 2019 22:18:43 GMT  
		Size: 6.2 MB (6175644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9139486a56fb8ca75a8b14ca162b7818a49627799997aed92170845e13bc0d4b`  
		Last Modified: Fri, 24 May 2019 22:34:51 GMT  
		Size: 57.3 MB (57304379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3851f272928d37929ac2cb8fa1489686ad2f93b538a796025447babe9fd88e39`  
		Last Modified: Fri, 24 May 2019 22:34:39 GMT  
		Size: 4.9 KB (4881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e979b426cb22cc67aa25ead3b78c87d1f7493751152dca898837546395124073`  
		Last Modified: Fri, 24 May 2019 22:34:39 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.44-centos`

```console
$ docker pull percona@sha256:6162697db37c6a0d0505113a1ffec00bbb96f3f78a11dc73c2987c72f4602f77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6.44-centos` - linux; amd64

```console
$ docker pull percona@sha256:4ac0623d0c80c5c800a81c8b2ad51c0ea89979b8c4842af2a509e5bffc3073b9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138893643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7197498867b32e057c825519489005e02e1626c2dacc28356c15e866571cef1e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:12:46 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 14 Mar 2019 22:13:49 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 14 Mar 2019 22:13:50 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 14 Mar 2019 22:14:55 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY 	&& percona-release disable all 	&& percona-release enable percona release
# Fri, 24 May 2019 22:33:37 GMT
ENV PERCONA_VERSION=5.6.44-rel86.0.el7
# Fri, 24 May 2019 22:34:17 GMT
RUN yum install -y 		Percona-Server-server-56-${PERCONA_VERSION} 		Percona-Server-tokudb-56-${PERCONA_VERSION} 		Percona-Server-rocksdb-56-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Fri, 24 May 2019 22:34:18 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /etc/my.cnf.d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user|sql_mode)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user|sql_mode)/#&/' 	&& sed -i '/Make sure only root/,/fi/d' /usr/bin/ps_tokudb_admin 	&& echo "thp-setting=never" >> /etc/my.cnf 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Fri, 24 May 2019 22:34:18 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Fri, 24 May 2019 22:34:18 GMT
COPY file:1d7c9d67c6f11e6632845ae6085c57582457d49c5e3d732f0b3bd3f40b8bf179 in /docker-entrypoint.sh 
# Fri, 24 May 2019 22:34:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:34:19 GMT
USER mysql
# Fri, 24 May 2019 22:34:19 GMT
EXPOSE 3306
# Fri, 24 May 2019 22:34:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f6865b89f9596325da4790ccaaf8ed5b4d9c696fb13767e75a1d87907c8ed2`  
		Last Modified: Thu, 14 Mar 2019 22:18:10 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422d044cecee4545f0f745cd8c534d7b80b2ebed3cb2246f8f1c591faffcbbc5`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d6920f041ed7140e59a761f9de2e0ce426feee57483e6d783e38cb9c5b6fa2`  
		Last Modified: Thu, 14 Mar 2019 22:18:43 GMT  
		Size: 6.2 MB (6175644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9139486a56fb8ca75a8b14ca162b7818a49627799997aed92170845e13bc0d4b`  
		Last Modified: Fri, 24 May 2019 22:34:51 GMT  
		Size: 57.3 MB (57304379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3851f272928d37929ac2cb8fa1489686ad2f93b538a796025447babe9fd88e39`  
		Last Modified: Fri, 24 May 2019 22:34:39 GMT  
		Size: 4.9 KB (4881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e979b426cb22cc67aa25ead3b78c87d1f7493751152dca898837546395124073`  
		Last Modified: Fri, 24 May 2019 22:34:39 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6-centos`

```console
$ docker pull percona@sha256:6162697db37c6a0d0505113a1ffec00bbb96f3f78a11dc73c2987c72f4602f77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6-centos` - linux; amd64

```console
$ docker pull percona@sha256:4ac0623d0c80c5c800a81c8b2ad51c0ea89979b8c4842af2a509e5bffc3073b9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138893643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7197498867b32e057c825519489005e02e1626c2dacc28356c15e866571cef1e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:12:46 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 14 Mar 2019 22:13:49 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 14 Mar 2019 22:13:50 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 14 Mar 2019 22:14:55 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY 	&& percona-release disable all 	&& percona-release enable percona release
# Fri, 24 May 2019 22:33:37 GMT
ENV PERCONA_VERSION=5.6.44-rel86.0.el7
# Fri, 24 May 2019 22:34:17 GMT
RUN yum install -y 		Percona-Server-server-56-${PERCONA_VERSION} 		Percona-Server-tokudb-56-${PERCONA_VERSION} 		Percona-Server-rocksdb-56-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Fri, 24 May 2019 22:34:18 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /etc/my.cnf.d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user|sql_mode)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user|sql_mode)/#&/' 	&& sed -i '/Make sure only root/,/fi/d' /usr/bin/ps_tokudb_admin 	&& echo "thp-setting=never" >> /etc/my.cnf 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Fri, 24 May 2019 22:34:18 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Fri, 24 May 2019 22:34:18 GMT
COPY file:1d7c9d67c6f11e6632845ae6085c57582457d49c5e3d732f0b3bd3f40b8bf179 in /docker-entrypoint.sh 
# Fri, 24 May 2019 22:34:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:34:19 GMT
USER mysql
# Fri, 24 May 2019 22:34:19 GMT
EXPOSE 3306
# Fri, 24 May 2019 22:34:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f6865b89f9596325da4790ccaaf8ed5b4d9c696fb13767e75a1d87907c8ed2`  
		Last Modified: Thu, 14 Mar 2019 22:18:10 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422d044cecee4545f0f745cd8c534d7b80b2ebed3cb2246f8f1c591faffcbbc5`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d6920f041ed7140e59a761f9de2e0ce426feee57483e6d783e38cb9c5b6fa2`  
		Last Modified: Thu, 14 Mar 2019 22:18:43 GMT  
		Size: 6.2 MB (6175644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9139486a56fb8ca75a8b14ca162b7818a49627799997aed92170845e13bc0d4b`  
		Last Modified: Fri, 24 May 2019 22:34:51 GMT  
		Size: 57.3 MB (57304379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3851f272928d37929ac2cb8fa1489686ad2f93b538a796025447babe9fd88e39`  
		Last Modified: Fri, 24 May 2019 22:34:39 GMT  
		Size: 4.9 KB (4881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e979b426cb22cc67aa25ead3b78c87d1f7493751152dca898837546395124073`  
		Last Modified: Fri, 24 May 2019 22:34:39 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7`

```console
$ docker pull percona@sha256:744769bb87ea11ceeb9efe7cb04cc49a86db88a6b6449c19f743161be5f6f51a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7` - linux; amd64

```console
$ docker pull percona@sha256:50c3e70053e51bc1983dc292dcb3f2dd71771f20e64adc07045bcede560a5217
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192530683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69377a52e49adc78d8ef9cfe04f68a61c2fc8c17e8d7987db5045688be2a32a5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:12:46 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 14 Mar 2019 22:13:49 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 14 Mar 2019 22:13:50 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 14 Mar 2019 22:13:54 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7         && curl -L -o /tmp/percona-release.rpm https://repo.percona.com/percona/yum/percona-release-0.1-10.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm         && percona-release enable original release
# Thu, 14 Mar 2019 22:13:54 GMT
ENV PERCONA_VERSION=5.7.25-28.1.el7
# Thu, 14 Mar 2019 22:14:44 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 14 Mar 2019 22:14:45 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Thu, 14 Mar 2019 22:14:46 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 14 Mar 2019 22:14:46 GMT
COPY file:8da6ca55fbd697af8ce67f582b55e6e21956a9f1a34618fb299f82d13032a67c in /docker-entrypoint.sh 
# Thu, 14 Mar 2019 22:14:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Mar 2019 22:14:47 GMT
USER mysql
# Thu, 14 Mar 2019 22:14:47 GMT
EXPOSE 3306
# Thu, 14 Mar 2019 22:14:47 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f6865b89f9596325da4790ccaaf8ed5b4d9c696fb13767e75a1d87907c8ed2`  
		Last Modified: Thu, 14 Mar 2019 22:18:10 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422d044cecee4545f0f745cd8c534d7b80b2ebed3cb2246f8f1c591faffcbbc5`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8389af72ea04b1bb1f30fa5314babfec9a32763ed4c74ee71fd72a975503aa9b`  
		Last Modified: Thu, 14 Mar 2019 22:18:10 GMT  
		Size: 6.2 MB (6183652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f3664696cbb9c59a31fb0f03be5943b6aa5e2cd81e4a4bc954c3e1999ad807`  
		Last Modified: Thu, 14 Mar 2019 22:18:30 GMT  
		Size: 110.9 MB (110936872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ae0525f3a459b5f846202ea972d308d8d686a46eb3d0c9674a8a704bb66d88`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 1.4 KB (1384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3f3d8a2a2789720112d2a5cfc57ef102781536fced750be61ebe1b4c7bc13a`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7.25`

```console
$ docker pull percona@sha256:744769bb87ea11ceeb9efe7cb04cc49a86db88a6b6449c19f743161be5f6f51a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7.25` - linux; amd64

```console
$ docker pull percona@sha256:50c3e70053e51bc1983dc292dcb3f2dd71771f20e64adc07045bcede560a5217
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192530683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69377a52e49adc78d8ef9cfe04f68a61c2fc8c17e8d7987db5045688be2a32a5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:12:46 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 14 Mar 2019 22:13:49 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 14 Mar 2019 22:13:50 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 14 Mar 2019 22:13:54 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7         && curl -L -o /tmp/percona-release.rpm https://repo.percona.com/percona/yum/percona-release-0.1-10.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm         && percona-release enable original release
# Thu, 14 Mar 2019 22:13:54 GMT
ENV PERCONA_VERSION=5.7.25-28.1.el7
# Thu, 14 Mar 2019 22:14:44 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 14 Mar 2019 22:14:45 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Thu, 14 Mar 2019 22:14:46 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 14 Mar 2019 22:14:46 GMT
COPY file:8da6ca55fbd697af8ce67f582b55e6e21956a9f1a34618fb299f82d13032a67c in /docker-entrypoint.sh 
# Thu, 14 Mar 2019 22:14:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Mar 2019 22:14:47 GMT
USER mysql
# Thu, 14 Mar 2019 22:14:47 GMT
EXPOSE 3306
# Thu, 14 Mar 2019 22:14:47 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f6865b89f9596325da4790ccaaf8ed5b4d9c696fb13767e75a1d87907c8ed2`  
		Last Modified: Thu, 14 Mar 2019 22:18:10 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422d044cecee4545f0f745cd8c534d7b80b2ebed3cb2246f8f1c591faffcbbc5`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8389af72ea04b1bb1f30fa5314babfec9a32763ed4c74ee71fd72a975503aa9b`  
		Last Modified: Thu, 14 Mar 2019 22:18:10 GMT  
		Size: 6.2 MB (6183652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f3664696cbb9c59a31fb0f03be5943b6aa5e2cd81e4a4bc954c3e1999ad807`  
		Last Modified: Thu, 14 Mar 2019 22:18:30 GMT  
		Size: 110.9 MB (110936872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ae0525f3a459b5f846202ea972d308d8d686a46eb3d0c9674a8a704bb66d88`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 1.4 KB (1384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3f3d8a2a2789720112d2a5cfc57ef102781536fced750be61ebe1b4c7bc13a`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7.25-centos`

```console
$ docker pull percona@sha256:744769bb87ea11ceeb9efe7cb04cc49a86db88a6b6449c19f743161be5f6f51a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7.25-centos` - linux; amd64

```console
$ docker pull percona@sha256:50c3e70053e51bc1983dc292dcb3f2dd71771f20e64adc07045bcede560a5217
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192530683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69377a52e49adc78d8ef9cfe04f68a61c2fc8c17e8d7987db5045688be2a32a5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:12:46 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 14 Mar 2019 22:13:49 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 14 Mar 2019 22:13:50 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 14 Mar 2019 22:13:54 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7         && curl -L -o /tmp/percona-release.rpm https://repo.percona.com/percona/yum/percona-release-0.1-10.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm         && percona-release enable original release
# Thu, 14 Mar 2019 22:13:54 GMT
ENV PERCONA_VERSION=5.7.25-28.1.el7
# Thu, 14 Mar 2019 22:14:44 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 14 Mar 2019 22:14:45 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Thu, 14 Mar 2019 22:14:46 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 14 Mar 2019 22:14:46 GMT
COPY file:8da6ca55fbd697af8ce67f582b55e6e21956a9f1a34618fb299f82d13032a67c in /docker-entrypoint.sh 
# Thu, 14 Mar 2019 22:14:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Mar 2019 22:14:47 GMT
USER mysql
# Thu, 14 Mar 2019 22:14:47 GMT
EXPOSE 3306
# Thu, 14 Mar 2019 22:14:47 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f6865b89f9596325da4790ccaaf8ed5b4d9c696fb13767e75a1d87907c8ed2`  
		Last Modified: Thu, 14 Mar 2019 22:18:10 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422d044cecee4545f0f745cd8c534d7b80b2ebed3cb2246f8f1c591faffcbbc5`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8389af72ea04b1bb1f30fa5314babfec9a32763ed4c74ee71fd72a975503aa9b`  
		Last Modified: Thu, 14 Mar 2019 22:18:10 GMT  
		Size: 6.2 MB (6183652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f3664696cbb9c59a31fb0f03be5943b6aa5e2cd81e4a4bc954c3e1999ad807`  
		Last Modified: Thu, 14 Mar 2019 22:18:30 GMT  
		Size: 110.9 MB (110936872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ae0525f3a459b5f846202ea972d308d8d686a46eb3d0c9674a8a704bb66d88`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 1.4 KB (1384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3f3d8a2a2789720112d2a5cfc57ef102781536fced750be61ebe1b4c7bc13a`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7-centos`

```console
$ docker pull percona@sha256:744769bb87ea11ceeb9efe7cb04cc49a86db88a6b6449c19f743161be5f6f51a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7-centos` - linux; amd64

```console
$ docker pull percona@sha256:50c3e70053e51bc1983dc292dcb3f2dd71771f20e64adc07045bcede560a5217
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192530683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69377a52e49adc78d8ef9cfe04f68a61c2fc8c17e8d7987db5045688be2a32a5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:12:46 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 14 Mar 2019 22:13:49 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 14 Mar 2019 22:13:50 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 14 Mar 2019 22:13:54 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7         && curl -L -o /tmp/percona-release.rpm https://repo.percona.com/percona/yum/percona-release-0.1-10.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm         && percona-release enable original release
# Thu, 14 Mar 2019 22:13:54 GMT
ENV PERCONA_VERSION=5.7.25-28.1.el7
# Thu, 14 Mar 2019 22:14:44 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 14 Mar 2019 22:14:45 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Thu, 14 Mar 2019 22:14:46 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 14 Mar 2019 22:14:46 GMT
COPY file:8da6ca55fbd697af8ce67f582b55e6e21956a9f1a34618fb299f82d13032a67c in /docker-entrypoint.sh 
# Thu, 14 Mar 2019 22:14:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Mar 2019 22:14:47 GMT
USER mysql
# Thu, 14 Mar 2019 22:14:47 GMT
EXPOSE 3306
# Thu, 14 Mar 2019 22:14:47 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f6865b89f9596325da4790ccaaf8ed5b4d9c696fb13767e75a1d87907c8ed2`  
		Last Modified: Thu, 14 Mar 2019 22:18:10 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422d044cecee4545f0f745cd8c534d7b80b2ebed3cb2246f8f1c591faffcbbc5`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8389af72ea04b1bb1f30fa5314babfec9a32763ed4c74ee71fd72a975503aa9b`  
		Last Modified: Thu, 14 Mar 2019 22:18:10 GMT  
		Size: 6.2 MB (6183652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f3664696cbb9c59a31fb0f03be5943b6aa5e2cd81e4a4bc954c3e1999ad807`  
		Last Modified: Thu, 14 Mar 2019 22:18:30 GMT  
		Size: 110.9 MB (110936872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ae0525f3a459b5f846202ea972d308d8d686a46eb3d0c9674a8a704bb66d88`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 1.4 KB (1384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3f3d8a2a2789720112d2a5cfc57ef102781536fced750be61ebe1b4c7bc13a`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5-centos`

```console
$ docker pull percona@sha256:744769bb87ea11ceeb9efe7cb04cc49a86db88a6b6449c19f743161be5f6f51a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5-centos` - linux; amd64

```console
$ docker pull percona@sha256:50c3e70053e51bc1983dc292dcb3f2dd71771f20e64adc07045bcede560a5217
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192530683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69377a52e49adc78d8ef9cfe04f68a61c2fc8c17e8d7987db5045688be2a32a5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:12:46 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 14 Mar 2019 22:13:49 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 14 Mar 2019 22:13:50 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 14 Mar 2019 22:13:54 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7         && curl -L -o /tmp/percona-release.rpm https://repo.percona.com/percona/yum/percona-release-0.1-10.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm         && percona-release enable original release
# Thu, 14 Mar 2019 22:13:54 GMT
ENV PERCONA_VERSION=5.7.25-28.1.el7
# Thu, 14 Mar 2019 22:14:44 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 14 Mar 2019 22:14:45 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Thu, 14 Mar 2019 22:14:46 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 14 Mar 2019 22:14:46 GMT
COPY file:8da6ca55fbd697af8ce67f582b55e6e21956a9f1a34618fb299f82d13032a67c in /docker-entrypoint.sh 
# Thu, 14 Mar 2019 22:14:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Mar 2019 22:14:47 GMT
USER mysql
# Thu, 14 Mar 2019 22:14:47 GMT
EXPOSE 3306
# Thu, 14 Mar 2019 22:14:47 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f6865b89f9596325da4790ccaaf8ed5b4d9c696fb13767e75a1d87907c8ed2`  
		Last Modified: Thu, 14 Mar 2019 22:18:10 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422d044cecee4545f0f745cd8c534d7b80b2ebed3cb2246f8f1c591faffcbbc5`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8389af72ea04b1bb1f30fa5314babfec9a32763ed4c74ee71fd72a975503aa9b`  
		Last Modified: Thu, 14 Mar 2019 22:18:10 GMT  
		Size: 6.2 MB (6183652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f3664696cbb9c59a31fb0f03be5943b6aa5e2cd81e4a4bc954c3e1999ad807`  
		Last Modified: Thu, 14 Mar 2019 22:18:30 GMT  
		Size: 110.9 MB (110936872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ae0525f3a459b5f846202ea972d308d8d686a46eb3d0c9674a8a704bb66d88`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 1.4 KB (1384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3f3d8a2a2789720112d2a5cfc57ef102781536fced750be61ebe1b4c7bc13a`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:8`

```console
$ docker pull percona@sha256:6bbb0e2830793107bae90569f34e59d4b442b250703b5d4b1e8a8996f61c8f2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:8` - linux; amd64

```console
$ docker pull percona@sha256:8974ea3bcb86e40330c5dfd9a6ea0ccfb29b2f7769070c87b1dd4e1207df1b1b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218769030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65e5da28c0ca510bf80189f91fc529b4568ed5abae270b3ef8727c903f59952`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:12:46 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 14 Mar 2019 22:12:47 GMT
RUN groupadd -g 1001 mysql
# Thu, 14 Mar 2019 22:12:48 GMT
RUN useradd -u 1001 -r -g 1001 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 14 Mar 2019 22:12:53 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY 	&& percona-release disable all 	&& percona-release enable ps-80 release
# Wed, 08 May 2019 19:19:54 GMT
ENV PERCONA_VERSION=8.0.15-6.1.el7
# Wed, 08 May 2019 19:20:44 GMT
RUN yum install -y 		percona-server-server-${PERCONA_VERSION} 		percona-server-tokudb-${PERCONA_VERSION} 		percona-server-rocksdb-${PERCONA_VERSION} 		which 		policycoreutils 		https://repo.percona.com/percona/yum/release/7/RPMS/x86_64/jemalloc-3.6.0-1.el7.x86_64.rpm 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Wed, 08 May 2019 19:20:45 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Wed, 08 May 2019 19:20:45 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 08 May 2019 19:20:46 GMT
COPY file:98315a3cdd5c008868bca89eff8d9037073d3b25d79ce0bfce9220868c87243b in /docker-entrypoint.sh 
# Wed, 08 May 2019 19:20:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 19:20:46 GMT
USER mysql
# Wed, 08 May 2019 19:20:46 GMT
EXPOSE 3306 33060
# Wed, 08 May 2019 19:20:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09c3207e236efa3c9c00de31836965042a75c8633d7c5093a0951e9570cd622`  
		Last Modified: Thu, 14 Mar 2019 22:17:33 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd5b7424ba466d0ca03f6658dac8cf2f928f81700cc21f551e1ceb6170c93f7`  
		Last Modified: Thu, 14 Mar 2019 22:17:33 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4693a39eaa3d5a71a34d1d0568cad831e111a772e4c4db284ff42d90e1df3a8a`  
		Last Modified: Thu, 14 Mar 2019 22:17:34 GMT  
		Size: 6.2 MB (6175704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9934d9efd2d9b9e5acd5be747410ce9e6ba977f49526733331f527c72de559d`  
		Last Modified: Wed, 08 May 2019 19:21:51 GMT  
		Size: 137.2 MB (137183322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a64d666472a07ccc4b02e956258cbda5c28f37f57c84bd13ff2dae4172067ff`  
		Last Modified: Wed, 08 May 2019 19:21:24 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfcab439a7fdfb43c31df2bf4d3354edca65dc3e50ec28ecf9a83d1b1883aaa`  
		Last Modified: Wed, 08 May 2019 19:21:24 GMT  
		Size: 3.1 KB (3067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:8.0`

```console
$ docker pull percona@sha256:6bbb0e2830793107bae90569f34e59d4b442b250703b5d4b1e8a8996f61c8f2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:8.0` - linux; amd64

```console
$ docker pull percona@sha256:8974ea3bcb86e40330c5dfd9a6ea0ccfb29b2f7769070c87b1dd4e1207df1b1b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218769030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65e5da28c0ca510bf80189f91fc529b4568ed5abae270b3ef8727c903f59952`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:12:46 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 14 Mar 2019 22:12:47 GMT
RUN groupadd -g 1001 mysql
# Thu, 14 Mar 2019 22:12:48 GMT
RUN useradd -u 1001 -r -g 1001 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 14 Mar 2019 22:12:53 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY 	&& percona-release disable all 	&& percona-release enable ps-80 release
# Wed, 08 May 2019 19:19:54 GMT
ENV PERCONA_VERSION=8.0.15-6.1.el7
# Wed, 08 May 2019 19:20:44 GMT
RUN yum install -y 		percona-server-server-${PERCONA_VERSION} 		percona-server-tokudb-${PERCONA_VERSION} 		percona-server-rocksdb-${PERCONA_VERSION} 		which 		policycoreutils 		https://repo.percona.com/percona/yum/release/7/RPMS/x86_64/jemalloc-3.6.0-1.el7.x86_64.rpm 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Wed, 08 May 2019 19:20:45 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Wed, 08 May 2019 19:20:45 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 08 May 2019 19:20:46 GMT
COPY file:98315a3cdd5c008868bca89eff8d9037073d3b25d79ce0bfce9220868c87243b in /docker-entrypoint.sh 
# Wed, 08 May 2019 19:20:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 19:20:46 GMT
USER mysql
# Wed, 08 May 2019 19:20:46 GMT
EXPOSE 3306 33060
# Wed, 08 May 2019 19:20:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09c3207e236efa3c9c00de31836965042a75c8633d7c5093a0951e9570cd622`  
		Last Modified: Thu, 14 Mar 2019 22:17:33 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd5b7424ba466d0ca03f6658dac8cf2f928f81700cc21f551e1ceb6170c93f7`  
		Last Modified: Thu, 14 Mar 2019 22:17:33 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4693a39eaa3d5a71a34d1d0568cad831e111a772e4c4db284ff42d90e1df3a8a`  
		Last Modified: Thu, 14 Mar 2019 22:17:34 GMT  
		Size: 6.2 MB (6175704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9934d9efd2d9b9e5acd5be747410ce9e6ba977f49526733331f527c72de559d`  
		Last Modified: Wed, 08 May 2019 19:21:51 GMT  
		Size: 137.2 MB (137183322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a64d666472a07ccc4b02e956258cbda5c28f37f57c84bd13ff2dae4172067ff`  
		Last Modified: Wed, 08 May 2019 19:21:24 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfcab439a7fdfb43c31df2bf4d3354edca65dc3e50ec28ecf9a83d1b1883aaa`  
		Last Modified: Wed, 08 May 2019 19:21:24 GMT  
		Size: 3.1 KB (3067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:8.0.15-6`

```console
$ docker pull percona@sha256:6bbb0e2830793107bae90569f34e59d4b442b250703b5d4b1e8a8996f61c8f2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:8.0.15-6` - linux; amd64

```console
$ docker pull percona@sha256:8974ea3bcb86e40330c5dfd9a6ea0ccfb29b2f7769070c87b1dd4e1207df1b1b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218769030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65e5da28c0ca510bf80189f91fc529b4568ed5abae270b3ef8727c903f59952`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:12:46 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 14 Mar 2019 22:12:47 GMT
RUN groupadd -g 1001 mysql
# Thu, 14 Mar 2019 22:12:48 GMT
RUN useradd -u 1001 -r -g 1001 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 14 Mar 2019 22:12:53 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY 	&& percona-release disable all 	&& percona-release enable ps-80 release
# Wed, 08 May 2019 19:19:54 GMT
ENV PERCONA_VERSION=8.0.15-6.1.el7
# Wed, 08 May 2019 19:20:44 GMT
RUN yum install -y 		percona-server-server-${PERCONA_VERSION} 		percona-server-tokudb-${PERCONA_VERSION} 		percona-server-rocksdb-${PERCONA_VERSION} 		which 		policycoreutils 		https://repo.percona.com/percona/yum/release/7/RPMS/x86_64/jemalloc-3.6.0-1.el7.x86_64.rpm 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Wed, 08 May 2019 19:20:45 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Wed, 08 May 2019 19:20:45 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 08 May 2019 19:20:46 GMT
COPY file:98315a3cdd5c008868bca89eff8d9037073d3b25d79ce0bfce9220868c87243b in /docker-entrypoint.sh 
# Wed, 08 May 2019 19:20:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 19:20:46 GMT
USER mysql
# Wed, 08 May 2019 19:20:46 GMT
EXPOSE 3306 33060
# Wed, 08 May 2019 19:20:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09c3207e236efa3c9c00de31836965042a75c8633d7c5093a0951e9570cd622`  
		Last Modified: Thu, 14 Mar 2019 22:17:33 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd5b7424ba466d0ca03f6658dac8cf2f928f81700cc21f551e1ceb6170c93f7`  
		Last Modified: Thu, 14 Mar 2019 22:17:33 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4693a39eaa3d5a71a34d1d0568cad831e111a772e4c4db284ff42d90e1df3a8a`  
		Last Modified: Thu, 14 Mar 2019 22:17:34 GMT  
		Size: 6.2 MB (6175704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9934d9efd2d9b9e5acd5be747410ce9e6ba977f49526733331f527c72de559d`  
		Last Modified: Wed, 08 May 2019 19:21:51 GMT  
		Size: 137.2 MB (137183322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a64d666472a07ccc4b02e956258cbda5c28f37f57c84bd13ff2dae4172067ff`  
		Last Modified: Wed, 08 May 2019 19:21:24 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfcab439a7fdfb43c31df2bf4d3354edca65dc3e50ec28ecf9a83d1b1883aaa`  
		Last Modified: Wed, 08 May 2019 19:21:24 GMT  
		Size: 3.1 KB (3067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:8.0.15-6-centos`

```console
$ docker pull percona@sha256:6bbb0e2830793107bae90569f34e59d4b442b250703b5d4b1e8a8996f61c8f2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:8.0.15-6-centos` - linux; amd64

```console
$ docker pull percona@sha256:8974ea3bcb86e40330c5dfd9a6ea0ccfb29b2f7769070c87b1dd4e1207df1b1b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218769030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65e5da28c0ca510bf80189f91fc529b4568ed5abae270b3ef8727c903f59952`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:12:46 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 14 Mar 2019 22:12:47 GMT
RUN groupadd -g 1001 mysql
# Thu, 14 Mar 2019 22:12:48 GMT
RUN useradd -u 1001 -r -g 1001 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 14 Mar 2019 22:12:53 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY 	&& percona-release disable all 	&& percona-release enable ps-80 release
# Wed, 08 May 2019 19:19:54 GMT
ENV PERCONA_VERSION=8.0.15-6.1.el7
# Wed, 08 May 2019 19:20:44 GMT
RUN yum install -y 		percona-server-server-${PERCONA_VERSION} 		percona-server-tokudb-${PERCONA_VERSION} 		percona-server-rocksdb-${PERCONA_VERSION} 		which 		policycoreutils 		https://repo.percona.com/percona/yum/release/7/RPMS/x86_64/jemalloc-3.6.0-1.el7.x86_64.rpm 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Wed, 08 May 2019 19:20:45 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Wed, 08 May 2019 19:20:45 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 08 May 2019 19:20:46 GMT
COPY file:98315a3cdd5c008868bca89eff8d9037073d3b25d79ce0bfce9220868c87243b in /docker-entrypoint.sh 
# Wed, 08 May 2019 19:20:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 19:20:46 GMT
USER mysql
# Wed, 08 May 2019 19:20:46 GMT
EXPOSE 3306 33060
# Wed, 08 May 2019 19:20:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09c3207e236efa3c9c00de31836965042a75c8633d7c5093a0951e9570cd622`  
		Last Modified: Thu, 14 Mar 2019 22:17:33 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd5b7424ba466d0ca03f6658dac8cf2f928f81700cc21f551e1ceb6170c93f7`  
		Last Modified: Thu, 14 Mar 2019 22:17:33 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4693a39eaa3d5a71a34d1d0568cad831e111a772e4c4db284ff42d90e1df3a8a`  
		Last Modified: Thu, 14 Mar 2019 22:17:34 GMT  
		Size: 6.2 MB (6175704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9934d9efd2d9b9e5acd5be747410ce9e6ba977f49526733331f527c72de559d`  
		Last Modified: Wed, 08 May 2019 19:21:51 GMT  
		Size: 137.2 MB (137183322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a64d666472a07ccc4b02e956258cbda5c28f37f57c84bd13ff2dae4172067ff`  
		Last Modified: Wed, 08 May 2019 19:21:24 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfcab439a7fdfb43c31df2bf4d3354edca65dc3e50ec28ecf9a83d1b1883aaa`  
		Last Modified: Wed, 08 May 2019 19:21:24 GMT  
		Size: 3.1 KB (3067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:8.0-centos`

```console
$ docker pull percona@sha256:6bbb0e2830793107bae90569f34e59d4b442b250703b5d4b1e8a8996f61c8f2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:8.0-centos` - linux; amd64

```console
$ docker pull percona@sha256:8974ea3bcb86e40330c5dfd9a6ea0ccfb29b2f7769070c87b1dd4e1207df1b1b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218769030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65e5da28c0ca510bf80189f91fc529b4568ed5abae270b3ef8727c903f59952`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:12:46 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 14 Mar 2019 22:12:47 GMT
RUN groupadd -g 1001 mysql
# Thu, 14 Mar 2019 22:12:48 GMT
RUN useradd -u 1001 -r -g 1001 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 14 Mar 2019 22:12:53 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY 	&& percona-release disable all 	&& percona-release enable ps-80 release
# Wed, 08 May 2019 19:19:54 GMT
ENV PERCONA_VERSION=8.0.15-6.1.el7
# Wed, 08 May 2019 19:20:44 GMT
RUN yum install -y 		percona-server-server-${PERCONA_VERSION} 		percona-server-tokudb-${PERCONA_VERSION} 		percona-server-rocksdb-${PERCONA_VERSION} 		which 		policycoreutils 		https://repo.percona.com/percona/yum/release/7/RPMS/x86_64/jemalloc-3.6.0-1.el7.x86_64.rpm 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Wed, 08 May 2019 19:20:45 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Wed, 08 May 2019 19:20:45 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 08 May 2019 19:20:46 GMT
COPY file:98315a3cdd5c008868bca89eff8d9037073d3b25d79ce0bfce9220868c87243b in /docker-entrypoint.sh 
# Wed, 08 May 2019 19:20:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 19:20:46 GMT
USER mysql
# Wed, 08 May 2019 19:20:46 GMT
EXPOSE 3306 33060
# Wed, 08 May 2019 19:20:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09c3207e236efa3c9c00de31836965042a75c8633d7c5093a0951e9570cd622`  
		Last Modified: Thu, 14 Mar 2019 22:17:33 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd5b7424ba466d0ca03f6658dac8cf2f928f81700cc21f551e1ceb6170c93f7`  
		Last Modified: Thu, 14 Mar 2019 22:17:33 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4693a39eaa3d5a71a34d1d0568cad831e111a772e4c4db284ff42d90e1df3a8a`  
		Last Modified: Thu, 14 Mar 2019 22:17:34 GMT  
		Size: 6.2 MB (6175704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9934d9efd2d9b9e5acd5be747410ce9e6ba977f49526733331f527c72de559d`  
		Last Modified: Wed, 08 May 2019 19:21:51 GMT  
		Size: 137.2 MB (137183322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a64d666472a07ccc4b02e956258cbda5c28f37f57c84bd13ff2dae4172067ff`  
		Last Modified: Wed, 08 May 2019 19:21:24 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfcab439a7fdfb43c31df2bf4d3354edca65dc3e50ec28ecf9a83d1b1883aaa`  
		Last Modified: Wed, 08 May 2019 19:21:24 GMT  
		Size: 3.1 KB (3067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:8-centos`

```console
$ docker pull percona@sha256:6bbb0e2830793107bae90569f34e59d4b442b250703b5d4b1e8a8996f61c8f2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:8-centos` - linux; amd64

```console
$ docker pull percona@sha256:8974ea3bcb86e40330c5dfd9a6ea0ccfb29b2f7769070c87b1dd4e1207df1b1b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218769030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65e5da28c0ca510bf80189f91fc529b4568ed5abae270b3ef8727c903f59952`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:12:46 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 14 Mar 2019 22:12:47 GMT
RUN groupadd -g 1001 mysql
# Thu, 14 Mar 2019 22:12:48 GMT
RUN useradd -u 1001 -r -g 1001 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 14 Mar 2019 22:12:53 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY 	&& percona-release disable all 	&& percona-release enable ps-80 release
# Wed, 08 May 2019 19:19:54 GMT
ENV PERCONA_VERSION=8.0.15-6.1.el7
# Wed, 08 May 2019 19:20:44 GMT
RUN yum install -y 		percona-server-server-${PERCONA_VERSION} 		percona-server-tokudb-${PERCONA_VERSION} 		percona-server-rocksdb-${PERCONA_VERSION} 		which 		policycoreutils 		https://repo.percona.com/percona/yum/release/7/RPMS/x86_64/jemalloc-3.6.0-1.el7.x86_64.rpm 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Wed, 08 May 2019 19:20:45 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Wed, 08 May 2019 19:20:45 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 08 May 2019 19:20:46 GMT
COPY file:98315a3cdd5c008868bca89eff8d9037073d3b25d79ce0bfce9220868c87243b in /docker-entrypoint.sh 
# Wed, 08 May 2019 19:20:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 19:20:46 GMT
USER mysql
# Wed, 08 May 2019 19:20:46 GMT
EXPOSE 3306 33060
# Wed, 08 May 2019 19:20:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09c3207e236efa3c9c00de31836965042a75c8633d7c5093a0951e9570cd622`  
		Last Modified: Thu, 14 Mar 2019 22:17:33 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd5b7424ba466d0ca03f6658dac8cf2f928f81700cc21f551e1ceb6170c93f7`  
		Last Modified: Thu, 14 Mar 2019 22:17:33 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4693a39eaa3d5a71a34d1d0568cad831e111a772e4c4db284ff42d90e1df3a8a`  
		Last Modified: Thu, 14 Mar 2019 22:17:34 GMT  
		Size: 6.2 MB (6175704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9934d9efd2d9b9e5acd5be747410ce9e6ba977f49526733331f527c72de559d`  
		Last Modified: Wed, 08 May 2019 19:21:51 GMT  
		Size: 137.2 MB (137183322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a64d666472a07ccc4b02e956258cbda5c28f37f57c84bd13ff2dae4172067ff`  
		Last Modified: Wed, 08 May 2019 19:21:24 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfcab439a7fdfb43c31df2bf4d3354edca65dc3e50ec28ecf9a83d1b1883aaa`  
		Last Modified: Wed, 08 May 2019 19:21:24 GMT  
		Size: 3.1 KB (3067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:centos`

```console
$ docker pull percona@sha256:744769bb87ea11ceeb9efe7cb04cc49a86db88a6b6449c19f743161be5f6f51a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:centos` - linux; amd64

```console
$ docker pull percona@sha256:50c3e70053e51bc1983dc292dcb3f2dd71771f20e64adc07045bcede560a5217
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192530683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69377a52e49adc78d8ef9cfe04f68a61c2fc8c17e8d7987db5045688be2a32a5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:12:46 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 14 Mar 2019 22:13:49 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 14 Mar 2019 22:13:50 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 14 Mar 2019 22:13:54 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7         && curl -L -o /tmp/percona-release.rpm https://repo.percona.com/percona/yum/percona-release-0.1-10.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm         && percona-release enable original release
# Thu, 14 Mar 2019 22:13:54 GMT
ENV PERCONA_VERSION=5.7.25-28.1.el7
# Thu, 14 Mar 2019 22:14:44 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 14 Mar 2019 22:14:45 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Thu, 14 Mar 2019 22:14:46 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 14 Mar 2019 22:14:46 GMT
COPY file:8da6ca55fbd697af8ce67f582b55e6e21956a9f1a34618fb299f82d13032a67c in /docker-entrypoint.sh 
# Thu, 14 Mar 2019 22:14:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Mar 2019 22:14:47 GMT
USER mysql
# Thu, 14 Mar 2019 22:14:47 GMT
EXPOSE 3306
# Thu, 14 Mar 2019 22:14:47 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f6865b89f9596325da4790ccaaf8ed5b4d9c696fb13767e75a1d87907c8ed2`  
		Last Modified: Thu, 14 Mar 2019 22:18:10 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422d044cecee4545f0f745cd8c534d7b80b2ebed3cb2246f8f1c591faffcbbc5`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8389af72ea04b1bb1f30fa5314babfec9a32763ed4c74ee71fd72a975503aa9b`  
		Last Modified: Thu, 14 Mar 2019 22:18:10 GMT  
		Size: 6.2 MB (6183652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f3664696cbb9c59a31fb0f03be5943b6aa5e2cd81e4a4bc954c3e1999ad807`  
		Last Modified: Thu, 14 Mar 2019 22:18:30 GMT  
		Size: 110.9 MB (110936872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ae0525f3a459b5f846202ea972d308d8d686a46eb3d0c9674a8a704bb66d88`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 1.4 KB (1384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3f3d8a2a2789720112d2a5cfc57ef102781536fced750be61ebe1b4c7bc13a`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:latest`

```console
$ docker pull percona@sha256:744769bb87ea11ceeb9efe7cb04cc49a86db88a6b6449c19f743161be5f6f51a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:latest` - linux; amd64

```console
$ docker pull percona@sha256:50c3e70053e51bc1983dc292dcb3f2dd71771f20e64adc07045bcede560a5217
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192530683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69377a52e49adc78d8ef9cfe04f68a61c2fc8c17e8d7987db5045688be2a32a5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:12:46 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 14 Mar 2019 22:13:49 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 14 Mar 2019 22:13:50 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 14 Mar 2019 22:13:54 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7         && curl -L -o /tmp/percona-release.rpm https://repo.percona.com/percona/yum/percona-release-0.1-10.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm         && percona-release enable original release
# Thu, 14 Mar 2019 22:13:54 GMT
ENV PERCONA_VERSION=5.7.25-28.1.el7
# Thu, 14 Mar 2019 22:14:44 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 14 Mar 2019 22:14:45 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Thu, 14 Mar 2019 22:14:46 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 14 Mar 2019 22:14:46 GMT
COPY file:8da6ca55fbd697af8ce67f582b55e6e21956a9f1a34618fb299f82d13032a67c in /docker-entrypoint.sh 
# Thu, 14 Mar 2019 22:14:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Mar 2019 22:14:47 GMT
USER mysql
# Thu, 14 Mar 2019 22:14:47 GMT
EXPOSE 3306
# Thu, 14 Mar 2019 22:14:47 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f6865b89f9596325da4790ccaaf8ed5b4d9c696fb13767e75a1d87907c8ed2`  
		Last Modified: Thu, 14 Mar 2019 22:18:10 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422d044cecee4545f0f745cd8c534d7b80b2ebed3cb2246f8f1c591faffcbbc5`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8389af72ea04b1bb1f30fa5314babfec9a32763ed4c74ee71fd72a975503aa9b`  
		Last Modified: Thu, 14 Mar 2019 22:18:10 GMT  
		Size: 6.2 MB (6183652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f3664696cbb9c59a31fb0f03be5943b6aa5e2cd81e4a4bc954c3e1999ad807`  
		Last Modified: Thu, 14 Mar 2019 22:18:30 GMT  
		Size: 110.9 MB (110936872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ae0525f3a459b5f846202ea972d308d8d686a46eb3d0c9674a8a704bb66d88`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 1.4 KB (1384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3f3d8a2a2789720112d2a5cfc57ef102781536fced750be61ebe1b4c7bc13a`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:ps-5`

```console
$ docker pull percona@sha256:744769bb87ea11ceeb9efe7cb04cc49a86db88a6b6449c19f743161be5f6f51a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:ps-5` - linux; amd64

```console
$ docker pull percona@sha256:50c3e70053e51bc1983dc292dcb3f2dd71771f20e64adc07045bcede560a5217
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192530683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69377a52e49adc78d8ef9cfe04f68a61c2fc8c17e8d7987db5045688be2a32a5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:12:46 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 14 Mar 2019 22:13:49 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 14 Mar 2019 22:13:50 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 14 Mar 2019 22:13:54 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7         && curl -L -o /tmp/percona-release.rpm https://repo.percona.com/percona/yum/percona-release-0.1-10.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm         && percona-release enable original release
# Thu, 14 Mar 2019 22:13:54 GMT
ENV PERCONA_VERSION=5.7.25-28.1.el7
# Thu, 14 Mar 2019 22:14:44 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 14 Mar 2019 22:14:45 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Thu, 14 Mar 2019 22:14:46 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 14 Mar 2019 22:14:46 GMT
COPY file:8da6ca55fbd697af8ce67f582b55e6e21956a9f1a34618fb299f82d13032a67c in /docker-entrypoint.sh 
# Thu, 14 Mar 2019 22:14:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Mar 2019 22:14:47 GMT
USER mysql
# Thu, 14 Mar 2019 22:14:47 GMT
EXPOSE 3306
# Thu, 14 Mar 2019 22:14:47 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f6865b89f9596325da4790ccaaf8ed5b4d9c696fb13767e75a1d87907c8ed2`  
		Last Modified: Thu, 14 Mar 2019 22:18:10 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422d044cecee4545f0f745cd8c534d7b80b2ebed3cb2246f8f1c591faffcbbc5`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8389af72ea04b1bb1f30fa5314babfec9a32763ed4c74ee71fd72a975503aa9b`  
		Last Modified: Thu, 14 Mar 2019 22:18:10 GMT  
		Size: 6.2 MB (6183652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f3664696cbb9c59a31fb0f03be5943b6aa5e2cd81e4a4bc954c3e1999ad807`  
		Last Modified: Thu, 14 Mar 2019 22:18:30 GMT  
		Size: 110.9 MB (110936872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ae0525f3a459b5f846202ea972d308d8d686a46eb3d0c9674a8a704bb66d88`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 1.4 KB (1384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3f3d8a2a2789720112d2a5cfc57ef102781536fced750be61ebe1b4c7bc13a`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:ps-5.6`

```console
$ docker pull percona@sha256:6162697db37c6a0d0505113a1ffec00bbb96f3f78a11dc73c2987c72f4602f77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:ps-5.6` - linux; amd64

```console
$ docker pull percona@sha256:4ac0623d0c80c5c800a81c8b2ad51c0ea89979b8c4842af2a509e5bffc3073b9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138893643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7197498867b32e057c825519489005e02e1626c2dacc28356c15e866571cef1e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:12:46 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 14 Mar 2019 22:13:49 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 14 Mar 2019 22:13:50 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 14 Mar 2019 22:14:55 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY 	&& percona-release disable all 	&& percona-release enable percona release
# Fri, 24 May 2019 22:33:37 GMT
ENV PERCONA_VERSION=5.6.44-rel86.0.el7
# Fri, 24 May 2019 22:34:17 GMT
RUN yum install -y 		Percona-Server-server-56-${PERCONA_VERSION} 		Percona-Server-tokudb-56-${PERCONA_VERSION} 		Percona-Server-rocksdb-56-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Fri, 24 May 2019 22:34:18 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /etc/my.cnf.d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user|sql_mode)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user|sql_mode)/#&/' 	&& sed -i '/Make sure only root/,/fi/d' /usr/bin/ps_tokudb_admin 	&& echo "thp-setting=never" >> /etc/my.cnf 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Fri, 24 May 2019 22:34:18 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Fri, 24 May 2019 22:34:18 GMT
COPY file:1d7c9d67c6f11e6632845ae6085c57582457d49c5e3d732f0b3bd3f40b8bf179 in /docker-entrypoint.sh 
# Fri, 24 May 2019 22:34:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:34:19 GMT
USER mysql
# Fri, 24 May 2019 22:34:19 GMT
EXPOSE 3306
# Fri, 24 May 2019 22:34:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f6865b89f9596325da4790ccaaf8ed5b4d9c696fb13767e75a1d87907c8ed2`  
		Last Modified: Thu, 14 Mar 2019 22:18:10 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422d044cecee4545f0f745cd8c534d7b80b2ebed3cb2246f8f1c591faffcbbc5`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d6920f041ed7140e59a761f9de2e0ce426feee57483e6d783e38cb9c5b6fa2`  
		Last Modified: Thu, 14 Mar 2019 22:18:43 GMT  
		Size: 6.2 MB (6175644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9139486a56fb8ca75a8b14ca162b7818a49627799997aed92170845e13bc0d4b`  
		Last Modified: Fri, 24 May 2019 22:34:51 GMT  
		Size: 57.3 MB (57304379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3851f272928d37929ac2cb8fa1489686ad2f93b538a796025447babe9fd88e39`  
		Last Modified: Fri, 24 May 2019 22:34:39 GMT  
		Size: 4.9 KB (4881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e979b426cb22cc67aa25ead3b78c87d1f7493751152dca898837546395124073`  
		Last Modified: Fri, 24 May 2019 22:34:39 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:ps-5.6.44`

```console
$ docker pull percona@sha256:6162697db37c6a0d0505113a1ffec00bbb96f3f78a11dc73c2987c72f4602f77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:ps-5.6.44` - linux; amd64

```console
$ docker pull percona@sha256:4ac0623d0c80c5c800a81c8b2ad51c0ea89979b8c4842af2a509e5bffc3073b9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138893643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7197498867b32e057c825519489005e02e1626c2dacc28356c15e866571cef1e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:12:46 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 14 Mar 2019 22:13:49 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 14 Mar 2019 22:13:50 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 14 Mar 2019 22:14:55 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY 	&& percona-release disable all 	&& percona-release enable percona release
# Fri, 24 May 2019 22:33:37 GMT
ENV PERCONA_VERSION=5.6.44-rel86.0.el7
# Fri, 24 May 2019 22:34:17 GMT
RUN yum install -y 		Percona-Server-server-56-${PERCONA_VERSION} 		Percona-Server-tokudb-56-${PERCONA_VERSION} 		Percona-Server-rocksdb-56-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Fri, 24 May 2019 22:34:18 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /etc/my.cnf.d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user|sql_mode)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user|sql_mode)/#&/' 	&& sed -i '/Make sure only root/,/fi/d' /usr/bin/ps_tokudb_admin 	&& echo "thp-setting=never" >> /etc/my.cnf 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Fri, 24 May 2019 22:34:18 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Fri, 24 May 2019 22:34:18 GMT
COPY file:1d7c9d67c6f11e6632845ae6085c57582457d49c5e3d732f0b3bd3f40b8bf179 in /docker-entrypoint.sh 
# Fri, 24 May 2019 22:34:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:34:19 GMT
USER mysql
# Fri, 24 May 2019 22:34:19 GMT
EXPOSE 3306
# Fri, 24 May 2019 22:34:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f6865b89f9596325da4790ccaaf8ed5b4d9c696fb13767e75a1d87907c8ed2`  
		Last Modified: Thu, 14 Mar 2019 22:18:10 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422d044cecee4545f0f745cd8c534d7b80b2ebed3cb2246f8f1c591faffcbbc5`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d6920f041ed7140e59a761f9de2e0ce426feee57483e6d783e38cb9c5b6fa2`  
		Last Modified: Thu, 14 Mar 2019 22:18:43 GMT  
		Size: 6.2 MB (6175644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9139486a56fb8ca75a8b14ca162b7818a49627799997aed92170845e13bc0d4b`  
		Last Modified: Fri, 24 May 2019 22:34:51 GMT  
		Size: 57.3 MB (57304379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3851f272928d37929ac2cb8fa1489686ad2f93b538a796025447babe9fd88e39`  
		Last Modified: Fri, 24 May 2019 22:34:39 GMT  
		Size: 4.9 KB (4881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e979b426cb22cc67aa25ead3b78c87d1f7493751152dca898837546395124073`  
		Last Modified: Fri, 24 May 2019 22:34:39 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:ps-5.7`

```console
$ docker pull percona@sha256:744769bb87ea11ceeb9efe7cb04cc49a86db88a6b6449c19f743161be5f6f51a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:ps-5.7` - linux; amd64

```console
$ docker pull percona@sha256:50c3e70053e51bc1983dc292dcb3f2dd71771f20e64adc07045bcede560a5217
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192530683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69377a52e49adc78d8ef9cfe04f68a61c2fc8c17e8d7987db5045688be2a32a5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:12:46 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 14 Mar 2019 22:13:49 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 14 Mar 2019 22:13:50 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 14 Mar 2019 22:13:54 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7         && curl -L -o /tmp/percona-release.rpm https://repo.percona.com/percona/yum/percona-release-0.1-10.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm         && percona-release enable original release
# Thu, 14 Mar 2019 22:13:54 GMT
ENV PERCONA_VERSION=5.7.25-28.1.el7
# Thu, 14 Mar 2019 22:14:44 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 14 Mar 2019 22:14:45 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Thu, 14 Mar 2019 22:14:46 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 14 Mar 2019 22:14:46 GMT
COPY file:8da6ca55fbd697af8ce67f582b55e6e21956a9f1a34618fb299f82d13032a67c in /docker-entrypoint.sh 
# Thu, 14 Mar 2019 22:14:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Mar 2019 22:14:47 GMT
USER mysql
# Thu, 14 Mar 2019 22:14:47 GMT
EXPOSE 3306
# Thu, 14 Mar 2019 22:14:47 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f6865b89f9596325da4790ccaaf8ed5b4d9c696fb13767e75a1d87907c8ed2`  
		Last Modified: Thu, 14 Mar 2019 22:18:10 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422d044cecee4545f0f745cd8c534d7b80b2ebed3cb2246f8f1c591faffcbbc5`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8389af72ea04b1bb1f30fa5314babfec9a32763ed4c74ee71fd72a975503aa9b`  
		Last Modified: Thu, 14 Mar 2019 22:18:10 GMT  
		Size: 6.2 MB (6183652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f3664696cbb9c59a31fb0f03be5943b6aa5e2cd81e4a4bc954c3e1999ad807`  
		Last Modified: Thu, 14 Mar 2019 22:18:30 GMT  
		Size: 110.9 MB (110936872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ae0525f3a459b5f846202ea972d308d8d686a46eb3d0c9674a8a704bb66d88`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 1.4 KB (1384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3f3d8a2a2789720112d2a5cfc57ef102781536fced750be61ebe1b4c7bc13a`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:ps-5.7.25`

```console
$ docker pull percona@sha256:744769bb87ea11ceeb9efe7cb04cc49a86db88a6b6449c19f743161be5f6f51a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:ps-5.7.25` - linux; amd64

```console
$ docker pull percona@sha256:50c3e70053e51bc1983dc292dcb3f2dd71771f20e64adc07045bcede560a5217
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192530683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69377a52e49adc78d8ef9cfe04f68a61c2fc8c17e8d7987db5045688be2a32a5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:12:46 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 14 Mar 2019 22:13:49 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 14 Mar 2019 22:13:50 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 14 Mar 2019 22:13:54 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7         && curl -L -o /tmp/percona-release.rpm https://repo.percona.com/percona/yum/percona-release-0.1-10.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm         && percona-release enable original release
# Thu, 14 Mar 2019 22:13:54 GMT
ENV PERCONA_VERSION=5.7.25-28.1.el7
# Thu, 14 Mar 2019 22:14:44 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 14 Mar 2019 22:14:45 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Thu, 14 Mar 2019 22:14:46 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 14 Mar 2019 22:14:46 GMT
COPY file:8da6ca55fbd697af8ce67f582b55e6e21956a9f1a34618fb299f82d13032a67c in /docker-entrypoint.sh 
# Thu, 14 Mar 2019 22:14:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Mar 2019 22:14:47 GMT
USER mysql
# Thu, 14 Mar 2019 22:14:47 GMT
EXPOSE 3306
# Thu, 14 Mar 2019 22:14:47 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f6865b89f9596325da4790ccaaf8ed5b4d9c696fb13767e75a1d87907c8ed2`  
		Last Modified: Thu, 14 Mar 2019 22:18:10 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422d044cecee4545f0f745cd8c534d7b80b2ebed3cb2246f8f1c591faffcbbc5`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8389af72ea04b1bb1f30fa5314babfec9a32763ed4c74ee71fd72a975503aa9b`  
		Last Modified: Thu, 14 Mar 2019 22:18:10 GMT  
		Size: 6.2 MB (6183652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f3664696cbb9c59a31fb0f03be5943b6aa5e2cd81e4a4bc954c3e1999ad807`  
		Last Modified: Thu, 14 Mar 2019 22:18:30 GMT  
		Size: 110.9 MB (110936872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ae0525f3a459b5f846202ea972d308d8d686a46eb3d0c9674a8a704bb66d88`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 1.4 KB (1384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3f3d8a2a2789720112d2a5cfc57ef102781536fced750be61ebe1b4c7bc13a`  
		Last Modified: Thu, 14 Mar 2019 22:18:09 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:ps-8`

```console
$ docker pull percona@sha256:6bbb0e2830793107bae90569f34e59d4b442b250703b5d4b1e8a8996f61c8f2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:ps-8` - linux; amd64

```console
$ docker pull percona@sha256:8974ea3bcb86e40330c5dfd9a6ea0ccfb29b2f7769070c87b1dd4e1207df1b1b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218769030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65e5da28c0ca510bf80189f91fc529b4568ed5abae270b3ef8727c903f59952`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:12:46 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 14 Mar 2019 22:12:47 GMT
RUN groupadd -g 1001 mysql
# Thu, 14 Mar 2019 22:12:48 GMT
RUN useradd -u 1001 -r -g 1001 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 14 Mar 2019 22:12:53 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY 	&& percona-release disable all 	&& percona-release enable ps-80 release
# Wed, 08 May 2019 19:19:54 GMT
ENV PERCONA_VERSION=8.0.15-6.1.el7
# Wed, 08 May 2019 19:20:44 GMT
RUN yum install -y 		percona-server-server-${PERCONA_VERSION} 		percona-server-tokudb-${PERCONA_VERSION} 		percona-server-rocksdb-${PERCONA_VERSION} 		which 		policycoreutils 		https://repo.percona.com/percona/yum/release/7/RPMS/x86_64/jemalloc-3.6.0-1.el7.x86_64.rpm 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Wed, 08 May 2019 19:20:45 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Wed, 08 May 2019 19:20:45 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 08 May 2019 19:20:46 GMT
COPY file:98315a3cdd5c008868bca89eff8d9037073d3b25d79ce0bfce9220868c87243b in /docker-entrypoint.sh 
# Wed, 08 May 2019 19:20:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 19:20:46 GMT
USER mysql
# Wed, 08 May 2019 19:20:46 GMT
EXPOSE 3306 33060
# Wed, 08 May 2019 19:20:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09c3207e236efa3c9c00de31836965042a75c8633d7c5093a0951e9570cd622`  
		Last Modified: Thu, 14 Mar 2019 22:17:33 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd5b7424ba466d0ca03f6658dac8cf2f928f81700cc21f551e1ceb6170c93f7`  
		Last Modified: Thu, 14 Mar 2019 22:17:33 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4693a39eaa3d5a71a34d1d0568cad831e111a772e4c4db284ff42d90e1df3a8a`  
		Last Modified: Thu, 14 Mar 2019 22:17:34 GMT  
		Size: 6.2 MB (6175704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9934d9efd2d9b9e5acd5be747410ce9e6ba977f49526733331f527c72de559d`  
		Last Modified: Wed, 08 May 2019 19:21:51 GMT  
		Size: 137.2 MB (137183322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a64d666472a07ccc4b02e956258cbda5c28f37f57c84bd13ff2dae4172067ff`  
		Last Modified: Wed, 08 May 2019 19:21:24 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfcab439a7fdfb43c31df2bf4d3354edca65dc3e50ec28ecf9a83d1b1883aaa`  
		Last Modified: Wed, 08 May 2019 19:21:24 GMT  
		Size: 3.1 KB (3067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:ps-8.0`

```console
$ docker pull percona@sha256:6bbb0e2830793107bae90569f34e59d4b442b250703b5d4b1e8a8996f61c8f2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:ps-8.0` - linux; amd64

```console
$ docker pull percona@sha256:8974ea3bcb86e40330c5dfd9a6ea0ccfb29b2f7769070c87b1dd4e1207df1b1b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218769030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65e5da28c0ca510bf80189f91fc529b4568ed5abae270b3ef8727c903f59952`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:12:46 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 14 Mar 2019 22:12:47 GMT
RUN groupadd -g 1001 mysql
# Thu, 14 Mar 2019 22:12:48 GMT
RUN useradd -u 1001 -r -g 1001 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 14 Mar 2019 22:12:53 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY 	&& percona-release disable all 	&& percona-release enable ps-80 release
# Wed, 08 May 2019 19:19:54 GMT
ENV PERCONA_VERSION=8.0.15-6.1.el7
# Wed, 08 May 2019 19:20:44 GMT
RUN yum install -y 		percona-server-server-${PERCONA_VERSION} 		percona-server-tokudb-${PERCONA_VERSION} 		percona-server-rocksdb-${PERCONA_VERSION} 		which 		policycoreutils 		https://repo.percona.com/percona/yum/release/7/RPMS/x86_64/jemalloc-3.6.0-1.el7.x86_64.rpm 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Wed, 08 May 2019 19:20:45 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Wed, 08 May 2019 19:20:45 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 08 May 2019 19:20:46 GMT
COPY file:98315a3cdd5c008868bca89eff8d9037073d3b25d79ce0bfce9220868c87243b in /docker-entrypoint.sh 
# Wed, 08 May 2019 19:20:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 19:20:46 GMT
USER mysql
# Wed, 08 May 2019 19:20:46 GMT
EXPOSE 3306 33060
# Wed, 08 May 2019 19:20:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09c3207e236efa3c9c00de31836965042a75c8633d7c5093a0951e9570cd622`  
		Last Modified: Thu, 14 Mar 2019 22:17:33 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd5b7424ba466d0ca03f6658dac8cf2f928f81700cc21f551e1ceb6170c93f7`  
		Last Modified: Thu, 14 Mar 2019 22:17:33 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4693a39eaa3d5a71a34d1d0568cad831e111a772e4c4db284ff42d90e1df3a8a`  
		Last Modified: Thu, 14 Mar 2019 22:17:34 GMT  
		Size: 6.2 MB (6175704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9934d9efd2d9b9e5acd5be747410ce9e6ba977f49526733331f527c72de559d`  
		Last Modified: Wed, 08 May 2019 19:21:51 GMT  
		Size: 137.2 MB (137183322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a64d666472a07ccc4b02e956258cbda5c28f37f57c84bd13ff2dae4172067ff`  
		Last Modified: Wed, 08 May 2019 19:21:24 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfcab439a7fdfb43c31df2bf4d3354edca65dc3e50ec28ecf9a83d1b1883aaa`  
		Last Modified: Wed, 08 May 2019 19:21:24 GMT  
		Size: 3.1 KB (3067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:ps-8.0.15-6`

```console
$ docker pull percona@sha256:6bbb0e2830793107bae90569f34e59d4b442b250703b5d4b1e8a8996f61c8f2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:ps-8.0.15-6` - linux; amd64

```console
$ docker pull percona@sha256:8974ea3bcb86e40330c5dfd9a6ea0ccfb29b2f7769070c87b1dd4e1207df1b1b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218769030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65e5da28c0ca510bf80189f91fc529b4568ed5abae270b3ef8727c903f59952`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:12:46 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 14 Mar 2019 22:12:47 GMT
RUN groupadd -g 1001 mysql
# Thu, 14 Mar 2019 22:12:48 GMT
RUN useradd -u 1001 -r -g 1001 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 14 Mar 2019 22:12:53 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY 	&& percona-release disable all 	&& percona-release enable ps-80 release
# Wed, 08 May 2019 19:19:54 GMT
ENV PERCONA_VERSION=8.0.15-6.1.el7
# Wed, 08 May 2019 19:20:44 GMT
RUN yum install -y 		percona-server-server-${PERCONA_VERSION} 		percona-server-tokudb-${PERCONA_VERSION} 		percona-server-rocksdb-${PERCONA_VERSION} 		which 		policycoreutils 		https://repo.percona.com/percona/yum/release/7/RPMS/x86_64/jemalloc-3.6.0-1.el7.x86_64.rpm 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Wed, 08 May 2019 19:20:45 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Wed, 08 May 2019 19:20:45 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 08 May 2019 19:20:46 GMT
COPY file:98315a3cdd5c008868bca89eff8d9037073d3b25d79ce0bfce9220868c87243b in /docker-entrypoint.sh 
# Wed, 08 May 2019 19:20:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 19:20:46 GMT
USER mysql
# Wed, 08 May 2019 19:20:46 GMT
EXPOSE 3306 33060
# Wed, 08 May 2019 19:20:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09c3207e236efa3c9c00de31836965042a75c8633d7c5093a0951e9570cd622`  
		Last Modified: Thu, 14 Mar 2019 22:17:33 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd5b7424ba466d0ca03f6658dac8cf2f928f81700cc21f551e1ceb6170c93f7`  
		Last Modified: Thu, 14 Mar 2019 22:17:33 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4693a39eaa3d5a71a34d1d0568cad831e111a772e4c4db284ff42d90e1df3a8a`  
		Last Modified: Thu, 14 Mar 2019 22:17:34 GMT  
		Size: 6.2 MB (6175704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9934d9efd2d9b9e5acd5be747410ce9e6ba977f49526733331f527c72de559d`  
		Last Modified: Wed, 08 May 2019 19:21:51 GMT  
		Size: 137.2 MB (137183322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a64d666472a07ccc4b02e956258cbda5c28f37f57c84bd13ff2dae4172067ff`  
		Last Modified: Wed, 08 May 2019 19:21:24 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfcab439a7fdfb43c31df2bf4d3354edca65dc3e50ec28ecf9a83d1b1883aaa`  
		Last Modified: Wed, 08 May 2019 19:21:24 GMT  
		Size: 3.1 KB (3067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:psmdb-3.6`

```console
$ docker pull percona@sha256:d55df98395d470c27235f670d5e4d0e7ed971fcdb3c3b7b070c0ec3c1d7d6859
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:psmdb-3.6` - linux; amd64

```console
$ docker pull percona@sha256:daafd73d290e90fb0fa1cecd4dc76e2ca6845118e6353a2bc65f14574b9c7936
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.3 MB (179317617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e388dab387389b5958fa4c4d7b4a4c59c67864678bd82da142cf2800e0685a5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:12:46 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 14 Mar 2019 22:16:39 GMT
RUN export GNUPGHOME="$(mktemp -d)"         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A         && gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona         && rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7         && curl -L -o /tmp/percona-release.rpm https://repo.percona.com/percona/yum/percona-release-1.0-7.noarch.rpm         && rpmkeys --checksig /tmp/percona-release.rpm         && yum install -y /tmp/percona-release.rpm         && rm -rf "$GNUPGHOME" /tmp/percona-release.rpm         && rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY         && percona-release disable all         && percona-release enable original release
# Thu, 14 Mar 2019 22:16:40 GMT
RUN useradd -u 1001 -r -g 0 -s /sbin/nologin             -c "Default Application User" mongodb
# Thu, 14 Mar 2019 22:16:40 GMT
ENV PERCONA_MAJOR=36
# Fri, 03 May 2019 22:29:17 GMT
ENV PERCONA_VERSION=3.6.12-3.2.el7
# Fri, 03 May 2019 22:29:17 GMT
ENV K8S_TOOLS_VERSION=0.4.1
# Fri, 03 May 2019 22:30:03 GMT
RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm         && yum install -y                 Percona-Server-MongoDB-36-server-${PERCONA_VERSION}                 Percona-Server-MongoDB-36-mongos-${PERCONA_VERSION}                 Percona-Server-MongoDB-36-tools-${PERCONA_VERSION}                 Percona-Server-MongoDB-36-shell-${PERCONA_VERSION}                 curl                 jq         && yum clean all         && rm -rf /var/cache/yum /data/db  && mkdir -p /data/db         && chown -R 1001:0 /data/db
# Fri, 03 May 2019 22:30:05 GMT
RUN curl -fSL https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/k8s-mongodb-initiator -o /usr/local/bin/k8s-mongodb-initiator     && curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/mongodb-healthcheck -o /usr/local/bin/mongodb-healthcheck     && chmod 0755 /usr/local/bin/k8s-mongodb-initiator /usr/local/bin/mongodb-healthcheck
# Fri, 03 May 2019 22:30:05 GMT
VOLUME [/data/db]
# Fri, 03 May 2019 22:30:05 GMT
COPY file:73b257e28d42d38a579e50c8dbd964c054f38728692627d5438a0aa11526970b in /entrypoint.sh 
# Fri, 03 May 2019 22:30:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 May 2019 22:30:06 GMT
EXPOSE 27017
# Fri, 03 May 2019 22:30:06 GMT
USER 1001
# Fri, 03 May 2019 22:30:06 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deffdf1c4b73c5c0d930cc6ef5b4e4d3d2a6514de21ca52c5002792da5c757e8`  
		Last Modified: Thu, 14 Mar 2019 22:19:21 GMT  
		Size: 6.2 MB (6177590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eead3d14076eebc54ae5e35346b3dfdcf98ffac6bcd43b23fb33c4dbe29dacc`  
		Last Modified: Thu, 14 Mar 2019 22:19:20 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a4fbb12370d0ff3df20995c977ef25c3f9bbe45e17e4eaa391b5ba11301826`  
		Last Modified: Fri, 03 May 2019 22:31:14 GMT  
		Size: 91.4 MB (91430577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0773ae323d01609caf9c70e81fde199c20c232d59aa9242e3cf21edd5721a747`  
		Last Modified: Fri, 03 May 2019 22:30:50 GMT  
		Size: 6.3 MB (6300376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7723be3006adc04720412a7bcb937df8ccc5ff30b725877ee4e7857310035dcb`  
		Last Modified: Fri, 03 May 2019 22:30:50 GMT  
		Size: 3.8 KB (3810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:psmdb-3.6.12`

```console
$ docker pull percona@sha256:d55df98395d470c27235f670d5e4d0e7ed971fcdb3c3b7b070c0ec3c1d7d6859
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:psmdb-3.6.12` - linux; amd64

```console
$ docker pull percona@sha256:daafd73d290e90fb0fa1cecd4dc76e2ca6845118e6353a2bc65f14574b9c7936
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.3 MB (179317617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e388dab387389b5958fa4c4d7b4a4c59c67864678bd82da142cf2800e0685a5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:12:46 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 14 Mar 2019 22:16:39 GMT
RUN export GNUPGHOME="$(mktemp -d)"         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A         && gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona         && rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7         && curl -L -o /tmp/percona-release.rpm https://repo.percona.com/percona/yum/percona-release-1.0-7.noarch.rpm         && rpmkeys --checksig /tmp/percona-release.rpm         && yum install -y /tmp/percona-release.rpm         && rm -rf "$GNUPGHOME" /tmp/percona-release.rpm         && rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY         && percona-release disable all         && percona-release enable original release
# Thu, 14 Mar 2019 22:16:40 GMT
RUN useradd -u 1001 -r -g 0 -s /sbin/nologin             -c "Default Application User" mongodb
# Thu, 14 Mar 2019 22:16:40 GMT
ENV PERCONA_MAJOR=36
# Fri, 03 May 2019 22:29:17 GMT
ENV PERCONA_VERSION=3.6.12-3.2.el7
# Fri, 03 May 2019 22:29:17 GMT
ENV K8S_TOOLS_VERSION=0.4.1
# Fri, 03 May 2019 22:30:03 GMT
RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm         && yum install -y                 Percona-Server-MongoDB-36-server-${PERCONA_VERSION}                 Percona-Server-MongoDB-36-mongos-${PERCONA_VERSION}                 Percona-Server-MongoDB-36-tools-${PERCONA_VERSION}                 Percona-Server-MongoDB-36-shell-${PERCONA_VERSION}                 curl                 jq         && yum clean all         && rm -rf /var/cache/yum /data/db  && mkdir -p /data/db         && chown -R 1001:0 /data/db
# Fri, 03 May 2019 22:30:05 GMT
RUN curl -fSL https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/k8s-mongodb-initiator -o /usr/local/bin/k8s-mongodb-initiator     && curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/mongodb-healthcheck -o /usr/local/bin/mongodb-healthcheck     && chmod 0755 /usr/local/bin/k8s-mongodb-initiator /usr/local/bin/mongodb-healthcheck
# Fri, 03 May 2019 22:30:05 GMT
VOLUME [/data/db]
# Fri, 03 May 2019 22:30:05 GMT
COPY file:73b257e28d42d38a579e50c8dbd964c054f38728692627d5438a0aa11526970b in /entrypoint.sh 
# Fri, 03 May 2019 22:30:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 May 2019 22:30:06 GMT
EXPOSE 27017
# Fri, 03 May 2019 22:30:06 GMT
USER 1001
# Fri, 03 May 2019 22:30:06 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deffdf1c4b73c5c0d930cc6ef5b4e4d3d2a6514de21ca52c5002792da5c757e8`  
		Last Modified: Thu, 14 Mar 2019 22:19:21 GMT  
		Size: 6.2 MB (6177590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eead3d14076eebc54ae5e35346b3dfdcf98ffac6bcd43b23fb33c4dbe29dacc`  
		Last Modified: Thu, 14 Mar 2019 22:19:20 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a4fbb12370d0ff3df20995c977ef25c3f9bbe45e17e4eaa391b5ba11301826`  
		Last Modified: Fri, 03 May 2019 22:31:14 GMT  
		Size: 91.4 MB (91430577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0773ae323d01609caf9c70e81fde199c20c232d59aa9242e3cf21edd5721a747`  
		Last Modified: Fri, 03 May 2019 22:30:50 GMT  
		Size: 6.3 MB (6300376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7723be3006adc04720412a7bcb937df8ccc5ff30b725877ee4e7857310035dcb`  
		Last Modified: Fri, 03 May 2019 22:30:50 GMT  
		Size: 3.8 KB (3810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:psmdb-4.0`

```console
$ docker pull percona@sha256:3100119070a0dcafd77eea9d58730cc78227a345f85996b4757cabf3e6223bd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:psmdb-4.0` - linux; amd64

```console
$ docker pull percona@sha256:3f70bf8a33ab3ce088125fc73b998c5b7231a4f932378b39b9377b4e300e164c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.8 MB (182767905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b782bc2abf13660a1eac1f7604458609243f2cb471323e02d1421061af5c7f9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:12:46 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 14 Mar 2019 22:15:48 GMT
RUN export GNUPGHOME="$(mktemp -d)"         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A         && gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona         && rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7         && curl -L -o /tmp/percona-release.rpm https://repo.percona.com/percona/yum/percona-release-1.0-7.noarch.rpm         && rpmkeys --checksig /tmp/percona-release.rpm         && yum install -y /tmp/percona-release.rpm         && rm -rf "$GNUPGHOME" /tmp/percona-release.rpm         && rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY         && percona-release disable all         && percona-release enable psmdb-40 release
# Thu, 14 Mar 2019 22:15:49 GMT
RUN useradd -u 1001 -r -g 0 -s /sbin/nologin             -c "Default Application User" mongodb
# Thu, 14 Mar 2019 22:15:50 GMT
ENV PERCONA_MAJOR=40
# Wed, 17 Apr 2019 23:25:23 GMT
ENV PERCONA_VERSION=4.0.9-4.el7
# Wed, 17 Apr 2019 23:25:23 GMT
ENV K8S_TOOLS_VERSION=0.4.1
# Wed, 17 Apr 2019 23:25:52 GMT
RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm         && yum install -y                 percona-server-mongodb-server-${PERCONA_VERSION}                 percona-server-mongodb-mongos-${PERCONA_VERSION}                 percona-server-mongodb-shell-${PERCONA_VERSION}                 percona-server-mongodb-tools-${PERCONA_VERSION}                 curl                 jq         && yum clean all         && rm -rf /var/cache/yum /data/db  && mkdir -p /data/db         && chown -R 1001:0 /data/db
# Wed, 17 Apr 2019 23:25:53 GMT
RUN curl -fSL https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/k8s-mongodb-initiator -o /usr/local/bin/k8s-mongodb-initiator     && curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/mongodb-healthcheck -o /usr/local/bin/mongodb-healthcheck     && chmod 0755 /usr/local/bin/k8s-mongodb-initiator /usr/local/bin/mongodb-healthcheck
# Wed, 17 Apr 2019 23:25:53 GMT
VOLUME [/data/db]
# Wed, 17 Apr 2019 23:25:54 GMT
COPY file:73b257e28d42d38a579e50c8dbd964c054f38728692627d5438a0aa11526970b in /entrypoint.sh 
# Wed, 17 Apr 2019 23:25:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Apr 2019 23:25:54 GMT
EXPOSE 27017
# Wed, 17 Apr 2019 23:25:54 GMT
USER 1001
# Wed, 17 Apr 2019 23:25:54 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98207360bc836ada2096ac8e0e8b0d6208819a7b219ac0e86e4cde08a67c4b95`  
		Last Modified: Thu, 14 Mar 2019 22:19:01 GMT  
		Size: 6.2 MB (6177637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e812147e995e158927fdc7b968fbc65e7fa66fe33f3c255f5cb53a131b8bf545`  
		Last Modified: Thu, 14 Mar 2019 22:18:59 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d716a1b8ff7883b8c6753e77255b5668986f1a9002cc022a209d120bd0862681`  
		Last Modified: Wed, 17 Apr 2019 23:26:34 GMT  
		Size: 94.9 MB (94880822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6707fb9d53fb5de011f9802b773a0fbbf22a298a4d1e3590f48dde26dfe1349`  
		Last Modified: Wed, 17 Apr 2019 23:26:18 GMT  
		Size: 6.3 MB (6300373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e0f2d78c80f71f6f92d815d5c30d3df1749205d4d232850f94ef9999518b40`  
		Last Modified: Wed, 17 Apr 2019 23:26:17 GMT  
		Size: 3.8 KB (3810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:psmdb-4.0.9`

```console
$ docker pull percona@sha256:3100119070a0dcafd77eea9d58730cc78227a345f85996b4757cabf3e6223bd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:psmdb-4.0.9` - linux; amd64

```console
$ docker pull percona@sha256:3f70bf8a33ab3ce088125fc73b998c5b7231a4f932378b39b9377b4e300e164c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.8 MB (182767905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b782bc2abf13660a1eac1f7604458609243f2cb471323e02d1421061af5c7f9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:12:46 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 14 Mar 2019 22:15:48 GMT
RUN export GNUPGHOME="$(mktemp -d)"         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A         && gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona         && rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7         && curl -L -o /tmp/percona-release.rpm https://repo.percona.com/percona/yum/percona-release-1.0-7.noarch.rpm         && rpmkeys --checksig /tmp/percona-release.rpm         && yum install -y /tmp/percona-release.rpm         && rm -rf "$GNUPGHOME" /tmp/percona-release.rpm         && rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY         && percona-release disable all         && percona-release enable psmdb-40 release
# Thu, 14 Mar 2019 22:15:49 GMT
RUN useradd -u 1001 -r -g 0 -s /sbin/nologin             -c "Default Application User" mongodb
# Thu, 14 Mar 2019 22:15:50 GMT
ENV PERCONA_MAJOR=40
# Wed, 17 Apr 2019 23:25:23 GMT
ENV PERCONA_VERSION=4.0.9-4.el7
# Wed, 17 Apr 2019 23:25:23 GMT
ENV K8S_TOOLS_VERSION=0.4.1
# Wed, 17 Apr 2019 23:25:52 GMT
RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm         && yum install -y                 percona-server-mongodb-server-${PERCONA_VERSION}                 percona-server-mongodb-mongos-${PERCONA_VERSION}                 percona-server-mongodb-shell-${PERCONA_VERSION}                 percona-server-mongodb-tools-${PERCONA_VERSION}                 curl                 jq         && yum clean all         && rm -rf /var/cache/yum /data/db  && mkdir -p /data/db         && chown -R 1001:0 /data/db
# Wed, 17 Apr 2019 23:25:53 GMT
RUN curl -fSL https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/k8s-mongodb-initiator -o /usr/local/bin/k8s-mongodb-initiator     && curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/mongodb-healthcheck -o /usr/local/bin/mongodb-healthcheck     && chmod 0755 /usr/local/bin/k8s-mongodb-initiator /usr/local/bin/mongodb-healthcheck
# Wed, 17 Apr 2019 23:25:53 GMT
VOLUME [/data/db]
# Wed, 17 Apr 2019 23:25:54 GMT
COPY file:73b257e28d42d38a579e50c8dbd964c054f38728692627d5438a0aa11526970b in /entrypoint.sh 
# Wed, 17 Apr 2019 23:25:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Apr 2019 23:25:54 GMT
EXPOSE 27017
# Wed, 17 Apr 2019 23:25:54 GMT
USER 1001
# Wed, 17 Apr 2019 23:25:54 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98207360bc836ada2096ac8e0e8b0d6208819a7b219ac0e86e4cde08a67c4b95`  
		Last Modified: Thu, 14 Mar 2019 22:19:01 GMT  
		Size: 6.2 MB (6177637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e812147e995e158927fdc7b968fbc65e7fa66fe33f3c255f5cb53a131b8bf545`  
		Last Modified: Thu, 14 Mar 2019 22:18:59 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d716a1b8ff7883b8c6753e77255b5668986f1a9002cc022a209d120bd0862681`  
		Last Modified: Wed, 17 Apr 2019 23:26:34 GMT  
		Size: 94.9 MB (94880822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6707fb9d53fb5de011f9802b773a0fbbf22a298a4d1e3590f48dde26dfe1349`  
		Last Modified: Wed, 17 Apr 2019 23:26:18 GMT  
		Size: 6.3 MB (6300373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e0f2d78c80f71f6f92d815d5c30d3df1749205d4d232850f94ef9999518b40`  
		Last Modified: Wed, 17 Apr 2019 23:26:17 GMT  
		Size: 3.8 KB (3810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
