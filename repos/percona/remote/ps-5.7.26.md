## `percona:ps-5.7.26`

```console
$ docker pull percona@sha256:713c1817615b333b17d0fbd252b0ccc53c48a665d4cfcb42178167435a957322
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:ps-5.7.26` - linux; amd64

```console
$ docker pull percona@sha256:506018acd3676178cd55490b6c901ab3add60da0f30a97f77787f35b396d7932
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.8 MB (192753759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89deb48c8b7005ca323a7e758c78c3eff03235385a6b4bcb96eaabe34d4d6cdb`
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
# Tue, 28 May 2019 23:19:47 GMT
ENV PERCONA_VERSION=5.7.26-29.1.el7
# Tue, 28 May 2019 23:20:40 GMT
RUN yum install -y 		Percona-Server-server-57-${PERCONA_VERSION} 		Percona-Server-tokudb-57-${PERCONA_VERSION} 		Percona-Server-rocksdb-57-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Tue, 28 May 2019 23:20:41 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Tue, 28 May 2019 23:20:41 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 28 May 2019 23:20:42 GMT
COPY file:c0030f6126b4c593910528e74d1ac06ecb2f830c727833843145dece71866501 in /docker-entrypoint.sh 
# Tue, 28 May 2019 23:20:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 May 2019 23:20:42 GMT
USER mysql
# Tue, 28 May 2019 23:20:42 GMT
EXPOSE 3306
# Tue, 28 May 2019 23:20:43 GMT
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
	-	`sha256:848ef39e162d123f578ca280d97a0d992cc74077d305828f67066af1fbb9f586`  
		Last Modified: Tue, 28 May 2019 23:21:58 GMT  
		Size: 111.2 MB (111159859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38e6599fbc934c839617f6de99122f1fa0348810b676ca4d57b56534ec763b8a`  
		Last Modified: Tue, 28 May 2019 23:21:26 GMT  
		Size: 1.4 KB (1385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e522a9fd313653cc1aec3793a4817f11ba9807de28cf605f08a77f8d46048245`  
		Last Modified: Tue, 28 May 2019 23:21:26 GMT  
		Size: 3.1 KB (3065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
