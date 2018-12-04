## `percona:ps-8.0`

```console
$ docker pull percona@sha256:30492989bfeb3577316caccc231ae5d5b010966be5626dc09a0b3ee8e752d785
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:ps-8.0` - linux; amd64

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
