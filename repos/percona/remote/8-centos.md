## `percona:8-centos`

```console
$ docker pull percona@sha256:650345f24c82af6ab79e8f1c01dc72fb27d6d75de69b97fa5ba2141bb6d2acec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:8-centos` - linux; amd64

```console
$ docker pull percona@sha256:e2285673e3ce5d35317e6bffda53ec38f670248f78073d398f18d215397684f6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.5 MB (216542670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85c3683c84f34033abea77772ca27f555a1dcf01c8ead8b578936c2a8001b616`
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
# Thu, 17 Jan 2019 23:24:23 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-release-0.1-8.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm 	&& rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY 	&& percona-release disable all 	&& percona-release enable ps-80 release
# Thu, 17 Jan 2019 23:24:23 GMT
ENV PERCONA_VERSION=8.0.13-4.1.el7
# Thu, 17 Jan 2019 23:25:10 GMT
RUN yum install -y 		percona-server-server-${PERCONA_VERSION} 		percona-server-tokudb-${PERCONA_VERSION} 		percona-server-rocksdb-${PERCONA_VERSION} 		which 		policycoreutils 		https://repo.percona.com/percona/yum/release/7/RPMS/x86_64/jemalloc-3.6.0-1.el7.x86_64.rpm 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Thu, 17 Jan 2019 23:25:17 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/' 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 17 Jan 2019 23:25:17 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 17 Jan 2019 23:25:17 GMT
COPY file:44b2f1e944885f8e6d3df030f872085ad4291f2ab0b4afe3dbedf4527fcd3207 in /docker-entrypoint.sh 
# Thu, 17 Jan 2019 23:25:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 17 Jan 2019 23:25:18 GMT
USER mysql
# Thu, 17 Jan 2019 23:25:18 GMT
EXPOSE 3306 33060
# Thu, 17 Jan 2019 23:25:18 GMT
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
	-	`sha256:fa5f9b51ac823ee16e14cd815a0f0b2ef6113ff22fa705dac250a1983ff81a1b`  
		Last Modified: Thu, 17 Jan 2019 23:25:51 GMT  
		Size: 6.2 MB (6168854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8696034fae33d95b36a1fcfce91cf17b0d9606d99c7cd9feef5bbf0bf440da34`  
		Last Modified: Thu, 17 Jan 2019 23:26:17 GMT  
		Size: 135.2 MB (135202205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5234706d1d355ef20df49c2522164a9339cac66f0847d12f0387c254827e8459`  
		Last Modified: Thu, 17 Jan 2019 23:25:50 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae526c8f19c2d50415b449d54b10d55bb10680c19b0ef40db43235599d89040`  
		Last Modified: Thu, 17 Jan 2019 23:25:50 GMT  
		Size: 3.0 KB (2979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
