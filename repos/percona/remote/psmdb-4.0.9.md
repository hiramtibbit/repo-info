## `percona:psmdb-4.0.9`

```console
$ docker pull percona@sha256:6c5245f5cb50acca1e95283a9b847b8cf7b70b35dd080a653d99d4f12c247342
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:psmdb-4.0.9` - linux; amd64

```console
$ docker pull percona@sha256:3f70bf8a33ab3ce088125fc73b998c5b7231a4f932378b39b9377b4e300e164c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.8 MB (182767905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b782bc2abf13660a1eac1f7604458609243f2cb471323e02d1421061af5c7f9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:12:46 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 14 Mar 2019 22:15:48 GMT
RUN export GNUPGHOME="$(mktemp -d)"         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A         && gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona         && rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7         && curl -L -o /tmp/percona-release.rpm https://repo.percona.com/percona/yum/percona-release-1.0-7.noarch.rpm         && rpmkeys --checksig /tmp/percona-release.rpm         && yum install -y /tmp/percona-release.rpm         && rm -rf "$GNUPGHOME" /tmp/percona-release.rpm         && rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY         && percona-release disable all         && percona-release enable psmdb-40 release
# Thu, 14 Mar 2019 22:15:49 GMT
RUN useradd -u 1001 -r -g 0 -s /sbin/nologin             -c "Default Application User" mongodb
# Thu, 14 Mar 2019 22:15:50 GMT
ENV PERCONA_MAJOR=40
# Wed, 17 Apr 2019 23:25:23 GMT
ENV PERCONA_VERSION=4.0.9-4.el7
# Wed, 17 Apr 2019 23:25:23 GMT
ENV K8S_TOOLS_VERSION=0.4.1
# Wed, 17 Apr 2019 23:25:52 GMT
RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm         && yum install -y                 percona-server-mongodb-server-${PERCONA_VERSION}                 percona-server-mongodb-mongos-${PERCONA_VERSION}                 percona-server-mongodb-shell-${PERCONA_VERSION}                 percona-server-mongodb-tools-${PERCONA_VERSION}                 curl                 jq         && yum clean all         && rm -rf /var/cache/yum /data/db  && mkdir -p /data/db         && chown -R 1001:0 /data/db
# Wed, 17 Apr 2019 23:25:53 GMT
RUN curl -fSL https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/k8s-mongodb-initiator -o /usr/local/bin/k8s-mongodb-initiator     && curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/mongodb-healthcheck -o /usr/local/bin/mongodb-healthcheck     && chmod 0755 /usr/local/bin/k8s-mongodb-initiator /usr/local/bin/mongodb-healthcheck
# Wed, 17 Apr 2019 23:25:53 GMT
VOLUME [/data/db]
# Wed, 17 Apr 2019 23:25:54 GMT
COPY file:73b257e28d42d38a579e50c8dbd964c054f38728692627d5438a0aa11526970b in /entrypoint.sh 
# Wed, 17 Apr 2019 23:25:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Apr 2019 23:25:54 GMT
EXPOSE 27017
# Wed, 17 Apr 2019 23:25:54 GMT
USER 1001
# Wed, 17 Apr 2019 23:25:54 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98207360bc836ada2096ac8e0e8b0d6208819a7b219ac0e86e4cde08a67c4b95`  
		Last Modified: Thu, 14 Mar 2019 22:19:01 GMT  
		Size: 6.2 MB (6177637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e812147e995e158927fdc7b968fbc65e7fa66fe33f3c255f5cb53a131b8bf545`  
		Last Modified: Thu, 14 Mar 2019 22:18:59 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d716a1b8ff7883b8c6753e77255b5668986f1a9002cc022a209d120bd0862681`  
		Last Modified: Wed, 17 Apr 2019 23:26:34 GMT  
		Size: 94.9 MB (94880822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6707fb9d53fb5de011f9802b773a0fbbf22a298a4d1e3590f48dde26dfe1349`  
		Last Modified: Wed, 17 Apr 2019 23:26:18 GMT  
		Size: 6.3 MB (6300373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e0f2d78c80f71f6f92d815d5c30d3df1749205d4d232850f94ef9999518b40`  
		Last Modified: Wed, 17 Apr 2019 23:26:17 GMT  
		Size: 3.8 KB (3810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
