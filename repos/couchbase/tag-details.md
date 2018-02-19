<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `couchbase`

-	[`couchbase:4.6.4`](#couchbase464)
-	[`couchbase:5.1.0`](#couchbase510)
-	[`couchbase:community`](#couchbasecommunity)
-	[`couchbase:community-4.5.1`](#couchbasecommunity-451)
-	[`couchbase:community-5.0.1`](#couchbasecommunity-501)
-	[`couchbase:enterprise`](#couchbaseenterprise)
-	[`couchbase:enterprise-4.6.4`](#couchbaseenterprise-464)
-	[`couchbase:enterprise-5.1.0`](#couchbaseenterprise-510)
-	[`couchbase:latest`](#couchbaselatest)

## `couchbase:4.6.4`

```console
$ docker pull couchbase@sha256:61b3f153297c1d8765a535cf56eb9df9dc1aa111e7ace92a8d8be2eaef12d8af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:4.6.4` - linux; amd64

```console
$ docker pull couchbase@sha256:6257977bb50af294ad6858532aa75ffeeddfd8df207b399f4f39f102c8139680
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.9 MB (218937749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00289b0042dee50043dad57e07588a674f628e3d58f38c1a62a71cfa3a2b9ce1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 25 Jan 2018 18:22:16 GMT
ADD file:636a7d1b374fb6ccd672a92e56b1e811652a0bf56d64a2d08282850110db548f in / 
# Thu, 25 Jan 2018 18:22:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:22:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:22:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:22:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:22:45 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 18:48:26 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 25 Jan 2018 18:48:50 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 25 Jan 2018 18:49:51 GMT
ARG CB_VERSION=4.6.4
# Thu, 25 Jan 2018 18:49:51 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Thu, 25 Jan 2018 18:49:52 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb
# Thu, 25 Jan 2018 18:49:52 GMT
ARG CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579
# Thu, 25 Jan 2018 18:49:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 25 Jan 2018 18:49:53 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 25 Jan 2018 18:50:20 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 25 Jan 2018 18:50:38 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Thu, 25 Jan 2018 18:50:38 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 25 Jan 2018 18:50:39 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 25 Jan 2018 18:50:40 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 25 Jan 2018 18:50:40 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Thu, 25 Jan 2018 18:50:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 25 Jan 2018 18:50:41 GMT
CMD ["couchbase-server"]
# Thu, 25 Jan 2018 18:50:41 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 25 Jan 2018 18:50:41 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:c954d15f947c57e059f67a156ff2e4c36f4f3e59b37467ff865214a88ebc54d6`  
		Last Modified: Thu, 25 Jan 2018 18:26:39 GMT  
		Size: 73.0 MB (72952953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3688624ef2b94ab3981564e23e1f48df8f1b988519373ccfb79d7974017cb85`  
		Last Modified: Thu, 25 Jan 2018 18:26:29 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848fe4263b3b44987f0eacdb2fc0469ae6ff04b2311e759985dfd27ae5d3641d`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4459d3b04aa0bc7cb7f7021e4d7bbb5e87aa74a6a5f57475a0e8badbd9a26`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ab3b56c8f1a3188464886cbe41f42a969e6f9374e040f13803d796ed27b0ec`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e975e58638c3ee19ec35ad67d790e1fb383fb065a9136b307f497c054b69f28`  
		Last Modified: Thu, 25 Jan 2018 18:53:32 GMT  
		Size: 11.4 MB (11390938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e4bcfa34fd5773b5ade0c221d182ec4bf00f11c7a9ce98d70781223454ff5c`  
		Last Modified: Thu, 25 Jan 2018 18:55:25 GMT  
		Size: 1.9 KB (1907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c6c22a8fc35556f99a92372753452e6df6074295525be28db28866dbeaff0af`  
		Last Modified: Thu, 25 Jan 2018 18:55:55 GMT  
		Size: 134.4 MB (134411163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03448f9c8e973a452529e449eea2a0854ddf0ea3400bc5cb0a526fb7075a0269`  
		Last Modified: Thu, 25 Jan 2018 18:55:23 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0eeabaa4ab4ab6d2491ecefacb5e2901dcb51ce8de5a265fdabeb645873c1c`  
		Last Modified: Thu, 25 Jan 2018 18:55:23 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aed246966d9e958022d25c9953306d7ad38530f612ceefd6d34af876b0ce22a`  
		Last Modified: Thu, 25 Jan 2018 18:55:23 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ad21349358b3432c8af8de49d789dec81f4fb4d1b9d52b2d23fb131bcd2d5c`  
		Last Modified: Thu, 25 Jan 2018 18:55:23 GMT  
		Size: 105.4 KB (105403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3a26004b0815277baf7cfe59d8400b36e1c3e47396a85a708d124c32d1c2c38`  
		Last Modified: Thu, 25 Jan 2018 18:55:23 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:5.1.0`

```console
$ docker pull couchbase@sha256:2584e4e852be044243be489d76932d5cdf69c4d642a36aeec2f5e4e00ed7c21e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:5.1.0` - linux; amd64

```console
$ docker pull couchbase@sha256:1d7f8c4f5e651918b7954d4ec5bba5335c3d2cf42b3039d43b6e67f8d56e9b74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.9 MB (226889233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb651a3a10d3c993789eba5f755b8df14007f0e6c08c9efcdcef18ecc73cdff3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 25 Jan 2018 18:22:16 GMT
ADD file:636a7d1b374fb6ccd672a92e56b1e811652a0bf56d64a2d08282850110db548f in / 
# Thu, 25 Jan 2018 18:22:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:22:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:22:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:22:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:22:45 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 18:48:26 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 25 Jan 2018 18:48:50 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 25 Jan 2018 18:48:50 GMT
ARG CB_VERSION=5.0.1
# Thu, 25 Jan 2018 18:48:50 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Thu, 25 Jan 2018 18:48:51 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb
# Thu, 25 Jan 2018 18:48:51 GMT
ARG CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1
# Thu, 25 Jan 2018 18:48:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 25 Jan 2018 18:49:02 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1 CB_VERSION=5.0.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 25 Jan 2018 18:49:20 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1 CB_VERSION=5.0.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 25 Jan 2018 18:49:26 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Thu, 25 Jan 2018 18:49:27 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 25 Jan 2018 18:49:27 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1 CB_VERSION=5.0.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 25 Jan 2018 18:49:28 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1 CB_VERSION=5.0.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 25 Jan 2018 18:49:29 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Thu, 25 Jan 2018 18:49:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 25 Jan 2018 18:49:29 GMT
CMD ["couchbase-server"]
# Thu, 25 Jan 2018 18:49:29 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 25 Jan 2018 18:49:30 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:c954d15f947c57e059f67a156ff2e4c36f4f3e59b37467ff865214a88ebc54d6`  
		Last Modified: Thu, 25 Jan 2018 18:26:39 GMT  
		Size: 73.0 MB (72952953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3688624ef2b94ab3981564e23e1f48df8f1b988519373ccfb79d7974017cb85`  
		Last Modified: Thu, 25 Jan 2018 18:26:29 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848fe4263b3b44987f0eacdb2fc0469ae6ff04b2311e759985dfd27ae5d3641d`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4459d3b04aa0bc7cb7f7021e4d7bbb5e87aa74a6a5f57475a0e8badbd9a26`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ab3b56c8f1a3188464886cbe41f42a969e6f9374e040f13803d796ed27b0ec`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e975e58638c3ee19ec35ad67d790e1fb383fb065a9136b307f497c054b69f28`  
		Last Modified: Thu, 25 Jan 2018 18:53:32 GMT  
		Size: 11.4 MB (11390938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5866787ecc3db4a4c31e35b08c0bbe90bda40be85342cde6d6aac0b2dd99f19b`  
		Last Modified: Thu, 25 Jan 2018 18:53:27 GMT  
		Size: 1.9 KB (1907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10aa5b655656a474fe9a31c5176f2a92a54c2a8722db1bb0c9f5d4302820a77`  
		Last Modified: Thu, 25 Jan 2018 18:53:57 GMT  
		Size: 142.4 MB (142362651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec602f6430a7e0c7f6e39b708c796b0c51d73b4b082e2bd045613f94c9baa76`  
		Last Modified: Thu, 25 Jan 2018 18:53:24 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06582658f5184688c0d8cb6cf29793448e63338414305b1525635b72df4d5446`  
		Last Modified: Thu, 25 Jan 2018 18:53:24 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0458d8b48c0656576ed0b1fef76279e8f515e682005b3e3a2f0959357089f08d`  
		Last Modified: Thu, 25 Jan 2018 18:53:24 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce5688e11d16c9e53427108c86aee6a2f72f514e6a81e26c26a84d7dd0a9fd46`  
		Last Modified: Thu, 25 Jan 2018 18:53:25 GMT  
		Size: 105.4 KB (105399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee034d58d58fc7d7f3489b92ab487de195eec4dcb100fb0c7afa797c8915217`  
		Last Modified: Thu, 25 Jan 2018 18:53:25 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community`

```console
$ docker pull couchbase@sha256:ebd479a990f74ad578ee4c28e08c0e7e5669d68a2a428f5686f3d0a5d6c635a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community` - linux; amd64

```console
$ docker pull couchbase@sha256:cc38a451e58a1ebc34ba0e14705d2c4fb3917970942e84d22e2da3ee77704425
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.9 MB (216859531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccd889aa9ca85916ea822148f4202dd9fe40d3abdd2ae79b005127b4c589611a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 25 Jan 2018 18:22:16 GMT
ADD file:636a7d1b374fb6ccd672a92e56b1e811652a0bf56d64a2d08282850110db548f in / 
# Thu, 25 Jan 2018 18:22:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:22:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:22:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:22:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:22:45 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 18:48:26 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 25 Jan 2018 18:48:50 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 25 Jan 2018 18:48:50 GMT
ARG CB_VERSION=5.0.1
# Thu, 25 Jan 2018 18:48:50 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Thu, 25 Jan 2018 18:51:09 GMT
ARG CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu14.04_amd64.deb
# Thu, 25 Jan 2018 18:51:09 GMT
ARG CB_SHA256=d44195f78a3858e6d274ba211b59fb56921823aa567965ac90531f393815fc1d
# Thu, 25 Jan 2018 18:51:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 25 Jan 2018 18:51:11 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=d44195f78a3858e6d274ba211b59fb56921823aa567965ac90531f393815fc1d CB_VERSION=5.0.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 25 Jan 2018 18:51:40 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=d44195f78a3858e6d274ba211b59fb56921823aa567965ac90531f393815fc1d CB_VERSION=5.0.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 25 Jan 2018 18:51:40 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Thu, 25 Jan 2018 18:51:41 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 25 Jan 2018 18:51:41 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=d44195f78a3858e6d274ba211b59fb56921823aa567965ac90531f393815fc1d CB_VERSION=5.0.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 25 Jan 2018 18:51:53 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=d44195f78a3858e6d274ba211b59fb56921823aa567965ac90531f393815fc1d CB_VERSION=5.0.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 25 Jan 2018 18:51:53 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Thu, 25 Jan 2018 18:51:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 25 Jan 2018 18:51:54 GMT
CMD ["couchbase-server"]
# Thu, 25 Jan 2018 18:51:54 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 25 Jan 2018 18:51:54 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:c954d15f947c57e059f67a156ff2e4c36f4f3e59b37467ff865214a88ebc54d6`  
		Last Modified: Thu, 25 Jan 2018 18:26:39 GMT  
		Size: 73.0 MB (72952953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3688624ef2b94ab3981564e23e1f48df8f1b988519373ccfb79d7974017cb85`  
		Last Modified: Thu, 25 Jan 2018 18:26:29 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848fe4263b3b44987f0eacdb2fc0469ae6ff04b2311e759985dfd27ae5d3641d`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4459d3b04aa0bc7cb7f7021e4d7bbb5e87aa74a6a5f57475a0e8badbd9a26`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ab3b56c8f1a3188464886cbe41f42a969e6f9374e040f13803d796ed27b0ec`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e975e58638c3ee19ec35ad67d790e1fb383fb065a9136b307f497c054b69f28`  
		Last Modified: Thu, 25 Jan 2018 18:53:32 GMT  
		Size: 11.4 MB (11390938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31720b72d21ffce0dacc4ef4d2e4b4f97ea9edba33b840fdb7d9b396362ef622`  
		Last Modified: Thu, 25 Jan 2018 18:56:37 GMT  
		Size: 1.9 KB (1910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f02afc1884262ddb51ddecb5b8f17e6325783414a477927928ccab159c688c`  
		Last Modified: Thu, 25 Jan 2018 18:57:05 GMT  
		Size: 132.3 MB (132332949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88166bb20742ba055252db24962b3a63bdd6c923f18b93db4a83220b4c2f25f1`  
		Last Modified: Thu, 25 Jan 2018 18:56:35 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b2c16f4ba8098c3273cd8ace6ceb88871eb41a1c40a5570d928bc8391fb4c7`  
		Last Modified: Thu, 25 Jan 2018 18:56:35 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02694751b960b1b1c347326d8c4414f6b79931e5615dbc3ed55716114f6c957`  
		Last Modified: Thu, 25 Jan 2018 18:56:35 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f5774d01e7732fc3dcaee76c0ff31b6518d5ba4cd2f70db7bb90e12eecaad6`  
		Last Modified: Thu, 25 Jan 2018 18:56:36 GMT  
		Size: 105.4 KB (105401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a87f8681ed038b85b3453a3ac396de30a74b7e2a3252cdc79a661b256d01ea`  
		Last Modified: Thu, 25 Jan 2018 18:56:35 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-4.5.1`

```console
$ docker pull couchbase@sha256:a64a5755ebdd432dbefba1fe0603efc5a9f0ccb9c6e0bbc5c458d9afd2b14448
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community-4.5.1` - linux; amd64

```console
$ docker pull couchbase@sha256:9e36409856020a72c9b86dafef195125bcbcdbd70bfdeb717521a29944ee9b05
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.6 MB (215607034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e901380e6b003f08d019c8b12abc0eda9c7e314c673c605db2249afe183802c2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 25 Jan 2018 18:22:16 GMT
ADD file:636a7d1b374fb6ccd672a92e56b1e811652a0bf56d64a2d08282850110db548f in / 
# Thu, 25 Jan 2018 18:22:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:22:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:22:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:22:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:22:45 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 18:48:26 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 25 Jan 2018 18:48:50 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 25 Jan 2018 18:52:08 GMT
ARG CB_VERSION=4.5.1
# Thu, 25 Jan 2018 18:52:09 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Thu, 25 Jan 2018 18:52:19 GMT
ARG CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb
# Thu, 25 Jan 2018 18:52:20 GMT
ARG CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234
# Thu, 25 Jan 2018 18:52:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 25 Jan 2018 18:52:21 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 25 Jan 2018 18:52:54 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 25 Jan 2018 18:52:55 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Thu, 25 Jan 2018 18:52:55 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 25 Jan 2018 18:52:56 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 25 Jan 2018 18:52:57 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 25 Jan 2018 18:52:57 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Thu, 25 Jan 2018 18:52:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 25 Jan 2018 18:52:58 GMT
CMD ["couchbase-server"]
# Thu, 25 Jan 2018 18:52:58 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 25 Jan 2018 18:52:58 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:c954d15f947c57e059f67a156ff2e4c36f4f3e59b37467ff865214a88ebc54d6`  
		Last Modified: Thu, 25 Jan 2018 18:26:39 GMT  
		Size: 73.0 MB (72952953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3688624ef2b94ab3981564e23e1f48df8f1b988519373ccfb79d7974017cb85`  
		Last Modified: Thu, 25 Jan 2018 18:26:29 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848fe4263b3b44987f0eacdb2fc0469ae6ff04b2311e759985dfd27ae5d3641d`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4459d3b04aa0bc7cb7f7021e4d7bbb5e87aa74a6a5f57475a0e8badbd9a26`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ab3b56c8f1a3188464886cbe41f42a969e6f9374e040f13803d796ed27b0ec`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e975e58638c3ee19ec35ad67d790e1fb383fb065a9136b307f497c054b69f28`  
		Last Modified: Thu, 25 Jan 2018 18:53:32 GMT  
		Size: 11.4 MB (11390938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5b7f0860bf9853db5b4779cec4a28f7b25cef17b6f7de04a34710d44c0d49ba`  
		Last Modified: Thu, 25 Jan 2018 18:57:52 GMT  
		Size: 1.9 KB (1910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf2402ba72e1f2eab2b5663e053ac7f3f5ecd697032e5e0612364d2e9a6ed47`  
		Last Modified: Thu, 25 Jan 2018 18:58:21 GMT  
		Size: 131.1 MB (131080442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17592f81083057c72c1e63a6b3a0c35f29ab132eb10a43cfbf887e56d1a6a3c9`  
		Last Modified: Thu, 25 Jan 2018 18:57:49 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e548e3e7a01fbc60ab035e237ae7985cd47087102bd89fdf2a0a46cc6cc5392`  
		Last Modified: Thu, 25 Jan 2018 18:57:49 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0d88ade95bcf429a2ca7298edd77012b9ba24ef96850e1fbadf32bfda6dcb6`  
		Last Modified: Thu, 25 Jan 2018 18:57:49 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a8dee4dfb83f11784badb8c7ac7d251c71fc5f0aaf97f321ef9b14b07a775d`  
		Last Modified: Thu, 25 Jan 2018 18:57:50 GMT  
		Size: 105.4 KB (105405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf596df5712d51e656fe87e31ae1617108e25a5411e8316a5c5bda0ff145179d`  
		Last Modified: Thu, 25 Jan 2018 18:57:50 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-5.0.1`

```console
$ docker pull couchbase@sha256:ebd479a990f74ad578ee4c28e08c0e7e5669d68a2a428f5686f3d0a5d6c635a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community-5.0.1` - linux; amd64

```console
$ docker pull couchbase@sha256:cc38a451e58a1ebc34ba0e14705d2c4fb3917970942e84d22e2da3ee77704425
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.9 MB (216859531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccd889aa9ca85916ea822148f4202dd9fe40d3abdd2ae79b005127b4c589611a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 25 Jan 2018 18:22:16 GMT
ADD file:636a7d1b374fb6ccd672a92e56b1e811652a0bf56d64a2d08282850110db548f in / 
# Thu, 25 Jan 2018 18:22:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:22:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:22:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:22:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:22:45 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 18:48:26 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 25 Jan 2018 18:48:50 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 25 Jan 2018 18:48:50 GMT
ARG CB_VERSION=5.0.1
# Thu, 25 Jan 2018 18:48:50 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Thu, 25 Jan 2018 18:51:09 GMT
ARG CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu14.04_amd64.deb
# Thu, 25 Jan 2018 18:51:09 GMT
ARG CB_SHA256=d44195f78a3858e6d274ba211b59fb56921823aa567965ac90531f393815fc1d
# Thu, 25 Jan 2018 18:51:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 25 Jan 2018 18:51:11 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=d44195f78a3858e6d274ba211b59fb56921823aa567965ac90531f393815fc1d CB_VERSION=5.0.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 25 Jan 2018 18:51:40 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=d44195f78a3858e6d274ba211b59fb56921823aa567965ac90531f393815fc1d CB_VERSION=5.0.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 25 Jan 2018 18:51:40 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Thu, 25 Jan 2018 18:51:41 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 25 Jan 2018 18:51:41 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=d44195f78a3858e6d274ba211b59fb56921823aa567965ac90531f393815fc1d CB_VERSION=5.0.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 25 Jan 2018 18:51:53 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=d44195f78a3858e6d274ba211b59fb56921823aa567965ac90531f393815fc1d CB_VERSION=5.0.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 25 Jan 2018 18:51:53 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Thu, 25 Jan 2018 18:51:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 25 Jan 2018 18:51:54 GMT
CMD ["couchbase-server"]
# Thu, 25 Jan 2018 18:51:54 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 25 Jan 2018 18:51:54 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:c954d15f947c57e059f67a156ff2e4c36f4f3e59b37467ff865214a88ebc54d6`  
		Last Modified: Thu, 25 Jan 2018 18:26:39 GMT  
		Size: 73.0 MB (72952953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3688624ef2b94ab3981564e23e1f48df8f1b988519373ccfb79d7974017cb85`  
		Last Modified: Thu, 25 Jan 2018 18:26:29 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848fe4263b3b44987f0eacdb2fc0469ae6ff04b2311e759985dfd27ae5d3641d`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4459d3b04aa0bc7cb7f7021e4d7bbb5e87aa74a6a5f57475a0e8badbd9a26`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ab3b56c8f1a3188464886cbe41f42a969e6f9374e040f13803d796ed27b0ec`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e975e58638c3ee19ec35ad67d790e1fb383fb065a9136b307f497c054b69f28`  
		Last Modified: Thu, 25 Jan 2018 18:53:32 GMT  
		Size: 11.4 MB (11390938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31720b72d21ffce0dacc4ef4d2e4b4f97ea9edba33b840fdb7d9b396362ef622`  
		Last Modified: Thu, 25 Jan 2018 18:56:37 GMT  
		Size: 1.9 KB (1910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f02afc1884262ddb51ddecb5b8f17e6325783414a477927928ccab159c688c`  
		Last Modified: Thu, 25 Jan 2018 18:57:05 GMT  
		Size: 132.3 MB (132332949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88166bb20742ba055252db24962b3a63bdd6c923f18b93db4a83220b4c2f25f1`  
		Last Modified: Thu, 25 Jan 2018 18:56:35 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b2c16f4ba8098c3273cd8ace6ceb88871eb41a1c40a5570d928bc8391fb4c7`  
		Last Modified: Thu, 25 Jan 2018 18:56:35 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02694751b960b1b1c347326d8c4414f6b79931e5615dbc3ed55716114f6c957`  
		Last Modified: Thu, 25 Jan 2018 18:56:35 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f5774d01e7732fc3dcaee76c0ff31b6518d5ba4cd2f70db7bb90e12eecaad6`  
		Last Modified: Thu, 25 Jan 2018 18:56:36 GMT  
		Size: 105.4 KB (105401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a87f8681ed038b85b3453a3ac396de30a74b7e2a3252cdc79a661b256d01ea`  
		Last Modified: Thu, 25 Jan 2018 18:56:35 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise`

```console
$ docker pull couchbase@sha256:2584e4e852be044243be489d76932d5cdf69c4d642a36aeec2f5e4e00ed7c21e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise` - linux; amd64

```console
$ docker pull couchbase@sha256:1d7f8c4f5e651918b7954d4ec5bba5335c3d2cf42b3039d43b6e67f8d56e9b74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.9 MB (226889233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb651a3a10d3c993789eba5f755b8df14007f0e6c08c9efcdcef18ecc73cdff3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 25 Jan 2018 18:22:16 GMT
ADD file:636a7d1b374fb6ccd672a92e56b1e811652a0bf56d64a2d08282850110db548f in / 
# Thu, 25 Jan 2018 18:22:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:22:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:22:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:22:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:22:45 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 18:48:26 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 25 Jan 2018 18:48:50 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 25 Jan 2018 18:48:50 GMT
ARG CB_VERSION=5.0.1
# Thu, 25 Jan 2018 18:48:50 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Thu, 25 Jan 2018 18:48:51 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb
# Thu, 25 Jan 2018 18:48:51 GMT
ARG CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1
# Thu, 25 Jan 2018 18:48:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 25 Jan 2018 18:49:02 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1 CB_VERSION=5.0.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 25 Jan 2018 18:49:20 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1 CB_VERSION=5.0.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 25 Jan 2018 18:49:26 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Thu, 25 Jan 2018 18:49:27 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 25 Jan 2018 18:49:27 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1 CB_VERSION=5.0.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 25 Jan 2018 18:49:28 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1 CB_VERSION=5.0.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 25 Jan 2018 18:49:29 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Thu, 25 Jan 2018 18:49:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 25 Jan 2018 18:49:29 GMT
CMD ["couchbase-server"]
# Thu, 25 Jan 2018 18:49:29 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 25 Jan 2018 18:49:30 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:c954d15f947c57e059f67a156ff2e4c36f4f3e59b37467ff865214a88ebc54d6`  
		Last Modified: Thu, 25 Jan 2018 18:26:39 GMT  
		Size: 73.0 MB (72952953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3688624ef2b94ab3981564e23e1f48df8f1b988519373ccfb79d7974017cb85`  
		Last Modified: Thu, 25 Jan 2018 18:26:29 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848fe4263b3b44987f0eacdb2fc0469ae6ff04b2311e759985dfd27ae5d3641d`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4459d3b04aa0bc7cb7f7021e4d7bbb5e87aa74a6a5f57475a0e8badbd9a26`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ab3b56c8f1a3188464886cbe41f42a969e6f9374e040f13803d796ed27b0ec`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e975e58638c3ee19ec35ad67d790e1fb383fb065a9136b307f497c054b69f28`  
		Last Modified: Thu, 25 Jan 2018 18:53:32 GMT  
		Size: 11.4 MB (11390938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5866787ecc3db4a4c31e35b08c0bbe90bda40be85342cde6d6aac0b2dd99f19b`  
		Last Modified: Thu, 25 Jan 2018 18:53:27 GMT  
		Size: 1.9 KB (1907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10aa5b655656a474fe9a31c5176f2a92a54c2a8722db1bb0c9f5d4302820a77`  
		Last Modified: Thu, 25 Jan 2018 18:53:57 GMT  
		Size: 142.4 MB (142362651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec602f6430a7e0c7f6e39b708c796b0c51d73b4b082e2bd045613f94c9baa76`  
		Last Modified: Thu, 25 Jan 2018 18:53:24 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06582658f5184688c0d8cb6cf29793448e63338414305b1525635b72df4d5446`  
		Last Modified: Thu, 25 Jan 2018 18:53:24 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0458d8b48c0656576ed0b1fef76279e8f515e682005b3e3a2f0959357089f08d`  
		Last Modified: Thu, 25 Jan 2018 18:53:24 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce5688e11d16c9e53427108c86aee6a2f72f514e6a81e26c26a84d7dd0a9fd46`  
		Last Modified: Thu, 25 Jan 2018 18:53:25 GMT  
		Size: 105.4 KB (105399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee034d58d58fc7d7f3489b92ab487de195eec4dcb100fb0c7afa797c8915217`  
		Last Modified: Thu, 25 Jan 2018 18:53:25 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-4.6.4`

```console
$ docker pull couchbase@sha256:61b3f153297c1d8765a535cf56eb9df9dc1aa111e7ace92a8d8be2eaef12d8af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-4.6.4` - linux; amd64

```console
$ docker pull couchbase@sha256:6257977bb50af294ad6858532aa75ffeeddfd8df207b399f4f39f102c8139680
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.9 MB (218937749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00289b0042dee50043dad57e07588a674f628e3d58f38c1a62a71cfa3a2b9ce1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 25 Jan 2018 18:22:16 GMT
ADD file:636a7d1b374fb6ccd672a92e56b1e811652a0bf56d64a2d08282850110db548f in / 
# Thu, 25 Jan 2018 18:22:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:22:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:22:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:22:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:22:45 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 18:48:26 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 25 Jan 2018 18:48:50 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 25 Jan 2018 18:49:51 GMT
ARG CB_VERSION=4.6.4
# Thu, 25 Jan 2018 18:49:51 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Thu, 25 Jan 2018 18:49:52 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb
# Thu, 25 Jan 2018 18:49:52 GMT
ARG CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579
# Thu, 25 Jan 2018 18:49:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 25 Jan 2018 18:49:53 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 25 Jan 2018 18:50:20 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 25 Jan 2018 18:50:38 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Thu, 25 Jan 2018 18:50:38 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 25 Jan 2018 18:50:39 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 25 Jan 2018 18:50:40 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 25 Jan 2018 18:50:40 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Thu, 25 Jan 2018 18:50:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 25 Jan 2018 18:50:41 GMT
CMD ["couchbase-server"]
# Thu, 25 Jan 2018 18:50:41 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 25 Jan 2018 18:50:41 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:c954d15f947c57e059f67a156ff2e4c36f4f3e59b37467ff865214a88ebc54d6`  
		Last Modified: Thu, 25 Jan 2018 18:26:39 GMT  
		Size: 73.0 MB (72952953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3688624ef2b94ab3981564e23e1f48df8f1b988519373ccfb79d7974017cb85`  
		Last Modified: Thu, 25 Jan 2018 18:26:29 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848fe4263b3b44987f0eacdb2fc0469ae6ff04b2311e759985dfd27ae5d3641d`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4459d3b04aa0bc7cb7f7021e4d7bbb5e87aa74a6a5f57475a0e8badbd9a26`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ab3b56c8f1a3188464886cbe41f42a969e6f9374e040f13803d796ed27b0ec`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e975e58638c3ee19ec35ad67d790e1fb383fb065a9136b307f497c054b69f28`  
		Last Modified: Thu, 25 Jan 2018 18:53:32 GMT  
		Size: 11.4 MB (11390938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e4bcfa34fd5773b5ade0c221d182ec4bf00f11c7a9ce98d70781223454ff5c`  
		Last Modified: Thu, 25 Jan 2018 18:55:25 GMT  
		Size: 1.9 KB (1907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c6c22a8fc35556f99a92372753452e6df6074295525be28db28866dbeaff0af`  
		Last Modified: Thu, 25 Jan 2018 18:55:55 GMT  
		Size: 134.4 MB (134411163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03448f9c8e973a452529e449eea2a0854ddf0ea3400bc5cb0a526fb7075a0269`  
		Last Modified: Thu, 25 Jan 2018 18:55:23 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0eeabaa4ab4ab6d2491ecefacb5e2901dcb51ce8de5a265fdabeb645873c1c`  
		Last Modified: Thu, 25 Jan 2018 18:55:23 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aed246966d9e958022d25c9953306d7ad38530f612ceefd6d34af876b0ce22a`  
		Last Modified: Thu, 25 Jan 2018 18:55:23 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ad21349358b3432c8af8de49d789dec81f4fb4d1b9d52b2d23fb131bcd2d5c`  
		Last Modified: Thu, 25 Jan 2018 18:55:23 GMT  
		Size: 105.4 KB (105403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3a26004b0815277baf7cfe59d8400b36e1c3e47396a85a708d124c32d1c2c38`  
		Last Modified: Thu, 25 Jan 2018 18:55:23 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-5.1.0`

```console
$ docker pull couchbase@sha256:2584e4e852be044243be489d76932d5cdf69c4d642a36aeec2f5e4e00ed7c21e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-5.1.0` - linux; amd64

```console
$ docker pull couchbase@sha256:1d7f8c4f5e651918b7954d4ec5bba5335c3d2cf42b3039d43b6e67f8d56e9b74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.9 MB (226889233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb651a3a10d3c993789eba5f755b8df14007f0e6c08c9efcdcef18ecc73cdff3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 25 Jan 2018 18:22:16 GMT
ADD file:636a7d1b374fb6ccd672a92e56b1e811652a0bf56d64a2d08282850110db548f in / 
# Thu, 25 Jan 2018 18:22:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:22:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:22:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:22:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:22:45 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 18:48:26 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 25 Jan 2018 18:48:50 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 25 Jan 2018 18:48:50 GMT
ARG CB_VERSION=5.0.1
# Thu, 25 Jan 2018 18:48:50 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Thu, 25 Jan 2018 18:48:51 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb
# Thu, 25 Jan 2018 18:48:51 GMT
ARG CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1
# Thu, 25 Jan 2018 18:48:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 25 Jan 2018 18:49:02 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1 CB_VERSION=5.0.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 25 Jan 2018 18:49:20 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1 CB_VERSION=5.0.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 25 Jan 2018 18:49:26 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Thu, 25 Jan 2018 18:49:27 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 25 Jan 2018 18:49:27 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1 CB_VERSION=5.0.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 25 Jan 2018 18:49:28 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1 CB_VERSION=5.0.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 25 Jan 2018 18:49:29 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Thu, 25 Jan 2018 18:49:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 25 Jan 2018 18:49:29 GMT
CMD ["couchbase-server"]
# Thu, 25 Jan 2018 18:49:29 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 25 Jan 2018 18:49:30 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:c954d15f947c57e059f67a156ff2e4c36f4f3e59b37467ff865214a88ebc54d6`  
		Last Modified: Thu, 25 Jan 2018 18:26:39 GMT  
		Size: 73.0 MB (72952953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3688624ef2b94ab3981564e23e1f48df8f1b988519373ccfb79d7974017cb85`  
		Last Modified: Thu, 25 Jan 2018 18:26:29 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848fe4263b3b44987f0eacdb2fc0469ae6ff04b2311e759985dfd27ae5d3641d`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4459d3b04aa0bc7cb7f7021e4d7bbb5e87aa74a6a5f57475a0e8badbd9a26`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ab3b56c8f1a3188464886cbe41f42a969e6f9374e040f13803d796ed27b0ec`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e975e58638c3ee19ec35ad67d790e1fb383fb065a9136b307f497c054b69f28`  
		Last Modified: Thu, 25 Jan 2018 18:53:32 GMT  
		Size: 11.4 MB (11390938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5866787ecc3db4a4c31e35b08c0bbe90bda40be85342cde6d6aac0b2dd99f19b`  
		Last Modified: Thu, 25 Jan 2018 18:53:27 GMT  
		Size: 1.9 KB (1907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10aa5b655656a474fe9a31c5176f2a92a54c2a8722db1bb0c9f5d4302820a77`  
		Last Modified: Thu, 25 Jan 2018 18:53:57 GMT  
		Size: 142.4 MB (142362651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec602f6430a7e0c7f6e39b708c796b0c51d73b4b082e2bd045613f94c9baa76`  
		Last Modified: Thu, 25 Jan 2018 18:53:24 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06582658f5184688c0d8cb6cf29793448e63338414305b1525635b72df4d5446`  
		Last Modified: Thu, 25 Jan 2018 18:53:24 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0458d8b48c0656576ed0b1fef76279e8f515e682005b3e3a2f0959357089f08d`  
		Last Modified: Thu, 25 Jan 2018 18:53:24 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce5688e11d16c9e53427108c86aee6a2f72f514e6a81e26c26a84d7dd0a9fd46`  
		Last Modified: Thu, 25 Jan 2018 18:53:25 GMT  
		Size: 105.4 KB (105399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee034d58d58fc7d7f3489b92ab487de195eec4dcb100fb0c7afa797c8915217`  
		Last Modified: Thu, 25 Jan 2018 18:53:25 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:latest`

```console
$ docker pull couchbase@sha256:2584e4e852be044243be489d76932d5cdf69c4d642a36aeec2f5e4e00ed7c21e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:latest` - linux; amd64

```console
$ docker pull couchbase@sha256:1d7f8c4f5e651918b7954d4ec5bba5335c3d2cf42b3039d43b6e67f8d56e9b74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.9 MB (226889233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb651a3a10d3c993789eba5f755b8df14007f0e6c08c9efcdcef18ecc73cdff3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 25 Jan 2018 18:22:16 GMT
ADD file:636a7d1b374fb6ccd672a92e56b1e811652a0bf56d64a2d08282850110db548f in / 
# Thu, 25 Jan 2018 18:22:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:22:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:22:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:22:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:22:45 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 18:48:26 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 25 Jan 2018 18:48:50 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 25 Jan 2018 18:48:50 GMT
ARG CB_VERSION=5.0.1
# Thu, 25 Jan 2018 18:48:50 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Thu, 25 Jan 2018 18:48:51 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb
# Thu, 25 Jan 2018 18:48:51 GMT
ARG CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1
# Thu, 25 Jan 2018 18:48:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 25 Jan 2018 18:49:02 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1 CB_VERSION=5.0.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 25 Jan 2018 18:49:20 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1 CB_VERSION=5.0.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 25 Jan 2018 18:49:26 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Thu, 25 Jan 2018 18:49:27 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 25 Jan 2018 18:49:27 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1 CB_VERSION=5.0.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 25 Jan 2018 18:49:28 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1 CB_VERSION=5.0.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 25 Jan 2018 18:49:29 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Thu, 25 Jan 2018 18:49:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 25 Jan 2018 18:49:29 GMT
CMD ["couchbase-server"]
# Thu, 25 Jan 2018 18:49:29 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 25 Jan 2018 18:49:30 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:c954d15f947c57e059f67a156ff2e4c36f4f3e59b37467ff865214a88ebc54d6`  
		Last Modified: Thu, 25 Jan 2018 18:26:39 GMT  
		Size: 73.0 MB (72952953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3688624ef2b94ab3981564e23e1f48df8f1b988519373ccfb79d7974017cb85`  
		Last Modified: Thu, 25 Jan 2018 18:26:29 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848fe4263b3b44987f0eacdb2fc0469ae6ff04b2311e759985dfd27ae5d3641d`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4459d3b04aa0bc7cb7f7021e4d7bbb5e87aa74a6a5f57475a0e8badbd9a26`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ab3b56c8f1a3188464886cbe41f42a969e6f9374e040f13803d796ed27b0ec`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e975e58638c3ee19ec35ad67d790e1fb383fb065a9136b307f497c054b69f28`  
		Last Modified: Thu, 25 Jan 2018 18:53:32 GMT  
		Size: 11.4 MB (11390938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5866787ecc3db4a4c31e35b08c0bbe90bda40be85342cde6d6aac0b2dd99f19b`  
		Last Modified: Thu, 25 Jan 2018 18:53:27 GMT  
		Size: 1.9 KB (1907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10aa5b655656a474fe9a31c5176f2a92a54c2a8722db1bb0c9f5d4302820a77`  
		Last Modified: Thu, 25 Jan 2018 18:53:57 GMT  
		Size: 142.4 MB (142362651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec602f6430a7e0c7f6e39b708c796b0c51d73b4b082e2bd045613f94c9baa76`  
		Last Modified: Thu, 25 Jan 2018 18:53:24 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06582658f5184688c0d8cb6cf29793448e63338414305b1525635b72df4d5446`  
		Last Modified: Thu, 25 Jan 2018 18:53:24 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0458d8b48c0656576ed0b1fef76279e8f515e682005b3e3a2f0959357089f08d`  
		Last Modified: Thu, 25 Jan 2018 18:53:24 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce5688e11d16c9e53427108c86aee6a2f72f514e6a81e26c26a84d7dd0a9fd46`  
		Last Modified: Thu, 25 Jan 2018 18:53:25 GMT  
		Size: 105.4 KB (105399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee034d58d58fc7d7f3489b92ab487de195eec4dcb100fb0c7afa797c8915217`  
		Last Modified: Thu, 25 Jan 2018 18:53:25 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
