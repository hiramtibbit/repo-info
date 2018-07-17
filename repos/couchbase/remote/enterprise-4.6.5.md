## `couchbase:enterprise-4.6.5`

```console
$ docker pull couchbase@sha256:aa03dcea1e3959cf25e68b657e4cfea63abb389ceeb2a1e985fdb492754cb8a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-4.6.5` - linux; amd64

```console
$ docker pull couchbase@sha256:a3ce268796d6754e836767fb6fac79176fcc411b569fd78f3f36b49a77a53b97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.1 MB (213076858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1056b24be00a89d673fab53596f4a81f030bd32d2b11d5c88c1a3a9937863fb6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 17 Jul 2018 00:53:22 GMT
ADD file:2b307231ea5854129fb2b708dc49d44d30c66023186d861778defb768aa3a8a8 in / 
# Tue, 17 Jul 2018 00:53:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:53:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:53:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:53:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:53:26 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 10:54:25 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Tue, 17 Jul 2018 10:54:56 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 17 Jul 2018 10:54:57 GMT
ARG CB_VERSION=4.6.5
# Tue, 17 Jul 2018 10:54:57 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Tue, 17 Jul 2018 10:54:57 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb
# Tue, 17 Jul 2018 10:54:57 GMT
ARG CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f
# Tue, 17 Jul 2018 10:54:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 17 Jul 2018 10:54:59 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f CB_VERSION=4.6.5
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 17 Jul 2018 10:55:34 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f CB_VERSION=4.6.5
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 17 Jul 2018 10:55:35 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Tue, 17 Jul 2018 10:55:36 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f CB_VERSION=4.6.5
RUN chown -R couchbase:couchbase /etc/service
# Tue, 17 Jul 2018 10:55:36 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 17 Jul 2018 10:55:37 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f CB_VERSION=4.6.5
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 17 Jul 2018 10:55:38 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f CB_VERSION=4.6.5
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 17 Jul 2018 10:55:39 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Tue, 17 Jul 2018 10:55:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 10:55:39 GMT
CMD ["couchbase-server"]
# Tue, 17 Jul 2018 10:55:39 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 17 Jul 2018 10:55:40 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:8284e13a281d55cc734a66ada0b6cabef2447ce16e91ce96317eca132253f734`  
		Last Modified: Tue, 17 Jul 2018 00:58:36 GMT  
		Size: 67.1 MB (67127095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e1916a92974ed667a04ce36771ef2599e58e2e3b118375e19a8af98c6fa3b2`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4102fc66d4abcb83d0739b402e2fd6e9a884d75ad9cbada70bc9286d58d97abf`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf2b01777b2f9a1c015cc2b7c39b9916de816806c3eee2d1b6cd63757868451`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7a2d5e04ed4e9237521229a3e7837dc552b4e1157b79c02c2fecbc14003032`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda26a9f9dc8092c386d3411a7f079263046e6d893e4285a6046fe78bd440909`  
		Last Modified: Tue, 17 Jul 2018 11:02:06 GMT  
		Size: 11.4 MB (11391854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e53161f2818caea7028d2c82f3b210195f6f74c35f3a82aa3d3c64401d0882`  
		Last Modified: Tue, 17 Jul 2018 11:02:01 GMT  
		Size: 1.9 KB (1910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe7eeeb8dae6bb9117937e40253d5dc4340d06e728eee59bcc1bf05110b860aa`  
		Last Modified: Tue, 17 Jul 2018 11:02:45 GMT  
		Size: 134.4 MB (134374446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7d8f2afa2ddb7684ccc34f3150c41334997b465036282340f02beeef96d48a`  
		Last Modified: Tue, 17 Jul 2018 11:02:01 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3cffdd2638d6b7ee86bbc5454def16fa5f37f85104f7577a775c9028826f262`  
		Last Modified: Tue, 17 Jul 2018 11:01:58 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7e17f96b259769645f1bfddb268cd89fadb9b7e4b2a87841a257acb4fbda2d0`  
		Last Modified: Tue, 17 Jul 2018 11:01:58 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb1e716d1556cebeb92b2521cbd5b1e65989d96d1870569bb1dbf0bd7da7e59`  
		Last Modified: Tue, 17 Jul 2018 11:01:58 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac44a25f323e5fa88d6b58ecf8ecc7cf31397bac0fc4112635eb6fc338fb6bd9`  
		Last Modified: Tue, 17 Jul 2018 11:01:58 GMT  
		Size: 105.4 KB (105403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3590e9151849e632728c4e1490bf03988ad4d8e977eb991bb383395a57e19a8f`  
		Last Modified: Tue, 17 Jul 2018 11:01:58 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
