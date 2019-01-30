## `percona:psmdb-3.6`

```console
$ docker pull percona@sha256:a9428af204db5300366ff0a9ce77c1d03fc273814879fce27502b60eada52679
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:psmdb-3.6` - linux; amd64

```console
$ docker pull percona@sha256:2aac626e0aaac5a0f1778883a7e0da98ae9d4a26ecdb6a47409543c50ab5a654
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128086045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f0130edebec148208d5a3a687cb07bb2929ef8505c5195e015f47020fcc10ff`
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
# Wed, 12 Dec 2018 03:21:45 GMT
RUN export GNUPGHOME="$(mktemp -d)"         && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A         && gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona         && rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7         && curl -L -o /tmp/percona-release.rpm http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm         && rpmkeys --checksig /tmp/percona-release.rpm         && yum install -y /tmp/percona-release.rpm         && rm -rf "$GNUPGHOME" /tmp/percona-release.rpm
# Wed, 12 Dec 2018 03:21:46 GMT
RUN useradd -u 1001 -r -g 0 -s /sbin/nologin             -c "Default Application User" mongodb
# Wed, 12 Dec 2018 03:21:46 GMT
ENV PERCONA_MAJOR=36
# Wed, 12 Dec 2018 03:21:46 GMT
ENV PERCONA_VERSION=3.6.8-2.0.el7
# Wed, 12 Dec 2018 03:21:46 GMT
ENV K8S_TOOLS_VERSION=0.4.1
# Wed, 12 Dec 2018 03:22:06 GMT
RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm         && yum install -y                 Percona-Server-MongoDB-36-server-${PERCONA_VERSION}                 curl                 jq         && yum clean all         && rm -rf /var/cache/yum /data/db  && mkdir -p /data/db         && chown -R 1001:0 /data/db
# Wed, 12 Dec 2018 03:22:08 GMT
RUN curl -fSL https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/k8s-mongodb-initiator -o /usr/local/bin/k8s-mongodb-initiator     && curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/mongodb-healthcheck -o /usr/local/bin/mongodb-healthcheck     && chmod 0755 /usr/local/bin/k8s-mongodb-initiator /usr/local/bin/mongodb-healthcheck
# Wed, 12 Dec 2018 03:22:09 GMT
VOLUME [/data/db]
# Wed, 30 Jan 2019 02:21:04 GMT
COPY file:73b257e28d42d38a579e50c8dbd964c054f38728692627d5438a0aa11526970b in /entrypoint.sh 
# Wed, 30 Jan 2019 02:21:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 02:21:04 GMT
EXPOSE 27017
# Wed, 30 Jan 2019 02:21:05 GMT
USER 1001
# Wed, 30 Jan 2019 02:21:05 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03545e3a2ddd365bde6c8369136f6076dffd47b752d2ec9f14d331e7301f9bf1`  
		Last Modified: Wed, 12 Dec 2018 03:22:44 GMT  
		Size: 6.2 MB (6176180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d8488ceff47979b4da21e3d4059b84abaf72b1849b0a4c0ab4668e501c3f91`  
		Last Modified: Wed, 12 Dec 2018 03:22:43 GMT  
		Size: 1.4 KB (1427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2767736ca0e4bd626c0aca661813485bd88c24747a583de08a4c8c294adfc0d`  
		Last Modified: Wed, 12 Dec 2018 03:22:51 GMT  
		Size: 40.4 MB (40438739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb43bee24e99cf57e1a36fea63ac415a930af9cf29deede1602b69658aa56fc`  
		Last Modified: Wed, 12 Dec 2018 03:22:43 GMT  
		Size: 6.3 MB (6300362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d57845d18bd6be2b73425f63a7872fbb4962a56ac22a6713a7b7f4aaa787102`  
		Last Modified: Wed, 30 Jan 2019 02:21:50 GMT  
		Size: 3.8 KB (3808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
