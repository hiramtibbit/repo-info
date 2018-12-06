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
