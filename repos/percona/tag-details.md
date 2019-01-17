<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `percona`

-	[`percona:5`](#percona5)
-	[`percona:5.6`](#percona56)
-	[`percona:5.6.42`](#percona5642)
-	[`percona:5.6.42-centos`](#percona5642-centos)
-	[`percona:5.6-centos`](#percona56-centos)
-	[`percona:5.7`](#percona57)
-	[`percona:5.7.24`](#percona5724)
-	[`percona:5.7.24-centos`](#percona5724-centos)
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
-	[`percona:ps-5.6.42`](#perconaps-5642)
-	[`percona:ps-5.7`](#perconaps-57)
-	[`percona:ps-5.7.24`](#perconaps-5724)
-	[`percona:ps-8`](#perconaps-8)
-	[`percona:ps-8.0`](#perconaps-80)
-	[`percona:ps-8.0.13-4`](#perconaps-8013-4)
-	[`percona:psmdb-3.6`](#perconapsmdb-36)
-	[`percona:psmdb-3.6.8`](#perconapsmdb-368)

## `percona:5`

```console
$ docker pull percona@sha256:de153e84a7a18b2b62f94bc02674579f7c7bb439b9913db2197f23f75f43316e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5` - linux; amd64

```console
$ docker pull percona@sha256:39967c3f6779025bea99cc6b22e2e86593b98fc70cb853e75cbfaed6ea635280
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.4 MB (191373721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e0fd493ab22f91a0cae21f6cbae7ece3bb45363375d717aa990f4c7691a72e2`
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
# Thu, 06 Dec 2018 00:52:00 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm
# Thu, 06 Dec 2018 00:52:00 GMT
ENV PERCONA_VERSION=5.7.24-26.1.el7
# Thu, 06 Dec 2018 00:52:25 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 06 Dec 2018 00:52:26 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Thu, 06 Dec 2018 00:52:26 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 06 Dec 2018 00:52:27 GMT
COPY file:2fd07388582a69bcc2248785f5e72602c338c21c5827d5d1ffa1cb1d64c0d9eb in /docker-entrypoint.sh 
# Thu, 06 Dec 2018 00:52:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Dec 2018 00:52:27 GMT
USER [mysql]
# Thu, 06 Dec 2018 00:52:27 GMT
EXPOSE 3306/tcp
# Thu, 06 Dec 2018 00:52:28 GMT
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
	-	`sha256:2e86b5a5d813f50eb00dd692a4a07d9ae5af1aa12cfde7bf185ecbf8621c7e90`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 6.2 MB (6176165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ae3263f02cb000fb9dedb791f13b06a4c62f3ce564fe6125833df92db29c6d`  
		Last Modified: Thu, 06 Dec 2018 00:59:42 GMT  
		Size: 110.0 MB (110025702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d95da0b1e434b93aff396e14d16ed3c7885dec9ae943fbc2ff551a31c7162ee`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 1.4 KB (1383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe085680f914fef758959eaf2e88cab508b588197680c06c3ce3105e83a2005`  
		Last Modified: Thu, 06 Dec 2018 00:59:20 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6`

```console
$ docker pull percona@sha256:7c746bed3a090081f4125ef0dc56ce1343f84176db6506481c6e21da323c15dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6` - linux; amd64

```console
$ docker pull percona@sha256:72399a513c91561a3be275b758bbe436b0d21ffb813cd862f32ecc093aa31233
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.5 MB (138512626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:884c1e79b12f82ee5dba36a424ccc1bbbbb348d5df1da35044dabcfb3ed03279`
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
# Thu, 06 Dec 2018 00:52:00 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm
# Thu, 06 Dec 2018 00:53:06 GMT
ENV PERCONA_VERSION=5.6.42-rel84.2.el7
# Thu, 06 Dec 2018 00:53:28 GMT
RUN yum install -y 		Percona-Server-server-56-${PERCONA_VERSION} 		Percona-Server-tokudb-56-${PERCONA_VERSION} 		Percona-Server-rocksdb-56-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 06 Dec 2018 00:53:46 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /etc/my.cnf.d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user|sql_mode)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user|sql_mode)/#&/' 	&& sed -i '/Make sure only root/,/fi/d' /usr/bin/ps_tokudb_admin 	&& echo "thp-setting=never" >> /etc/my.cnf 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 06 Dec 2018 00:53:46 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 06 Dec 2018 00:53:47 GMT
COPY file:fe6b1a8e605281e5ec8baec786785211172b14a252ac4bf8d19e30ace28a2e85 in /docker-entrypoint.sh 
# Thu, 06 Dec 2018 00:53:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Dec 2018 00:53:47 GMT
USER [mysql]
# Thu, 06 Dec 2018 00:53:47 GMT
EXPOSE 3306/tcp
# Thu, 06 Dec 2018 00:53:48 GMT
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
	-	`sha256:2e86b5a5d813f50eb00dd692a4a07d9ae5af1aa12cfde7bf185ecbf8621c7e90`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 6.2 MB (6176165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55ded571fc8278fba1b5480e21bd1cd48602273f12f435fe40efbb6d2af676f`  
		Last Modified: Thu, 06 Dec 2018 01:04:00 GMT  
		Size: 57.2 MB (57161230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891882d5075ea2fbb6e06b37081ae378028d2b3c22af5edcd9266c65b6fe1b5e`  
		Last Modified: Thu, 06 Dec 2018 01:03:49 GMT  
		Size: 4.9 KB (4879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f53e3e79c6ce31c7097d16abcf2c217c21376ff53fbe8307fb3218ae27fb769`  
		Last Modified: Thu, 06 Dec 2018 01:03:48 GMT  
		Size: 2.9 KB (2858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.42`

```console
$ docker pull percona@sha256:7c746bed3a090081f4125ef0dc56ce1343f84176db6506481c6e21da323c15dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6.42` - linux; amd64

```console
$ docker pull percona@sha256:72399a513c91561a3be275b758bbe436b0d21ffb813cd862f32ecc093aa31233
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.5 MB (138512626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:884c1e79b12f82ee5dba36a424ccc1bbbbb348d5df1da35044dabcfb3ed03279`
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
# Thu, 06 Dec 2018 00:52:00 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm
# Thu, 06 Dec 2018 00:53:06 GMT
ENV PERCONA_VERSION=5.6.42-rel84.2.el7
# Thu, 06 Dec 2018 00:53:28 GMT
RUN yum install -y 		Percona-Server-server-56-${PERCONA_VERSION} 		Percona-Server-tokudb-56-${PERCONA_VERSION} 		Percona-Server-rocksdb-56-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 06 Dec 2018 00:53:46 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /etc/my.cnf.d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user|sql_mode)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user|sql_mode)/#&/' 	&& sed -i '/Make sure only root/,/fi/d' /usr/bin/ps_tokudb_admin 	&& echo "thp-setting=never" >> /etc/my.cnf 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 06 Dec 2018 00:53:46 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 06 Dec 2018 00:53:47 GMT
COPY file:fe6b1a8e605281e5ec8baec786785211172b14a252ac4bf8d19e30ace28a2e85 in /docker-entrypoint.sh 
# Thu, 06 Dec 2018 00:53:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Dec 2018 00:53:47 GMT
USER [mysql]
# Thu, 06 Dec 2018 00:53:47 GMT
EXPOSE 3306/tcp
# Thu, 06 Dec 2018 00:53:48 GMT
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
	-	`sha256:2e86b5a5d813f50eb00dd692a4a07d9ae5af1aa12cfde7bf185ecbf8621c7e90`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 6.2 MB (6176165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55ded571fc8278fba1b5480e21bd1cd48602273f12f435fe40efbb6d2af676f`  
		Last Modified: Thu, 06 Dec 2018 01:04:00 GMT  
		Size: 57.2 MB (57161230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891882d5075ea2fbb6e06b37081ae378028d2b3c22af5edcd9266c65b6fe1b5e`  
		Last Modified: Thu, 06 Dec 2018 01:03:49 GMT  
		Size: 4.9 KB (4879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f53e3e79c6ce31c7097d16abcf2c217c21376ff53fbe8307fb3218ae27fb769`  
		Last Modified: Thu, 06 Dec 2018 01:03:48 GMT  
		Size: 2.9 KB (2858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.42-centos`

```console
$ docker pull percona@sha256:7c746bed3a090081f4125ef0dc56ce1343f84176db6506481c6e21da323c15dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6.42-centos` - linux; amd64

```console
$ docker pull percona@sha256:72399a513c91561a3be275b758bbe436b0d21ffb813cd862f32ecc093aa31233
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.5 MB (138512626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:884c1e79b12f82ee5dba36a424ccc1bbbbb348d5df1da35044dabcfb3ed03279`
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
# Thu, 06 Dec 2018 00:52:00 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm
# Thu, 06 Dec 2018 00:53:06 GMT
ENV PERCONA_VERSION=5.6.42-rel84.2.el7
# Thu, 06 Dec 2018 00:53:28 GMT
RUN yum install -y 		Percona-Server-server-56-${PERCONA_VERSION} 		Percona-Server-tokudb-56-${PERCONA_VERSION} 		Percona-Server-rocksdb-56-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 06 Dec 2018 00:53:46 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /etc/my.cnf.d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user|sql_mode)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user|sql_mode)/#&/' 	&& sed -i '/Make sure only root/,/fi/d' /usr/bin/ps_tokudb_admin 	&& echo "thp-setting=never" >> /etc/my.cnf 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 06 Dec 2018 00:53:46 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 06 Dec 2018 00:53:47 GMT
COPY file:fe6b1a8e605281e5ec8baec786785211172b14a252ac4bf8d19e30ace28a2e85 in /docker-entrypoint.sh 
# Thu, 06 Dec 2018 00:53:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Dec 2018 00:53:47 GMT
USER [mysql]
# Thu, 06 Dec 2018 00:53:47 GMT
EXPOSE 3306/tcp
# Thu, 06 Dec 2018 00:53:48 GMT
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
	-	`sha256:2e86b5a5d813f50eb00dd692a4a07d9ae5af1aa12cfde7bf185ecbf8621c7e90`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 6.2 MB (6176165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55ded571fc8278fba1b5480e21bd1cd48602273f12f435fe40efbb6d2af676f`  
		Last Modified: Thu, 06 Dec 2018 01:04:00 GMT  
		Size: 57.2 MB (57161230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891882d5075ea2fbb6e06b37081ae378028d2b3c22af5edcd9266c65b6fe1b5e`  
		Last Modified: Thu, 06 Dec 2018 01:03:49 GMT  
		Size: 4.9 KB (4879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f53e3e79c6ce31c7097d16abcf2c217c21376ff53fbe8307fb3218ae27fb769`  
		Last Modified: Thu, 06 Dec 2018 01:03:48 GMT  
		Size: 2.9 KB (2858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6-centos`

```console
$ docker pull percona@sha256:7c746bed3a090081f4125ef0dc56ce1343f84176db6506481c6e21da323c15dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.6-centos` - linux; amd64

```console
$ docker pull percona@sha256:72399a513c91561a3be275b758bbe436b0d21ffb813cd862f32ecc093aa31233
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.5 MB (138512626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:884c1e79b12f82ee5dba36a424ccc1bbbbb348d5df1da35044dabcfb3ed03279`
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
# Thu, 06 Dec 2018 00:52:00 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm
# Thu, 06 Dec 2018 00:53:06 GMT
ENV PERCONA_VERSION=5.6.42-rel84.2.el7
# Thu, 06 Dec 2018 00:53:28 GMT
RUN yum install -y 		Percona-Server-server-56-${PERCONA_VERSION} 		Percona-Server-tokudb-56-${PERCONA_VERSION} 		Percona-Server-rocksdb-56-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 06 Dec 2018 00:53:46 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /etc/my.cnf.d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user|sql_mode)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user|sql_mode)/#&/' 	&& sed -i '/Make sure only root/,/fi/d' /usr/bin/ps_tokudb_admin 	&& echo "thp-setting=never" >> /etc/my.cnf 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 06 Dec 2018 00:53:46 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 06 Dec 2018 00:53:47 GMT
COPY file:fe6b1a8e605281e5ec8baec786785211172b14a252ac4bf8d19e30ace28a2e85 in /docker-entrypoint.sh 
# Thu, 06 Dec 2018 00:53:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Dec 2018 00:53:47 GMT
USER [mysql]
# Thu, 06 Dec 2018 00:53:47 GMT
EXPOSE 3306/tcp
# Thu, 06 Dec 2018 00:53:48 GMT
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
	-	`sha256:2e86b5a5d813f50eb00dd692a4a07d9ae5af1aa12cfde7bf185ecbf8621c7e90`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 6.2 MB (6176165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55ded571fc8278fba1b5480e21bd1cd48602273f12f435fe40efbb6d2af676f`  
		Last Modified: Thu, 06 Dec 2018 01:04:00 GMT  
		Size: 57.2 MB (57161230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891882d5075ea2fbb6e06b37081ae378028d2b3c22af5edcd9266c65b6fe1b5e`  
		Last Modified: Thu, 06 Dec 2018 01:03:49 GMT  
		Size: 4.9 KB (4879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f53e3e79c6ce31c7097d16abcf2c217c21376ff53fbe8307fb3218ae27fb769`  
		Last Modified: Thu, 06 Dec 2018 01:03:48 GMT  
		Size: 2.9 KB (2858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7`

```console
$ docker pull percona@sha256:de153e84a7a18b2b62f94bc02674579f7c7bb439b9913db2197f23f75f43316e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7` - linux; amd64

```console
$ docker pull percona@sha256:39967c3f6779025bea99cc6b22e2e86593b98fc70cb853e75cbfaed6ea635280
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.4 MB (191373721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e0fd493ab22f91a0cae21f6cbae7ece3bb45363375d717aa990f4c7691a72e2`
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
# Thu, 06 Dec 2018 00:52:00 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm
# Thu, 06 Dec 2018 00:52:00 GMT
ENV PERCONA_VERSION=5.7.24-26.1.el7
# Thu, 06 Dec 2018 00:52:25 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 06 Dec 2018 00:52:26 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Thu, 06 Dec 2018 00:52:26 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 06 Dec 2018 00:52:27 GMT
COPY file:2fd07388582a69bcc2248785f5e72602c338c21c5827d5d1ffa1cb1d64c0d9eb in /docker-entrypoint.sh 
# Thu, 06 Dec 2018 00:52:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Dec 2018 00:52:27 GMT
USER [mysql]
# Thu, 06 Dec 2018 00:52:27 GMT
EXPOSE 3306/tcp
# Thu, 06 Dec 2018 00:52:28 GMT
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
	-	`sha256:2e86b5a5d813f50eb00dd692a4a07d9ae5af1aa12cfde7bf185ecbf8621c7e90`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 6.2 MB (6176165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ae3263f02cb000fb9dedb791f13b06a4c62f3ce564fe6125833df92db29c6d`  
		Last Modified: Thu, 06 Dec 2018 00:59:42 GMT  
		Size: 110.0 MB (110025702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d95da0b1e434b93aff396e14d16ed3c7885dec9ae943fbc2ff551a31c7162ee`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 1.4 KB (1383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe085680f914fef758959eaf2e88cab508b588197680c06c3ce3105e83a2005`  
		Last Modified: Thu, 06 Dec 2018 00:59:20 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7.24`

```console
$ docker pull percona@sha256:de153e84a7a18b2b62f94bc02674579f7c7bb439b9913db2197f23f75f43316e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7.24` - linux; amd64

```console
$ docker pull percona@sha256:39967c3f6779025bea99cc6b22e2e86593b98fc70cb853e75cbfaed6ea635280
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.4 MB (191373721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e0fd493ab22f91a0cae21f6cbae7ece3bb45363375d717aa990f4c7691a72e2`
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
# Thu, 06 Dec 2018 00:52:00 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm
# Thu, 06 Dec 2018 00:52:00 GMT
ENV PERCONA_VERSION=5.7.24-26.1.el7
# Thu, 06 Dec 2018 00:52:25 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 06 Dec 2018 00:52:26 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Thu, 06 Dec 2018 00:52:26 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 06 Dec 2018 00:52:27 GMT
COPY file:2fd07388582a69bcc2248785f5e72602c338c21c5827d5d1ffa1cb1d64c0d9eb in /docker-entrypoint.sh 
# Thu, 06 Dec 2018 00:52:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Dec 2018 00:52:27 GMT
USER [mysql]
# Thu, 06 Dec 2018 00:52:27 GMT
EXPOSE 3306/tcp
# Thu, 06 Dec 2018 00:52:28 GMT
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
	-	`sha256:2e86b5a5d813f50eb00dd692a4a07d9ae5af1aa12cfde7bf185ecbf8621c7e90`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 6.2 MB (6176165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ae3263f02cb000fb9dedb791f13b06a4c62f3ce564fe6125833df92db29c6d`  
		Last Modified: Thu, 06 Dec 2018 00:59:42 GMT  
		Size: 110.0 MB (110025702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d95da0b1e434b93aff396e14d16ed3c7885dec9ae943fbc2ff551a31c7162ee`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 1.4 KB (1383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe085680f914fef758959eaf2e88cab508b588197680c06c3ce3105e83a2005`  
		Last Modified: Thu, 06 Dec 2018 00:59:20 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7.24-centos`

```console
$ docker pull percona@sha256:de153e84a7a18b2b62f94bc02674579f7c7bb439b9913db2197f23f75f43316e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7.24-centos` - linux; amd64

```console
$ docker pull percona@sha256:39967c3f6779025bea99cc6b22e2e86593b98fc70cb853e75cbfaed6ea635280
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.4 MB (191373721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e0fd493ab22f91a0cae21f6cbae7ece3bb45363375d717aa990f4c7691a72e2`
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
# Thu, 06 Dec 2018 00:52:00 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm
# Thu, 06 Dec 2018 00:52:00 GMT
ENV PERCONA_VERSION=5.7.24-26.1.el7
# Thu, 06 Dec 2018 00:52:25 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 06 Dec 2018 00:52:26 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Thu, 06 Dec 2018 00:52:26 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 06 Dec 2018 00:52:27 GMT
COPY file:2fd07388582a69bcc2248785f5e72602c338c21c5827d5d1ffa1cb1d64c0d9eb in /docker-entrypoint.sh 
# Thu, 06 Dec 2018 00:52:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Dec 2018 00:52:27 GMT
USER [mysql]
# Thu, 06 Dec 2018 00:52:27 GMT
EXPOSE 3306/tcp
# Thu, 06 Dec 2018 00:52:28 GMT
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
	-	`sha256:2e86b5a5d813f50eb00dd692a4a07d9ae5af1aa12cfde7bf185ecbf8621c7e90`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 6.2 MB (6176165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ae3263f02cb000fb9dedb791f13b06a4c62f3ce564fe6125833df92db29c6d`  
		Last Modified: Thu, 06 Dec 2018 00:59:42 GMT  
		Size: 110.0 MB (110025702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d95da0b1e434b93aff396e14d16ed3c7885dec9ae943fbc2ff551a31c7162ee`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 1.4 KB (1383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe085680f914fef758959eaf2e88cab508b588197680c06c3ce3105e83a2005`  
		Last Modified: Thu, 06 Dec 2018 00:59:20 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7-centos`

```console
$ docker pull percona@sha256:de153e84a7a18b2b62f94bc02674579f7c7bb439b9913db2197f23f75f43316e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5.7-centos` - linux; amd64

```console
$ docker pull percona@sha256:39967c3f6779025bea99cc6b22e2e86593b98fc70cb853e75cbfaed6ea635280
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.4 MB (191373721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e0fd493ab22f91a0cae21f6cbae7ece3bb45363375d717aa990f4c7691a72e2`
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
# Thu, 06 Dec 2018 00:52:00 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm
# Thu, 06 Dec 2018 00:52:00 GMT
ENV PERCONA_VERSION=5.7.24-26.1.el7
# Thu, 06 Dec 2018 00:52:25 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 06 Dec 2018 00:52:26 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Thu, 06 Dec 2018 00:52:26 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 06 Dec 2018 00:52:27 GMT
COPY file:2fd07388582a69bcc2248785f5e72602c338c21c5827d5d1ffa1cb1d64c0d9eb in /docker-entrypoint.sh 
# Thu, 06 Dec 2018 00:52:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Dec 2018 00:52:27 GMT
USER [mysql]
# Thu, 06 Dec 2018 00:52:27 GMT
EXPOSE 3306/tcp
# Thu, 06 Dec 2018 00:52:28 GMT
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
	-	`sha256:2e86b5a5d813f50eb00dd692a4a07d9ae5af1aa12cfde7bf185ecbf8621c7e90`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 6.2 MB (6176165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ae3263f02cb000fb9dedb791f13b06a4c62f3ce564fe6125833df92db29c6d`  
		Last Modified: Thu, 06 Dec 2018 00:59:42 GMT  
		Size: 110.0 MB (110025702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d95da0b1e434b93aff396e14d16ed3c7885dec9ae943fbc2ff551a31c7162ee`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 1.4 KB (1383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe085680f914fef758959eaf2e88cab508b588197680c06c3ce3105e83a2005`  
		Last Modified: Thu, 06 Dec 2018 00:59:20 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5-centos`

```console
$ docker pull percona@sha256:de153e84a7a18b2b62f94bc02674579f7c7bb439b9913db2197f23f75f43316e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5-centos` - linux; amd64

```console
$ docker pull percona@sha256:39967c3f6779025bea99cc6b22e2e86593b98fc70cb853e75cbfaed6ea635280
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.4 MB (191373721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e0fd493ab22f91a0cae21f6cbae7ece3bb45363375d717aa990f4c7691a72e2`
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
# Thu, 06 Dec 2018 00:52:00 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm
# Thu, 06 Dec 2018 00:52:00 GMT
ENV PERCONA_VERSION=5.7.24-26.1.el7
# Thu, 06 Dec 2018 00:52:25 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 06 Dec 2018 00:52:26 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Thu, 06 Dec 2018 00:52:26 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 06 Dec 2018 00:52:27 GMT
COPY file:2fd07388582a69bcc2248785f5e72602c338c21c5827d5d1ffa1cb1d64c0d9eb in /docker-entrypoint.sh 
# Thu, 06 Dec 2018 00:52:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Dec 2018 00:52:27 GMT
USER [mysql]
# Thu, 06 Dec 2018 00:52:27 GMT
EXPOSE 3306/tcp
# Thu, 06 Dec 2018 00:52:28 GMT
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
	-	`sha256:2e86b5a5d813f50eb00dd692a4a07d9ae5af1aa12cfde7bf185ecbf8621c7e90`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 6.2 MB (6176165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ae3263f02cb000fb9dedb791f13b06a4c62f3ce564fe6125833df92db29c6d`  
		Last Modified: Thu, 06 Dec 2018 00:59:42 GMT  
		Size: 110.0 MB (110025702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d95da0b1e434b93aff396e14d16ed3c7885dec9ae943fbc2ff551a31c7162ee`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 1.4 KB (1383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe085680f914fef758959eaf2e88cab508b588197680c06c3ce3105e83a2005`  
		Last Modified: Thu, 06 Dec 2018 00:59:20 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:8`

```console
$ docker pull percona@sha256:8ea05c5818be66ec99224550fa67b675b50a42c7ed7f331665dd233944be3c30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:8` - linux; amd64

```console
$ docker pull percona@sha256:846352c6a6d1f480c504c21f9b3a662146aa45d26488a3fcf86032e5010eea05
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.3 MB (217341218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c262451028af2657e22315e98c26bb41c02cd54d623c935e685620a3705b173c`
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
# Thu, 06 Dec 2018 00:50:55 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& percona-release disable all 	&& percona-release enable ps-80 testing
# Thu, 06 Dec 2018 00:50:55 GMT
ENV PERCONA_VERSION=8.0.12-2.rc1.el7
# Thu, 06 Dec 2018 00:51:25 GMT
RUN yum install -y 		percona-server-server-${PERCONA_VERSION} 		percona-server-tokudb-${PERCONA_VERSION} 		percona-server-rocksdb-${PERCONA_VERSION} 		which 		policycoreutils 		https://repo.percona.com/percona/yum/release/7/RPMS/x86_64/jemalloc-3.6.0-1.el7.x86_64.rpm 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 06 Dec 2018 00:51:29 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 06 Dec 2018 00:51:29 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 06 Dec 2018 00:51:30 GMT
COPY file:7df52ab7374950746cb7b3ca5dda34ea67721f9561ba2be3b63a1182888d936a in /docker-entrypoint.sh 
# Thu, 06 Dec 2018 00:51:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Dec 2018 00:51:30 GMT
USER [mysql]
# Thu, 06 Dec 2018 00:51:30 GMT
EXPOSE 3306/tcp 33060/tcp
# Thu, 06 Dec 2018 00:51:31 GMT
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
	-	`sha256:f3b461445e41ff425466b9f09997c7b88a5402c92dae6ad6e0310e301897c3cb`  
		Last Modified: Thu, 06 Dec 2018 00:54:18 GMT  
		Size: 6.2 MB (6179855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50cde7862ad7ff43c246f88cd9d40c041ba7a716e0bb095c94235735b092320`  
		Last Modified: Thu, 06 Dec 2018 00:54:43 GMT  
		Size: 136.0 MB (135989766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb4d087197df740d3cf7053822fa17d2e4365fc3f6c8531b97bea7bffd9aaea`  
		Last Modified: Thu, 06 Dec 2018 00:54:16 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efdf75245abaae48113b6bfdf52b55edc735659d12d2eb7c23dbcc97490b380`  
		Last Modified: Thu, 06 Dec 2018 00:54:16 GMT  
		Size: 3.0 KB (2965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:8.0`

```console
$ docker pull percona@sha256:8ea05c5818be66ec99224550fa67b675b50a42c7ed7f331665dd233944be3c30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:8.0` - linux; amd64

```console
$ docker pull percona@sha256:846352c6a6d1f480c504c21f9b3a662146aa45d26488a3fcf86032e5010eea05
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.3 MB (217341218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c262451028af2657e22315e98c26bb41c02cd54d623c935e685620a3705b173c`
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
# Thu, 06 Dec 2018 00:50:55 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& percona-release disable all 	&& percona-release enable ps-80 testing
# Thu, 06 Dec 2018 00:50:55 GMT
ENV PERCONA_VERSION=8.0.12-2.rc1.el7
# Thu, 06 Dec 2018 00:51:25 GMT
RUN yum install -y 		percona-server-server-${PERCONA_VERSION} 		percona-server-tokudb-${PERCONA_VERSION} 		percona-server-rocksdb-${PERCONA_VERSION} 		which 		policycoreutils 		https://repo.percona.com/percona/yum/release/7/RPMS/x86_64/jemalloc-3.6.0-1.el7.x86_64.rpm 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 06 Dec 2018 00:51:29 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 06 Dec 2018 00:51:29 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 06 Dec 2018 00:51:30 GMT
COPY file:7df52ab7374950746cb7b3ca5dda34ea67721f9561ba2be3b63a1182888d936a in /docker-entrypoint.sh 
# Thu, 06 Dec 2018 00:51:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Dec 2018 00:51:30 GMT
USER [mysql]
# Thu, 06 Dec 2018 00:51:30 GMT
EXPOSE 3306/tcp 33060/tcp
# Thu, 06 Dec 2018 00:51:31 GMT
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
	-	`sha256:f3b461445e41ff425466b9f09997c7b88a5402c92dae6ad6e0310e301897c3cb`  
		Last Modified: Thu, 06 Dec 2018 00:54:18 GMT  
		Size: 6.2 MB (6179855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50cde7862ad7ff43c246f88cd9d40c041ba7a716e0bb095c94235735b092320`  
		Last Modified: Thu, 06 Dec 2018 00:54:43 GMT  
		Size: 136.0 MB (135989766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb4d087197df740d3cf7053822fa17d2e4365fc3f6c8531b97bea7bffd9aaea`  
		Last Modified: Thu, 06 Dec 2018 00:54:16 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efdf75245abaae48113b6bfdf52b55edc735659d12d2eb7c23dbcc97490b380`  
		Last Modified: Thu, 06 Dec 2018 00:54:16 GMT  
		Size: 3.0 KB (2965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:8.0.13-4`

**does not exist** (yet?)

## `percona:8.0.13-4-centos`

**does not exist** (yet?)

## `percona:8.0-centos`

```console
$ docker pull percona@sha256:8ea05c5818be66ec99224550fa67b675b50a42c7ed7f331665dd233944be3c30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:8.0-centos` - linux; amd64

```console
$ docker pull percona@sha256:846352c6a6d1f480c504c21f9b3a662146aa45d26488a3fcf86032e5010eea05
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.3 MB (217341218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c262451028af2657e22315e98c26bb41c02cd54d623c935e685620a3705b173c`
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
# Thu, 06 Dec 2018 00:50:55 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& percona-release disable all 	&& percona-release enable ps-80 testing
# Thu, 06 Dec 2018 00:50:55 GMT
ENV PERCONA_VERSION=8.0.12-2.rc1.el7
# Thu, 06 Dec 2018 00:51:25 GMT
RUN yum install -y 		percona-server-server-${PERCONA_VERSION} 		percona-server-tokudb-${PERCONA_VERSION} 		percona-server-rocksdb-${PERCONA_VERSION} 		which 		policycoreutils 		https://repo.percona.com/percona/yum/release/7/RPMS/x86_64/jemalloc-3.6.0-1.el7.x86_64.rpm 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 06 Dec 2018 00:51:29 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 06 Dec 2018 00:51:29 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 06 Dec 2018 00:51:30 GMT
COPY file:7df52ab7374950746cb7b3ca5dda34ea67721f9561ba2be3b63a1182888d936a in /docker-entrypoint.sh 
# Thu, 06 Dec 2018 00:51:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Dec 2018 00:51:30 GMT
USER [mysql]
# Thu, 06 Dec 2018 00:51:30 GMT
EXPOSE 3306/tcp 33060/tcp
# Thu, 06 Dec 2018 00:51:31 GMT
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
	-	`sha256:f3b461445e41ff425466b9f09997c7b88a5402c92dae6ad6e0310e301897c3cb`  
		Last Modified: Thu, 06 Dec 2018 00:54:18 GMT  
		Size: 6.2 MB (6179855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50cde7862ad7ff43c246f88cd9d40c041ba7a716e0bb095c94235735b092320`  
		Last Modified: Thu, 06 Dec 2018 00:54:43 GMT  
		Size: 136.0 MB (135989766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb4d087197df740d3cf7053822fa17d2e4365fc3f6c8531b97bea7bffd9aaea`  
		Last Modified: Thu, 06 Dec 2018 00:54:16 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efdf75245abaae48113b6bfdf52b55edc735659d12d2eb7c23dbcc97490b380`  
		Last Modified: Thu, 06 Dec 2018 00:54:16 GMT  
		Size: 3.0 KB (2965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:8-centos`

```console
$ docker pull percona@sha256:8ea05c5818be66ec99224550fa67b675b50a42c7ed7f331665dd233944be3c30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:8-centos` - linux; amd64

```console
$ docker pull percona@sha256:846352c6a6d1f480c504c21f9b3a662146aa45d26488a3fcf86032e5010eea05
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.3 MB (217341218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c262451028af2657e22315e98c26bb41c02cd54d623c935e685620a3705b173c`
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
# Thu, 06 Dec 2018 00:50:55 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& percona-release disable all 	&& percona-release enable ps-80 testing
# Thu, 06 Dec 2018 00:50:55 GMT
ENV PERCONA_VERSION=8.0.12-2.rc1.el7
# Thu, 06 Dec 2018 00:51:25 GMT
RUN yum install -y 		percona-server-server-${PERCONA_VERSION} 		percona-server-tokudb-${PERCONA_VERSION} 		percona-server-rocksdb-${PERCONA_VERSION} 		which 		policycoreutils 		https://repo.percona.com/percona/yum/release/7/RPMS/x86_64/jemalloc-3.6.0-1.el7.x86_64.rpm 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 06 Dec 2018 00:51:29 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 06 Dec 2018 00:51:29 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 06 Dec 2018 00:51:30 GMT
COPY file:7df52ab7374950746cb7b3ca5dda34ea67721f9561ba2be3b63a1182888d936a in /docker-entrypoint.sh 
# Thu, 06 Dec 2018 00:51:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Dec 2018 00:51:30 GMT
USER [mysql]
# Thu, 06 Dec 2018 00:51:30 GMT
EXPOSE 3306/tcp 33060/tcp
# Thu, 06 Dec 2018 00:51:31 GMT
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
	-	`sha256:f3b461445e41ff425466b9f09997c7b88a5402c92dae6ad6e0310e301897c3cb`  
		Last Modified: Thu, 06 Dec 2018 00:54:18 GMT  
		Size: 6.2 MB (6179855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50cde7862ad7ff43c246f88cd9d40c041ba7a716e0bb095c94235735b092320`  
		Last Modified: Thu, 06 Dec 2018 00:54:43 GMT  
		Size: 136.0 MB (135989766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb4d087197df740d3cf7053822fa17d2e4365fc3f6c8531b97bea7bffd9aaea`  
		Last Modified: Thu, 06 Dec 2018 00:54:16 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efdf75245abaae48113b6bfdf52b55edc735659d12d2eb7c23dbcc97490b380`  
		Last Modified: Thu, 06 Dec 2018 00:54:16 GMT  
		Size: 3.0 KB (2965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:centos`

```console
$ docker pull percona@sha256:de153e84a7a18b2b62f94bc02674579f7c7bb439b9913db2197f23f75f43316e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:centos` - linux; amd64

```console
$ docker pull percona@sha256:39967c3f6779025bea99cc6b22e2e86593b98fc70cb853e75cbfaed6ea635280
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.4 MB (191373721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e0fd493ab22f91a0cae21f6cbae7ece3bb45363375d717aa990f4c7691a72e2`
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
# Thu, 06 Dec 2018 00:52:00 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm
# Thu, 06 Dec 2018 00:52:00 GMT
ENV PERCONA_VERSION=5.7.24-26.1.el7
# Thu, 06 Dec 2018 00:52:25 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 06 Dec 2018 00:52:26 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Thu, 06 Dec 2018 00:52:26 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 06 Dec 2018 00:52:27 GMT
COPY file:2fd07388582a69bcc2248785f5e72602c338c21c5827d5d1ffa1cb1d64c0d9eb in /docker-entrypoint.sh 
# Thu, 06 Dec 2018 00:52:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Dec 2018 00:52:27 GMT
USER [mysql]
# Thu, 06 Dec 2018 00:52:27 GMT
EXPOSE 3306/tcp
# Thu, 06 Dec 2018 00:52:28 GMT
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
	-	`sha256:2e86b5a5d813f50eb00dd692a4a07d9ae5af1aa12cfde7bf185ecbf8621c7e90`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 6.2 MB (6176165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ae3263f02cb000fb9dedb791f13b06a4c62f3ce564fe6125833df92db29c6d`  
		Last Modified: Thu, 06 Dec 2018 00:59:42 GMT  
		Size: 110.0 MB (110025702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d95da0b1e434b93aff396e14d16ed3c7885dec9ae943fbc2ff551a31c7162ee`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 1.4 KB (1383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe085680f914fef758959eaf2e88cab508b588197680c06c3ce3105e83a2005`  
		Last Modified: Thu, 06 Dec 2018 00:59:20 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:latest`

```console
$ docker pull percona@sha256:de153e84a7a18b2b62f94bc02674579f7c7bb439b9913db2197f23f75f43316e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:latest` - linux; amd64

```console
$ docker pull percona@sha256:39967c3f6779025bea99cc6b22e2e86593b98fc70cb853e75cbfaed6ea635280
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.4 MB (191373721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e0fd493ab22f91a0cae21f6cbae7ece3bb45363375d717aa990f4c7691a72e2`
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
# Thu, 06 Dec 2018 00:52:00 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm
# Thu, 06 Dec 2018 00:52:00 GMT
ENV PERCONA_VERSION=5.7.24-26.1.el7
# Thu, 06 Dec 2018 00:52:25 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 06 Dec 2018 00:52:26 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Thu, 06 Dec 2018 00:52:26 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 06 Dec 2018 00:52:27 GMT
COPY file:2fd07388582a69bcc2248785f5e72602c338c21c5827d5d1ffa1cb1d64c0d9eb in /docker-entrypoint.sh 
# Thu, 06 Dec 2018 00:52:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Dec 2018 00:52:27 GMT
USER [mysql]
# Thu, 06 Dec 2018 00:52:27 GMT
EXPOSE 3306/tcp
# Thu, 06 Dec 2018 00:52:28 GMT
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
	-	`sha256:2e86b5a5d813f50eb00dd692a4a07d9ae5af1aa12cfde7bf185ecbf8621c7e90`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 6.2 MB (6176165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ae3263f02cb000fb9dedb791f13b06a4c62f3ce564fe6125833df92db29c6d`  
		Last Modified: Thu, 06 Dec 2018 00:59:42 GMT  
		Size: 110.0 MB (110025702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d95da0b1e434b93aff396e14d16ed3c7885dec9ae943fbc2ff551a31c7162ee`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 1.4 KB (1383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe085680f914fef758959eaf2e88cab508b588197680c06c3ce3105e83a2005`  
		Last Modified: Thu, 06 Dec 2018 00:59:20 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:ps-5`

```console
$ docker pull percona@sha256:de153e84a7a18b2b62f94bc02674579f7c7bb439b9913db2197f23f75f43316e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:ps-5` - linux; amd64

```console
$ docker pull percona@sha256:39967c3f6779025bea99cc6b22e2e86593b98fc70cb853e75cbfaed6ea635280
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.4 MB (191373721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e0fd493ab22f91a0cae21f6cbae7ece3bb45363375d717aa990f4c7691a72e2`
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
# Thu, 06 Dec 2018 00:52:00 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm
# Thu, 06 Dec 2018 00:52:00 GMT
ENV PERCONA_VERSION=5.7.24-26.1.el7
# Thu, 06 Dec 2018 00:52:25 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 06 Dec 2018 00:52:26 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Thu, 06 Dec 2018 00:52:26 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 06 Dec 2018 00:52:27 GMT
COPY file:2fd07388582a69bcc2248785f5e72602c338c21c5827d5d1ffa1cb1d64c0d9eb in /docker-entrypoint.sh 
# Thu, 06 Dec 2018 00:52:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Dec 2018 00:52:27 GMT
USER [mysql]
# Thu, 06 Dec 2018 00:52:27 GMT
EXPOSE 3306/tcp
# Thu, 06 Dec 2018 00:52:28 GMT
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
	-	`sha256:2e86b5a5d813f50eb00dd692a4a07d9ae5af1aa12cfde7bf185ecbf8621c7e90`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 6.2 MB (6176165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ae3263f02cb000fb9dedb791f13b06a4c62f3ce564fe6125833df92db29c6d`  
		Last Modified: Thu, 06 Dec 2018 00:59:42 GMT  
		Size: 110.0 MB (110025702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d95da0b1e434b93aff396e14d16ed3c7885dec9ae943fbc2ff551a31c7162ee`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 1.4 KB (1383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe085680f914fef758959eaf2e88cab508b588197680c06c3ce3105e83a2005`  
		Last Modified: Thu, 06 Dec 2018 00:59:20 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:ps-5.6`

```console
$ docker pull percona@sha256:7c746bed3a090081f4125ef0dc56ce1343f84176db6506481c6e21da323c15dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:ps-5.6` - linux; amd64

```console
$ docker pull percona@sha256:72399a513c91561a3be275b758bbe436b0d21ffb813cd862f32ecc093aa31233
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.5 MB (138512626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:884c1e79b12f82ee5dba36a424ccc1bbbbb348d5df1da35044dabcfb3ed03279`
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
# Thu, 06 Dec 2018 00:52:00 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm
# Thu, 06 Dec 2018 00:53:06 GMT
ENV PERCONA_VERSION=5.6.42-rel84.2.el7
# Thu, 06 Dec 2018 00:53:28 GMT
RUN yum install -y 		Percona-Server-server-56-${PERCONA_VERSION} 		Percona-Server-tokudb-56-${PERCONA_VERSION} 		Percona-Server-rocksdb-56-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 06 Dec 2018 00:53:46 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /etc/my.cnf.d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user|sql_mode)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user|sql_mode)/#&/' 	&& sed -i '/Make sure only root/,/fi/d' /usr/bin/ps_tokudb_admin 	&& echo "thp-setting=never" >> /etc/my.cnf 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 06 Dec 2018 00:53:46 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 06 Dec 2018 00:53:47 GMT
COPY file:fe6b1a8e605281e5ec8baec786785211172b14a252ac4bf8d19e30ace28a2e85 in /docker-entrypoint.sh 
# Thu, 06 Dec 2018 00:53:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Dec 2018 00:53:47 GMT
USER [mysql]
# Thu, 06 Dec 2018 00:53:47 GMT
EXPOSE 3306/tcp
# Thu, 06 Dec 2018 00:53:48 GMT
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
	-	`sha256:2e86b5a5d813f50eb00dd692a4a07d9ae5af1aa12cfde7bf185ecbf8621c7e90`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 6.2 MB (6176165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55ded571fc8278fba1b5480e21bd1cd48602273f12f435fe40efbb6d2af676f`  
		Last Modified: Thu, 06 Dec 2018 01:04:00 GMT  
		Size: 57.2 MB (57161230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891882d5075ea2fbb6e06b37081ae378028d2b3c22af5edcd9266c65b6fe1b5e`  
		Last Modified: Thu, 06 Dec 2018 01:03:49 GMT  
		Size: 4.9 KB (4879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f53e3e79c6ce31c7097d16abcf2c217c21376ff53fbe8307fb3218ae27fb769`  
		Last Modified: Thu, 06 Dec 2018 01:03:48 GMT  
		Size: 2.9 KB (2858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:ps-5.6.42`

```console
$ docker pull percona@sha256:7c746bed3a090081f4125ef0dc56ce1343f84176db6506481c6e21da323c15dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:ps-5.6.42` - linux; amd64

```console
$ docker pull percona@sha256:72399a513c91561a3be275b758bbe436b0d21ffb813cd862f32ecc093aa31233
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.5 MB (138512626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:884c1e79b12f82ee5dba36a424ccc1bbbbb348d5df1da35044dabcfb3ed03279`
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
# Thu, 06 Dec 2018 00:52:00 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm
# Thu, 06 Dec 2018 00:53:06 GMT
ENV PERCONA_VERSION=5.6.42-rel84.2.el7
# Thu, 06 Dec 2018 00:53:28 GMT
RUN yum install -y 		Percona-Server-server-56-${PERCONA_VERSION} 		Percona-Server-tokudb-56-${PERCONA_VERSION} 		Percona-Server-rocksdb-56-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 06 Dec 2018 00:53:46 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /etc/my.cnf.d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user|sql_mode)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user|sql_mode)/#&/' 	&& sed -i '/Make sure only root/,/fi/d' /usr/bin/ps_tokudb_admin 	&& echo "thp-setting=never" >> /etc/my.cnf 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 06 Dec 2018 00:53:46 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 06 Dec 2018 00:53:47 GMT
COPY file:fe6b1a8e605281e5ec8baec786785211172b14a252ac4bf8d19e30ace28a2e85 in /docker-entrypoint.sh 
# Thu, 06 Dec 2018 00:53:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Dec 2018 00:53:47 GMT
USER [mysql]
# Thu, 06 Dec 2018 00:53:47 GMT
EXPOSE 3306/tcp
# Thu, 06 Dec 2018 00:53:48 GMT
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
	-	`sha256:2e86b5a5d813f50eb00dd692a4a07d9ae5af1aa12cfde7bf185ecbf8621c7e90`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 6.2 MB (6176165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55ded571fc8278fba1b5480e21bd1cd48602273f12f435fe40efbb6d2af676f`  
		Last Modified: Thu, 06 Dec 2018 01:04:00 GMT  
		Size: 57.2 MB (57161230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891882d5075ea2fbb6e06b37081ae378028d2b3c22af5edcd9266c65b6fe1b5e`  
		Last Modified: Thu, 06 Dec 2018 01:03:49 GMT  
		Size: 4.9 KB (4879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f53e3e79c6ce31c7097d16abcf2c217c21376ff53fbe8307fb3218ae27fb769`  
		Last Modified: Thu, 06 Dec 2018 01:03:48 GMT  
		Size: 2.9 KB (2858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:ps-5.7`

```console
$ docker pull percona@sha256:de153e84a7a18b2b62f94bc02674579f7c7bb439b9913db2197f23f75f43316e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:ps-5.7` - linux; amd64

```console
$ docker pull percona@sha256:39967c3f6779025bea99cc6b22e2e86593b98fc70cb853e75cbfaed6ea635280
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.4 MB (191373721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e0fd493ab22f91a0cae21f6cbae7ece3bb45363375d717aa990f4c7691a72e2`
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
# Thu, 06 Dec 2018 00:52:00 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm
# Thu, 06 Dec 2018 00:52:00 GMT
ENV PERCONA_VERSION=5.7.24-26.1.el7
# Thu, 06 Dec 2018 00:52:25 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 06 Dec 2018 00:52:26 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Thu, 06 Dec 2018 00:52:26 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 06 Dec 2018 00:52:27 GMT
COPY file:2fd07388582a69bcc2248785f5e72602c338c21c5827d5d1ffa1cb1d64c0d9eb in /docker-entrypoint.sh 
# Thu, 06 Dec 2018 00:52:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Dec 2018 00:52:27 GMT
USER [mysql]
# Thu, 06 Dec 2018 00:52:27 GMT
EXPOSE 3306/tcp
# Thu, 06 Dec 2018 00:52:28 GMT
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
	-	`sha256:2e86b5a5d813f50eb00dd692a4a07d9ae5af1aa12cfde7bf185ecbf8621c7e90`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 6.2 MB (6176165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ae3263f02cb000fb9dedb791f13b06a4c62f3ce564fe6125833df92db29c6d`  
		Last Modified: Thu, 06 Dec 2018 00:59:42 GMT  
		Size: 110.0 MB (110025702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d95da0b1e434b93aff396e14d16ed3c7885dec9ae943fbc2ff551a31c7162ee`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 1.4 KB (1383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe085680f914fef758959eaf2e88cab508b588197680c06c3ce3105e83a2005`  
		Last Modified: Thu, 06 Dec 2018 00:59:20 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:ps-5.7.24`

```console
$ docker pull percona@sha256:de153e84a7a18b2b62f94bc02674579f7c7bb439b9913db2197f23f75f43316e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:ps-5.7.24` - linux; amd64

```console
$ docker pull percona@sha256:39967c3f6779025bea99cc6b22e2e86593b98fc70cb853e75cbfaed6ea635280
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.4 MB (191373721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e0fd493ab22f91a0cae21f6cbae7ece3bb45363375d717aa990f4c7691a72e2`
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
# Thu, 06 Dec 2018 00:52:00 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm
# Thu, 06 Dec 2018 00:52:00 GMT
ENV PERCONA_VERSION=5.7.24-26.1.el7
# Thu, 06 Dec 2018 00:52:25 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 06 Dec 2018 00:52:26 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Thu, 06 Dec 2018 00:52:26 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 06 Dec 2018 00:52:27 GMT
COPY file:2fd07388582a69bcc2248785f5e72602c338c21c5827d5d1ffa1cb1d64c0d9eb in /docker-entrypoint.sh 
# Thu, 06 Dec 2018 00:52:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Dec 2018 00:52:27 GMT
USER [mysql]
# Thu, 06 Dec 2018 00:52:27 GMT
EXPOSE 3306/tcp
# Thu, 06 Dec 2018 00:52:28 GMT
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
	-	`sha256:2e86b5a5d813f50eb00dd692a4a07d9ae5af1aa12cfde7bf185ecbf8621c7e90`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 6.2 MB (6176165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ae3263f02cb000fb9dedb791f13b06a4c62f3ce564fe6125833df92db29c6d`  
		Last Modified: Thu, 06 Dec 2018 00:59:42 GMT  
		Size: 110.0 MB (110025702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d95da0b1e434b93aff396e14d16ed3c7885dec9ae943fbc2ff551a31c7162ee`  
		Last Modified: Thu, 06 Dec 2018 00:59:21 GMT  
		Size: 1.4 KB (1383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe085680f914fef758959eaf2e88cab508b588197680c06c3ce3105e83a2005`  
		Last Modified: Thu, 06 Dec 2018 00:59:20 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:ps-8`

```console
$ docker pull percona@sha256:8ea05c5818be66ec99224550fa67b675b50a42c7ed7f331665dd233944be3c30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:ps-8` - linux; amd64

```console
$ docker pull percona@sha256:846352c6a6d1f480c504c21f9b3a662146aa45d26488a3fcf86032e5010eea05
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.3 MB (217341218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c262451028af2657e22315e98c26bb41c02cd54d623c935e685620a3705b173c`
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
# Thu, 06 Dec 2018 00:50:55 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& percona-release disable all 	&& percona-release enable ps-80 testing
# Thu, 06 Dec 2018 00:50:55 GMT
ENV PERCONA_VERSION=8.0.12-2.rc1.el7
# Thu, 06 Dec 2018 00:51:25 GMT
RUN yum install -y 		percona-server-server-${PERCONA_VERSION} 		percona-server-tokudb-${PERCONA_VERSION} 		percona-server-rocksdb-${PERCONA_VERSION} 		which 		policycoreutils 		https://repo.percona.com/percona/yum/release/7/RPMS/x86_64/jemalloc-3.6.0-1.el7.x86_64.rpm 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 06 Dec 2018 00:51:29 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 06 Dec 2018 00:51:29 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 06 Dec 2018 00:51:30 GMT
COPY file:7df52ab7374950746cb7b3ca5dda34ea67721f9561ba2be3b63a1182888d936a in /docker-entrypoint.sh 
# Thu, 06 Dec 2018 00:51:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Dec 2018 00:51:30 GMT
USER [mysql]
# Thu, 06 Dec 2018 00:51:30 GMT
EXPOSE 3306/tcp 33060/tcp
# Thu, 06 Dec 2018 00:51:31 GMT
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
	-	`sha256:f3b461445e41ff425466b9f09997c7b88a5402c92dae6ad6e0310e301897c3cb`  
		Last Modified: Thu, 06 Dec 2018 00:54:18 GMT  
		Size: 6.2 MB (6179855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50cde7862ad7ff43c246f88cd9d40c041ba7a716e0bb095c94235735b092320`  
		Last Modified: Thu, 06 Dec 2018 00:54:43 GMT  
		Size: 136.0 MB (135989766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb4d087197df740d3cf7053822fa17d2e4365fc3f6c8531b97bea7bffd9aaea`  
		Last Modified: Thu, 06 Dec 2018 00:54:16 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efdf75245abaae48113b6bfdf52b55edc735659d12d2eb7c23dbcc97490b380`  
		Last Modified: Thu, 06 Dec 2018 00:54:16 GMT  
		Size: 3.0 KB (2965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:ps-8.0`

```console
$ docker pull percona@sha256:8ea05c5818be66ec99224550fa67b675b50a42c7ed7f331665dd233944be3c30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:ps-8.0` - linux; amd64

```console
$ docker pull percona@sha256:846352c6a6d1f480c504c21f9b3a662146aa45d26488a3fcf86032e5010eea05
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.3 MB (217341218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c262451028af2657e22315e98c26bb41c02cd54d623c935e685620a3705b173c`
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
# Thu, 06 Dec 2018 00:50:55 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& percona-release disable all 	&& percona-release enable ps-80 testing
# Thu, 06 Dec 2018 00:50:55 GMT
ENV PERCONA_VERSION=8.0.12-2.rc1.el7
# Thu, 06 Dec 2018 00:51:25 GMT
RUN yum install -y 		percona-server-server-${PERCONA_VERSION} 		percona-server-tokudb-${PERCONA_VERSION} 		percona-server-rocksdb-${PERCONA_VERSION} 		which 		policycoreutils 		https://repo.percona.com/percona/yum/release/7/RPMS/x86_64/jemalloc-3.6.0-1.el7.x86_64.rpm 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 06 Dec 2018 00:51:29 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 06 Dec 2018 00:51:29 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 06 Dec 2018 00:51:30 GMT
COPY file:7df52ab7374950746cb7b3ca5dda34ea67721f9561ba2be3b63a1182888d936a in /docker-entrypoint.sh 
# Thu, 06 Dec 2018 00:51:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Dec 2018 00:51:30 GMT
USER [mysql]
# Thu, 06 Dec 2018 00:51:30 GMT
EXPOSE 3306/tcp 33060/tcp
# Thu, 06 Dec 2018 00:51:31 GMT
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
	-	`sha256:f3b461445e41ff425466b9f09997c7b88a5402c92dae6ad6e0310e301897c3cb`  
		Last Modified: Thu, 06 Dec 2018 00:54:18 GMT  
		Size: 6.2 MB (6179855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50cde7862ad7ff43c246f88cd9d40c041ba7a716e0bb095c94235735b092320`  
		Last Modified: Thu, 06 Dec 2018 00:54:43 GMT  
		Size: 136.0 MB (135989766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb4d087197df740d3cf7053822fa17d2e4365fc3f6c8531b97bea7bffd9aaea`  
		Last Modified: Thu, 06 Dec 2018 00:54:16 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efdf75245abaae48113b6bfdf52b55edc735659d12d2eb7c23dbcc97490b380`  
		Last Modified: Thu, 06 Dec 2018 00:54:16 GMT  
		Size: 3.0 KB (2965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:ps-8.0.13-4`

**does not exist** (yet?)

## `percona:psmdb-3.6`

```console
$ docker pull percona@sha256:db1ad703c6dde9f3edb362190a1443293c9668bb20bdb8abb36922ac1eecd260
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:psmdb-3.6` - linux; amd64

```console
$ docker pull percona@sha256:798ae0ea24993a2aa2e1acb6d38363c4a1b9d989ce69104916fa49d0ed9eb4a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128086047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b232f1ab077cb79c3eec16e0b1ff60e4023ddcc528cf2a2f0f90fb98cdaf1bd`
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
# Wed, 12 Dec 2018 03:21:45 GMT
RUN export GNUPGHOME="$(mktemp -d)"         && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A         && gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona         && rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7         && curl -L -o /tmp/percona-release.rpm http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm         && rpmkeys --checksig /tmp/percona-release.rpm         && yum install -y /tmp/percona-release.rpm         && rm -rf "$GNUPGHOME" /tmp/percona-release.rpm
# Wed, 12 Dec 2018 03:21:46 GMT
RUN useradd -u 1001 -r -g 0 -s /sbin/nologin             -c "Default Application User" mongodb
# Wed, 12 Dec 2018 03:21:46 GMT
ENV PERCONA_MAJOR=36
# Wed, 12 Dec 2018 03:21:46 GMT
ENV PERCONA_VERSION=3.6.8-2.0.el7
# Wed, 12 Dec 2018 03:21:46 GMT
ENV K8S_TOOLS_VERSION=0.4.1
# Wed, 12 Dec 2018 03:22:06 GMT
RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm         && yum install -y                 Percona-Server-MongoDB-36-server-${PERCONA_VERSION}                 curl                 jq         && yum clean all         && rm -rf /var/cache/yum /data/db  && mkdir -p /data/db         && chown -R 1001:0 /data/db
# Wed, 12 Dec 2018 03:22:08 GMT
RUN curl -fSL https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/k8s-mongodb-initiator -o /usr/local/bin/k8s-mongodb-initiator     && curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/mongodb-healthcheck -o /usr/local/bin/mongodb-healthcheck     && chmod 0755 /usr/local/bin/k8s-mongodb-initiator /usr/local/bin/mongodb-healthcheck
# Wed, 12 Dec 2018 03:22:09 GMT
VOLUME [/data/db]
# Wed, 12 Dec 2018 03:22:09 GMT
COPY file:4a1730159942362d00c466838bad0f68fb44987c92291252531b2468b5b7208c in /entrypoint.sh 
# Wed, 12 Dec 2018 03:22:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Dec 2018 03:22:10 GMT
EXPOSE 27017/tcp
# Wed, 12 Dec 2018 03:22:10 GMT
USER [1001]
# Wed, 12 Dec 2018 03:22:11 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03545e3a2ddd365bde6c8369136f6076dffd47b752d2ec9f14d331e7301f9bf1`  
		Last Modified: Wed, 12 Dec 2018 03:22:44 GMT  
		Size: 6.2 MB (6176180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d8488ceff47979b4da21e3d4059b84abaf72b1849b0a4c0ab4668e501c3f91`  
		Last Modified: Wed, 12 Dec 2018 03:22:43 GMT  
		Size: 1.4 KB (1427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2767736ca0e4bd626c0aca661813485bd88c24747a583de08a4c8c294adfc0d`  
		Last Modified: Wed, 12 Dec 2018 03:22:51 GMT  
		Size: 40.4 MB (40438739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb43bee24e99cf57e1a36fea63ac415a930af9cf29deede1602b69658aa56fc`  
		Last Modified: Wed, 12 Dec 2018 03:22:43 GMT  
		Size: 6.3 MB (6300362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56887c320cd89bc039b46fafb1338eda24ddbae46f39a28438a7833df5ca8c80`  
		Last Modified: Wed, 12 Dec 2018 03:22:43 GMT  
		Size: 3.8 KB (3810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:psmdb-3.6.8`

```console
$ docker pull percona@sha256:db1ad703c6dde9f3edb362190a1443293c9668bb20bdb8abb36922ac1eecd260
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:psmdb-3.6.8` - linux; amd64

```console
$ docker pull percona@sha256:798ae0ea24993a2aa2e1acb6d38363c4a1b9d989ce69104916fa49d0ed9eb4a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128086047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b232f1ab077cb79c3eec16e0b1ff60e4023ddcc528cf2a2f0f90fb98cdaf1bd`
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
# Wed, 12 Dec 2018 03:21:45 GMT
RUN export GNUPGHOME="$(mktemp -d)"         && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A         && gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona         && rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7         && curl -L -o /tmp/percona-release.rpm http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm         && rpmkeys --checksig /tmp/percona-release.rpm         && yum install -y /tmp/percona-release.rpm         && rm -rf "$GNUPGHOME" /tmp/percona-release.rpm
# Wed, 12 Dec 2018 03:21:46 GMT
RUN useradd -u 1001 -r -g 0 -s /sbin/nologin             -c "Default Application User" mongodb
# Wed, 12 Dec 2018 03:21:46 GMT
ENV PERCONA_MAJOR=36
# Wed, 12 Dec 2018 03:21:46 GMT
ENV PERCONA_VERSION=3.6.8-2.0.el7
# Wed, 12 Dec 2018 03:21:46 GMT
ENV K8S_TOOLS_VERSION=0.4.1
# Wed, 12 Dec 2018 03:22:06 GMT
RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm         && yum install -y                 Percona-Server-MongoDB-36-server-${PERCONA_VERSION}                 curl                 jq         && yum clean all         && rm -rf /var/cache/yum /data/db  && mkdir -p /data/db         && chown -R 1001:0 /data/db
# Wed, 12 Dec 2018 03:22:08 GMT
RUN curl -fSL https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/k8s-mongodb-initiator -o /usr/local/bin/k8s-mongodb-initiator     && curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/mongodb-healthcheck -o /usr/local/bin/mongodb-healthcheck     && chmod 0755 /usr/local/bin/k8s-mongodb-initiator /usr/local/bin/mongodb-healthcheck
# Wed, 12 Dec 2018 03:22:09 GMT
VOLUME [/data/db]
# Wed, 12 Dec 2018 03:22:09 GMT
COPY file:4a1730159942362d00c466838bad0f68fb44987c92291252531b2468b5b7208c in /entrypoint.sh 
# Wed, 12 Dec 2018 03:22:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Dec 2018 03:22:10 GMT
EXPOSE 27017/tcp
# Wed, 12 Dec 2018 03:22:10 GMT
USER [1001]
# Wed, 12 Dec 2018 03:22:11 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03545e3a2ddd365bde6c8369136f6076dffd47b752d2ec9f14d331e7301f9bf1`  
		Last Modified: Wed, 12 Dec 2018 03:22:44 GMT  
		Size: 6.2 MB (6176180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d8488ceff47979b4da21e3d4059b84abaf72b1849b0a4c0ab4668e501c3f91`  
		Last Modified: Wed, 12 Dec 2018 03:22:43 GMT  
		Size: 1.4 KB (1427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2767736ca0e4bd626c0aca661813485bd88c24747a583de08a4c8c294adfc0d`  
		Last Modified: Wed, 12 Dec 2018 03:22:51 GMT  
		Size: 40.4 MB (40438739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb43bee24e99cf57e1a36fea63ac415a930af9cf29deede1602b69658aa56fc`  
		Last Modified: Wed, 12 Dec 2018 03:22:43 GMT  
		Size: 6.3 MB (6300362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56887c320cd89bc039b46fafb1338eda24ddbae46f39a28438a7833df5ca8c80`  
		Last Modified: Wed, 12 Dec 2018 03:22:43 GMT  
		Size: 3.8 KB (3810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
