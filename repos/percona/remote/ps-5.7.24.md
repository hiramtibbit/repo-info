## `percona:ps-5.7.24`

```console
$ docker pull percona@sha256:ea421bd34839e9618131974c4c47d0b3cf71b81cab9ec1d8a5e37f047888c905
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:ps-5.7.24` - linux; amd64

```console
$ docker pull percona@sha256:a246bd3e233cc8ab80e9c7779a5d249c8d02cf65c25e8f42b72216e7fb02abfd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.9 MB (190898848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35f913684fed0a11496a305501318b5870298cd470a0d6b5c203dd764448fbb1`
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
# Tue, 04 Dec 2018 22:24:01 GMT
ENV PERCONA_VERSION=5.7.24-26.1.el7
# Tue, 04 Dec 2018 22:24:27 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Tue, 04 Dec 2018 22:24:28 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Tue, 04 Dec 2018 22:24:29 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 04 Dec 2018 22:24:29 GMT
COPY file:2fd07388582a69bcc2248785f5e72602c338c21c5827d5d1ffa1cb1d64c0d9eb in /docker-entrypoint.sh 
# Tue, 04 Dec 2018 22:24:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Dec 2018 22:24:30 GMT
USER [mysql]
# Tue, 04 Dec 2018 22:24:30 GMT
EXPOSE 3306/tcp
# Tue, 04 Dec 2018 22:24:30 GMT
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
	-	`sha256:b7c02b7358103417773d506aa6532df88b1dbbbd376a7a899c2d38d34601bbc9`  
		Last Modified: Tue, 04 Dec 2018 22:26:03 GMT  
		Size: 110.3 MB (110296654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66454f35de023cf7c0d220924d18df86be98c82a0f6d7ab9bf807b7de900c31f`  
		Last Modified: Tue, 04 Dec 2018 22:25:44 GMT  
		Size: 1.4 KB (1386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a78c072cb9387f0d2eff3f152c1bac170dcf0da17d3b625938e76fe189eb360`  
		Last Modified: Tue, 04 Dec 2018 22:25:44 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
