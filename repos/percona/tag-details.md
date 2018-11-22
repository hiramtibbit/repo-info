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
$ docker pull percona@sha256:171626b22b0b729e05b613aa121705fd82ea348ec03edc2929ce6db7cf90d0da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6` - linux; amd64

```console
$ docker pull percona@sha256:f2c0513ad699e9e187092643f246d3f252cba1d8999e41097c4ffc72c885ba93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137491637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9897d94e53102a779e8502d0f129163ca74caf4ebb75842223e0b682221284b4`
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
# Thu, 22 Nov 2018 19:23:23 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /etc/my.cnf.d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& sed -i '/Make sure only root/,/fi/d' /usr/bin/ps_tokudb_admin 	&& echo "thp-setting=never" >> /etc/my.cnf 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc /etc/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 22 Nov 2018 19:23:23 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 22 Nov 2018 19:23:24 GMT
COPY file:fe6b1a8e605281e5ec8baec786785211172b14a252ac4bf8d19e30ace28a2e85 in /docker-entrypoint.sh 
# Thu, 22 Nov 2018 19:23:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Nov 2018 19:23:24 GMT
USER [mysql]
# Thu, 22 Nov 2018 19:23:24 GMT
EXPOSE 3306/tcp
# Thu, 22 Nov 2018 19:23:25 GMT
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
	-	`sha256:e5e7dad74c1bd843778ea12a637ceb251414728cd18c63511c26eba2374eb2a6`  
		Last Modified: Thu, 22 Nov 2018 19:28:06 GMT  
		Size: 5.1 KB (5063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae21335b2fc4051172167f65702831ec76eec7e8a4c62840d328ed5dabb1448`  
		Last Modified: Thu, 22 Nov 2018 19:28:06 GMT  
		Size: 2.9 KB (2858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.41`

```console
$ docker pull percona@sha256:171626b22b0b729e05b613aa121705fd82ea348ec03edc2929ce6db7cf90d0da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6.41` - linux; amd64

```console
$ docker pull percona@sha256:f2c0513ad699e9e187092643f246d3f252cba1d8999e41097c4ffc72c885ba93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137491637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9897d94e53102a779e8502d0f129163ca74caf4ebb75842223e0b682221284b4`
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
# Thu, 22 Nov 2018 19:23:23 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /etc/my.cnf.d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& sed -i '/Make sure only root/,/fi/d' /usr/bin/ps_tokudb_admin 	&& echo "thp-setting=never" >> /etc/my.cnf 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc /etc/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 22 Nov 2018 19:23:23 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 22 Nov 2018 19:23:24 GMT
COPY file:fe6b1a8e605281e5ec8baec786785211172b14a252ac4bf8d19e30ace28a2e85 in /docker-entrypoint.sh 
# Thu, 22 Nov 2018 19:23:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Nov 2018 19:23:24 GMT
USER [mysql]
# Thu, 22 Nov 2018 19:23:24 GMT
EXPOSE 3306/tcp
# Thu, 22 Nov 2018 19:23:25 GMT
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
	-	`sha256:e5e7dad74c1bd843778ea12a637ceb251414728cd18c63511c26eba2374eb2a6`  
		Last Modified: Thu, 22 Nov 2018 19:28:06 GMT  
		Size: 5.1 KB (5063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae21335b2fc4051172167f65702831ec76eec7e8a4c62840d328ed5dabb1448`  
		Last Modified: Thu, 22 Nov 2018 19:28:06 GMT  
		Size: 2.9 KB (2858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.41-centos`

```console
$ docker pull percona@sha256:171626b22b0b729e05b613aa121705fd82ea348ec03edc2929ce6db7cf90d0da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6.41-centos` - linux; amd64

```console
$ docker pull percona@sha256:f2c0513ad699e9e187092643f246d3f252cba1d8999e41097c4ffc72c885ba93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137491637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9897d94e53102a779e8502d0f129163ca74caf4ebb75842223e0b682221284b4`
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
# Thu, 22 Nov 2018 19:23:23 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /etc/my.cnf.d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& sed -i '/Make sure only root/,/fi/d' /usr/bin/ps_tokudb_admin 	&& echo "thp-setting=never" >> /etc/my.cnf 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc /etc/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 22 Nov 2018 19:23:23 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 22 Nov 2018 19:23:24 GMT
COPY file:fe6b1a8e605281e5ec8baec786785211172b14a252ac4bf8d19e30ace28a2e85 in /docker-entrypoint.sh 
# Thu, 22 Nov 2018 19:23:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Nov 2018 19:23:24 GMT
USER [mysql]
# Thu, 22 Nov 2018 19:23:24 GMT
EXPOSE 3306/tcp
# Thu, 22 Nov 2018 19:23:25 GMT
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
	-	`sha256:e5e7dad74c1bd843778ea12a637ceb251414728cd18c63511c26eba2374eb2a6`  
		Last Modified: Thu, 22 Nov 2018 19:28:06 GMT  
		Size: 5.1 KB (5063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae21335b2fc4051172167f65702831ec76eec7e8a4c62840d328ed5dabb1448`  
		Last Modified: Thu, 22 Nov 2018 19:28:06 GMT  
		Size: 2.9 KB (2858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6-centos`

```console
$ docker pull percona@sha256:171626b22b0b729e05b613aa121705fd82ea348ec03edc2929ce6db7cf90d0da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6-centos` - linux; amd64

```console
$ docker pull percona@sha256:f2c0513ad699e9e187092643f246d3f252cba1d8999e41097c4ffc72c885ba93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137491637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9897d94e53102a779e8502d0f129163ca74caf4ebb75842223e0b682221284b4`
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
# Thu, 22 Nov 2018 19:23:23 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /etc/my.cnf.d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& sed -i '/Make sure only root/,/fi/d' /usr/bin/ps_tokudb_admin 	&& echo "thp-setting=never" >> /etc/my.cnf 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc /etc/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 22 Nov 2018 19:23:23 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 22 Nov 2018 19:23:24 GMT
COPY file:fe6b1a8e605281e5ec8baec786785211172b14a252ac4bf8d19e30ace28a2e85 in /docker-entrypoint.sh 
# Thu, 22 Nov 2018 19:23:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Nov 2018 19:23:24 GMT
USER [mysql]
# Thu, 22 Nov 2018 19:23:24 GMT
EXPOSE 3306/tcp
# Thu, 22 Nov 2018 19:23:25 GMT
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
	-	`sha256:e5e7dad74c1bd843778ea12a637ceb251414728cd18c63511c26eba2374eb2a6`  
		Last Modified: Thu, 22 Nov 2018 19:28:06 GMT  
		Size: 5.1 KB (5063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae21335b2fc4051172167f65702831ec76eec7e8a4c62840d328ed5dabb1448`  
		Last Modified: Thu, 22 Nov 2018 19:28:06 GMT  
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
$ docker pull percona@sha256:c8b69b3c753cb04f1cbf8a4a1f295f51675761ee6368a47808a5205e2d45cfeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:latest` - linux; amd64

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
