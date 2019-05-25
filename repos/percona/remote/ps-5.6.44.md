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
