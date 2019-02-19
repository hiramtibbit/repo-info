## `percona:psmdb-4.0`

```console
$ docker pull percona@sha256:4260c7a3ad94b1d4ab1758c6d1f6e893df72bb913b5f0d61c2dd8d5afbff8ff4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:psmdb-4.0` - linux; amd64

```console
$ docker pull percona@sha256:7e5e2d08f28e8f3181681717daab2a2d86430dce4292ade84e5e75933f0585be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.3 MB (178325203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50eec4df2be4a8f5c2e7ba15fddbcd6426d7f6765d2b6d758a291b4dc3dca176`
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
# Tue, 19 Feb 2019 22:26:25 GMT
RUN export GNUPGHOME="$(mktemp -d)"         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A         && gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona         && rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7         && curl -L -o /tmp/percona-release.rpm https://repo.percona.com/percona/yum/percona-release-1.0-7.noarch.rpm         && rpmkeys --checksig /tmp/percona-release.rpm         && yum install -y /tmp/percona-release.rpm         && rm -rf "$GNUPGHOME" /tmp/percona-release.rpm         && rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY         && percona-release disable all         && percona-release enable psmdb-40 release
# Tue, 19 Feb 2019 22:26:26 GMT
RUN useradd -u 1001 -r -g 0 -s /sbin/nologin             -c "Default Application User" mongodb
# Tue, 19 Feb 2019 22:26:26 GMT
ENV PERCONA_MAJOR=40
# Tue, 19 Feb 2019 22:26:26 GMT
ENV PERCONA_VERSION=4.0.5-2.el7
# Tue, 19 Feb 2019 22:26:26 GMT
ENV K8S_TOOLS_VERSION=0.4.1
# Tue, 19 Feb 2019 22:27:08 GMT
RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm         && yum install -y                 percona-server-mongodb-server-${PERCONA_VERSION}                 percona-server-mongodb-mongos-${PERCONA_VERSION}                 percona-server-mongodb-shell-${PERCONA_VERSION}                 percona-server-mongodb-tools-${PERCONA_VERSION}                 curl                 jq         && yum clean all         && rm -rf /var/cache/yum /data/db  && mkdir -p /data/db         && chown -R 1001:0 /data/db
# Tue, 19 Feb 2019 22:27:09 GMT
RUN curl -fSL https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/k8s-mongodb-initiator -o /usr/local/bin/k8s-mongodb-initiator     && curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/mongodb-healthcheck -o /usr/local/bin/mongodb-healthcheck     && chmod 0755 /usr/local/bin/k8s-mongodb-initiator /usr/local/bin/mongodb-healthcheck
# Tue, 19 Feb 2019 22:27:09 GMT
VOLUME [/data/db]
# Tue, 19 Feb 2019 22:27:10 GMT
COPY file:73b257e28d42d38a579e50c8dbd964c054f38728692627d5438a0aa11526970b in /entrypoint.sh 
# Tue, 19 Feb 2019 22:27:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 19 Feb 2019 22:27:10 GMT
EXPOSE 27017
# Tue, 19 Feb 2019 22:27:10 GMT
USER 1001
# Tue, 19 Feb 2019 22:27:10 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ff176ced20d87265d5222bbdb5e4dfc1a97e861d1d9554248fc3012a488657`  
		Last Modified: Tue, 19 Feb 2019 22:29:47 GMT  
		Size: 6.2 MB (6173384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f97017e3b3e9413a21ba4cc1ff8138060d480624fccf9af76c96e00c20523d`  
		Last Modified: Tue, 19 Feb 2019 22:29:45 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f52ad039572485247711d4d7ebd1cc617db9210d6e17651f448e997f78624d`  
		Last Modified: Tue, 19 Feb 2019 22:30:10 GMT  
		Size: 90.7 MB (90680686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba2c545ed8955569c57045d9957726e61f73b8abe6fc2b0806baed684105cef`  
		Last Modified: Tue, 19 Feb 2019 22:29:46 GMT  
		Size: 6.3 MB (6300364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c38adefef0a1547a54f34ada375dea916ac233cd5a1f1a2572b0c4855529046`  
		Last Modified: Tue, 19 Feb 2019 22:29:45 GMT  
		Size: 3.8 KB (3808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
