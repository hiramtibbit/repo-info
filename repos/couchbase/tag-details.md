<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `couchbase`

-	[`couchbase:4.6.5`](#couchbase465)
-	[`couchbase:5.5.0`](#couchbase550)
-	[`couchbase:community`](#couchbasecommunity)
-	[`couchbase:community-4.5.1`](#couchbasecommunity-451)
-	[`couchbase:community-5.1.1`](#couchbasecommunity-511)
-	[`couchbase:enterprise`](#couchbaseenterprise)
-	[`couchbase:enterprise-4.6.5`](#couchbaseenterprise-465)
-	[`couchbase:enterprise-5.5.0`](#couchbaseenterprise-550)
-	[`couchbase:latest`](#couchbaselatest)

## `couchbase:4.6.5`

```console
$ docker pull couchbase@sha256:38e2d4cf83caceb59ed32cd7a4a02c3c25233e0b5153630a0ec65b1d840df9ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:4.6.5` - linux; amd64

```console
$ docker pull couchbase@sha256:3b1e4a94a736ba8bdc3cade6a67ee04b1bc041aad422258275e716d94f39c692
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.1 MB (213076858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da27a9b9d0edda54fec64b28b951e7cd1d528572fc8fa35508567ceecafac59b`
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
# Mon, 23 Jul 2018 21:21:09 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 18095/tcp 18096/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp 8095/tcp 8096/tcp
# Mon, 23 Jul 2018 21:21:09 GMT
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

## `couchbase:5.5.0`

```console
$ docker pull couchbase@sha256:4ade44792ab55ffa5fb68eae9af4ed93941ba2a3777c9f56553c5f8f96e9dc19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:5.5.0` - linux; amd64

```console
$ docker pull couchbase@sha256:49940497188452608dc63c89503f69e35664f10664155aea80a56684d419f236
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.4 MB (321420776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c46c5c493751c0fcced66d5021c920c79d2fc1bf7e2a2c4ea95405bf85c03610`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 26 Jul 2018 22:23:08 GMT
ADD file:204fb7ccb19ff7e863331131138621ff4d22720b3718e8f296902cc7d4f635b5 in / 
# Thu, 26 Jul 2018 22:23:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:23:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:23:11 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:06:23 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 26 Jul 2018 23:06:54 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 26 Jul 2018 23:06:55 GMT
ARG CB_VERSION=5.5.0
# Thu, 26 Jul 2018 23:06:55 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Thu, 26 Jul 2018 23:06:55 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.5.0-ubuntu16.04_amd64.deb
# Thu, 26 Jul 2018 23:06:56 GMT
ARG CB_SHA256=9eb499e953451e0675d4a3d04cee40b654d3d548d54f1fdece97c2a192f7d778
# Thu, 26 Jul 2018 23:06:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 26 Jul 2018 23:06:57 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9eb499e953451e0675d4a3d04cee40b654d3d548d54f1fdece97c2a192f7d778 CB_VERSION=5.5.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 26 Jul 2018 23:07:43 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9eb499e953451e0675d4a3d04cee40b654d3d548d54f1fdece97c2a192f7d778 CB_VERSION=5.5.0
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 26 Jul 2018 23:07:44 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Thu, 26 Jul 2018 23:07:45 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9eb499e953451e0675d4a3d04cee40b654d3d548d54f1fdece97c2a192f7d778 CB_VERSION=5.5.0
RUN chown -R couchbase:couchbase /etc/service
# Thu, 26 Jul 2018 23:07:46 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 26 Jul 2018 23:07:46 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9eb499e953451e0675d4a3d04cee40b654d3d548d54f1fdece97c2a192f7d778 CB_VERSION=5.5.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 26 Jul 2018 23:07:47 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9eb499e953451e0675d4a3d04cee40b654d3d548d54f1fdece97c2a192f7d778 CB_VERSION=5.5.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 26 Jul 2018 23:07:47 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Thu, 26 Jul 2018 23:07:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Jul 2018 23:07:48 GMT
CMD ["couchbase-server"]
# Thu, 26 Jul 2018 23:07:48 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 18095/tcp 18096/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp 8095/tcp 8096/tcp
# Thu, 26 Jul 2018 23:07:49 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:8ee29e426c26c79e7ba03ccc8bbc7fe99db00ffcbccb679d9c643b5546d8dc8a`  
		Last Modified: Thu, 26 Jul 2018 22:27:22 GMT  
		Size: 43.2 MB (43228646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e83b260b73b908ebabde46b72fc5790bf4f029b53acbbfe35da8ff8fba795ac`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26b65fd1143ee4f9b7b6b958aeafdb996172d10b723f0bba24335a8f7ae692c`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dca07f8222e24aab97f026444d66a7604e4ae2b708cf079ff67a90c42efa60`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b420ae9e10b3f6a74f527914bc3c766b128435a62eca1061f41167205d5b0230`  
		Last Modified: Thu, 26 Jul 2018 22:26:54 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08dfef37a65dc49d6a9dc8038b622e16101e8a22ac730ff3886369b4f8ac4b64`  
		Last Modified: Thu, 26 Jul 2018 23:09:27 GMT  
		Size: 14.3 MB (14295515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8a520a623ffbcb347a3d6a00bf129c33eb0fe5454f748825102e7ae30eae63`  
		Last Modified: Thu, 26 Jul 2018 23:09:19 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48e9112571dc6053a87dcc92973dcef2605fed27590f8c2387877a071eae381`  
		Last Modified: Thu, 26 Jul 2018 23:10:43 GMT  
		Size: 263.8 MB (263782486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f7a0a69be54dbb8e02245dd56962f303ad2b9f5c39a0d079b11fcdbf246fdf`  
		Last Modified: Thu, 26 Jul 2018 23:09:19 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b064263f75bac59c5cf6e02ed63497225dee010192f70d838bc102257856acdc`  
		Last Modified: Thu, 26 Jul 2018 23:09:16 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7204ea70aa6686c488a6e158efed8ceae3e51d7a4e2a97819b1e98a0f9ccfcde`  
		Last Modified: Thu, 26 Jul 2018 23:09:16 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55ca910ea611b74f602f221e06d44b7841723c01d8df2b7bc01baa4fca8987c`  
		Last Modified: Thu, 26 Jul 2018 23:09:16 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e283afe03ca69e16fd1d73af00c7d9303e3e8333c63c764299e11f045e399f`  
		Last Modified: Thu, 26 Jul 2018 23:09:16 GMT  
		Size: 107.5 KB (107456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6b260b1dc9ddc54a25baade96989d95eaa3c6ea077500fa8f0859886c8b3f4`  
		Last Modified: Thu, 26 Jul 2018 23:09:16 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community`

```console
$ docker pull couchbase@sha256:df34135efe9958e6c8e1af0fb9f463d588b0d1865090f7215c28094b6948916c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community` - linux; amd64

```console
$ docker pull couchbase@sha256:6fc651a76acd074f92b48b931bc98180db9f57e83a46651099150989c4126a66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.6 MB (190567200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc851a248cc4426a7078ea7b6b127026e262160e0bb1da7cf2e6f8a9e5681ca7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 26 Jul 2018 22:23:08 GMT
ADD file:204fb7ccb19ff7e863331131138621ff4d22720b3718e8f296902cc7d4f635b5 in / 
# Thu, 26 Jul 2018 22:23:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:23:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:23:11 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:06:23 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 26 Jul 2018 23:06:54 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 26 Jul 2018 23:08:20 GMT
ARG CB_VERSION=5.1.1
# Thu, 26 Jul 2018 23:08:21 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Thu, 26 Jul 2018 23:08:21 GMT
ARG CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb
# Thu, 26 Jul 2018 23:08:21 GMT
ARG CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb
# Thu, 26 Jul 2018 23:08:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 26 Jul 2018 23:08:22 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 26 Jul 2018 23:08:44 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 26 Jul 2018 23:08:44 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Thu, 26 Jul 2018 23:08:45 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN chown -R couchbase:couchbase /etc/service
# Thu, 26 Jul 2018 23:08:46 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 26 Jul 2018 23:08:46 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 26 Jul 2018 23:08:47 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 26 Jul 2018 23:08:48 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Thu, 26 Jul 2018 23:08:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Jul 2018 23:08:48 GMT
CMD ["couchbase-server"]
# Thu, 26 Jul 2018 23:08:48 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 18095/tcp 18096/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp 8095/tcp 8096/tcp
# Thu, 26 Jul 2018 23:08:49 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:8ee29e426c26c79e7ba03ccc8bbc7fe99db00ffcbccb679d9c643b5546d8dc8a`  
		Last Modified: Thu, 26 Jul 2018 22:27:22 GMT  
		Size: 43.2 MB (43228646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e83b260b73b908ebabde46b72fc5790bf4f029b53acbbfe35da8ff8fba795ac`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26b65fd1143ee4f9b7b6b958aeafdb996172d10b723f0bba24335a8f7ae692c`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dca07f8222e24aab97f026444d66a7604e4ae2b708cf079ff67a90c42efa60`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b420ae9e10b3f6a74f527914bc3c766b128435a62eca1061f41167205d5b0230`  
		Last Modified: Thu, 26 Jul 2018 22:26:54 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08dfef37a65dc49d6a9dc8038b622e16101e8a22ac730ff3886369b4f8ac4b64`  
		Last Modified: Thu, 26 Jul 2018 23:09:27 GMT  
		Size: 14.3 MB (14295515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705d76dba384edef38fc262951379e03f4f0bcc3e040cc41b3350f5201b2a252`  
		Last Modified: Thu, 26 Jul 2018 23:12:23 GMT  
		Size: 2.1 KB (2070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9350eb60e79d709d9f099d1b4c1ff74e83fceb57b03473672cc0995181ebe23`  
		Last Modified: Thu, 26 Jul 2018 23:13:04 GMT  
		Size: 132.9 MB (132928909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c28e0edcfe87011fe4bcb85eaa34e27e00c5e91883d5bfd62f7a0d0712b4140`  
		Last Modified: Thu, 26 Jul 2018 23:12:22 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3f65b990ee7c106aaa99705760e4373b3ee24f75aa327280b75afd7695958e`  
		Last Modified: Thu, 26 Jul 2018 23:12:16 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23609b3ae7320f63550de6cab6a60a03bcdadc66bc7b9a1ebb5ce7f4dd5b8ac`  
		Last Modified: Thu, 26 Jul 2018 23:12:16 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132aa1e90383ea9c6e5eb402ac29c9607716c69586220e8f00673459312c1829`  
		Last Modified: Thu, 26 Jul 2018 23:12:16 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c69a550b476a135143129a027d3a179d84288bb748aecc85770fe6b3206d73`  
		Last Modified: Thu, 26 Jul 2018 23:12:16 GMT  
		Size: 107.5 KB (107458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cec1a24ed55ac08d08d97c6842d7bf09068cc4d4c572185a6b3e1a4c69b3c48`  
		Last Modified: Thu, 26 Jul 2018 23:12:16 GMT  
		Size: 858.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-4.5.1`

```console
$ docker pull couchbase@sha256:1bf63f4d8f0812030c701bfcec0d744724785aae2d6df5aad1f22197ed7480cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community-4.5.1` - linux; amd64

```console
$ docker pull couchbase@sha256:e0d0700f336453212e53914edc61fffdbc714fcdd52a33bbe7d109bc6328447a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.8 MB (209753661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd99bd52688fd889e6b3176233454fb2f4f17e20548f7f4789fa9defccd57bdc`
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
# Tue, 17 Jul 2018 10:57:15 GMT
ARG CB_VERSION=4.5.1
# Tue, 17 Jul 2018 10:57:15 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Tue, 17 Jul 2018 10:57:16 GMT
ARG CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb
# Tue, 17 Jul 2018 10:57:16 GMT
ARG CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234
# Tue, 17 Jul 2018 10:57:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 17 Jul 2018 10:57:17 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 17 Jul 2018 10:57:46 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 17 Jul 2018 10:57:47 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Tue, 17 Jul 2018 10:57:48 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN chown -R couchbase:couchbase /etc/service
# Tue, 17 Jul 2018 10:57:49 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 17 Jul 2018 10:57:50 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 17 Jul 2018 10:57:51 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 17 Jul 2018 10:57:51 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Tue, 17 Jul 2018 10:57:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 10:57:52 GMT
CMD ["couchbase-server"]
# Mon, 23 Jul 2018 21:21:37 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 18095/tcp 18096/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp 8095/tcp 8096/tcp
# Mon, 23 Jul 2018 21:21:38 GMT
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
	-	`sha256:4721518910dbd8cb56561e3b773e4f5416f1720920655ca9ba426c7ba7cf88aa`  
		Last Modified: Tue, 17 Jul 2018 11:04:44 GMT  
		Size: 1.9 KB (1908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ef7e09d8e08017f46adff99c914214dfbfad4eaacf17b584cf1a31fe4de8bf`  
		Last Modified: Tue, 17 Jul 2018 11:05:26 GMT  
		Size: 131.1 MB (131051244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:166adaabb33932f6825a659cbce8bb06bd60c42888dc99c5cad1f6ce609a7e76`  
		Last Modified: Tue, 17 Jul 2018 11:04:45 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af54fcb022552537ec46967bf10517d2fc27ce4253f5bee378bb5f82ba25b332`  
		Last Modified: Tue, 17 Jul 2018 11:04:41 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb41484e517fdaf2c62b0f457d97bee5c073d5e8a0ef076b427ac14884037e9`  
		Last Modified: Tue, 17 Jul 2018 11:04:41 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41ede46fb3839aceb46787e73f8fbdd4acab4f9444607751d2c750acef0df41`  
		Last Modified: Tue, 17 Jul 2018 11:04:41 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf2a21f1950a56ed2a4c1b81fbc2a2d41e6383267b1796c9c3d3afecf752a7d`  
		Last Modified: Tue, 17 Jul 2018 11:04:41 GMT  
		Size: 105.4 KB (105403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f5d1ba501fbc4987b0352fa86e402b35b074ddb929c01209fcc8ef92e394c4`  
		Last Modified: Tue, 17 Jul 2018 11:04:42 GMT  
		Size: 858.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-5.1.1`

```console
$ docker pull couchbase@sha256:df34135efe9958e6c8e1af0fb9f463d588b0d1865090f7215c28094b6948916c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community-5.1.1` - linux; amd64

```console
$ docker pull couchbase@sha256:6fc651a76acd074f92b48b931bc98180db9f57e83a46651099150989c4126a66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.6 MB (190567200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc851a248cc4426a7078ea7b6b127026e262160e0bb1da7cf2e6f8a9e5681ca7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 26 Jul 2018 22:23:08 GMT
ADD file:204fb7ccb19ff7e863331131138621ff4d22720b3718e8f296902cc7d4f635b5 in / 
# Thu, 26 Jul 2018 22:23:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:23:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:23:11 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:06:23 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 26 Jul 2018 23:06:54 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 26 Jul 2018 23:08:20 GMT
ARG CB_VERSION=5.1.1
# Thu, 26 Jul 2018 23:08:21 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Thu, 26 Jul 2018 23:08:21 GMT
ARG CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb
# Thu, 26 Jul 2018 23:08:21 GMT
ARG CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb
# Thu, 26 Jul 2018 23:08:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 26 Jul 2018 23:08:22 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 26 Jul 2018 23:08:44 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 26 Jul 2018 23:08:44 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Thu, 26 Jul 2018 23:08:45 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN chown -R couchbase:couchbase /etc/service
# Thu, 26 Jul 2018 23:08:46 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 26 Jul 2018 23:08:46 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 26 Jul 2018 23:08:47 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 26 Jul 2018 23:08:48 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Thu, 26 Jul 2018 23:08:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Jul 2018 23:08:48 GMT
CMD ["couchbase-server"]
# Thu, 26 Jul 2018 23:08:48 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 18095/tcp 18096/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp 8095/tcp 8096/tcp
# Thu, 26 Jul 2018 23:08:49 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:8ee29e426c26c79e7ba03ccc8bbc7fe99db00ffcbccb679d9c643b5546d8dc8a`  
		Last Modified: Thu, 26 Jul 2018 22:27:22 GMT  
		Size: 43.2 MB (43228646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e83b260b73b908ebabde46b72fc5790bf4f029b53acbbfe35da8ff8fba795ac`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26b65fd1143ee4f9b7b6b958aeafdb996172d10b723f0bba24335a8f7ae692c`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dca07f8222e24aab97f026444d66a7604e4ae2b708cf079ff67a90c42efa60`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b420ae9e10b3f6a74f527914bc3c766b128435a62eca1061f41167205d5b0230`  
		Last Modified: Thu, 26 Jul 2018 22:26:54 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08dfef37a65dc49d6a9dc8038b622e16101e8a22ac730ff3886369b4f8ac4b64`  
		Last Modified: Thu, 26 Jul 2018 23:09:27 GMT  
		Size: 14.3 MB (14295515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705d76dba384edef38fc262951379e03f4f0bcc3e040cc41b3350f5201b2a252`  
		Last Modified: Thu, 26 Jul 2018 23:12:23 GMT  
		Size: 2.1 KB (2070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9350eb60e79d709d9f099d1b4c1ff74e83fceb57b03473672cc0995181ebe23`  
		Last Modified: Thu, 26 Jul 2018 23:13:04 GMT  
		Size: 132.9 MB (132928909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c28e0edcfe87011fe4bcb85eaa34e27e00c5e91883d5bfd62f7a0d0712b4140`  
		Last Modified: Thu, 26 Jul 2018 23:12:22 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3f65b990ee7c106aaa99705760e4373b3ee24f75aa327280b75afd7695958e`  
		Last Modified: Thu, 26 Jul 2018 23:12:16 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23609b3ae7320f63550de6cab6a60a03bcdadc66bc7b9a1ebb5ce7f4dd5b8ac`  
		Last Modified: Thu, 26 Jul 2018 23:12:16 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132aa1e90383ea9c6e5eb402ac29c9607716c69586220e8f00673459312c1829`  
		Last Modified: Thu, 26 Jul 2018 23:12:16 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c69a550b476a135143129a027d3a179d84288bb748aecc85770fe6b3206d73`  
		Last Modified: Thu, 26 Jul 2018 23:12:16 GMT  
		Size: 107.5 KB (107458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cec1a24ed55ac08d08d97c6842d7bf09068cc4d4c572185a6b3e1a4c69b3c48`  
		Last Modified: Thu, 26 Jul 2018 23:12:16 GMT  
		Size: 858.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise`

```console
$ docker pull couchbase@sha256:4ade44792ab55ffa5fb68eae9af4ed93941ba2a3777c9f56553c5f8f96e9dc19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise` - linux; amd64

```console
$ docker pull couchbase@sha256:49940497188452608dc63c89503f69e35664f10664155aea80a56684d419f236
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.4 MB (321420776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c46c5c493751c0fcced66d5021c920c79d2fc1bf7e2a2c4ea95405bf85c03610`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 26 Jul 2018 22:23:08 GMT
ADD file:204fb7ccb19ff7e863331131138621ff4d22720b3718e8f296902cc7d4f635b5 in / 
# Thu, 26 Jul 2018 22:23:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:23:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:23:11 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:06:23 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 26 Jul 2018 23:06:54 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 26 Jul 2018 23:06:55 GMT
ARG CB_VERSION=5.5.0
# Thu, 26 Jul 2018 23:06:55 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Thu, 26 Jul 2018 23:06:55 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.5.0-ubuntu16.04_amd64.deb
# Thu, 26 Jul 2018 23:06:56 GMT
ARG CB_SHA256=9eb499e953451e0675d4a3d04cee40b654d3d548d54f1fdece97c2a192f7d778
# Thu, 26 Jul 2018 23:06:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 26 Jul 2018 23:06:57 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9eb499e953451e0675d4a3d04cee40b654d3d548d54f1fdece97c2a192f7d778 CB_VERSION=5.5.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 26 Jul 2018 23:07:43 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9eb499e953451e0675d4a3d04cee40b654d3d548d54f1fdece97c2a192f7d778 CB_VERSION=5.5.0
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 26 Jul 2018 23:07:44 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Thu, 26 Jul 2018 23:07:45 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9eb499e953451e0675d4a3d04cee40b654d3d548d54f1fdece97c2a192f7d778 CB_VERSION=5.5.0
RUN chown -R couchbase:couchbase /etc/service
# Thu, 26 Jul 2018 23:07:46 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 26 Jul 2018 23:07:46 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9eb499e953451e0675d4a3d04cee40b654d3d548d54f1fdece97c2a192f7d778 CB_VERSION=5.5.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 26 Jul 2018 23:07:47 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9eb499e953451e0675d4a3d04cee40b654d3d548d54f1fdece97c2a192f7d778 CB_VERSION=5.5.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 26 Jul 2018 23:07:47 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Thu, 26 Jul 2018 23:07:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Jul 2018 23:07:48 GMT
CMD ["couchbase-server"]
# Thu, 26 Jul 2018 23:07:48 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 18095/tcp 18096/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp 8095/tcp 8096/tcp
# Thu, 26 Jul 2018 23:07:49 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:8ee29e426c26c79e7ba03ccc8bbc7fe99db00ffcbccb679d9c643b5546d8dc8a`  
		Last Modified: Thu, 26 Jul 2018 22:27:22 GMT  
		Size: 43.2 MB (43228646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e83b260b73b908ebabde46b72fc5790bf4f029b53acbbfe35da8ff8fba795ac`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26b65fd1143ee4f9b7b6b958aeafdb996172d10b723f0bba24335a8f7ae692c`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dca07f8222e24aab97f026444d66a7604e4ae2b708cf079ff67a90c42efa60`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b420ae9e10b3f6a74f527914bc3c766b128435a62eca1061f41167205d5b0230`  
		Last Modified: Thu, 26 Jul 2018 22:26:54 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08dfef37a65dc49d6a9dc8038b622e16101e8a22ac730ff3886369b4f8ac4b64`  
		Last Modified: Thu, 26 Jul 2018 23:09:27 GMT  
		Size: 14.3 MB (14295515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8a520a623ffbcb347a3d6a00bf129c33eb0fe5454f748825102e7ae30eae63`  
		Last Modified: Thu, 26 Jul 2018 23:09:19 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48e9112571dc6053a87dcc92973dcef2605fed27590f8c2387877a071eae381`  
		Last Modified: Thu, 26 Jul 2018 23:10:43 GMT  
		Size: 263.8 MB (263782486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f7a0a69be54dbb8e02245dd56962f303ad2b9f5c39a0d079b11fcdbf246fdf`  
		Last Modified: Thu, 26 Jul 2018 23:09:19 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b064263f75bac59c5cf6e02ed63497225dee010192f70d838bc102257856acdc`  
		Last Modified: Thu, 26 Jul 2018 23:09:16 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7204ea70aa6686c488a6e158efed8ceae3e51d7a4e2a97819b1e98a0f9ccfcde`  
		Last Modified: Thu, 26 Jul 2018 23:09:16 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55ca910ea611b74f602f221e06d44b7841723c01d8df2b7bc01baa4fca8987c`  
		Last Modified: Thu, 26 Jul 2018 23:09:16 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e283afe03ca69e16fd1d73af00c7d9303e3e8333c63c764299e11f045e399f`  
		Last Modified: Thu, 26 Jul 2018 23:09:16 GMT  
		Size: 107.5 KB (107456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6b260b1dc9ddc54a25baade96989d95eaa3c6ea077500fa8f0859886c8b3f4`  
		Last Modified: Thu, 26 Jul 2018 23:09:16 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-4.6.5`

```console
$ docker pull couchbase@sha256:38e2d4cf83caceb59ed32cd7a4a02c3c25233e0b5153630a0ec65b1d840df9ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-4.6.5` - linux; amd64

```console
$ docker pull couchbase@sha256:3b1e4a94a736ba8bdc3cade6a67ee04b1bc041aad422258275e716d94f39c692
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.1 MB (213076858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da27a9b9d0edda54fec64b28b951e7cd1d528572fc8fa35508567ceecafac59b`
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
# Mon, 23 Jul 2018 21:21:09 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 18095/tcp 18096/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp 8095/tcp 8096/tcp
# Mon, 23 Jul 2018 21:21:09 GMT
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

## `couchbase:enterprise-5.5.0`

```console
$ docker pull couchbase@sha256:4ade44792ab55ffa5fb68eae9af4ed93941ba2a3777c9f56553c5f8f96e9dc19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-5.5.0` - linux; amd64

```console
$ docker pull couchbase@sha256:49940497188452608dc63c89503f69e35664f10664155aea80a56684d419f236
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.4 MB (321420776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c46c5c493751c0fcced66d5021c920c79d2fc1bf7e2a2c4ea95405bf85c03610`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 26 Jul 2018 22:23:08 GMT
ADD file:204fb7ccb19ff7e863331131138621ff4d22720b3718e8f296902cc7d4f635b5 in / 
# Thu, 26 Jul 2018 22:23:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:23:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:23:11 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:06:23 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 26 Jul 2018 23:06:54 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 26 Jul 2018 23:06:55 GMT
ARG CB_VERSION=5.5.0
# Thu, 26 Jul 2018 23:06:55 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Thu, 26 Jul 2018 23:06:55 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.5.0-ubuntu16.04_amd64.deb
# Thu, 26 Jul 2018 23:06:56 GMT
ARG CB_SHA256=9eb499e953451e0675d4a3d04cee40b654d3d548d54f1fdece97c2a192f7d778
# Thu, 26 Jul 2018 23:06:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 26 Jul 2018 23:06:57 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9eb499e953451e0675d4a3d04cee40b654d3d548d54f1fdece97c2a192f7d778 CB_VERSION=5.5.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 26 Jul 2018 23:07:43 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9eb499e953451e0675d4a3d04cee40b654d3d548d54f1fdece97c2a192f7d778 CB_VERSION=5.5.0
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 26 Jul 2018 23:07:44 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Thu, 26 Jul 2018 23:07:45 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9eb499e953451e0675d4a3d04cee40b654d3d548d54f1fdece97c2a192f7d778 CB_VERSION=5.5.0
RUN chown -R couchbase:couchbase /etc/service
# Thu, 26 Jul 2018 23:07:46 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 26 Jul 2018 23:07:46 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9eb499e953451e0675d4a3d04cee40b654d3d548d54f1fdece97c2a192f7d778 CB_VERSION=5.5.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 26 Jul 2018 23:07:47 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9eb499e953451e0675d4a3d04cee40b654d3d548d54f1fdece97c2a192f7d778 CB_VERSION=5.5.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 26 Jul 2018 23:07:47 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Thu, 26 Jul 2018 23:07:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Jul 2018 23:07:48 GMT
CMD ["couchbase-server"]
# Thu, 26 Jul 2018 23:07:48 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 18095/tcp 18096/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp 8095/tcp 8096/tcp
# Thu, 26 Jul 2018 23:07:49 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:8ee29e426c26c79e7ba03ccc8bbc7fe99db00ffcbccb679d9c643b5546d8dc8a`  
		Last Modified: Thu, 26 Jul 2018 22:27:22 GMT  
		Size: 43.2 MB (43228646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e83b260b73b908ebabde46b72fc5790bf4f029b53acbbfe35da8ff8fba795ac`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26b65fd1143ee4f9b7b6b958aeafdb996172d10b723f0bba24335a8f7ae692c`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dca07f8222e24aab97f026444d66a7604e4ae2b708cf079ff67a90c42efa60`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b420ae9e10b3f6a74f527914bc3c766b128435a62eca1061f41167205d5b0230`  
		Last Modified: Thu, 26 Jul 2018 22:26:54 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08dfef37a65dc49d6a9dc8038b622e16101e8a22ac730ff3886369b4f8ac4b64`  
		Last Modified: Thu, 26 Jul 2018 23:09:27 GMT  
		Size: 14.3 MB (14295515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8a520a623ffbcb347a3d6a00bf129c33eb0fe5454f748825102e7ae30eae63`  
		Last Modified: Thu, 26 Jul 2018 23:09:19 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48e9112571dc6053a87dcc92973dcef2605fed27590f8c2387877a071eae381`  
		Last Modified: Thu, 26 Jul 2018 23:10:43 GMT  
		Size: 263.8 MB (263782486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f7a0a69be54dbb8e02245dd56962f303ad2b9f5c39a0d079b11fcdbf246fdf`  
		Last Modified: Thu, 26 Jul 2018 23:09:19 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b064263f75bac59c5cf6e02ed63497225dee010192f70d838bc102257856acdc`  
		Last Modified: Thu, 26 Jul 2018 23:09:16 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7204ea70aa6686c488a6e158efed8ceae3e51d7a4e2a97819b1e98a0f9ccfcde`  
		Last Modified: Thu, 26 Jul 2018 23:09:16 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55ca910ea611b74f602f221e06d44b7841723c01d8df2b7bc01baa4fca8987c`  
		Last Modified: Thu, 26 Jul 2018 23:09:16 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e283afe03ca69e16fd1d73af00c7d9303e3e8333c63c764299e11f045e399f`  
		Last Modified: Thu, 26 Jul 2018 23:09:16 GMT  
		Size: 107.5 KB (107456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6b260b1dc9ddc54a25baade96989d95eaa3c6ea077500fa8f0859886c8b3f4`  
		Last Modified: Thu, 26 Jul 2018 23:09:16 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:latest`

```console
$ docker pull couchbase@sha256:4ade44792ab55ffa5fb68eae9af4ed93941ba2a3777c9f56553c5f8f96e9dc19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:latest` - linux; amd64

```console
$ docker pull couchbase@sha256:49940497188452608dc63c89503f69e35664f10664155aea80a56684d419f236
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.4 MB (321420776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c46c5c493751c0fcced66d5021c920c79d2fc1bf7e2a2c4ea95405bf85c03610`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 26 Jul 2018 22:23:08 GMT
ADD file:204fb7ccb19ff7e863331131138621ff4d22720b3718e8f296902cc7d4f635b5 in / 
# Thu, 26 Jul 2018 22:23:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:23:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:23:11 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:06:23 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 26 Jul 2018 23:06:54 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 26 Jul 2018 23:06:55 GMT
ARG CB_VERSION=5.5.0
# Thu, 26 Jul 2018 23:06:55 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Thu, 26 Jul 2018 23:06:55 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.5.0-ubuntu16.04_amd64.deb
# Thu, 26 Jul 2018 23:06:56 GMT
ARG CB_SHA256=9eb499e953451e0675d4a3d04cee40b654d3d548d54f1fdece97c2a192f7d778
# Thu, 26 Jul 2018 23:06:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 26 Jul 2018 23:06:57 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9eb499e953451e0675d4a3d04cee40b654d3d548d54f1fdece97c2a192f7d778 CB_VERSION=5.5.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 26 Jul 2018 23:07:43 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9eb499e953451e0675d4a3d04cee40b654d3d548d54f1fdece97c2a192f7d778 CB_VERSION=5.5.0
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 26 Jul 2018 23:07:44 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Thu, 26 Jul 2018 23:07:45 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9eb499e953451e0675d4a3d04cee40b654d3d548d54f1fdece97c2a192f7d778 CB_VERSION=5.5.0
RUN chown -R couchbase:couchbase /etc/service
# Thu, 26 Jul 2018 23:07:46 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 26 Jul 2018 23:07:46 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9eb499e953451e0675d4a3d04cee40b654d3d548d54f1fdece97c2a192f7d778 CB_VERSION=5.5.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 26 Jul 2018 23:07:47 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9eb499e953451e0675d4a3d04cee40b654d3d548d54f1fdece97c2a192f7d778 CB_VERSION=5.5.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 26 Jul 2018 23:07:47 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Thu, 26 Jul 2018 23:07:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Jul 2018 23:07:48 GMT
CMD ["couchbase-server"]
# Thu, 26 Jul 2018 23:07:48 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 18095/tcp 18096/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp 8095/tcp 8096/tcp
# Thu, 26 Jul 2018 23:07:49 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:8ee29e426c26c79e7ba03ccc8bbc7fe99db00ffcbccb679d9c643b5546d8dc8a`  
		Last Modified: Thu, 26 Jul 2018 22:27:22 GMT  
		Size: 43.2 MB (43228646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e83b260b73b908ebabde46b72fc5790bf4f029b53acbbfe35da8ff8fba795ac`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26b65fd1143ee4f9b7b6b958aeafdb996172d10b723f0bba24335a8f7ae692c`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dca07f8222e24aab97f026444d66a7604e4ae2b708cf079ff67a90c42efa60`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b420ae9e10b3f6a74f527914bc3c766b128435a62eca1061f41167205d5b0230`  
		Last Modified: Thu, 26 Jul 2018 22:26:54 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08dfef37a65dc49d6a9dc8038b622e16101e8a22ac730ff3886369b4f8ac4b64`  
		Last Modified: Thu, 26 Jul 2018 23:09:27 GMT  
		Size: 14.3 MB (14295515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8a520a623ffbcb347a3d6a00bf129c33eb0fe5454f748825102e7ae30eae63`  
		Last Modified: Thu, 26 Jul 2018 23:09:19 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48e9112571dc6053a87dcc92973dcef2605fed27590f8c2387877a071eae381`  
		Last Modified: Thu, 26 Jul 2018 23:10:43 GMT  
		Size: 263.8 MB (263782486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f7a0a69be54dbb8e02245dd56962f303ad2b9f5c39a0d079b11fcdbf246fdf`  
		Last Modified: Thu, 26 Jul 2018 23:09:19 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b064263f75bac59c5cf6e02ed63497225dee010192f70d838bc102257856acdc`  
		Last Modified: Thu, 26 Jul 2018 23:09:16 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7204ea70aa6686c488a6e158efed8ceae3e51d7a4e2a97819b1e98a0f9ccfcde`  
		Last Modified: Thu, 26 Jul 2018 23:09:16 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55ca910ea611b74f602f221e06d44b7841723c01d8df2b7bc01baa4fca8987c`  
		Last Modified: Thu, 26 Jul 2018 23:09:16 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e283afe03ca69e16fd1d73af00c7d9303e3e8333c63c764299e11f045e399f`  
		Last Modified: Thu, 26 Jul 2018 23:09:16 GMT  
		Size: 107.5 KB (107456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6b260b1dc9ddc54a25baade96989d95eaa3c6ea077500fa8f0859886c8b3f4`  
		Last Modified: Thu, 26 Jul 2018 23:09:16 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
