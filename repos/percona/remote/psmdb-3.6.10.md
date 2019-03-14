## `percona:psmdb-3.6.10`

```console
$ docker pull percona@sha256:0f31239d7488c1596cb6c260d88a6ee6b4368c524533419dd38651682d29a6f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:psmdb-3.6.10` - linux; amd64

```console
$ docker pull percona@sha256:30f6d63a3bf5ffd9a8235365ed15468920daff0325f60422c17591fd952357f2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.4 MB (175372265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:254c8750c529dc45f9734cd87b030a5cddc4847394f87c7954fcf1ea89795593`
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
# Thu, 14 Mar 2019 22:16:39 GMT
RUN export GNUPGHOME="$(mktemp -d)"         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A         && gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona         && rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7         && curl -L -o /tmp/percona-release.rpm https://repo.percona.com/percona/yum/percona-release-1.0-7.noarch.rpm         && rpmkeys --checksig /tmp/percona-release.rpm         && yum install -y /tmp/percona-release.rpm         && rm -rf "$GNUPGHOME" /tmp/percona-release.rpm         && rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY         && percona-release disable all         && percona-release enable original release
# Thu, 14 Mar 2019 22:16:40 GMT
RUN useradd -u 1001 -r -g 0 -s /sbin/nologin             -c "Default Application User" mongodb
# Thu, 14 Mar 2019 22:16:40 GMT
ENV PERCONA_MAJOR=36
# Thu, 14 Mar 2019 22:16:40 GMT
ENV PERCONA_VERSION=3.6.10-3.0.el7
# Thu, 14 Mar 2019 22:16:41 GMT
ENV K8S_TOOLS_VERSION=0.4.1
# Thu, 14 Mar 2019 22:17:13 GMT
RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm         && yum install -y                 Percona-Server-MongoDB-36-server-${PERCONA_VERSION}                 Percona-Server-MongoDB-36-mongos-${PERCONA_VERSION}                 Percona-Server-MongoDB-36-tools-${PERCONA_VERSION}                 Percona-Server-MongoDB-36-shell-${PERCONA_VERSION}                 curl                 jq         && yum clean all         && rm -rf /var/cache/yum /data/db  && mkdir -p /data/db         && chown -R 1001:0 /data/db
# Thu, 14 Mar 2019 22:17:15 GMT
RUN curl -fSL https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/k8s-mongodb-initiator -o /usr/local/bin/k8s-mongodb-initiator     && curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/mongodb-healthcheck -o /usr/local/bin/mongodb-healthcheck     && chmod 0755 /usr/local/bin/k8s-mongodb-initiator /usr/local/bin/mongodb-healthcheck
# Thu, 14 Mar 2019 22:17:16 GMT
VOLUME [/data/db]
# Thu, 14 Mar 2019 22:17:16 GMT
COPY file:73b257e28d42d38a579e50c8dbd964c054f38728692627d5438a0aa11526970b in /entrypoint.sh 
# Thu, 14 Mar 2019 22:17:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Mar 2019 22:17:17 GMT
EXPOSE 27017
# Thu, 14 Mar 2019 22:17:17 GMT
USER 1001
# Thu, 14 Mar 2019 22:17:17 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deffdf1c4b73c5c0d930cc6ef5b4e4d3d2a6514de21ca52c5002792da5c757e8`  
		Last Modified: Thu, 14 Mar 2019 22:19:21 GMT  
		Size: 6.2 MB (6177590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eead3d14076eebc54ae5e35346b3dfdcf98ffac6bcd43b23fb33c4dbe29dacc`  
		Last Modified: Thu, 14 Mar 2019 22:19:20 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f739c66aa8de4b98770f9c77aaa59bfd771a27b22c588fc21454f52e7e5df86e`  
		Last Modified: Thu, 14 Mar 2019 22:19:39 GMT  
		Size: 87.5 MB (87485235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62223ef52ea00432f40479838f38ba3ccfd0bd72f918b5848effeecef25004a9`  
		Last Modified: Thu, 14 Mar 2019 22:19:23 GMT  
		Size: 6.3 MB (6300366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ef3d0d8407bec06e044adb9636328228b807a06101067e92aa83761bcb4603`  
		Last Modified: Thu, 14 Mar 2019 22:19:20 GMT  
		Size: 3.8 KB (3810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
