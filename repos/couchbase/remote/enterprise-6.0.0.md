## `couchbase:enterprise-6.0.0`

```console
$ docker pull couchbase@sha256:96a8650dee2a88c30c318d7ff133f4c71dca136602912e33aa77f88372359582
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-6.0.0` - linux; amd64

```console
$ docker pull couchbase@sha256:f63dc211e9fdd6fe051d60900d29dda3547af42b885851f18cafe7510bd27557
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.9 MB (344874945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c915a5ec5fd18af017b325d3adb3755928e4fbfd4a26a132962c39ba6a546560`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 19 Oct 2018 00:49:11 GMT
ADD file:01a5c4f2b1dcc8f8aebe00ce8ed6ceda7038abc31d40caf69273240cdd453b84 in / 
# Fri, 19 Oct 2018 00:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:49:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:49:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:49:14 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:49:43 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Fri, 19 Oct 2018 01:50:00 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 30 Oct 2018 06:20:17 GMT
ARG CB_VERSION=6.0.0
# Tue, 30 Oct 2018 06:20:18 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Tue, 30 Oct 2018 06:20:18 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb
# Tue, 30 Oct 2018 06:20:18 GMT
ARG CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686
# Tue, 30 Oct 2018 06:20:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 30 Oct 2018 06:20:19 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686 CB_VERSION=6.0.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 30 Oct 2018 06:20:51 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686 CB_VERSION=6.0.0
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 30 Oct 2018 06:20:51 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Tue, 30 Oct 2018 06:20:52 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686 CB_VERSION=6.0.0
RUN chown -R couchbase:couchbase /etc/service
# Tue, 30 Oct 2018 06:20:52 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 30 Oct 2018 06:20:53 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686 CB_VERSION=6.0.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 30 Oct 2018 06:20:54 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686 CB_VERSION=6.0.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 30 Oct 2018 06:20:54 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Tue, 30 Oct 2018 06:20:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Oct 2018 06:20:54 GMT
CMD ["couchbase-server"]
# Tue, 30 Oct 2018 06:20:55 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 18095/tcp 18096/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp 8095/tcp 8096/tcp
# Tue, 30 Oct 2018 06:20:55 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:18d680d616571900d78ee1c8fff0310f2a2afe39c6ed0ba2651ff667af406c3e`  
		Last Modified: Fri, 05 Oct 2018 22:11:59 GMT  
		Size: 43.4 MB (43352848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0addb6fece630456e0ab187b0aa4304d0851ba60576e7f6f9042a97ee908a796`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e58219b215b359fe002f0ca1f416617b75ca9b36cb274c98d7a5f808711179`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb6959a66df2ea26a26452ba11f84fb64bb45af90204374862ec71ee59f795e7`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b11929e4bbad8aa238c76bf17ddd138911e9ad8aad6c012f84bc61453661c53`  
		Last Modified: Fri, 19 Oct 2018 01:55:52 GMT  
		Size: 14.3 MB (14297801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472582d26403317477a33305f98a4674bf22c0835507b3759b5208ffa42c92ef`  
		Last Modified: Tue, 30 Oct 2018 06:22:11 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c273e5a5e5b838352837d022820f68e8292916cc8a62a60e4bf2d2e0cbb188`  
		Last Modified: Tue, 30 Oct 2018 06:22:57 GMT  
		Size: 287.1 MB (287097856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c50f725b9a479317c3dedfb69185ff5d497d3a5cd1987864fb1f0eb29af303`  
		Last Modified: Tue, 30 Oct 2018 06:22:10 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d035783e65169f6d818084bbe479d5ea75f7f264ab90fb3976952e957a3b0c0`  
		Last Modified: Tue, 30 Oct 2018 06:22:10 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:782cf50ee7757b60ca940ef7f2fe5dac6286fd321e1eb9b7521e229d56ea75c4`  
		Last Modified: Tue, 30 Oct 2018 06:22:11 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663f2d1c203f6284f5d977484e643064f14fbfbdd0523fadb981faa2dbaf26f2`  
		Last Modified: Tue, 30 Oct 2018 06:22:10 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e840c18f90db4704321f4c101cbced7622f1e782c5259b1e68d6f6942e08b9a2`  
		Last Modified: Tue, 30 Oct 2018 06:22:10 GMT  
		Size: 120.6 KB (120598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad56337d3fb21cf39de027cda3ea8f800e8188a75cada0c189cc414e29e30e2e`  
		Last Modified: Tue, 30 Oct 2018 06:22:10 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
