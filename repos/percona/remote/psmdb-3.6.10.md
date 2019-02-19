## `percona:psmdb-3.6.10`

```console
$ docker pull percona@sha256:7829f8b75d8945933b3573735eeb76ca07f0f0f991f74a39c73617285a15fe7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:psmdb-3.6.10` - linux; amd64

```console
$ docker pull percona@sha256:5ada9232064563212efeac00c11e6cbd0a6bed91419c3e287b9077443db311a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175095945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fb79d8f4ddaf2143f7f503c67b9960e29140ceacb83509c600a68858fd319cb`
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
# Tue, 19 Feb 2019 22:27:28 GMT
RUN export GNUPGHOME="$(mktemp -d)"         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A         && gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona         && rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7         && curl -L -o /tmp/percona-release.rpm https://repo.percona.com/percona/yum/percona-release-1.0-7.noarch.rpm         && rpmkeys --checksig /tmp/percona-release.rpm         && yum install -y /tmp/percona-release.rpm         && rm -rf "$GNUPGHOME" /tmp/percona-release.rpm         && rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY         && percona-release disable all         && percona-release enable original release
# Tue, 19 Feb 2019 22:27:29 GMT
RUN useradd -u 1001 -r -g 0 -s /sbin/nologin             -c "Default Application User" mongodb
# Tue, 19 Feb 2019 22:27:29 GMT
ENV PERCONA_MAJOR=36
# Tue, 19 Feb 2019 22:27:29 GMT
ENV PERCONA_VERSION=3.6.10-3.0.el7
# Tue, 19 Feb 2019 22:27:29 GMT
ENV K8S_TOOLS_VERSION=0.4.1
# Tue, 19 Feb 2019 22:28:14 GMT
RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm         && yum install -y                 Percona-Server-MongoDB-36-server-${PERCONA_VERSION}                 Percona-Server-MongoDB-36-mongos-${PERCONA_VERSION}                 Percona-Server-MongoDB-36-tools-${PERCONA_VERSION}                 Percona-Server-MongoDB-36-shell-${PERCONA_VERSION}                 curl                 jq         && yum clean all         && rm -rf /var/cache/yum /data/db  && mkdir -p /data/db         && chown -R 1001:0 /data/db
# Tue, 19 Feb 2019 22:28:16 GMT
RUN curl -fSL https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/k8s-mongodb-initiator -o /usr/local/bin/k8s-mongodb-initiator     && curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/mongodb-healthcheck -o /usr/local/bin/mongodb-healthcheck     && chmod 0755 /usr/local/bin/k8s-mongodb-initiator /usr/local/bin/mongodb-healthcheck
# Tue, 19 Feb 2019 22:28:16 GMT
VOLUME [/data/db]
# Tue, 19 Feb 2019 22:28:16 GMT
COPY file:73b257e28d42d38a579e50c8dbd964c054f38728692627d5438a0aa11526970b in /entrypoint.sh 
# Tue, 19 Feb 2019 22:28:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 19 Feb 2019 22:28:17 GMT
EXPOSE 27017
# Tue, 19 Feb 2019 22:28:17 GMT
USER 1001
# Tue, 19 Feb 2019 22:28:17 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12bf5b6dac6fa0eae329991f85e2b20f89168ef30a2f2cb5b620977a1ac95435`  
		Last Modified: Tue, 19 Feb 2019 22:30:18 GMT  
		Size: 6.2 MB (6173286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98db15b38a7851b8126c2302d29b6d03d1ed3c4977d5bfcb8a6676556f85b688`  
		Last Modified: Tue, 19 Feb 2019 22:30:16 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f60903d73272bb76bc900bcb57512546abf18dfccc579c982145c94fb4c9664`  
		Last Modified: Tue, 19 Feb 2019 22:30:40 GMT  
		Size: 87.5 MB (87451520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c12c57cd8867680e722a2dd8e10379fff312ac20ce906e4fc794d75a93d3795`  
		Last Modified: Tue, 19 Feb 2019 22:30:17 GMT  
		Size: 6.3 MB (6300370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9a9e80119a63ee700d3c9cdcbd65cf5742b314703e124719aeda5761cd57d7`  
		Last Modified: Tue, 19 Feb 2019 22:30:16 GMT  
		Size: 3.8 KB (3808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
