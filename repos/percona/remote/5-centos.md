## `percona:5-centos`

```console
$ docker pull percona@sha256:b3b7fb177b416563c46fe012298e042ec1607cc0539ce6014146380b0d27b08c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:5-centos` - linux; amd64

```console
$ docker pull percona@sha256:d9ebc99fc51de8e8197843b04c4ed7148dd538ba8c788833fd808f2d92c1ae30
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.4 MB (191373721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4674429b3faff52a88d3fe97e1ed260b31c8359d26706e4a2cf7c71dcb8dcac2`
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
# Wed, 30 Jan 2019 02:20:16 GMT
COPY file:8da6ca55fbd697af8ce67f582b55e6e21956a9f1a34618fb299f82d13032a67c in /docker-entrypoint.sh 
# Wed, 30 Jan 2019 02:20:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 30 Jan 2019 02:20:16 GMT
USER mysql
# Wed, 30 Jan 2019 02:20:17 GMT
EXPOSE 3306
# Wed, 30 Jan 2019 02:20:17 GMT
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
	-	`sha256:7c84b2e5e4ce6c4622f8090994f71399102cb020bf6b629187e0a48a9f665a5e`  
		Last Modified: Wed, 30 Jan 2019 02:21:22 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
