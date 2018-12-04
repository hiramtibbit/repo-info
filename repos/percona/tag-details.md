<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `percona`

-	[`percona:5`](#percona5)
-	[`percona:5.6`](#percona56)
-	[`percona:5.6.42`](#percona5642)
-	[`percona:5.6.42-centos`](#percona5642-centos)
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
$ docker pull percona@sha256:1b44e3222b068a65d71abe30046594f3768bf98e4c576230349969e677ab4c9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5` - linux; amd64

```console
$ docker pull percona@sha256:8f3de8675adb17938c5ae7b466f35a5b404577bd564a1b218b533d04c7f144f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.0 MB (190018502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9db94bcf28b3d10ac89e1599473b3e69b3bb91d14caaf25f88d6adecb13f3c73`
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
# Tue, 04 Dec 2018 01:13:43 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Tue, 04 Dec 2018 01:13:43 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 04 Dec 2018 01:13:44 GMT
COPY file:2fd07388582a69bcc2248785f5e72602c338c21c5827d5d1ffa1cb1d64c0d9eb in /docker-entrypoint.sh 
# Tue, 04 Dec 2018 01:13:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Dec 2018 01:13:59 GMT
USER [mysql]
# Tue, 04 Dec 2018 01:13:59 GMT
EXPOSE 3306/tcp
# Tue, 04 Dec 2018 01:13:59 GMT
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
	-	`sha256:74830633c1f3d14bf29a5aa0817becea87244d05e0ab9c699c7bf909be2a7c59`  
		Last Modified: Tue, 04 Dec 2018 01:16:08 GMT  
		Size: 1.4 KB (1390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895b41ec3a87d3afa1d8a75347eef6a4adc944378d58e75ea1fda39581c93956`  
		Last Modified: Tue, 04 Dec 2018 01:16:09 GMT  
		Size: 3.0 KB (2978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6`

```console
$ docker pull percona@sha256:4e9fc7e0c6d632bd51e3fe401a0a030f0c08e97233d2e34319bfaef17b752558
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6` - linux; amd64

```console
$ docker pull percona@sha256:f6ea7f3a5bb6c227fc04bb407a3085609f92a8e498faa2061a82212091edabaa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.0 MB (137995147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8069b6630d70fd9019391eac9aec667e4cd80263cd2a797e99ed6acbd6c5a97`
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
# Tue, 04 Dec 2018 01:14:54 GMT
ENV PERCONA_VERSION=5.6.42-rel84.2.el7
# Tue, 04 Dec 2018 01:15:21 GMT
RUN yum install -y 		Percona-Server-server-56-${PERCONA_VERSION} 		Percona-Server-tokudb-56-${PERCONA_VERSION} 		Percona-Server-rocksdb-56-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Tue, 04 Dec 2018 01:15:22 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /etc/my.cnf.d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user|sql_mode)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user|sql_mode)/#&/' 	&& sed -i '/Make sure only root/,/fi/d' /usr/bin/ps_tokudb_admin 	&& echo "thp-setting=never" >> /etc/my.cnf 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Tue, 04 Dec 2018 01:15:22 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 04 Dec 2018 01:15:22 GMT
COPY file:fe6b1a8e605281e5ec8baec786785211172b14a252ac4bf8d19e30ace28a2e85 in /docker-entrypoint.sh 
# Tue, 04 Dec 2018 01:15:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Dec 2018 01:15:23 GMT
USER [mysql]
# Tue, 04 Dec 2018 01:15:23 GMT
EXPOSE 3306/tcp
# Tue, 04 Dec 2018 01:15:23 GMT
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
	-	`sha256:06ad82239fde5ca38f66d450de3f53afe973add048d90b89468f91bcb4abca4d`  
		Last Modified: Tue, 04 Dec 2018 01:19:24 GMT  
		Size: 57.4 MB (57389574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47de845981c4eeb746c6fc1e3a0edaac43286db97533b86bad0c23f0fc54ffea`  
		Last Modified: Tue, 04 Dec 2018 01:19:12 GMT  
		Size: 4.9 KB (4883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6394a033b5aa11bfe7b6e29579efa4dd480b16ababdd39a59cc243cdd92b046b`  
		Last Modified: Tue, 04 Dec 2018 01:19:12 GMT  
		Size: 2.9 KB (2859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.42`

```console
$ docker pull percona@sha256:4e9fc7e0c6d632bd51e3fe401a0a030f0c08e97233d2e34319bfaef17b752558
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6.42` - linux; amd64

```console
$ docker pull percona@sha256:f6ea7f3a5bb6c227fc04bb407a3085609f92a8e498faa2061a82212091edabaa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.0 MB (137995147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8069b6630d70fd9019391eac9aec667e4cd80263cd2a797e99ed6acbd6c5a97`
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
# Tue, 04 Dec 2018 01:14:54 GMT
ENV PERCONA_VERSION=5.6.42-rel84.2.el7
# Tue, 04 Dec 2018 01:15:21 GMT
RUN yum install -y 		Percona-Server-server-56-${PERCONA_VERSION} 		Percona-Server-tokudb-56-${PERCONA_VERSION} 		Percona-Server-rocksdb-56-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Tue, 04 Dec 2018 01:15:22 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /etc/my.cnf.d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user|sql_mode)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user|sql_mode)/#&/' 	&& sed -i '/Make sure only root/,/fi/d' /usr/bin/ps_tokudb_admin 	&& echo "thp-setting=never" >> /etc/my.cnf 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Tue, 04 Dec 2018 01:15:22 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 04 Dec 2018 01:15:22 GMT
COPY file:fe6b1a8e605281e5ec8baec786785211172b14a252ac4bf8d19e30ace28a2e85 in /docker-entrypoint.sh 
# Tue, 04 Dec 2018 01:15:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Dec 2018 01:15:23 GMT
USER [mysql]
# Tue, 04 Dec 2018 01:15:23 GMT
EXPOSE 3306/tcp
# Tue, 04 Dec 2018 01:15:23 GMT
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
	-	`sha256:06ad82239fde5ca38f66d450de3f53afe973add048d90b89468f91bcb4abca4d`  
		Last Modified: Tue, 04 Dec 2018 01:19:24 GMT  
		Size: 57.4 MB (57389574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47de845981c4eeb746c6fc1e3a0edaac43286db97533b86bad0c23f0fc54ffea`  
		Last Modified: Tue, 04 Dec 2018 01:19:12 GMT  
		Size: 4.9 KB (4883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6394a033b5aa11bfe7b6e29579efa4dd480b16ababdd39a59cc243cdd92b046b`  
		Last Modified: Tue, 04 Dec 2018 01:19:12 GMT  
		Size: 2.9 KB (2859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.42-centos`

```console
$ docker pull percona@sha256:4e9fc7e0c6d632bd51e3fe401a0a030f0c08e97233d2e34319bfaef17b752558
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6.42-centos` - linux; amd64

```console
$ docker pull percona@sha256:f6ea7f3a5bb6c227fc04bb407a3085609f92a8e498faa2061a82212091edabaa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.0 MB (137995147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8069b6630d70fd9019391eac9aec667e4cd80263cd2a797e99ed6acbd6c5a97`
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
# Tue, 04 Dec 2018 01:14:54 GMT
ENV PERCONA_VERSION=5.6.42-rel84.2.el7
# Tue, 04 Dec 2018 01:15:21 GMT
RUN yum install -y 		Percona-Server-server-56-${PERCONA_VERSION} 		Percona-Server-tokudb-56-${PERCONA_VERSION} 		Percona-Server-rocksdb-56-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Tue, 04 Dec 2018 01:15:22 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /etc/my.cnf.d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user|sql_mode)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user|sql_mode)/#&/' 	&& sed -i '/Make sure only root/,/fi/d' /usr/bin/ps_tokudb_admin 	&& echo "thp-setting=never" >> /etc/my.cnf 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Tue, 04 Dec 2018 01:15:22 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 04 Dec 2018 01:15:22 GMT
COPY file:fe6b1a8e605281e5ec8baec786785211172b14a252ac4bf8d19e30ace28a2e85 in /docker-entrypoint.sh 
# Tue, 04 Dec 2018 01:15:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Dec 2018 01:15:23 GMT
USER [mysql]
# Tue, 04 Dec 2018 01:15:23 GMT
EXPOSE 3306/tcp
# Tue, 04 Dec 2018 01:15:23 GMT
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
	-	`sha256:06ad82239fde5ca38f66d450de3f53afe973add048d90b89468f91bcb4abca4d`  
		Last Modified: Tue, 04 Dec 2018 01:19:24 GMT  
		Size: 57.4 MB (57389574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47de845981c4eeb746c6fc1e3a0edaac43286db97533b86bad0c23f0fc54ffea`  
		Last Modified: Tue, 04 Dec 2018 01:19:12 GMT  
		Size: 4.9 KB (4883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6394a033b5aa11bfe7b6e29579efa4dd480b16ababdd39a59cc243cdd92b046b`  
		Last Modified: Tue, 04 Dec 2018 01:19:12 GMT  
		Size: 2.9 KB (2859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6-centos`

```console
$ docker pull percona@sha256:4e9fc7e0c6d632bd51e3fe401a0a030f0c08e97233d2e34319bfaef17b752558
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6-centos` - linux; amd64

```console
$ docker pull percona@sha256:f6ea7f3a5bb6c227fc04bb407a3085609f92a8e498faa2061a82212091edabaa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.0 MB (137995147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8069b6630d70fd9019391eac9aec667e4cd80263cd2a797e99ed6acbd6c5a97`
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
# Tue, 04 Dec 2018 01:14:54 GMT
ENV PERCONA_VERSION=5.6.42-rel84.2.el7
# Tue, 04 Dec 2018 01:15:21 GMT
RUN yum install -y 		Percona-Server-server-56-${PERCONA_VERSION} 		Percona-Server-tokudb-56-${PERCONA_VERSION} 		Percona-Server-rocksdb-56-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Tue, 04 Dec 2018 01:15:22 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /etc/my.cnf.d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user|sql_mode)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user|sql_mode)/#&/' 	&& sed -i '/Make sure only root/,/fi/d' /usr/bin/ps_tokudb_admin 	&& echo "thp-setting=never" >> /etc/my.cnf 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Tue, 04 Dec 2018 01:15:22 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 04 Dec 2018 01:15:22 GMT
COPY file:fe6b1a8e605281e5ec8baec786785211172b14a252ac4bf8d19e30ace28a2e85 in /docker-entrypoint.sh 
# Tue, 04 Dec 2018 01:15:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Dec 2018 01:15:23 GMT
USER [mysql]
# Tue, 04 Dec 2018 01:15:23 GMT
EXPOSE 3306/tcp
# Tue, 04 Dec 2018 01:15:23 GMT
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
	-	`sha256:06ad82239fde5ca38f66d450de3f53afe973add048d90b89468f91bcb4abca4d`  
		Last Modified: Tue, 04 Dec 2018 01:19:24 GMT  
		Size: 57.4 MB (57389574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47de845981c4eeb746c6fc1e3a0edaac43286db97533b86bad0c23f0fc54ffea`  
		Last Modified: Tue, 04 Dec 2018 01:19:12 GMT  
		Size: 4.9 KB (4883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6394a033b5aa11bfe7b6e29579efa4dd480b16ababdd39a59cc243cdd92b046b`  
		Last Modified: Tue, 04 Dec 2018 01:19:12 GMT  
		Size: 2.9 KB (2859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7`

```console
$ docker pull percona@sha256:1b44e3222b068a65d71abe30046594f3768bf98e4c576230349969e677ab4c9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7` - linux; amd64

```console
$ docker pull percona@sha256:8f3de8675adb17938c5ae7b466f35a5b404577bd564a1b218b533d04c7f144f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.0 MB (190018502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9db94bcf28b3d10ac89e1599473b3e69b3bb91d14caaf25f88d6adecb13f3c73`
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
# Tue, 04 Dec 2018 01:13:43 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Tue, 04 Dec 2018 01:13:43 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 04 Dec 2018 01:13:44 GMT
COPY file:2fd07388582a69bcc2248785f5e72602c338c21c5827d5d1ffa1cb1d64c0d9eb in /docker-entrypoint.sh 
# Tue, 04 Dec 2018 01:13:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Dec 2018 01:13:59 GMT
USER [mysql]
# Tue, 04 Dec 2018 01:13:59 GMT
EXPOSE 3306/tcp
# Tue, 04 Dec 2018 01:13:59 GMT
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
	-	`sha256:74830633c1f3d14bf29a5aa0817becea87244d05e0ab9c699c7bf909be2a7c59`  
		Last Modified: Tue, 04 Dec 2018 01:16:08 GMT  
		Size: 1.4 KB (1390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895b41ec3a87d3afa1d8a75347eef6a4adc944378d58e75ea1fda39581c93956`  
		Last Modified: Tue, 04 Dec 2018 01:16:09 GMT  
		Size: 3.0 KB (2978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7.23`

```console
$ docker pull percona@sha256:1b44e3222b068a65d71abe30046594f3768bf98e4c576230349969e677ab4c9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7.23` - linux; amd64

```console
$ docker pull percona@sha256:8f3de8675adb17938c5ae7b466f35a5b404577bd564a1b218b533d04c7f144f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.0 MB (190018502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9db94bcf28b3d10ac89e1599473b3e69b3bb91d14caaf25f88d6adecb13f3c73`
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
# Tue, 04 Dec 2018 01:13:43 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Tue, 04 Dec 2018 01:13:43 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 04 Dec 2018 01:13:44 GMT
COPY file:2fd07388582a69bcc2248785f5e72602c338c21c5827d5d1ffa1cb1d64c0d9eb in /docker-entrypoint.sh 
# Tue, 04 Dec 2018 01:13:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Dec 2018 01:13:59 GMT
USER [mysql]
# Tue, 04 Dec 2018 01:13:59 GMT
EXPOSE 3306/tcp
# Tue, 04 Dec 2018 01:13:59 GMT
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
	-	`sha256:74830633c1f3d14bf29a5aa0817becea87244d05e0ab9c699c7bf909be2a7c59`  
		Last Modified: Tue, 04 Dec 2018 01:16:08 GMT  
		Size: 1.4 KB (1390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895b41ec3a87d3afa1d8a75347eef6a4adc944378d58e75ea1fda39581c93956`  
		Last Modified: Tue, 04 Dec 2018 01:16:09 GMT  
		Size: 3.0 KB (2978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7.23-centos`

```console
$ docker pull percona@sha256:1b44e3222b068a65d71abe30046594f3768bf98e4c576230349969e677ab4c9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7.23-centos` - linux; amd64

```console
$ docker pull percona@sha256:8f3de8675adb17938c5ae7b466f35a5b404577bd564a1b218b533d04c7f144f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.0 MB (190018502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9db94bcf28b3d10ac89e1599473b3e69b3bb91d14caaf25f88d6adecb13f3c73`
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
# Tue, 04 Dec 2018 01:13:43 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Tue, 04 Dec 2018 01:13:43 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 04 Dec 2018 01:13:44 GMT
COPY file:2fd07388582a69bcc2248785f5e72602c338c21c5827d5d1ffa1cb1d64c0d9eb in /docker-entrypoint.sh 
# Tue, 04 Dec 2018 01:13:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Dec 2018 01:13:59 GMT
USER [mysql]
# Tue, 04 Dec 2018 01:13:59 GMT
EXPOSE 3306/tcp
# Tue, 04 Dec 2018 01:13:59 GMT
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
	-	`sha256:74830633c1f3d14bf29a5aa0817becea87244d05e0ab9c699c7bf909be2a7c59`  
		Last Modified: Tue, 04 Dec 2018 01:16:08 GMT  
		Size: 1.4 KB (1390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895b41ec3a87d3afa1d8a75347eef6a4adc944378d58e75ea1fda39581c93956`  
		Last Modified: Tue, 04 Dec 2018 01:16:09 GMT  
		Size: 3.0 KB (2978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7-centos`

```console
$ docker pull percona@sha256:1b44e3222b068a65d71abe30046594f3768bf98e4c576230349969e677ab4c9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7-centos` - linux; amd64

```console
$ docker pull percona@sha256:8f3de8675adb17938c5ae7b466f35a5b404577bd564a1b218b533d04c7f144f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.0 MB (190018502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9db94bcf28b3d10ac89e1599473b3e69b3bb91d14caaf25f88d6adecb13f3c73`
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
# Tue, 04 Dec 2018 01:13:43 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Tue, 04 Dec 2018 01:13:43 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 04 Dec 2018 01:13:44 GMT
COPY file:2fd07388582a69bcc2248785f5e72602c338c21c5827d5d1ffa1cb1d64c0d9eb in /docker-entrypoint.sh 
# Tue, 04 Dec 2018 01:13:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Dec 2018 01:13:59 GMT
USER [mysql]
# Tue, 04 Dec 2018 01:13:59 GMT
EXPOSE 3306/tcp
# Tue, 04 Dec 2018 01:13:59 GMT
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
	-	`sha256:74830633c1f3d14bf29a5aa0817becea87244d05e0ab9c699c7bf909be2a7c59`  
		Last Modified: Tue, 04 Dec 2018 01:16:08 GMT  
		Size: 1.4 KB (1390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895b41ec3a87d3afa1d8a75347eef6a4adc944378d58e75ea1fda39581c93956`  
		Last Modified: Tue, 04 Dec 2018 01:16:09 GMT  
		Size: 3.0 KB (2978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5-centos`

```console
$ docker pull percona@sha256:1b44e3222b068a65d71abe30046594f3768bf98e4c576230349969e677ab4c9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5-centos` - linux; amd64

```console
$ docker pull percona@sha256:8f3de8675adb17938c5ae7b466f35a5b404577bd564a1b218b533d04c7f144f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.0 MB (190018502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9db94bcf28b3d10ac89e1599473b3e69b3bb91d14caaf25f88d6adecb13f3c73`
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
# Tue, 04 Dec 2018 01:13:43 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Tue, 04 Dec 2018 01:13:43 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 04 Dec 2018 01:13:44 GMT
COPY file:2fd07388582a69bcc2248785f5e72602c338c21c5827d5d1ffa1cb1d64c0d9eb in /docker-entrypoint.sh 
# Tue, 04 Dec 2018 01:13:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Dec 2018 01:13:59 GMT
USER [mysql]
# Tue, 04 Dec 2018 01:13:59 GMT
EXPOSE 3306/tcp
# Tue, 04 Dec 2018 01:13:59 GMT
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
	-	`sha256:74830633c1f3d14bf29a5aa0817becea87244d05e0ab9c699c7bf909be2a7c59`  
		Last Modified: Tue, 04 Dec 2018 01:16:08 GMT  
		Size: 1.4 KB (1390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895b41ec3a87d3afa1d8a75347eef6a4adc944378d58e75ea1fda39581c93956`  
		Last Modified: Tue, 04 Dec 2018 01:16:09 GMT  
		Size: 3.0 KB (2978 bytes)  
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
$ docker pull percona@sha256:1b44e3222b068a65d71abe30046594f3768bf98e4c576230349969e677ab4c9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:centos` - linux; amd64

```console
$ docker pull percona@sha256:8f3de8675adb17938c5ae7b466f35a5b404577bd564a1b218b533d04c7f144f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.0 MB (190018502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9db94bcf28b3d10ac89e1599473b3e69b3bb91d14caaf25f88d6adecb13f3c73`
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
# Tue, 04 Dec 2018 01:13:43 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Tue, 04 Dec 2018 01:13:43 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 04 Dec 2018 01:13:44 GMT
COPY file:2fd07388582a69bcc2248785f5e72602c338c21c5827d5d1ffa1cb1d64c0d9eb in /docker-entrypoint.sh 
# Tue, 04 Dec 2018 01:13:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Dec 2018 01:13:59 GMT
USER [mysql]
# Tue, 04 Dec 2018 01:13:59 GMT
EXPOSE 3306/tcp
# Tue, 04 Dec 2018 01:13:59 GMT
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
	-	`sha256:74830633c1f3d14bf29a5aa0817becea87244d05e0ab9c699c7bf909be2a7c59`  
		Last Modified: Tue, 04 Dec 2018 01:16:08 GMT  
		Size: 1.4 KB (1390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895b41ec3a87d3afa1d8a75347eef6a4adc944378d58e75ea1fda39581c93956`  
		Last Modified: Tue, 04 Dec 2018 01:16:09 GMT  
		Size: 3.0 KB (2978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:latest`

```console
$ docker pull percona@sha256:1b44e3222b068a65d71abe30046594f3768bf98e4c576230349969e677ab4c9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:latest` - linux; amd64

```console
$ docker pull percona@sha256:8f3de8675adb17938c5ae7b466f35a5b404577bd564a1b218b533d04c7f144f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.0 MB (190018502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9db94bcf28b3d10ac89e1599473b3e69b3bb91d14caaf25f88d6adecb13f3c73`
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
# Tue, 04 Dec 2018 01:13:43 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Tue, 04 Dec 2018 01:13:43 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 04 Dec 2018 01:13:44 GMT
COPY file:2fd07388582a69bcc2248785f5e72602c338c21c5827d5d1ffa1cb1d64c0d9eb in /docker-entrypoint.sh 
# Tue, 04 Dec 2018 01:13:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Dec 2018 01:13:59 GMT
USER [mysql]
# Tue, 04 Dec 2018 01:13:59 GMT
EXPOSE 3306/tcp
# Tue, 04 Dec 2018 01:13:59 GMT
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
	-	`sha256:74830633c1f3d14bf29a5aa0817becea87244d05e0ab9c699c7bf909be2a7c59`  
		Last Modified: Tue, 04 Dec 2018 01:16:08 GMT  
		Size: 1.4 KB (1390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895b41ec3a87d3afa1d8a75347eef6a4adc944378d58e75ea1fda39581c93956`  
		Last Modified: Tue, 04 Dec 2018 01:16:09 GMT  
		Size: 3.0 KB (2978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
