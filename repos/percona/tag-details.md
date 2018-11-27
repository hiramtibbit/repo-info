<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `percona`

-	[`percona:5`](#percona5)
-	[`percona:5.6`](#percona56)
-	[`percona:5.6.41`](#percona5641)
-	[`percona:5.6.41-centos`](#percona5641-centos)
-	[`percona:5.6-centos`](#percona56-centos)
-	[`percona:5.7`](#percona57)
-	[`percona:5.7.23`](#percona5723)
-	[`percona:5.7.23-centos`](#percona5723-centos)
-	[`percona:5.7-centos`](#percona57-centos)
-	[`percona:5-centos`](#percona5-centos)
-	[`percona:8`](#percona8)
-	[`percona:8.0`](#percona80)
-	[`percona:8.0.12-2rc1`](#percona8012-2rc1)
-	[`percona:8.0.12-2rc1-centos`](#percona8012-2rc1-centos)
-	[`percona:8.0-centos`](#percona80-centos)
-	[`percona:8-centos`](#percona8-centos)
-	[`percona:centos`](#perconacentos)
-	[`percona:latest`](#perconalatest)

## `percona:5`

```console
$ docker pull percona@sha256:449c8c1fd312f99a74220c3251d85e4a65e4eb5fbe9d882988c892043569b352
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5` - linux; amd64

```console
$ docker pull percona@sha256:a857b8f338c8666b26c91c8b7afc1b8f9a405e2320fbe6693c05c38d16b8bd1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.0 MB (190018495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d77057392123568120b25475c833caa75b4d18f5fadf5a82dbac9462546393`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 09 Oct 2018 18:19:47 GMT
ADD file:fbe9badfd2790f0747a25fbe5c94a6daa78969511ca08c8d4ac654f3442570de in / 
# Tue, 09 Oct 2018 18:19:48 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181006
# Tue, 09 Oct 2018 18:19:48 GMT
CMD ["/bin/bash"]
# Thu, 22 Nov 2018 19:20:44 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 22 Nov 2018 19:22:10 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 22 Nov 2018 19:22:11 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 22 Nov 2018 19:22:13 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm
# Thu, 22 Nov 2018 19:22:14 GMT
ENV PERCONA_VERSION=5.7.23-23.1.el7
# Thu, 22 Nov 2018 19:22:37 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 22 Nov 2018 19:22:38 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Thu, 22 Nov 2018 19:22:38 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 22 Nov 2018 19:22:39 GMT
COPY file:2fd07388582a69bcc2248785f5e72602c338c21c5827d5d1ffa1cb1d64c0d9eb in /docker-entrypoint.sh 
# Thu, 22 Nov 2018 19:22:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Nov 2018 19:22:39 GMT
USER [mysql]
# Thu, 22 Nov 2018 19:22:39 GMT
EXPOSE 3306/tcp
# Thu, 22 Nov 2018 19:22:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aeb7866da422acc7e93dcf7323f38d7646f6269af33bcdb6647f2094fc4b3bf7`  
		Last Modified: Tue, 09 Oct 2018 18:24:50 GMT  
		Size: 74.7 MB (74703002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb10f28c06939cd6f1efb03e3e3aa10ee814c4b2a224ee9c6b671b313cace8c`  
		Last Modified: Thu, 22 Nov 2018 19:25:47 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9857fd8d3c7aef3d406d6b768e7546733d7edc4266f9a8f8c7edb4c763aebe`  
		Last Modified: Thu, 22 Nov 2018 19:25:46 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55baeba7117c3351a195aafcb9ca765bdf66d993dc68f1e753ebe4b09f955f57`  
		Last Modified: Thu, 22 Nov 2018 19:25:49 GMT  
		Size: 5.9 MB (5892861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0131ad421ef19087d9d3cebb4ee8f53b7432acbd7ac663804704cded676180a7`  
		Last Modified: Thu, 22 Nov 2018 19:26:05 GMT  
		Size: 109.4 MB (109416303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c6aabd04ca5f507033d96ddf307793f804f13158ad2cf434f2551d07a3f816`  
		Last Modified: Thu, 22 Nov 2018 19:25:47 GMT  
		Size: 1.4 KB (1384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a4f07a5148abd826eb9cdf9d1ccc264cc4f293e621f54d82ff5ef607818507`  
		Last Modified: Thu, 22 Nov 2018 19:25:46 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6`

```console
$ docker pull percona@sha256:ddcb65452db6583dad53babbb7f72a68b48e1a9796af8b83f4e866b9814fdd8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6` - linux; amd64

```console
$ docker pull percona@sha256:c50149e962b0587df64e8aed87614ddcdcb28ab943e4b8a344226b70aad988d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137491655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2be306531ccc6f7af539a7e67802728b3f9462c44f35f1f4e0f350844ac2ecc7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 09 Oct 2018 18:19:47 GMT
ADD file:fbe9badfd2790f0747a25fbe5c94a6daa78969511ca08c8d4ac654f3442570de in / 
# Tue, 09 Oct 2018 18:19:48 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181006
# Tue, 09 Oct 2018 18:19:48 GMT
CMD ["/bin/bash"]
# Thu, 22 Nov 2018 19:20:44 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 22 Nov 2018 19:22:10 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 22 Nov 2018 19:22:11 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 22 Nov 2018 19:22:13 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm
# Thu, 22 Nov 2018 19:22:59 GMT
ENV PERCONA_VERSION=5.6.41-rel84.1.el7
# Thu, 22 Nov 2018 19:23:22 GMT
RUN yum install -y 		Percona-Server-server-56-${PERCONA_VERSION} 		Percona-Server-tokudb-56-${PERCONA_VERSION} 		Percona-Server-rocksdb-56-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Tue, 27 Nov 2018 01:19:18 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /etc/my.cnf.d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user|sql_mode)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user|sql_mode)/#&/' 	&& sed -i '/Make sure only root/,/fi/d' /usr/bin/ps_tokudb_admin 	&& echo "thp-setting=never" >> /etc/my.cnf 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc /etc/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Tue, 27 Nov 2018 01:19:18 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 27 Nov 2018 01:19:19 GMT
COPY file:fe6b1a8e605281e5ec8baec786785211172b14a252ac4bf8d19e30ace28a2e85 in /docker-entrypoint.sh 
# Tue, 27 Nov 2018 01:19:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Nov 2018 01:19:20 GMT
USER [mysql]
# Tue, 27 Nov 2018 01:19:20 GMT
EXPOSE 3306/tcp
# Tue, 27 Nov 2018 01:19:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aeb7866da422acc7e93dcf7323f38d7646f6269af33bcdb6647f2094fc4b3bf7`  
		Last Modified: Tue, 09 Oct 2018 18:24:50 GMT  
		Size: 74.7 MB (74703002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb10f28c06939cd6f1efb03e3e3aa10ee814c4b2a224ee9c6b671b313cace8c`  
		Last Modified: Thu, 22 Nov 2018 19:25:47 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9857fd8d3c7aef3d406d6b768e7546733d7edc4266f9a8f8c7edb4c763aebe`  
		Last Modified: Thu, 22 Nov 2018 19:25:46 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55baeba7117c3351a195aafcb9ca765bdf66d993dc68f1e753ebe4b09f955f57`  
		Last Modified: Thu, 22 Nov 2018 19:25:49 GMT  
		Size: 5.9 MB (5892861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f151ec0ef7cc22744232ba115474419e80f835b534f15584f1ee02d5ab64910f`  
		Last Modified: Thu, 22 Nov 2018 19:28:17 GMT  
		Size: 56.9 MB (56885885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3ba9a79f5b7adafce28e8221d0f593341710812aeb25f27d297c60707905ed`  
		Last Modified: Tue, 27 Nov 2018 01:19:54 GMT  
		Size: 5.1 KB (5081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9cca9c0caac73c87c7978c07d5fa44986947305442df72590d675bfef0d20f`  
		Last Modified: Tue, 27 Nov 2018 01:19:54 GMT  
		Size: 2.9 KB (2858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.41`

```console
$ docker pull percona@sha256:ddcb65452db6583dad53babbb7f72a68b48e1a9796af8b83f4e866b9814fdd8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6.41` - linux; amd64

```console
$ docker pull percona@sha256:c50149e962b0587df64e8aed87614ddcdcb28ab943e4b8a344226b70aad988d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137491655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2be306531ccc6f7af539a7e67802728b3f9462c44f35f1f4e0f350844ac2ecc7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 09 Oct 2018 18:19:47 GMT
ADD file:fbe9badfd2790f0747a25fbe5c94a6daa78969511ca08c8d4ac654f3442570de in / 
# Tue, 09 Oct 2018 18:19:48 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181006
# Tue, 09 Oct 2018 18:19:48 GMT
CMD ["/bin/bash"]
# Thu, 22 Nov 2018 19:20:44 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 22 Nov 2018 19:22:10 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 22 Nov 2018 19:22:11 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 22 Nov 2018 19:22:13 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm
# Thu, 22 Nov 2018 19:22:59 GMT
ENV PERCONA_VERSION=5.6.41-rel84.1.el7
# Thu, 22 Nov 2018 19:23:22 GMT
RUN yum install -y 		Percona-Server-server-56-${PERCONA_VERSION} 		Percona-Server-tokudb-56-${PERCONA_VERSION} 		Percona-Server-rocksdb-56-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Tue, 27 Nov 2018 01:19:18 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /etc/my.cnf.d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user|sql_mode)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user|sql_mode)/#&/' 	&& sed -i '/Make sure only root/,/fi/d' /usr/bin/ps_tokudb_admin 	&& echo "thp-setting=never" >> /etc/my.cnf 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc /etc/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Tue, 27 Nov 2018 01:19:18 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 27 Nov 2018 01:19:19 GMT
COPY file:fe6b1a8e605281e5ec8baec786785211172b14a252ac4bf8d19e30ace28a2e85 in /docker-entrypoint.sh 
# Tue, 27 Nov 2018 01:19:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Nov 2018 01:19:20 GMT
USER [mysql]
# Tue, 27 Nov 2018 01:19:20 GMT
EXPOSE 3306/tcp
# Tue, 27 Nov 2018 01:19:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aeb7866da422acc7e93dcf7323f38d7646f6269af33bcdb6647f2094fc4b3bf7`  
		Last Modified: Tue, 09 Oct 2018 18:24:50 GMT  
		Size: 74.7 MB (74703002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb10f28c06939cd6f1efb03e3e3aa10ee814c4b2a224ee9c6b671b313cace8c`  
		Last Modified: Thu, 22 Nov 2018 19:25:47 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9857fd8d3c7aef3d406d6b768e7546733d7edc4266f9a8f8c7edb4c763aebe`  
		Last Modified: Thu, 22 Nov 2018 19:25:46 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55baeba7117c3351a195aafcb9ca765bdf66d993dc68f1e753ebe4b09f955f57`  
		Last Modified: Thu, 22 Nov 2018 19:25:49 GMT  
		Size: 5.9 MB (5892861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f151ec0ef7cc22744232ba115474419e80f835b534f15584f1ee02d5ab64910f`  
		Last Modified: Thu, 22 Nov 2018 19:28:17 GMT  
		Size: 56.9 MB (56885885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3ba9a79f5b7adafce28e8221d0f593341710812aeb25f27d297c60707905ed`  
		Last Modified: Tue, 27 Nov 2018 01:19:54 GMT  
		Size: 5.1 KB (5081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9cca9c0caac73c87c7978c07d5fa44986947305442df72590d675bfef0d20f`  
		Last Modified: Tue, 27 Nov 2018 01:19:54 GMT  
		Size: 2.9 KB (2858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.41-centos`

```console
$ docker pull percona@sha256:ddcb65452db6583dad53babbb7f72a68b48e1a9796af8b83f4e866b9814fdd8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6.41-centos` - linux; amd64

```console
$ docker pull percona@sha256:c50149e962b0587df64e8aed87614ddcdcb28ab943e4b8a344226b70aad988d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137491655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2be306531ccc6f7af539a7e67802728b3f9462c44f35f1f4e0f350844ac2ecc7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 09 Oct 2018 18:19:47 GMT
ADD file:fbe9badfd2790f0747a25fbe5c94a6daa78969511ca08c8d4ac654f3442570de in / 
# Tue, 09 Oct 2018 18:19:48 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181006
# Tue, 09 Oct 2018 18:19:48 GMT
CMD ["/bin/bash"]
# Thu, 22 Nov 2018 19:20:44 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 22 Nov 2018 19:22:10 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 22 Nov 2018 19:22:11 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 22 Nov 2018 19:22:13 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm
# Thu, 22 Nov 2018 19:22:59 GMT
ENV PERCONA_VERSION=5.6.41-rel84.1.el7
# Thu, 22 Nov 2018 19:23:22 GMT
RUN yum install -y 		Percona-Server-server-56-${PERCONA_VERSION} 		Percona-Server-tokudb-56-${PERCONA_VERSION} 		Percona-Server-rocksdb-56-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Tue, 27 Nov 2018 01:19:18 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /etc/my.cnf.d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user|sql_mode)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user|sql_mode)/#&/' 	&& sed -i '/Make sure only root/,/fi/d' /usr/bin/ps_tokudb_admin 	&& echo "thp-setting=never" >> /etc/my.cnf 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc /etc/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Tue, 27 Nov 2018 01:19:18 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 27 Nov 2018 01:19:19 GMT
COPY file:fe6b1a8e605281e5ec8baec786785211172b14a252ac4bf8d19e30ace28a2e85 in /docker-entrypoint.sh 
# Tue, 27 Nov 2018 01:19:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Nov 2018 01:19:20 GMT
USER [mysql]
# Tue, 27 Nov 2018 01:19:20 GMT
EXPOSE 3306/tcp
# Tue, 27 Nov 2018 01:19:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aeb7866da422acc7e93dcf7323f38d7646f6269af33bcdb6647f2094fc4b3bf7`  
		Last Modified: Tue, 09 Oct 2018 18:24:50 GMT  
		Size: 74.7 MB (74703002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb10f28c06939cd6f1efb03e3e3aa10ee814c4b2a224ee9c6b671b313cace8c`  
		Last Modified: Thu, 22 Nov 2018 19:25:47 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9857fd8d3c7aef3d406d6b768e7546733d7edc4266f9a8f8c7edb4c763aebe`  
		Last Modified: Thu, 22 Nov 2018 19:25:46 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55baeba7117c3351a195aafcb9ca765bdf66d993dc68f1e753ebe4b09f955f57`  
		Last Modified: Thu, 22 Nov 2018 19:25:49 GMT  
		Size: 5.9 MB (5892861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f151ec0ef7cc22744232ba115474419e80f835b534f15584f1ee02d5ab64910f`  
		Last Modified: Thu, 22 Nov 2018 19:28:17 GMT  
		Size: 56.9 MB (56885885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3ba9a79f5b7adafce28e8221d0f593341710812aeb25f27d297c60707905ed`  
		Last Modified: Tue, 27 Nov 2018 01:19:54 GMT  
		Size: 5.1 KB (5081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9cca9c0caac73c87c7978c07d5fa44986947305442df72590d675bfef0d20f`  
		Last Modified: Tue, 27 Nov 2018 01:19:54 GMT  
		Size: 2.9 KB (2858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6-centos`

```console
$ docker pull percona@sha256:ddcb65452db6583dad53babbb7f72a68b48e1a9796af8b83f4e866b9814fdd8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6-centos` - linux; amd64

```console
$ docker pull percona@sha256:c50149e962b0587df64e8aed87614ddcdcb28ab943e4b8a344226b70aad988d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137491655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2be306531ccc6f7af539a7e67802728b3f9462c44f35f1f4e0f350844ac2ecc7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 09 Oct 2018 18:19:47 GMT
ADD file:fbe9badfd2790f0747a25fbe5c94a6daa78969511ca08c8d4ac654f3442570de in / 
# Tue, 09 Oct 2018 18:19:48 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181006
# Tue, 09 Oct 2018 18:19:48 GMT
CMD ["/bin/bash"]
# Thu, 22 Nov 2018 19:20:44 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 22 Nov 2018 19:22:10 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 22 Nov 2018 19:22:11 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 22 Nov 2018 19:22:13 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm
# Thu, 22 Nov 2018 19:22:59 GMT
ENV PERCONA_VERSION=5.6.41-rel84.1.el7
# Thu, 22 Nov 2018 19:23:22 GMT
RUN yum install -y 		Percona-Server-server-56-${PERCONA_VERSION} 		Percona-Server-tokudb-56-${PERCONA_VERSION} 		Percona-Server-rocksdb-56-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Tue, 27 Nov 2018 01:19:18 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /etc/my.cnf.d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user|sql_mode)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user|sql_mode)/#&/' 	&& sed -i '/Make sure only root/,/fi/d' /usr/bin/ps_tokudb_admin 	&& echo "thp-setting=never" >> /etc/my.cnf 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc /etc/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Tue, 27 Nov 2018 01:19:18 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 27 Nov 2018 01:19:19 GMT
COPY file:fe6b1a8e605281e5ec8baec786785211172b14a252ac4bf8d19e30ace28a2e85 in /docker-entrypoint.sh 
# Tue, 27 Nov 2018 01:19:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Nov 2018 01:19:20 GMT
USER [mysql]
# Tue, 27 Nov 2018 01:19:20 GMT
EXPOSE 3306/tcp
# Tue, 27 Nov 2018 01:19:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aeb7866da422acc7e93dcf7323f38d7646f6269af33bcdb6647f2094fc4b3bf7`  
		Last Modified: Tue, 09 Oct 2018 18:24:50 GMT  
		Size: 74.7 MB (74703002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb10f28c06939cd6f1efb03e3e3aa10ee814c4b2a224ee9c6b671b313cace8c`  
		Last Modified: Thu, 22 Nov 2018 19:25:47 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9857fd8d3c7aef3d406d6b768e7546733d7edc4266f9a8f8c7edb4c763aebe`  
		Last Modified: Thu, 22 Nov 2018 19:25:46 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55baeba7117c3351a195aafcb9ca765bdf66d993dc68f1e753ebe4b09f955f57`  
		Last Modified: Thu, 22 Nov 2018 19:25:49 GMT  
		Size: 5.9 MB (5892861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f151ec0ef7cc22744232ba115474419e80f835b534f15584f1ee02d5ab64910f`  
		Last Modified: Thu, 22 Nov 2018 19:28:17 GMT  
		Size: 56.9 MB (56885885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3ba9a79f5b7adafce28e8221d0f593341710812aeb25f27d297c60707905ed`  
		Last Modified: Tue, 27 Nov 2018 01:19:54 GMT  
		Size: 5.1 KB (5081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9cca9c0caac73c87c7978c07d5fa44986947305442df72590d675bfef0d20f`  
		Last Modified: Tue, 27 Nov 2018 01:19:54 GMT  
		Size: 2.9 KB (2858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7`

```console
$ docker pull percona@sha256:449c8c1fd312f99a74220c3251d85e4a65e4eb5fbe9d882988c892043569b352
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7` - linux; amd64

```console
$ docker pull percona@sha256:a857b8f338c8666b26c91c8b7afc1b8f9a405e2320fbe6693c05c38d16b8bd1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.0 MB (190018495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d77057392123568120b25475c833caa75b4d18f5fadf5a82dbac9462546393`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 09 Oct 2018 18:19:47 GMT
ADD file:fbe9badfd2790f0747a25fbe5c94a6daa78969511ca08c8d4ac654f3442570de in / 
# Tue, 09 Oct 2018 18:19:48 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181006
# Tue, 09 Oct 2018 18:19:48 GMT
CMD ["/bin/bash"]
# Thu, 22 Nov 2018 19:20:44 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 22 Nov 2018 19:22:10 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 22 Nov 2018 19:22:11 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 22 Nov 2018 19:22:13 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm
# Thu, 22 Nov 2018 19:22:14 GMT
ENV PERCONA_VERSION=5.7.23-23.1.el7
# Thu, 22 Nov 2018 19:22:37 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 22 Nov 2018 19:22:38 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Thu, 22 Nov 2018 19:22:38 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 22 Nov 2018 19:22:39 GMT
COPY file:2fd07388582a69bcc2248785f5e72602c338c21c5827d5d1ffa1cb1d64c0d9eb in /docker-entrypoint.sh 
# Thu, 22 Nov 2018 19:22:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Nov 2018 19:22:39 GMT
USER [mysql]
# Thu, 22 Nov 2018 19:22:39 GMT
EXPOSE 3306/tcp
# Thu, 22 Nov 2018 19:22:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aeb7866da422acc7e93dcf7323f38d7646f6269af33bcdb6647f2094fc4b3bf7`  
		Last Modified: Tue, 09 Oct 2018 18:24:50 GMT  
		Size: 74.7 MB (74703002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb10f28c06939cd6f1efb03e3e3aa10ee814c4b2a224ee9c6b671b313cace8c`  
		Last Modified: Thu, 22 Nov 2018 19:25:47 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9857fd8d3c7aef3d406d6b768e7546733d7edc4266f9a8f8c7edb4c763aebe`  
		Last Modified: Thu, 22 Nov 2018 19:25:46 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55baeba7117c3351a195aafcb9ca765bdf66d993dc68f1e753ebe4b09f955f57`  
		Last Modified: Thu, 22 Nov 2018 19:25:49 GMT  
		Size: 5.9 MB (5892861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0131ad421ef19087d9d3cebb4ee8f53b7432acbd7ac663804704cded676180a7`  
		Last Modified: Thu, 22 Nov 2018 19:26:05 GMT  
		Size: 109.4 MB (109416303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c6aabd04ca5f507033d96ddf307793f804f13158ad2cf434f2551d07a3f816`  
		Last Modified: Thu, 22 Nov 2018 19:25:47 GMT  
		Size: 1.4 KB (1384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a4f07a5148abd826eb9cdf9d1ccc264cc4f293e621f54d82ff5ef607818507`  
		Last Modified: Thu, 22 Nov 2018 19:25:46 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7.23`

```console
$ docker pull percona@sha256:449c8c1fd312f99a74220c3251d85e4a65e4eb5fbe9d882988c892043569b352
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7.23` - linux; amd64

```console
$ docker pull percona@sha256:a857b8f338c8666b26c91c8b7afc1b8f9a405e2320fbe6693c05c38d16b8bd1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.0 MB (190018495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d77057392123568120b25475c833caa75b4d18f5fadf5a82dbac9462546393`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 09 Oct 2018 18:19:47 GMT
ADD file:fbe9badfd2790f0747a25fbe5c94a6daa78969511ca08c8d4ac654f3442570de in / 
# Tue, 09 Oct 2018 18:19:48 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181006
# Tue, 09 Oct 2018 18:19:48 GMT
CMD ["/bin/bash"]
# Thu, 22 Nov 2018 19:20:44 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 22 Nov 2018 19:22:10 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 22 Nov 2018 19:22:11 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 22 Nov 2018 19:22:13 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm
# Thu, 22 Nov 2018 19:22:14 GMT
ENV PERCONA_VERSION=5.7.23-23.1.el7
# Thu, 22 Nov 2018 19:22:37 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 22 Nov 2018 19:22:38 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Thu, 22 Nov 2018 19:22:38 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 22 Nov 2018 19:22:39 GMT
COPY file:2fd07388582a69bcc2248785f5e72602c338c21c5827d5d1ffa1cb1d64c0d9eb in /docker-entrypoint.sh 
# Thu, 22 Nov 2018 19:22:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Nov 2018 19:22:39 GMT
USER [mysql]
# Thu, 22 Nov 2018 19:22:39 GMT
EXPOSE 3306/tcp
# Thu, 22 Nov 2018 19:22:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aeb7866da422acc7e93dcf7323f38d7646f6269af33bcdb6647f2094fc4b3bf7`  
		Last Modified: Tue, 09 Oct 2018 18:24:50 GMT  
		Size: 74.7 MB (74703002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb10f28c06939cd6f1efb03e3e3aa10ee814c4b2a224ee9c6b671b313cace8c`  
		Last Modified: Thu, 22 Nov 2018 19:25:47 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9857fd8d3c7aef3d406d6b768e7546733d7edc4266f9a8f8c7edb4c763aebe`  
		Last Modified: Thu, 22 Nov 2018 19:25:46 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55baeba7117c3351a195aafcb9ca765bdf66d993dc68f1e753ebe4b09f955f57`  
		Last Modified: Thu, 22 Nov 2018 19:25:49 GMT  
		Size: 5.9 MB (5892861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0131ad421ef19087d9d3cebb4ee8f53b7432acbd7ac663804704cded676180a7`  
		Last Modified: Thu, 22 Nov 2018 19:26:05 GMT  
		Size: 109.4 MB (109416303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c6aabd04ca5f507033d96ddf307793f804f13158ad2cf434f2551d07a3f816`  
		Last Modified: Thu, 22 Nov 2018 19:25:47 GMT  
		Size: 1.4 KB (1384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a4f07a5148abd826eb9cdf9d1ccc264cc4f293e621f54d82ff5ef607818507`  
		Last Modified: Thu, 22 Nov 2018 19:25:46 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7.23-centos`

```console
$ docker pull percona@sha256:449c8c1fd312f99a74220c3251d85e4a65e4eb5fbe9d882988c892043569b352
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7.23-centos` - linux; amd64

```console
$ docker pull percona@sha256:a857b8f338c8666b26c91c8b7afc1b8f9a405e2320fbe6693c05c38d16b8bd1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.0 MB (190018495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d77057392123568120b25475c833caa75b4d18f5fadf5a82dbac9462546393`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 09 Oct 2018 18:19:47 GMT
ADD file:fbe9badfd2790f0747a25fbe5c94a6daa78969511ca08c8d4ac654f3442570de in / 
# Tue, 09 Oct 2018 18:19:48 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181006
# Tue, 09 Oct 2018 18:19:48 GMT
CMD ["/bin/bash"]
# Thu, 22 Nov 2018 19:20:44 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 22 Nov 2018 19:22:10 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 22 Nov 2018 19:22:11 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 22 Nov 2018 19:22:13 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm
# Thu, 22 Nov 2018 19:22:14 GMT
ENV PERCONA_VERSION=5.7.23-23.1.el7
# Thu, 22 Nov 2018 19:22:37 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 22 Nov 2018 19:22:38 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Thu, 22 Nov 2018 19:22:38 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 22 Nov 2018 19:22:39 GMT
COPY file:2fd07388582a69bcc2248785f5e72602c338c21c5827d5d1ffa1cb1d64c0d9eb in /docker-entrypoint.sh 
# Thu, 22 Nov 2018 19:22:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Nov 2018 19:22:39 GMT
USER [mysql]
# Thu, 22 Nov 2018 19:22:39 GMT
EXPOSE 3306/tcp
# Thu, 22 Nov 2018 19:22:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aeb7866da422acc7e93dcf7323f38d7646f6269af33bcdb6647f2094fc4b3bf7`  
		Last Modified: Tue, 09 Oct 2018 18:24:50 GMT  
		Size: 74.7 MB (74703002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb10f28c06939cd6f1efb03e3e3aa10ee814c4b2a224ee9c6b671b313cace8c`  
		Last Modified: Thu, 22 Nov 2018 19:25:47 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9857fd8d3c7aef3d406d6b768e7546733d7edc4266f9a8f8c7edb4c763aebe`  
		Last Modified: Thu, 22 Nov 2018 19:25:46 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55baeba7117c3351a195aafcb9ca765bdf66d993dc68f1e753ebe4b09f955f57`  
		Last Modified: Thu, 22 Nov 2018 19:25:49 GMT  
		Size: 5.9 MB (5892861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0131ad421ef19087d9d3cebb4ee8f53b7432acbd7ac663804704cded676180a7`  
		Last Modified: Thu, 22 Nov 2018 19:26:05 GMT  
		Size: 109.4 MB (109416303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c6aabd04ca5f507033d96ddf307793f804f13158ad2cf434f2551d07a3f816`  
		Last Modified: Thu, 22 Nov 2018 19:25:47 GMT  
		Size: 1.4 KB (1384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a4f07a5148abd826eb9cdf9d1ccc264cc4f293e621f54d82ff5ef607818507`  
		Last Modified: Thu, 22 Nov 2018 19:25:46 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7-centos`

```console
$ docker pull percona@sha256:449c8c1fd312f99a74220c3251d85e4a65e4eb5fbe9d882988c892043569b352
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7-centos` - linux; amd64

```console
$ docker pull percona@sha256:a857b8f338c8666b26c91c8b7afc1b8f9a405e2320fbe6693c05c38d16b8bd1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.0 MB (190018495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d77057392123568120b25475c833caa75b4d18f5fadf5a82dbac9462546393`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 09 Oct 2018 18:19:47 GMT
ADD file:fbe9badfd2790f0747a25fbe5c94a6daa78969511ca08c8d4ac654f3442570de in / 
# Tue, 09 Oct 2018 18:19:48 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181006
# Tue, 09 Oct 2018 18:19:48 GMT
CMD ["/bin/bash"]
# Thu, 22 Nov 2018 19:20:44 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 22 Nov 2018 19:22:10 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 22 Nov 2018 19:22:11 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 22 Nov 2018 19:22:13 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm
# Thu, 22 Nov 2018 19:22:14 GMT
ENV PERCONA_VERSION=5.7.23-23.1.el7
# Thu, 22 Nov 2018 19:22:37 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 22 Nov 2018 19:22:38 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Thu, 22 Nov 2018 19:22:38 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 22 Nov 2018 19:22:39 GMT
COPY file:2fd07388582a69bcc2248785f5e72602c338c21c5827d5d1ffa1cb1d64c0d9eb in /docker-entrypoint.sh 
# Thu, 22 Nov 2018 19:22:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Nov 2018 19:22:39 GMT
USER [mysql]
# Thu, 22 Nov 2018 19:22:39 GMT
EXPOSE 3306/tcp
# Thu, 22 Nov 2018 19:22:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aeb7866da422acc7e93dcf7323f38d7646f6269af33bcdb6647f2094fc4b3bf7`  
		Last Modified: Tue, 09 Oct 2018 18:24:50 GMT  
		Size: 74.7 MB (74703002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb10f28c06939cd6f1efb03e3e3aa10ee814c4b2a224ee9c6b671b313cace8c`  
		Last Modified: Thu, 22 Nov 2018 19:25:47 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9857fd8d3c7aef3d406d6b768e7546733d7edc4266f9a8f8c7edb4c763aebe`  
		Last Modified: Thu, 22 Nov 2018 19:25:46 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55baeba7117c3351a195aafcb9ca765bdf66d993dc68f1e753ebe4b09f955f57`  
		Last Modified: Thu, 22 Nov 2018 19:25:49 GMT  
		Size: 5.9 MB (5892861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0131ad421ef19087d9d3cebb4ee8f53b7432acbd7ac663804704cded676180a7`  
		Last Modified: Thu, 22 Nov 2018 19:26:05 GMT  
		Size: 109.4 MB (109416303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c6aabd04ca5f507033d96ddf307793f804f13158ad2cf434f2551d07a3f816`  
		Last Modified: Thu, 22 Nov 2018 19:25:47 GMT  
		Size: 1.4 KB (1384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a4f07a5148abd826eb9cdf9d1ccc264cc4f293e621f54d82ff5ef607818507`  
		Last Modified: Thu, 22 Nov 2018 19:25:46 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5-centos`

```console
$ docker pull percona@sha256:449c8c1fd312f99a74220c3251d85e4a65e4eb5fbe9d882988c892043569b352
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5-centos` - linux; amd64

```console
$ docker pull percona@sha256:a857b8f338c8666b26c91c8b7afc1b8f9a405e2320fbe6693c05c38d16b8bd1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.0 MB (190018495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d77057392123568120b25475c833caa75b4d18f5fadf5a82dbac9462546393`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 09 Oct 2018 18:19:47 GMT
ADD file:fbe9badfd2790f0747a25fbe5c94a6daa78969511ca08c8d4ac654f3442570de in / 
# Tue, 09 Oct 2018 18:19:48 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181006
# Tue, 09 Oct 2018 18:19:48 GMT
CMD ["/bin/bash"]
# Thu, 22 Nov 2018 19:20:44 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 22 Nov 2018 19:22:10 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 22 Nov 2018 19:22:11 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 22 Nov 2018 19:22:13 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm
# Thu, 22 Nov 2018 19:22:14 GMT
ENV PERCONA_VERSION=5.7.23-23.1.el7
# Thu, 22 Nov 2018 19:22:37 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 22 Nov 2018 19:22:38 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Thu, 22 Nov 2018 19:22:38 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 22 Nov 2018 19:22:39 GMT
COPY file:2fd07388582a69bcc2248785f5e72602c338c21c5827d5d1ffa1cb1d64c0d9eb in /docker-entrypoint.sh 
# Thu, 22 Nov 2018 19:22:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Nov 2018 19:22:39 GMT
USER [mysql]
# Thu, 22 Nov 2018 19:22:39 GMT
EXPOSE 3306/tcp
# Thu, 22 Nov 2018 19:22:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aeb7866da422acc7e93dcf7323f38d7646f6269af33bcdb6647f2094fc4b3bf7`  
		Last Modified: Tue, 09 Oct 2018 18:24:50 GMT  
		Size: 74.7 MB (74703002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb10f28c06939cd6f1efb03e3e3aa10ee814c4b2a224ee9c6b671b313cace8c`  
		Last Modified: Thu, 22 Nov 2018 19:25:47 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9857fd8d3c7aef3d406d6b768e7546733d7edc4266f9a8f8c7edb4c763aebe`  
		Last Modified: Thu, 22 Nov 2018 19:25:46 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55baeba7117c3351a195aafcb9ca765bdf66d993dc68f1e753ebe4b09f955f57`  
		Last Modified: Thu, 22 Nov 2018 19:25:49 GMT  
		Size: 5.9 MB (5892861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0131ad421ef19087d9d3cebb4ee8f53b7432acbd7ac663804704cded676180a7`  
		Last Modified: Thu, 22 Nov 2018 19:26:05 GMT  
		Size: 109.4 MB (109416303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c6aabd04ca5f507033d96ddf307793f804f13158ad2cf434f2551d07a3f816`  
		Last Modified: Thu, 22 Nov 2018 19:25:47 GMT  
		Size: 1.4 KB (1384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a4f07a5148abd826eb9cdf9d1ccc264cc4f293e621f54d82ff5ef607818507`  
		Last Modified: Thu, 22 Nov 2018 19:25:46 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:8`

```console
$ docker pull percona@sha256:30492989bfeb3577316caccc231ae5d5b010966be5626dc09a0b3ee8e752d785
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:8` - linux; amd64

```console
$ docker pull percona@sha256:2910f90598bbf83f7571abbcc1995ae5fba553a09f838546a1fdb29f89159128
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.3 MB (216327659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:874c2c5621984f951b43bd9781948f956c331173c4e567b176ba1cb528ece4eb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 09 Oct 2018 18:19:47 GMT
ADD file:fbe9badfd2790f0747a25fbe5c94a6daa78969511ca08c8d4ac654f3442570de in / 
# Tue, 09 Oct 2018 18:19:48 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181006
# Tue, 09 Oct 2018 18:19:48 GMT
CMD ["/bin/bash"]
# Thu, 22 Nov 2018 19:20:44 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 22 Nov 2018 19:20:45 GMT
RUN groupadd -g 1001 mysql
# Thu, 22 Nov 2018 19:20:45 GMT
RUN useradd -u 1001 -r -g 1001 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 22 Nov 2018 19:20:48 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& percona-release disable all 	&& percona-release enable ps-80 testing
# Thu, 22 Nov 2018 19:20:48 GMT
ENV PERCONA_VERSION=8.0.12-2.rc1.el7
# Thu, 22 Nov 2018 19:21:16 GMT
RUN yum install -y 		percona-server-server-${PERCONA_VERSION} 		percona-server-tokudb-${PERCONA_VERSION} 		percona-server-rocksdb-${PERCONA_VERSION} 		which 		policycoreutils 		https://repo.percona.com/percona/yum/release/7/RPMS/x86_64/jemalloc-3.6.0-1.el7.x86_64.rpm 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 22 Nov 2018 19:21:17 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 22 Nov 2018 19:21:17 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 22 Nov 2018 19:21:18 GMT
COPY file:7df52ab7374950746cb7b3ca5dda34ea67721f9561ba2be3b63a1182888d936a in /docker-entrypoint.sh 
# Thu, 22 Nov 2018 19:21:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Nov 2018 19:21:18 GMT
USER [mysql]
# Thu, 22 Nov 2018 19:21:18 GMT
EXPOSE 3306/tcp 33060/tcp
# Thu, 22 Nov 2018 19:21:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aeb7866da422acc7e93dcf7323f38d7646f6269af33bcdb6647f2094fc4b3bf7`  
		Last Modified: Tue, 09 Oct 2018 18:24:50 GMT  
		Size: 74.7 MB (74703002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb8cc18193ec8fb9095eb61de5a10ee2ab5e8d974a709cdccbbb093f12c16aea`  
		Last Modified: Thu, 22 Nov 2018 19:23:53 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3466ba2ab562c6811820ba516c1cee61299aae1a90c9c09262513b1d7c718c21`  
		Last Modified: Thu, 22 Nov 2018 19:23:51 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6b9496ec74bddd3147ec1d305039eb622e91ea8003b6089f86ee68c619b63da`  
		Last Modified: Thu, 22 Nov 2018 19:23:53 GMT  
		Size: 5.9 MB (5892354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d24549ada6e17dd2c803028dd334ae93fe26715da9830393a1da8d677083652`  
		Last Modified: Thu, 22 Nov 2018 19:24:16 GMT  
		Size: 135.7 MB (135726225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be15f98fe829d6c14eeddabfa88f0d9e9cc3efcba8d4ed7f1f78ccdaec4b671b`  
		Last Modified: Thu, 22 Nov 2018 19:23:51 GMT  
		Size: 1.1 KB (1118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db394be2dd37450b677da60b07bf617f19ed1d761616d130f72647e06c81771d`  
		Last Modified: Thu, 22 Nov 2018 19:23:51 GMT  
		Size: 3.0 KB (2966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:8.0`

```console
$ docker pull percona@sha256:30492989bfeb3577316caccc231ae5d5b010966be5626dc09a0b3ee8e752d785
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:8.0` - linux; amd64

```console
$ docker pull percona@sha256:2910f90598bbf83f7571abbcc1995ae5fba553a09f838546a1fdb29f89159128
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.3 MB (216327659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:874c2c5621984f951b43bd9781948f956c331173c4e567b176ba1cb528ece4eb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 09 Oct 2018 18:19:47 GMT
ADD file:fbe9badfd2790f0747a25fbe5c94a6daa78969511ca08c8d4ac654f3442570de in / 
# Tue, 09 Oct 2018 18:19:48 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181006
# Tue, 09 Oct 2018 18:19:48 GMT
CMD ["/bin/bash"]
# Thu, 22 Nov 2018 19:20:44 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 22 Nov 2018 19:20:45 GMT
RUN groupadd -g 1001 mysql
# Thu, 22 Nov 2018 19:20:45 GMT
RUN useradd -u 1001 -r -g 1001 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 22 Nov 2018 19:20:48 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& percona-release disable all 	&& percona-release enable ps-80 testing
# Thu, 22 Nov 2018 19:20:48 GMT
ENV PERCONA_VERSION=8.0.12-2.rc1.el7
# Thu, 22 Nov 2018 19:21:16 GMT
RUN yum install -y 		percona-server-server-${PERCONA_VERSION} 		percona-server-tokudb-${PERCONA_VERSION} 		percona-server-rocksdb-${PERCONA_VERSION} 		which 		policycoreutils 		https://repo.percona.com/percona/yum/release/7/RPMS/x86_64/jemalloc-3.6.0-1.el7.x86_64.rpm 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 22 Nov 2018 19:21:17 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 22 Nov 2018 19:21:17 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 22 Nov 2018 19:21:18 GMT
COPY file:7df52ab7374950746cb7b3ca5dda34ea67721f9561ba2be3b63a1182888d936a in /docker-entrypoint.sh 
# Thu, 22 Nov 2018 19:21:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Nov 2018 19:21:18 GMT
USER [mysql]
# Thu, 22 Nov 2018 19:21:18 GMT
EXPOSE 3306/tcp 33060/tcp
# Thu, 22 Nov 2018 19:21:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aeb7866da422acc7e93dcf7323f38d7646f6269af33bcdb6647f2094fc4b3bf7`  
		Last Modified: Tue, 09 Oct 2018 18:24:50 GMT  
		Size: 74.7 MB (74703002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb8cc18193ec8fb9095eb61de5a10ee2ab5e8d974a709cdccbbb093f12c16aea`  
		Last Modified: Thu, 22 Nov 2018 19:23:53 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3466ba2ab562c6811820ba516c1cee61299aae1a90c9c09262513b1d7c718c21`  
		Last Modified: Thu, 22 Nov 2018 19:23:51 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6b9496ec74bddd3147ec1d305039eb622e91ea8003b6089f86ee68c619b63da`  
		Last Modified: Thu, 22 Nov 2018 19:23:53 GMT  
		Size: 5.9 MB (5892354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d24549ada6e17dd2c803028dd334ae93fe26715da9830393a1da8d677083652`  
		Last Modified: Thu, 22 Nov 2018 19:24:16 GMT  
		Size: 135.7 MB (135726225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be15f98fe829d6c14eeddabfa88f0d9e9cc3efcba8d4ed7f1f78ccdaec4b671b`  
		Last Modified: Thu, 22 Nov 2018 19:23:51 GMT  
		Size: 1.1 KB (1118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db394be2dd37450b677da60b07bf617f19ed1d761616d130f72647e06c81771d`  
		Last Modified: Thu, 22 Nov 2018 19:23:51 GMT  
		Size: 3.0 KB (2966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:8.0.12-2rc1`

```console
$ docker pull percona@sha256:30492989bfeb3577316caccc231ae5d5b010966be5626dc09a0b3ee8e752d785
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:8.0.12-2rc1` - linux; amd64

```console
$ docker pull percona@sha256:2910f90598bbf83f7571abbcc1995ae5fba553a09f838546a1fdb29f89159128
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.3 MB (216327659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:874c2c5621984f951b43bd9781948f956c331173c4e567b176ba1cb528ece4eb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 09 Oct 2018 18:19:47 GMT
ADD file:fbe9badfd2790f0747a25fbe5c94a6daa78969511ca08c8d4ac654f3442570de in / 
# Tue, 09 Oct 2018 18:19:48 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181006
# Tue, 09 Oct 2018 18:19:48 GMT
CMD ["/bin/bash"]
# Thu, 22 Nov 2018 19:20:44 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 22 Nov 2018 19:20:45 GMT
RUN groupadd -g 1001 mysql
# Thu, 22 Nov 2018 19:20:45 GMT
RUN useradd -u 1001 -r -g 1001 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 22 Nov 2018 19:20:48 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& percona-release disable all 	&& percona-release enable ps-80 testing
# Thu, 22 Nov 2018 19:20:48 GMT
ENV PERCONA_VERSION=8.0.12-2.rc1.el7
# Thu, 22 Nov 2018 19:21:16 GMT
RUN yum install -y 		percona-server-server-${PERCONA_VERSION} 		percona-server-tokudb-${PERCONA_VERSION} 		percona-server-rocksdb-${PERCONA_VERSION} 		which 		policycoreutils 		https://repo.percona.com/percona/yum/release/7/RPMS/x86_64/jemalloc-3.6.0-1.el7.x86_64.rpm 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 22 Nov 2018 19:21:17 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 22 Nov 2018 19:21:17 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 22 Nov 2018 19:21:18 GMT
COPY file:7df52ab7374950746cb7b3ca5dda34ea67721f9561ba2be3b63a1182888d936a in /docker-entrypoint.sh 
# Thu, 22 Nov 2018 19:21:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Nov 2018 19:21:18 GMT
USER [mysql]
# Thu, 22 Nov 2018 19:21:18 GMT
EXPOSE 3306/tcp 33060/tcp
# Thu, 22 Nov 2018 19:21:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aeb7866da422acc7e93dcf7323f38d7646f6269af33bcdb6647f2094fc4b3bf7`  
		Last Modified: Tue, 09 Oct 2018 18:24:50 GMT  
		Size: 74.7 MB (74703002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb8cc18193ec8fb9095eb61de5a10ee2ab5e8d974a709cdccbbb093f12c16aea`  
		Last Modified: Thu, 22 Nov 2018 19:23:53 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3466ba2ab562c6811820ba516c1cee61299aae1a90c9c09262513b1d7c718c21`  
		Last Modified: Thu, 22 Nov 2018 19:23:51 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6b9496ec74bddd3147ec1d305039eb622e91ea8003b6089f86ee68c619b63da`  
		Last Modified: Thu, 22 Nov 2018 19:23:53 GMT  
		Size: 5.9 MB (5892354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d24549ada6e17dd2c803028dd334ae93fe26715da9830393a1da8d677083652`  
		Last Modified: Thu, 22 Nov 2018 19:24:16 GMT  
		Size: 135.7 MB (135726225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be15f98fe829d6c14eeddabfa88f0d9e9cc3efcba8d4ed7f1f78ccdaec4b671b`  
		Last Modified: Thu, 22 Nov 2018 19:23:51 GMT  
		Size: 1.1 KB (1118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db394be2dd37450b677da60b07bf617f19ed1d761616d130f72647e06c81771d`  
		Last Modified: Thu, 22 Nov 2018 19:23:51 GMT  
		Size: 3.0 KB (2966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:8.0.12-2rc1-centos`

```console
$ docker pull percona@sha256:30492989bfeb3577316caccc231ae5d5b010966be5626dc09a0b3ee8e752d785
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:8.0.12-2rc1-centos` - linux; amd64

```console
$ docker pull percona@sha256:2910f90598bbf83f7571abbcc1995ae5fba553a09f838546a1fdb29f89159128
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.3 MB (216327659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:874c2c5621984f951b43bd9781948f956c331173c4e567b176ba1cb528ece4eb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 09 Oct 2018 18:19:47 GMT
ADD file:fbe9badfd2790f0747a25fbe5c94a6daa78969511ca08c8d4ac654f3442570de in / 
# Tue, 09 Oct 2018 18:19:48 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181006
# Tue, 09 Oct 2018 18:19:48 GMT
CMD ["/bin/bash"]
# Thu, 22 Nov 2018 19:20:44 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 22 Nov 2018 19:20:45 GMT
RUN groupadd -g 1001 mysql
# Thu, 22 Nov 2018 19:20:45 GMT
RUN useradd -u 1001 -r -g 1001 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 22 Nov 2018 19:20:48 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& percona-release disable all 	&& percona-release enable ps-80 testing
# Thu, 22 Nov 2018 19:20:48 GMT
ENV PERCONA_VERSION=8.0.12-2.rc1.el7
# Thu, 22 Nov 2018 19:21:16 GMT
RUN yum install -y 		percona-server-server-${PERCONA_VERSION} 		percona-server-tokudb-${PERCONA_VERSION} 		percona-server-rocksdb-${PERCONA_VERSION} 		which 		policycoreutils 		https://repo.percona.com/percona/yum/release/7/RPMS/x86_64/jemalloc-3.6.0-1.el7.x86_64.rpm 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 22 Nov 2018 19:21:17 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 22 Nov 2018 19:21:17 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 22 Nov 2018 19:21:18 GMT
COPY file:7df52ab7374950746cb7b3ca5dda34ea67721f9561ba2be3b63a1182888d936a in /docker-entrypoint.sh 
# Thu, 22 Nov 2018 19:21:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Nov 2018 19:21:18 GMT
USER [mysql]
# Thu, 22 Nov 2018 19:21:18 GMT
EXPOSE 3306/tcp 33060/tcp
# Thu, 22 Nov 2018 19:21:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aeb7866da422acc7e93dcf7323f38d7646f6269af33bcdb6647f2094fc4b3bf7`  
		Last Modified: Tue, 09 Oct 2018 18:24:50 GMT  
		Size: 74.7 MB (74703002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb8cc18193ec8fb9095eb61de5a10ee2ab5e8d974a709cdccbbb093f12c16aea`  
		Last Modified: Thu, 22 Nov 2018 19:23:53 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3466ba2ab562c6811820ba516c1cee61299aae1a90c9c09262513b1d7c718c21`  
		Last Modified: Thu, 22 Nov 2018 19:23:51 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6b9496ec74bddd3147ec1d305039eb622e91ea8003b6089f86ee68c619b63da`  
		Last Modified: Thu, 22 Nov 2018 19:23:53 GMT  
		Size: 5.9 MB (5892354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d24549ada6e17dd2c803028dd334ae93fe26715da9830393a1da8d677083652`  
		Last Modified: Thu, 22 Nov 2018 19:24:16 GMT  
		Size: 135.7 MB (135726225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be15f98fe829d6c14eeddabfa88f0d9e9cc3efcba8d4ed7f1f78ccdaec4b671b`  
		Last Modified: Thu, 22 Nov 2018 19:23:51 GMT  
		Size: 1.1 KB (1118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db394be2dd37450b677da60b07bf617f19ed1d761616d130f72647e06c81771d`  
		Last Modified: Thu, 22 Nov 2018 19:23:51 GMT  
		Size: 3.0 KB (2966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:8.0-centos`

```console
$ docker pull percona@sha256:30492989bfeb3577316caccc231ae5d5b010966be5626dc09a0b3ee8e752d785
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:8.0-centos` - linux; amd64

```console
$ docker pull percona@sha256:2910f90598bbf83f7571abbcc1995ae5fba553a09f838546a1fdb29f89159128
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.3 MB (216327659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:874c2c5621984f951b43bd9781948f956c331173c4e567b176ba1cb528ece4eb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 09 Oct 2018 18:19:47 GMT
ADD file:fbe9badfd2790f0747a25fbe5c94a6daa78969511ca08c8d4ac654f3442570de in / 
# Tue, 09 Oct 2018 18:19:48 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181006
# Tue, 09 Oct 2018 18:19:48 GMT
CMD ["/bin/bash"]
# Thu, 22 Nov 2018 19:20:44 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 22 Nov 2018 19:20:45 GMT
RUN groupadd -g 1001 mysql
# Thu, 22 Nov 2018 19:20:45 GMT
RUN useradd -u 1001 -r -g 1001 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 22 Nov 2018 19:20:48 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& percona-release disable all 	&& percona-release enable ps-80 testing
# Thu, 22 Nov 2018 19:20:48 GMT
ENV PERCONA_VERSION=8.0.12-2.rc1.el7
# Thu, 22 Nov 2018 19:21:16 GMT
RUN yum install -y 		percona-server-server-${PERCONA_VERSION} 		percona-server-tokudb-${PERCONA_VERSION} 		percona-server-rocksdb-${PERCONA_VERSION} 		which 		policycoreutils 		https://repo.percona.com/percona/yum/release/7/RPMS/x86_64/jemalloc-3.6.0-1.el7.x86_64.rpm 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 22 Nov 2018 19:21:17 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 22 Nov 2018 19:21:17 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 22 Nov 2018 19:21:18 GMT
COPY file:7df52ab7374950746cb7b3ca5dda34ea67721f9561ba2be3b63a1182888d936a in /docker-entrypoint.sh 
# Thu, 22 Nov 2018 19:21:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Nov 2018 19:21:18 GMT
USER [mysql]
# Thu, 22 Nov 2018 19:21:18 GMT
EXPOSE 3306/tcp 33060/tcp
# Thu, 22 Nov 2018 19:21:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aeb7866da422acc7e93dcf7323f38d7646f6269af33bcdb6647f2094fc4b3bf7`  
		Last Modified: Tue, 09 Oct 2018 18:24:50 GMT  
		Size: 74.7 MB (74703002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb8cc18193ec8fb9095eb61de5a10ee2ab5e8d974a709cdccbbb093f12c16aea`  
		Last Modified: Thu, 22 Nov 2018 19:23:53 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3466ba2ab562c6811820ba516c1cee61299aae1a90c9c09262513b1d7c718c21`  
		Last Modified: Thu, 22 Nov 2018 19:23:51 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6b9496ec74bddd3147ec1d305039eb622e91ea8003b6089f86ee68c619b63da`  
		Last Modified: Thu, 22 Nov 2018 19:23:53 GMT  
		Size: 5.9 MB (5892354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d24549ada6e17dd2c803028dd334ae93fe26715da9830393a1da8d677083652`  
		Last Modified: Thu, 22 Nov 2018 19:24:16 GMT  
		Size: 135.7 MB (135726225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be15f98fe829d6c14eeddabfa88f0d9e9cc3efcba8d4ed7f1f78ccdaec4b671b`  
		Last Modified: Thu, 22 Nov 2018 19:23:51 GMT  
		Size: 1.1 KB (1118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db394be2dd37450b677da60b07bf617f19ed1d761616d130f72647e06c81771d`  
		Last Modified: Thu, 22 Nov 2018 19:23:51 GMT  
		Size: 3.0 KB (2966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:8-centos`

```console
$ docker pull percona@sha256:30492989bfeb3577316caccc231ae5d5b010966be5626dc09a0b3ee8e752d785
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:8-centos` - linux; amd64

```console
$ docker pull percona@sha256:2910f90598bbf83f7571abbcc1995ae5fba553a09f838546a1fdb29f89159128
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.3 MB (216327659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:874c2c5621984f951b43bd9781948f956c331173c4e567b176ba1cb528ece4eb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 09 Oct 2018 18:19:47 GMT
ADD file:fbe9badfd2790f0747a25fbe5c94a6daa78969511ca08c8d4ac654f3442570de in / 
# Tue, 09 Oct 2018 18:19:48 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181006
# Tue, 09 Oct 2018 18:19:48 GMT
CMD ["/bin/bash"]
# Thu, 22 Nov 2018 19:20:44 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 22 Nov 2018 19:20:45 GMT
RUN groupadd -g 1001 mysql
# Thu, 22 Nov 2018 19:20:45 GMT
RUN useradd -u 1001 -r -g 1001 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 22 Nov 2018 19:20:48 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& percona-release disable all 	&& percona-release enable ps-80 testing
# Thu, 22 Nov 2018 19:20:48 GMT
ENV PERCONA_VERSION=8.0.12-2.rc1.el7
# Thu, 22 Nov 2018 19:21:16 GMT
RUN yum install -y 		percona-server-server-${PERCONA_VERSION} 		percona-server-tokudb-${PERCONA_VERSION} 		percona-server-rocksdb-${PERCONA_VERSION} 		which 		policycoreutils 		https://repo.percona.com/percona/yum/release/7/RPMS/x86_64/jemalloc-3.6.0-1.el7.x86_64.rpm 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 22 Nov 2018 19:21:17 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 22 Nov 2018 19:21:17 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 22 Nov 2018 19:21:18 GMT
COPY file:7df52ab7374950746cb7b3ca5dda34ea67721f9561ba2be3b63a1182888d936a in /docker-entrypoint.sh 
# Thu, 22 Nov 2018 19:21:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Nov 2018 19:21:18 GMT
USER [mysql]
# Thu, 22 Nov 2018 19:21:18 GMT
EXPOSE 3306/tcp 33060/tcp
# Thu, 22 Nov 2018 19:21:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aeb7866da422acc7e93dcf7323f38d7646f6269af33bcdb6647f2094fc4b3bf7`  
		Last Modified: Tue, 09 Oct 2018 18:24:50 GMT  
		Size: 74.7 MB (74703002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb8cc18193ec8fb9095eb61de5a10ee2ab5e8d974a709cdccbbb093f12c16aea`  
		Last Modified: Thu, 22 Nov 2018 19:23:53 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3466ba2ab562c6811820ba516c1cee61299aae1a90c9c09262513b1d7c718c21`  
		Last Modified: Thu, 22 Nov 2018 19:23:51 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6b9496ec74bddd3147ec1d305039eb622e91ea8003b6089f86ee68c619b63da`  
		Last Modified: Thu, 22 Nov 2018 19:23:53 GMT  
		Size: 5.9 MB (5892354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d24549ada6e17dd2c803028dd334ae93fe26715da9830393a1da8d677083652`  
		Last Modified: Thu, 22 Nov 2018 19:24:16 GMT  
		Size: 135.7 MB (135726225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be15f98fe829d6c14eeddabfa88f0d9e9cc3efcba8d4ed7f1f78ccdaec4b671b`  
		Last Modified: Thu, 22 Nov 2018 19:23:51 GMT  
		Size: 1.1 KB (1118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db394be2dd37450b677da60b07bf617f19ed1d761616d130f72647e06c81771d`  
		Last Modified: Thu, 22 Nov 2018 19:23:51 GMT  
		Size: 3.0 KB (2966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:centos`

```console
$ docker pull percona@sha256:449c8c1fd312f99a74220c3251d85e4a65e4eb5fbe9d882988c892043569b352
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:centos` - linux; amd64

```console
$ docker pull percona@sha256:a857b8f338c8666b26c91c8b7afc1b8f9a405e2320fbe6693c05c38d16b8bd1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.0 MB (190018495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d77057392123568120b25475c833caa75b4d18f5fadf5a82dbac9462546393`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 09 Oct 2018 18:19:47 GMT
ADD file:fbe9badfd2790f0747a25fbe5c94a6daa78969511ca08c8d4ac654f3442570de in / 
# Tue, 09 Oct 2018 18:19:48 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181006
# Tue, 09 Oct 2018 18:19:48 GMT
CMD ["/bin/bash"]
# Thu, 22 Nov 2018 19:20:44 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 22 Nov 2018 19:22:10 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 22 Nov 2018 19:22:11 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 22 Nov 2018 19:22:13 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm
# Thu, 22 Nov 2018 19:22:14 GMT
ENV PERCONA_VERSION=5.7.23-23.1.el7
# Thu, 22 Nov 2018 19:22:37 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 22 Nov 2018 19:22:38 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Thu, 22 Nov 2018 19:22:38 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 22 Nov 2018 19:22:39 GMT
COPY file:2fd07388582a69bcc2248785f5e72602c338c21c5827d5d1ffa1cb1d64c0d9eb in /docker-entrypoint.sh 
# Thu, 22 Nov 2018 19:22:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Nov 2018 19:22:39 GMT
USER [mysql]
# Thu, 22 Nov 2018 19:22:39 GMT
EXPOSE 3306/tcp
# Thu, 22 Nov 2018 19:22:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aeb7866da422acc7e93dcf7323f38d7646f6269af33bcdb6647f2094fc4b3bf7`  
		Last Modified: Tue, 09 Oct 2018 18:24:50 GMT  
		Size: 74.7 MB (74703002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb10f28c06939cd6f1efb03e3e3aa10ee814c4b2a224ee9c6b671b313cace8c`  
		Last Modified: Thu, 22 Nov 2018 19:25:47 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9857fd8d3c7aef3d406d6b768e7546733d7edc4266f9a8f8c7edb4c763aebe`  
		Last Modified: Thu, 22 Nov 2018 19:25:46 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55baeba7117c3351a195aafcb9ca765bdf66d993dc68f1e753ebe4b09f955f57`  
		Last Modified: Thu, 22 Nov 2018 19:25:49 GMT  
		Size: 5.9 MB (5892861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0131ad421ef19087d9d3cebb4ee8f53b7432acbd7ac663804704cded676180a7`  
		Last Modified: Thu, 22 Nov 2018 19:26:05 GMT  
		Size: 109.4 MB (109416303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c6aabd04ca5f507033d96ddf307793f804f13158ad2cf434f2551d07a3f816`  
		Last Modified: Thu, 22 Nov 2018 19:25:47 GMT  
		Size: 1.4 KB (1384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a4f07a5148abd826eb9cdf9d1ccc264cc4f293e621f54d82ff5ef607818507`  
		Last Modified: Thu, 22 Nov 2018 19:25:46 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:latest`

```console
$ docker pull percona@sha256:449c8c1fd312f99a74220c3251d85e4a65e4eb5fbe9d882988c892043569b352
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:latest` - linux; amd64

```console
$ docker pull percona@sha256:a857b8f338c8666b26c91c8b7afc1b8f9a405e2320fbe6693c05c38d16b8bd1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.0 MB (190018495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d77057392123568120b25475c833caa75b4d18f5fadf5a82dbac9462546393`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 09 Oct 2018 18:19:47 GMT
ADD file:fbe9badfd2790f0747a25fbe5c94a6daa78969511ca08c8d4ac654f3442570de in / 
# Tue, 09 Oct 2018 18:19:48 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181006
# Tue, 09 Oct 2018 18:19:48 GMT
CMD ["/bin/bash"]
# Thu, 22 Nov 2018 19:20:44 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 22 Nov 2018 19:22:10 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 22 Nov 2018 19:22:11 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 22 Nov 2018 19:22:13 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm
# Thu, 22 Nov 2018 19:22:14 GMT
ENV PERCONA_VERSION=5.7.23-23.1.el7
# Thu, 22 Nov 2018 19:22:37 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 22 Nov 2018 19:22:38 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Thu, 22 Nov 2018 19:22:38 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 22 Nov 2018 19:22:39 GMT
COPY file:2fd07388582a69bcc2248785f5e72602c338c21c5827d5d1ffa1cb1d64c0d9eb in /docker-entrypoint.sh 
# Thu, 22 Nov 2018 19:22:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Nov 2018 19:22:39 GMT
USER [mysql]
# Thu, 22 Nov 2018 19:22:39 GMT
EXPOSE 3306/tcp
# Thu, 22 Nov 2018 19:22:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aeb7866da422acc7e93dcf7323f38d7646f6269af33bcdb6647f2094fc4b3bf7`  
		Last Modified: Tue, 09 Oct 2018 18:24:50 GMT  
		Size: 74.7 MB (74703002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb10f28c06939cd6f1efb03e3e3aa10ee814c4b2a224ee9c6b671b313cace8c`  
		Last Modified: Thu, 22 Nov 2018 19:25:47 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9857fd8d3c7aef3d406d6b768e7546733d7edc4266f9a8f8c7edb4c763aebe`  
		Last Modified: Thu, 22 Nov 2018 19:25:46 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55baeba7117c3351a195aafcb9ca765bdf66d993dc68f1e753ebe4b09f955f57`  
		Last Modified: Thu, 22 Nov 2018 19:25:49 GMT  
		Size: 5.9 MB (5892861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0131ad421ef19087d9d3cebb4ee8f53b7432acbd7ac663804704cded676180a7`  
		Last Modified: Thu, 22 Nov 2018 19:26:05 GMT  
		Size: 109.4 MB (109416303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c6aabd04ca5f507033d96ddf307793f804f13158ad2cf434f2551d07a3f816`  
		Last Modified: Thu, 22 Nov 2018 19:25:47 GMT  
		Size: 1.4 KB (1384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a4f07a5148abd826eb9cdf9d1ccc264cc4f293e621f54d82ff5ef607818507`  
		Last Modified: Thu, 22 Nov 2018 19:25:46 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
