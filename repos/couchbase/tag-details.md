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
$ docker pull couchbase@sha256:e8f8b65f09091c50bdca5881cd9f6306f2520c8947e18e864eb5de0ed53ace95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:4.6.4` - linux; amd64

```console
$ docker pull couchbase@sha256:8f13776c64e765329915dbe047c1fca2207d13cea845ffd3090acb38634a1aff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219014697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17e62b745e7115b0e9e31e048e1498075bf5d7a1a4de47e0f8e33a46c9fee7dc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 12 Apr 2018 18:38:59 GMT
ADD file:6eca4ad395f3f9986f9edf8cc1cc454f7247e63f18bdd8bdb914537ef55b9c88 in / 
# Thu, 12 Apr 2018 18:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:39:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:39:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:39:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:39:03 GMT
CMD ["/bin/bash"]
# Thu, 12 Apr 2018 21:55:20 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 12 Apr 2018 21:55:53 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 12 Apr 2018 21:55:54 GMT
ARG CB_VERSION=4.6.4
# Thu, 12 Apr 2018 21:55:54 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Thu, 12 Apr 2018 21:55:54 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb
# Thu, 12 Apr 2018 21:55:55 GMT
ARG CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579
# Thu, 12 Apr 2018 21:55:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 12 Apr 2018 21:55:56 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 12 Apr 2018 21:56:13 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 12 Apr 2018 21:56:13 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Thu, 12 Apr 2018 21:56:14 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN chown -R couchbase:couchbase /etc/service
# Thu, 12 Apr 2018 21:56:15 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 12 Apr 2018 21:56:15 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 12 Apr 2018 21:56:16 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 12 Apr 2018 21:56:17 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Thu, 12 Apr 2018 21:56:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Apr 2018 21:56:17 GMT
CMD ["couchbase-server"]
# Thu, 12 Apr 2018 21:56:17 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 12 Apr 2018 21:56:18 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:c2c80a08aa8cdf0629269bab360b225d96a511b4c4ccb5f9c1d2abe01ff23d6f`  
		Last Modified: Thu, 12 Apr 2018 19:39:19 GMT  
		Size: 73.1 MB (73064548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace04d7a4a23236b2e4578bc607a21157cfcd3203d0e26a3d1dfcbb2b918db6`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03114bcfb255c8eaa7fe33bbe409e7070993ee96152b9a04a7b6db0c3da5130`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df439878124298f9d5577c286e59d7f012baedb7cf8d69d104f5d87d727c28`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c646cd4d1557832b81ce6e956a18f791bdcce470290be8b23f153811a8d372f`  
		Last Modified: Thu, 12 Apr 2018 19:39:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0e6395031b7869222f21c72df6b30d68641ec6077304865d1531fe84bc466a`  
		Last Modified: Thu, 12 Apr 2018 22:41:31 GMT  
		Size: 11.4 MB (11391498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b39df60d352afdc89912a685b4454347973435c098cafbd56d1c148513203e1e`  
		Last Modified: Thu, 12 Apr 2018 22:41:27 GMT  
		Size: 1.9 KB (1903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535e9cf0a1c2e83006c4f13b36ea7b9c5f223c966491b2bd324118818cea86d0`  
		Last Modified: Thu, 12 Apr 2018 22:41:53 GMT  
		Size: 134.4 MB (134374927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6e9362a0eebf82039a5511519d34974085f5c070840b4153ccde637640d7`  
		Last Modified: Thu, 12 Apr 2018 22:41:27 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26543dccb20eb40d79addb7d8b7da8ca5f5525fbc11f309f8e9f90ee1d016cc`  
		Last Modified: Thu, 12 Apr 2018 22:41:25 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a157b59424d70641bfd3ab35a2d7b94843b840d69c8a0730044ef6dc14cb48`  
		Last Modified: Thu, 12 Apr 2018 22:41:24 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623d3bbcf256cc4642666f63a37b18145bec79d1b8bd383ac84360209789ac14`  
		Last Modified: Thu, 12 Apr 2018 22:41:25 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04593b689290b0ecbc492875ca4078288eb6f7a52079bdd28cbc567929b838bb`  
		Last Modified: Thu, 12 Apr 2018 22:41:25 GMT  
		Size: 105.4 KB (105403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb6a93550a6971b6047678db5d85f9ee270b5f8703fe241e94fa1fcb90a6854`  
		Last Modified: Thu, 12 Apr 2018 22:41:25 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:5.1.0`

```console
$ docker pull couchbase@sha256:047424a04b016b079912d21a49d11d08ea7d4cf0154adb5ea336ce045ea9e8a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:5.1.0` - linux; amd64

```console
$ docker pull couchbase@sha256:03f3e3fc092db85daa27ae790b178e7db1632389ae365871edd9f75a58bcb2e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.1 MB (200069806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5480e49a18c95d99e96b7351029243d8758bd6e163ac5e4f95d3623181fac95`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 12 Apr 2018 18:58:24 GMT
ADD file:4c266e490f4101f9726598288c14131a75242836f3eda375923ef1677ea8ab8e in / 
# Thu, 12 Apr 2018 18:58:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:58:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:58:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:58:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:58:27 GMT
CMD ["/bin/bash"]
# Thu, 12 Apr 2018 21:35:53 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 12 Apr 2018 21:36:12 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 12 Apr 2018 21:36:13 GMT
ARG CB_VERSION=5.1.0
# Thu, 12 Apr 2018 21:36:13 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Thu, 12 Apr 2018 21:36:13 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.1.0-ubuntu16.04_amd64.deb
# Thu, 12 Apr 2018 21:36:14 GMT
ARG CB_SHA256=4d6a1f159577f283f6f980f6ab9161630eb2d8fd228429029de004b1be46ad76
# Thu, 12 Apr 2018 21:36:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 12 Apr 2018 21:36:15 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4d6a1f159577f283f6f980f6ab9161630eb2d8fd228429029de004b1be46ad76 CB_VERSION=5.1.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 12 Apr 2018 21:36:33 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4d6a1f159577f283f6f980f6ab9161630eb2d8fd228429029de004b1be46ad76 CB_VERSION=5.1.0
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 12 Apr 2018 21:36:33 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Thu, 12 Apr 2018 21:36:34 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4d6a1f159577f283f6f980f6ab9161630eb2d8fd228429029de004b1be46ad76 CB_VERSION=5.1.0
RUN chown -R couchbase:couchbase /etc/service
# Thu, 12 Apr 2018 21:36:35 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 12 Apr 2018 21:36:36 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4d6a1f159577f283f6f980f6ab9161630eb2d8fd228429029de004b1be46ad76 CB_VERSION=5.1.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 12 Apr 2018 21:36:37 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4d6a1f159577f283f6f980f6ab9161630eb2d8fd228429029de004b1be46ad76 CB_VERSION=5.1.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 12 Apr 2018 21:36:37 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Thu, 12 Apr 2018 21:36:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Apr 2018 21:36:38 GMT
CMD ["couchbase-server"]
# Thu, 12 Apr 2018 21:36:38 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 12 Apr 2018 21:36:39 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:d3938036b19cfa369e1081a6776b07b54be9612bc4c8fed7f139370c8142b79f`  
		Last Modified: Thu, 12 Apr 2018 19:49:15 GMT  
		Size: 43.0 MB (43022946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b30c108bda615dc10e402f62d712f413214ea92c7ec4354cd1cc0f3450bc58`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67de21feec183fcd009a5eddc4de8c346ee0f4369a20047f1a302a90716fc741`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817da545be2ba4bac8f6b4da584bca0fb4844938ecc462b9feab1001b5df7405`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d967c497ce230b63996a7b1fc6ec95b741aea9348118d3328c676f13be789fa7`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:544ae0a5d9e123a74194d92b829a5b0244f19f18d8b6b1eed4dd020ff3309b89`  
		Last Modified: Thu, 12 Apr 2018 22:28:21 GMT  
		Size: 13.8 MB (13847158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9df74f09f4071533d638a5f057237ff4fa543275415173cf6b0078061f720d46`  
		Last Modified: Thu, 12 Apr 2018 22:28:16 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f402288798c366aa8d9012f7778c0214fe83e410246973f9764f9b7d0d9c7d`  
		Last Modified: Thu, 12 Apr 2018 22:28:42 GMT  
		Size: 143.1 MB (143085570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c0c166dd5c2da6596abe7658ca5b435c2ea0dd4f599f064e489afe2d4ee88dd`  
		Last Modified: Thu, 12 Apr 2018 22:28:16 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f791c6cca3926ab7f83ac9c0d9b69b61493264d6808cc4495991e85a6fcc9b27`  
		Last Modified: Thu, 12 Apr 2018 22:28:13 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b50bc76ff2900c53acd00c036e141e924dbdfd49c406a3d544b655f35837c8`  
		Last Modified: Thu, 12 Apr 2018 22:28:15 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80def0b06e222aababfbae8950a76c3cd745a147e10be164283a3c6aed7fb658`  
		Last Modified: Thu, 12 Apr 2018 22:28:14 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d039a3c5ab97a990f6b06cc58d738d21a91be91b3d4b0aa91cbd347c2061a2`  
		Last Modified: Thu, 12 Apr 2018 22:28:14 GMT  
		Size: 107.5 KB (107455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb0d96d531ece0d813465c9ecc8365af639bf2ce8d05400f80e28e273c4f186`  
		Last Modified: Thu, 12 Apr 2018 22:28:16 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community`

```console
$ docker pull couchbase@sha256:c66859234e2eba8d48ad3612b4e85edecb050af2a649e0eb04ebd31631434c4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community` - linux; amd64

```console
$ docker pull couchbase@sha256:4c041d53461c89ab0de9f2f001e9cb642a009f5b68ae6188679a5ef6b8a684ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.8 MB (189774096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a040d9fc51dffa4dd8a7f3829a4c17c35e01f722bc21c0ed9cc173fb7dfbed1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 12 Apr 2018 18:58:24 GMT
ADD file:4c266e490f4101f9726598288c14131a75242836f3eda375923ef1677ea8ab8e in / 
# Thu, 12 Apr 2018 18:58:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:58:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:58:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:58:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:58:27 GMT
CMD ["/bin/bash"]
# Thu, 12 Apr 2018 21:35:53 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 12 Apr 2018 21:36:12 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 12 Apr 2018 22:03:18 GMT
ARG CB_VERSION=5.0.1
# Thu, 12 Apr 2018 22:03:18 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Thu, 12 Apr 2018 22:03:18 GMT
ARG CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb
# Thu, 12 Apr 2018 22:03:18 GMT
ARG CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931
# Thu, 12 Apr 2018 22:03:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 12 Apr 2018 22:03:20 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 12 Apr 2018 22:03:34 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 12 Apr 2018 22:03:34 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Thu, 12 Apr 2018 22:03:35 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN chown -R couchbase:couchbase /etc/service
# Thu, 12 Apr 2018 22:03:35 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 12 Apr 2018 22:03:36 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 12 Apr 2018 22:03:37 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 12 Apr 2018 22:03:37 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Thu, 12 Apr 2018 22:03:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Apr 2018 22:03:38 GMT
CMD ["couchbase-server"]
# Thu, 12 Apr 2018 22:03:38 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 12 Apr 2018 22:03:39 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:d3938036b19cfa369e1081a6776b07b54be9612bc4c8fed7f139370c8142b79f`  
		Last Modified: Thu, 12 Apr 2018 19:49:15 GMT  
		Size: 43.0 MB (43022946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b30c108bda615dc10e402f62d712f413214ea92c7ec4354cd1cc0f3450bc58`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67de21feec183fcd009a5eddc4de8c346ee0f4369a20047f1a302a90716fc741`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817da545be2ba4bac8f6b4da584bca0fb4844938ecc462b9feab1001b5df7405`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d967c497ce230b63996a7b1fc6ec95b741aea9348118d3328c676f13be789fa7`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:544ae0a5d9e123a74194d92b829a5b0244f19f18d8b6b1eed4dd020ff3309b89`  
		Last Modified: Thu, 12 Apr 2018 22:28:21 GMT  
		Size: 13.8 MB (13847158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62817f1f98cb434a19db1a5564d0a54e31bd76bf6efd967bb5d6c5f9c11b21de`  
		Last Modified: Thu, 12 Apr 2018 22:53:59 GMT  
		Size: 2.1 KB (2075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4305e059ce51417ebb823d3309192358c2a3e303f53118b0a51552b79bf28794`  
		Last Modified: Thu, 12 Apr 2018 22:54:22 GMT  
		Size: 132.8 MB (132789854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5238b99e26ae66d031158263e7334e3f116280ad8401df1f0375fb54ea0be05`  
		Last Modified: Thu, 12 Apr 2018 22:53:59 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2510601e416ad7daa9fa9f5641b177d805c8619ffb01ab804e557a68c61d87f`  
		Last Modified: Thu, 12 Apr 2018 22:53:57 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117716e2c125ad26585bb64bf6a62b547164ca3f6b54014f58abe2580bb99468`  
		Last Modified: Thu, 12 Apr 2018 22:53:58 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e5bef280f30d092bd262361e63303836ec45d6ed1f2337df5bdc68d76ad867`  
		Last Modified: Thu, 12 Apr 2018 22:53:56 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b110ef937de5bab0548ce5e78dada693883d51843b131835f8aaca6f5be4e2fc`  
		Last Modified: Thu, 12 Apr 2018 22:53:57 GMT  
		Size: 107.5 KB (107455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b423ffe3c6c3fc09355c60c21f611d89ce096883324134a6a51b28edda385a9e`  
		Last Modified: Thu, 12 Apr 2018 22:53:57 GMT  
		Size: 858.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-4.5.1`

```console
$ docker pull couchbase@sha256:185f1ef5569a78df9866db5d1198a6593c2a96f7b77156dd23f41447b5dcd413
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community-4.5.1` - linux; amd64

```console
$ docker pull couchbase@sha256:52f441e89787813750657392ed8c416621a7202446d4fd99cd1488b278d0f43a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.7 MB (215691449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a85a192799892385ba9d5d08b9fb4e97521c35ae844d95f83198c4ca8be103d6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 12 Apr 2018 18:38:59 GMT
ADD file:6eca4ad395f3f9986f9edf8cc1cc454f7247e63f18bdd8bdb914537ef55b9c88 in / 
# Thu, 12 Apr 2018 18:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:39:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:39:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:39:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:39:03 GMT
CMD ["/bin/bash"]
# Thu, 12 Apr 2018 21:55:20 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 12 Apr 2018 21:55:53 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 12 Apr 2018 22:13:32 GMT
ARG CB_VERSION=4.5.1
# Thu, 12 Apr 2018 22:13:32 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Thu, 12 Apr 2018 22:13:32 GMT
ARG CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb
# Thu, 12 Apr 2018 22:13:32 GMT
ARG CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234
# Thu, 12 Apr 2018 22:13:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 12 Apr 2018 22:13:34 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 12 Apr 2018 22:13:49 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 12 Apr 2018 22:13:50 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Thu, 12 Apr 2018 22:13:50 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN chown -R couchbase:couchbase /etc/service
# Thu, 12 Apr 2018 22:13:51 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 12 Apr 2018 22:13:52 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 12 Apr 2018 22:13:53 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 12 Apr 2018 22:13:53 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Thu, 12 Apr 2018 22:13:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Apr 2018 22:13:54 GMT
CMD ["couchbase-server"]
# Thu, 12 Apr 2018 22:13:54 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 12 Apr 2018 22:13:54 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:c2c80a08aa8cdf0629269bab360b225d96a511b4c4ccb5f9c1d2abe01ff23d6f`  
		Last Modified: Thu, 12 Apr 2018 19:39:19 GMT  
		Size: 73.1 MB (73064548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace04d7a4a23236b2e4578bc607a21157cfcd3203d0e26a3d1dfcbb2b918db6`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03114bcfb255c8eaa7fe33bbe409e7070993ee96152b9a04a7b6db0c3da5130`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df439878124298f9d5577c286e59d7f012baedb7cf8d69d104f5d87d727c28`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c646cd4d1557832b81ce6e956a18f791bdcce470290be8b23f153811a8d372f`  
		Last Modified: Thu, 12 Apr 2018 19:39:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0e6395031b7869222f21c72df6b30d68641ec6077304865d1531fe84bc466a`  
		Last Modified: Thu, 12 Apr 2018 22:41:31 GMT  
		Size: 11.4 MB (11391498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c866fa4a21dc7f41794b2fd580cf8eeee9a64270250d5320933e0ac9eb749605`  
		Last Modified: Thu, 12 Apr 2018 22:55:23 GMT  
		Size: 1.9 KB (1901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f372f2f9c3d5c02fc431ac36bdf2a675263dc2d9f4c5dec9ed25f3313dbfe0d5`  
		Last Modified: Thu, 12 Apr 2018 22:55:48 GMT  
		Size: 131.1 MB (131051684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87882de22a53e02d40812872f0aad5ac509a37ec22790bc1ffd1d6dfaa375611`  
		Last Modified: Thu, 12 Apr 2018 22:55:22 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d8564829439f1f58e66a6d1552306132a914a9f3bc58ac5ae96e55fc0cb3a1`  
		Last Modified: Thu, 12 Apr 2018 22:55:20 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb441b10d62c1d2c7e7263176eea411c596f5f542dfadf40e22043f2aeff2ad`  
		Last Modified: Thu, 12 Apr 2018 22:55:21 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b347ddaad04bee5a528994786a83d747dcaed47bd3ca5053297241137064b7d`  
		Last Modified: Thu, 12 Apr 2018 22:55:20 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13f2b2d1bea5404e0620ac9f52988206387ed73ada99a53aa0eee6076d95e25`  
		Last Modified: Thu, 12 Apr 2018 22:55:20 GMT  
		Size: 105.4 KB (105404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc0fa71cf139dd98a712e297198e81488b0bea3215a1edad96d2b86e4251284`  
		Last Modified: Thu, 12 Apr 2018 22:55:20 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-5.0.1`

```console
$ docker pull couchbase@sha256:c66859234e2eba8d48ad3612b4e85edecb050af2a649e0eb04ebd31631434c4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community-5.0.1` - linux; amd64

```console
$ docker pull couchbase@sha256:4c041d53461c89ab0de9f2f001e9cb642a009f5b68ae6188679a5ef6b8a684ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.8 MB (189774096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a040d9fc51dffa4dd8a7f3829a4c17c35e01f722bc21c0ed9cc173fb7dfbed1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 12 Apr 2018 18:58:24 GMT
ADD file:4c266e490f4101f9726598288c14131a75242836f3eda375923ef1677ea8ab8e in / 
# Thu, 12 Apr 2018 18:58:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:58:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:58:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:58:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:58:27 GMT
CMD ["/bin/bash"]
# Thu, 12 Apr 2018 21:35:53 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 12 Apr 2018 21:36:12 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 12 Apr 2018 22:03:18 GMT
ARG CB_VERSION=5.0.1
# Thu, 12 Apr 2018 22:03:18 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Thu, 12 Apr 2018 22:03:18 GMT
ARG CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb
# Thu, 12 Apr 2018 22:03:18 GMT
ARG CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931
# Thu, 12 Apr 2018 22:03:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 12 Apr 2018 22:03:20 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 12 Apr 2018 22:03:34 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 12 Apr 2018 22:03:34 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Thu, 12 Apr 2018 22:03:35 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN chown -R couchbase:couchbase /etc/service
# Thu, 12 Apr 2018 22:03:35 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 12 Apr 2018 22:03:36 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 12 Apr 2018 22:03:37 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 12 Apr 2018 22:03:37 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Thu, 12 Apr 2018 22:03:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Apr 2018 22:03:38 GMT
CMD ["couchbase-server"]
# Thu, 12 Apr 2018 22:03:38 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 12 Apr 2018 22:03:39 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:d3938036b19cfa369e1081a6776b07b54be9612bc4c8fed7f139370c8142b79f`  
		Last Modified: Thu, 12 Apr 2018 19:49:15 GMT  
		Size: 43.0 MB (43022946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b30c108bda615dc10e402f62d712f413214ea92c7ec4354cd1cc0f3450bc58`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67de21feec183fcd009a5eddc4de8c346ee0f4369a20047f1a302a90716fc741`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817da545be2ba4bac8f6b4da584bca0fb4844938ecc462b9feab1001b5df7405`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d967c497ce230b63996a7b1fc6ec95b741aea9348118d3328c676f13be789fa7`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:544ae0a5d9e123a74194d92b829a5b0244f19f18d8b6b1eed4dd020ff3309b89`  
		Last Modified: Thu, 12 Apr 2018 22:28:21 GMT  
		Size: 13.8 MB (13847158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62817f1f98cb434a19db1a5564d0a54e31bd76bf6efd967bb5d6c5f9c11b21de`  
		Last Modified: Thu, 12 Apr 2018 22:53:59 GMT  
		Size: 2.1 KB (2075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4305e059ce51417ebb823d3309192358c2a3e303f53118b0a51552b79bf28794`  
		Last Modified: Thu, 12 Apr 2018 22:54:22 GMT  
		Size: 132.8 MB (132789854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5238b99e26ae66d031158263e7334e3f116280ad8401df1f0375fb54ea0be05`  
		Last Modified: Thu, 12 Apr 2018 22:53:59 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2510601e416ad7daa9fa9f5641b177d805c8619ffb01ab804e557a68c61d87f`  
		Last Modified: Thu, 12 Apr 2018 22:53:57 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117716e2c125ad26585bb64bf6a62b547164ca3f6b54014f58abe2580bb99468`  
		Last Modified: Thu, 12 Apr 2018 22:53:58 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e5bef280f30d092bd262361e63303836ec45d6ed1f2337df5bdc68d76ad867`  
		Last Modified: Thu, 12 Apr 2018 22:53:56 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b110ef937de5bab0548ce5e78dada693883d51843b131835f8aaca6f5be4e2fc`  
		Last Modified: Thu, 12 Apr 2018 22:53:57 GMT  
		Size: 107.5 KB (107455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b423ffe3c6c3fc09355c60c21f611d89ce096883324134a6a51b28edda385a9e`  
		Last Modified: Thu, 12 Apr 2018 22:53:57 GMT  
		Size: 858.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise`

```console
$ docker pull couchbase@sha256:047424a04b016b079912d21a49d11d08ea7d4cf0154adb5ea336ce045ea9e8a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise` - linux; amd64

```console
$ docker pull couchbase@sha256:03f3e3fc092db85daa27ae790b178e7db1632389ae365871edd9f75a58bcb2e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.1 MB (200069806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5480e49a18c95d99e96b7351029243d8758bd6e163ac5e4f95d3623181fac95`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 12 Apr 2018 18:58:24 GMT
ADD file:4c266e490f4101f9726598288c14131a75242836f3eda375923ef1677ea8ab8e in / 
# Thu, 12 Apr 2018 18:58:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:58:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:58:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:58:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:58:27 GMT
CMD ["/bin/bash"]
# Thu, 12 Apr 2018 21:35:53 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 12 Apr 2018 21:36:12 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 12 Apr 2018 21:36:13 GMT
ARG CB_VERSION=5.1.0
# Thu, 12 Apr 2018 21:36:13 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Thu, 12 Apr 2018 21:36:13 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.1.0-ubuntu16.04_amd64.deb
# Thu, 12 Apr 2018 21:36:14 GMT
ARG CB_SHA256=4d6a1f159577f283f6f980f6ab9161630eb2d8fd228429029de004b1be46ad76
# Thu, 12 Apr 2018 21:36:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 12 Apr 2018 21:36:15 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4d6a1f159577f283f6f980f6ab9161630eb2d8fd228429029de004b1be46ad76 CB_VERSION=5.1.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 12 Apr 2018 21:36:33 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4d6a1f159577f283f6f980f6ab9161630eb2d8fd228429029de004b1be46ad76 CB_VERSION=5.1.0
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 12 Apr 2018 21:36:33 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Thu, 12 Apr 2018 21:36:34 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4d6a1f159577f283f6f980f6ab9161630eb2d8fd228429029de004b1be46ad76 CB_VERSION=5.1.0
RUN chown -R couchbase:couchbase /etc/service
# Thu, 12 Apr 2018 21:36:35 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 12 Apr 2018 21:36:36 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4d6a1f159577f283f6f980f6ab9161630eb2d8fd228429029de004b1be46ad76 CB_VERSION=5.1.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 12 Apr 2018 21:36:37 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4d6a1f159577f283f6f980f6ab9161630eb2d8fd228429029de004b1be46ad76 CB_VERSION=5.1.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 12 Apr 2018 21:36:37 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Thu, 12 Apr 2018 21:36:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Apr 2018 21:36:38 GMT
CMD ["couchbase-server"]
# Thu, 12 Apr 2018 21:36:38 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 12 Apr 2018 21:36:39 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:d3938036b19cfa369e1081a6776b07b54be9612bc4c8fed7f139370c8142b79f`  
		Last Modified: Thu, 12 Apr 2018 19:49:15 GMT  
		Size: 43.0 MB (43022946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b30c108bda615dc10e402f62d712f413214ea92c7ec4354cd1cc0f3450bc58`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67de21feec183fcd009a5eddc4de8c346ee0f4369a20047f1a302a90716fc741`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817da545be2ba4bac8f6b4da584bca0fb4844938ecc462b9feab1001b5df7405`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d967c497ce230b63996a7b1fc6ec95b741aea9348118d3328c676f13be789fa7`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:544ae0a5d9e123a74194d92b829a5b0244f19f18d8b6b1eed4dd020ff3309b89`  
		Last Modified: Thu, 12 Apr 2018 22:28:21 GMT  
		Size: 13.8 MB (13847158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9df74f09f4071533d638a5f057237ff4fa543275415173cf6b0078061f720d46`  
		Last Modified: Thu, 12 Apr 2018 22:28:16 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f402288798c366aa8d9012f7778c0214fe83e410246973f9764f9b7d0d9c7d`  
		Last Modified: Thu, 12 Apr 2018 22:28:42 GMT  
		Size: 143.1 MB (143085570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c0c166dd5c2da6596abe7658ca5b435c2ea0dd4f599f064e489afe2d4ee88dd`  
		Last Modified: Thu, 12 Apr 2018 22:28:16 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f791c6cca3926ab7f83ac9c0d9b69b61493264d6808cc4495991e85a6fcc9b27`  
		Last Modified: Thu, 12 Apr 2018 22:28:13 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b50bc76ff2900c53acd00c036e141e924dbdfd49c406a3d544b655f35837c8`  
		Last Modified: Thu, 12 Apr 2018 22:28:15 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80def0b06e222aababfbae8950a76c3cd745a147e10be164283a3c6aed7fb658`  
		Last Modified: Thu, 12 Apr 2018 22:28:14 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d039a3c5ab97a990f6b06cc58d738d21a91be91b3d4b0aa91cbd347c2061a2`  
		Last Modified: Thu, 12 Apr 2018 22:28:14 GMT  
		Size: 107.5 KB (107455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb0d96d531ece0d813465c9ecc8365af639bf2ce8d05400f80e28e273c4f186`  
		Last Modified: Thu, 12 Apr 2018 22:28:16 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-4.6.4`

```console
$ docker pull couchbase@sha256:e8f8b65f09091c50bdca5881cd9f6306f2520c8947e18e864eb5de0ed53ace95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-4.6.4` - linux; amd64

```console
$ docker pull couchbase@sha256:8f13776c64e765329915dbe047c1fca2207d13cea845ffd3090acb38634a1aff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219014697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17e62b745e7115b0e9e31e048e1498075bf5d7a1a4de47e0f8e33a46c9fee7dc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 12 Apr 2018 18:38:59 GMT
ADD file:6eca4ad395f3f9986f9edf8cc1cc454f7247e63f18bdd8bdb914537ef55b9c88 in / 
# Thu, 12 Apr 2018 18:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:39:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:39:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:39:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:39:03 GMT
CMD ["/bin/bash"]
# Thu, 12 Apr 2018 21:55:20 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 12 Apr 2018 21:55:53 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 12 Apr 2018 21:55:54 GMT
ARG CB_VERSION=4.6.4
# Thu, 12 Apr 2018 21:55:54 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Thu, 12 Apr 2018 21:55:54 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb
# Thu, 12 Apr 2018 21:55:55 GMT
ARG CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579
# Thu, 12 Apr 2018 21:55:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 12 Apr 2018 21:55:56 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 12 Apr 2018 21:56:13 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 12 Apr 2018 21:56:13 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Thu, 12 Apr 2018 21:56:14 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN chown -R couchbase:couchbase /etc/service
# Thu, 12 Apr 2018 21:56:15 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 12 Apr 2018 21:56:15 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 12 Apr 2018 21:56:16 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 12 Apr 2018 21:56:17 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Thu, 12 Apr 2018 21:56:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Apr 2018 21:56:17 GMT
CMD ["couchbase-server"]
# Thu, 12 Apr 2018 21:56:17 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 12 Apr 2018 21:56:18 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:c2c80a08aa8cdf0629269bab360b225d96a511b4c4ccb5f9c1d2abe01ff23d6f`  
		Last Modified: Thu, 12 Apr 2018 19:39:19 GMT  
		Size: 73.1 MB (73064548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace04d7a4a23236b2e4578bc607a21157cfcd3203d0e26a3d1dfcbb2b918db6`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03114bcfb255c8eaa7fe33bbe409e7070993ee96152b9a04a7b6db0c3da5130`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df439878124298f9d5577c286e59d7f012baedb7cf8d69d104f5d87d727c28`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c646cd4d1557832b81ce6e956a18f791bdcce470290be8b23f153811a8d372f`  
		Last Modified: Thu, 12 Apr 2018 19:39:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0e6395031b7869222f21c72df6b30d68641ec6077304865d1531fe84bc466a`  
		Last Modified: Thu, 12 Apr 2018 22:41:31 GMT  
		Size: 11.4 MB (11391498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b39df60d352afdc89912a685b4454347973435c098cafbd56d1c148513203e1e`  
		Last Modified: Thu, 12 Apr 2018 22:41:27 GMT  
		Size: 1.9 KB (1903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535e9cf0a1c2e83006c4f13b36ea7b9c5f223c966491b2bd324118818cea86d0`  
		Last Modified: Thu, 12 Apr 2018 22:41:53 GMT  
		Size: 134.4 MB (134374927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6e9362a0eebf82039a5511519d34974085f5c070840b4153ccde637640d7`  
		Last Modified: Thu, 12 Apr 2018 22:41:27 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26543dccb20eb40d79addb7d8b7da8ca5f5525fbc11f309f8e9f90ee1d016cc`  
		Last Modified: Thu, 12 Apr 2018 22:41:25 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a157b59424d70641bfd3ab35a2d7b94843b840d69c8a0730044ef6dc14cb48`  
		Last Modified: Thu, 12 Apr 2018 22:41:24 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623d3bbcf256cc4642666f63a37b18145bec79d1b8bd383ac84360209789ac14`  
		Last Modified: Thu, 12 Apr 2018 22:41:25 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04593b689290b0ecbc492875ca4078288eb6f7a52079bdd28cbc567929b838bb`  
		Last Modified: Thu, 12 Apr 2018 22:41:25 GMT  
		Size: 105.4 KB (105403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb6a93550a6971b6047678db5d85f9ee270b5f8703fe241e94fa1fcb90a6854`  
		Last Modified: Thu, 12 Apr 2018 22:41:25 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-5.1.0`

```console
$ docker pull couchbase@sha256:047424a04b016b079912d21a49d11d08ea7d4cf0154adb5ea336ce045ea9e8a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-5.1.0` - linux; amd64

```console
$ docker pull couchbase@sha256:03f3e3fc092db85daa27ae790b178e7db1632389ae365871edd9f75a58bcb2e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.1 MB (200069806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5480e49a18c95d99e96b7351029243d8758bd6e163ac5e4f95d3623181fac95`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 12 Apr 2018 18:58:24 GMT
ADD file:4c266e490f4101f9726598288c14131a75242836f3eda375923ef1677ea8ab8e in / 
# Thu, 12 Apr 2018 18:58:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:58:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:58:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:58:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:58:27 GMT
CMD ["/bin/bash"]
# Thu, 12 Apr 2018 21:35:53 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 12 Apr 2018 21:36:12 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 12 Apr 2018 21:36:13 GMT
ARG CB_VERSION=5.1.0
# Thu, 12 Apr 2018 21:36:13 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Thu, 12 Apr 2018 21:36:13 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.1.0-ubuntu16.04_amd64.deb
# Thu, 12 Apr 2018 21:36:14 GMT
ARG CB_SHA256=4d6a1f159577f283f6f980f6ab9161630eb2d8fd228429029de004b1be46ad76
# Thu, 12 Apr 2018 21:36:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 12 Apr 2018 21:36:15 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4d6a1f159577f283f6f980f6ab9161630eb2d8fd228429029de004b1be46ad76 CB_VERSION=5.1.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 12 Apr 2018 21:36:33 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4d6a1f159577f283f6f980f6ab9161630eb2d8fd228429029de004b1be46ad76 CB_VERSION=5.1.0
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 12 Apr 2018 21:36:33 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Thu, 12 Apr 2018 21:36:34 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4d6a1f159577f283f6f980f6ab9161630eb2d8fd228429029de004b1be46ad76 CB_VERSION=5.1.0
RUN chown -R couchbase:couchbase /etc/service
# Thu, 12 Apr 2018 21:36:35 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 12 Apr 2018 21:36:36 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4d6a1f159577f283f6f980f6ab9161630eb2d8fd228429029de004b1be46ad76 CB_VERSION=5.1.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 12 Apr 2018 21:36:37 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4d6a1f159577f283f6f980f6ab9161630eb2d8fd228429029de004b1be46ad76 CB_VERSION=5.1.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 12 Apr 2018 21:36:37 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Thu, 12 Apr 2018 21:36:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Apr 2018 21:36:38 GMT
CMD ["couchbase-server"]
# Thu, 12 Apr 2018 21:36:38 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 12 Apr 2018 21:36:39 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:d3938036b19cfa369e1081a6776b07b54be9612bc4c8fed7f139370c8142b79f`  
		Last Modified: Thu, 12 Apr 2018 19:49:15 GMT  
		Size: 43.0 MB (43022946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b30c108bda615dc10e402f62d712f413214ea92c7ec4354cd1cc0f3450bc58`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67de21feec183fcd009a5eddc4de8c346ee0f4369a20047f1a302a90716fc741`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817da545be2ba4bac8f6b4da584bca0fb4844938ecc462b9feab1001b5df7405`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d967c497ce230b63996a7b1fc6ec95b741aea9348118d3328c676f13be789fa7`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:544ae0a5d9e123a74194d92b829a5b0244f19f18d8b6b1eed4dd020ff3309b89`  
		Last Modified: Thu, 12 Apr 2018 22:28:21 GMT  
		Size: 13.8 MB (13847158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9df74f09f4071533d638a5f057237ff4fa543275415173cf6b0078061f720d46`  
		Last Modified: Thu, 12 Apr 2018 22:28:16 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f402288798c366aa8d9012f7778c0214fe83e410246973f9764f9b7d0d9c7d`  
		Last Modified: Thu, 12 Apr 2018 22:28:42 GMT  
		Size: 143.1 MB (143085570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c0c166dd5c2da6596abe7658ca5b435c2ea0dd4f599f064e489afe2d4ee88dd`  
		Last Modified: Thu, 12 Apr 2018 22:28:16 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f791c6cca3926ab7f83ac9c0d9b69b61493264d6808cc4495991e85a6fcc9b27`  
		Last Modified: Thu, 12 Apr 2018 22:28:13 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b50bc76ff2900c53acd00c036e141e924dbdfd49c406a3d544b655f35837c8`  
		Last Modified: Thu, 12 Apr 2018 22:28:15 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80def0b06e222aababfbae8950a76c3cd745a147e10be164283a3c6aed7fb658`  
		Last Modified: Thu, 12 Apr 2018 22:28:14 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d039a3c5ab97a990f6b06cc58d738d21a91be91b3d4b0aa91cbd347c2061a2`  
		Last Modified: Thu, 12 Apr 2018 22:28:14 GMT  
		Size: 107.5 KB (107455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb0d96d531ece0d813465c9ecc8365af639bf2ce8d05400f80e28e273c4f186`  
		Last Modified: Thu, 12 Apr 2018 22:28:16 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:latest`

```console
$ docker pull couchbase@sha256:047424a04b016b079912d21a49d11d08ea7d4cf0154adb5ea336ce045ea9e8a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:latest` - linux; amd64

```console
$ docker pull couchbase@sha256:03f3e3fc092db85daa27ae790b178e7db1632389ae365871edd9f75a58bcb2e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.1 MB (200069806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5480e49a18c95d99e96b7351029243d8758bd6e163ac5e4f95d3623181fac95`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 12 Apr 2018 18:58:24 GMT
ADD file:4c266e490f4101f9726598288c14131a75242836f3eda375923ef1677ea8ab8e in / 
# Thu, 12 Apr 2018 18:58:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:58:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:58:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:58:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:58:27 GMT
CMD ["/bin/bash"]
# Thu, 12 Apr 2018 21:35:53 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 12 Apr 2018 21:36:12 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 12 Apr 2018 21:36:13 GMT
ARG CB_VERSION=5.1.0
# Thu, 12 Apr 2018 21:36:13 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Thu, 12 Apr 2018 21:36:13 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.1.0-ubuntu16.04_amd64.deb
# Thu, 12 Apr 2018 21:36:14 GMT
ARG CB_SHA256=4d6a1f159577f283f6f980f6ab9161630eb2d8fd228429029de004b1be46ad76
# Thu, 12 Apr 2018 21:36:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 12 Apr 2018 21:36:15 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4d6a1f159577f283f6f980f6ab9161630eb2d8fd228429029de004b1be46ad76 CB_VERSION=5.1.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 12 Apr 2018 21:36:33 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4d6a1f159577f283f6f980f6ab9161630eb2d8fd228429029de004b1be46ad76 CB_VERSION=5.1.0
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 12 Apr 2018 21:36:33 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Thu, 12 Apr 2018 21:36:34 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4d6a1f159577f283f6f980f6ab9161630eb2d8fd228429029de004b1be46ad76 CB_VERSION=5.1.0
RUN chown -R couchbase:couchbase /etc/service
# Thu, 12 Apr 2018 21:36:35 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 12 Apr 2018 21:36:36 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4d6a1f159577f283f6f980f6ab9161630eb2d8fd228429029de004b1be46ad76 CB_VERSION=5.1.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 12 Apr 2018 21:36:37 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4d6a1f159577f283f6f980f6ab9161630eb2d8fd228429029de004b1be46ad76 CB_VERSION=5.1.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 12 Apr 2018 21:36:37 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Thu, 12 Apr 2018 21:36:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Apr 2018 21:36:38 GMT
CMD ["couchbase-server"]
# Thu, 12 Apr 2018 21:36:38 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 12 Apr 2018 21:36:39 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:d3938036b19cfa369e1081a6776b07b54be9612bc4c8fed7f139370c8142b79f`  
		Last Modified: Thu, 12 Apr 2018 19:49:15 GMT  
		Size: 43.0 MB (43022946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b30c108bda615dc10e402f62d712f413214ea92c7ec4354cd1cc0f3450bc58`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67de21feec183fcd009a5eddc4de8c346ee0f4369a20047f1a302a90716fc741`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817da545be2ba4bac8f6b4da584bca0fb4844938ecc462b9feab1001b5df7405`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d967c497ce230b63996a7b1fc6ec95b741aea9348118d3328c676f13be789fa7`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:544ae0a5d9e123a74194d92b829a5b0244f19f18d8b6b1eed4dd020ff3309b89`  
		Last Modified: Thu, 12 Apr 2018 22:28:21 GMT  
		Size: 13.8 MB (13847158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9df74f09f4071533d638a5f057237ff4fa543275415173cf6b0078061f720d46`  
		Last Modified: Thu, 12 Apr 2018 22:28:16 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f402288798c366aa8d9012f7778c0214fe83e410246973f9764f9b7d0d9c7d`  
		Last Modified: Thu, 12 Apr 2018 22:28:42 GMT  
		Size: 143.1 MB (143085570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c0c166dd5c2da6596abe7658ca5b435c2ea0dd4f599f064e489afe2d4ee88dd`  
		Last Modified: Thu, 12 Apr 2018 22:28:16 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f791c6cca3926ab7f83ac9c0d9b69b61493264d6808cc4495991e85a6fcc9b27`  
		Last Modified: Thu, 12 Apr 2018 22:28:13 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b50bc76ff2900c53acd00c036e141e924dbdfd49c406a3d544b655f35837c8`  
		Last Modified: Thu, 12 Apr 2018 22:28:15 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80def0b06e222aababfbae8950a76c3cd745a147e10be164283a3c6aed7fb658`  
		Last Modified: Thu, 12 Apr 2018 22:28:14 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d039a3c5ab97a990f6b06cc58d738d21a91be91b3d4b0aa91cbd347c2061a2`  
		Last Modified: Thu, 12 Apr 2018 22:28:14 GMT  
		Size: 107.5 KB (107455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb0d96d531ece0d813465c9ecc8365af639bf2ce8d05400f80e28e273c4f186`  
		Last Modified: Thu, 12 Apr 2018 22:28:16 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
