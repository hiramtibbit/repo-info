## `percona:ps-8`

```console
$ docker pull percona@sha256:6bbb0e2830793107bae90569f34e59d4b442b250703b5d4b1e8a8996f61c8f2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:ps-8` - linux; amd64

```console
$ docker pull percona@sha256:8974ea3bcb86e40330c5dfd9a6ea0ccfb29b2f7769070c87b1dd4e1207df1b1b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218769030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65e5da28c0ca510bf80189f91fc529b4568ed5abae270b3ef8727c903f59952`
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
# Thu, 14 Mar 2019 22:12:47 GMT
RUN groupadd -g 1001 mysql
# Thu, 14 Mar 2019 22:12:48 GMT
RUN useradd -u 1001 -r -g 1001 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 14 Mar 2019 22:12:53 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY 	&& percona-release disable all 	&& percona-release enable ps-80 release
# Wed, 08 May 2019 19:19:54 GMT
ENV PERCONA_VERSION=8.0.15-6.1.el7
# Wed, 08 May 2019 19:20:44 GMT
RUN yum install -y 		percona-server-server-${PERCONA_VERSION} 		percona-server-tokudb-${PERCONA_VERSION} 		percona-server-rocksdb-${PERCONA_VERSION} 		which 		policycoreutils 		https://repo.percona.com/percona/yum/release/7/RPMS/x86_64/jemalloc-3.6.0-1.el7.x86_64.rpm 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Wed, 08 May 2019 19:20:45 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Wed, 08 May 2019 19:20:45 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 08 May 2019 19:20:46 GMT
COPY file:98315a3cdd5c008868bca89eff8d9037073d3b25d79ce0bfce9220868c87243b in /docker-entrypoint.sh 
# Wed, 08 May 2019 19:20:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 19:20:46 GMT
USER mysql
# Wed, 08 May 2019 19:20:46 GMT
EXPOSE 3306 33060
# Wed, 08 May 2019 19:20:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09c3207e236efa3c9c00de31836965042a75c8633d7c5093a0951e9570cd622`  
		Last Modified: Thu, 14 Mar 2019 22:17:33 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd5b7424ba466d0ca03f6658dac8cf2f928f81700cc21f551e1ceb6170c93f7`  
		Last Modified: Thu, 14 Mar 2019 22:17:33 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4693a39eaa3d5a71a34d1d0568cad831e111a772e4c4db284ff42d90e1df3a8a`  
		Last Modified: Thu, 14 Mar 2019 22:17:34 GMT  
		Size: 6.2 MB (6175704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9934d9efd2d9b9e5acd5be747410ce9e6ba977f49526733331f527c72de559d`  
		Last Modified: Wed, 08 May 2019 19:21:51 GMT  
		Size: 137.2 MB (137183322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a64d666472a07ccc4b02e956258cbda5c28f37f57c84bd13ff2dae4172067ff`  
		Last Modified: Wed, 08 May 2019 19:21:24 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfcab439a7fdfb43c31df2bf4d3354edca65dc3e50ec28ecf9a83d1b1883aaa`  
		Last Modified: Wed, 08 May 2019 19:21:24 GMT  
		Size: 3.1 KB (3067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
