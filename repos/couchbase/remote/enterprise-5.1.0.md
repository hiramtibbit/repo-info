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
