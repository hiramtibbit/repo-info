<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `couchbase`

-	[`couchbase:4.6.5`](#couchbase465)
-	[`couchbase:5.5.2`](#couchbase552)
-	[`couchbase:6.0.0-beta`](#couchbase600-beta)
-	[`couchbase:community`](#couchbasecommunity)
-	[`couchbase:community-4.5.1`](#couchbasecommunity-451)
-	[`couchbase:community-5.1.1`](#couchbasecommunity-511)
-	[`couchbase:enterprise`](#couchbaseenterprise)
-	[`couchbase:enterprise-4.6.5`](#couchbaseenterprise-465)
-	[`couchbase:enterprise-5.5.2`](#couchbaseenterprise-552)
-	[`couchbase:latest`](#couchbaselatest)

## `couchbase:4.6.5`

```console
$ docker pull couchbase@sha256:c0555f5a2dde3e1e7752f4696fdd99f6e23be826d761ea5d9e494bbdd6a7af09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:4.6.5` - linux; amd64

```console
$ docker pull couchbase@sha256:3f127d347eaf1eece7b058f71daeb0cea618a223ce0c6b5da18166b690c6c672
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.1 MB (213078228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d7c1dd4da93845ee4fe76af16f285ecab11baefc6325bce7f17289dcd9b3806`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 19 Oct 2018 00:48:46 GMT
ADD file:ecefeeae93e44cb420508628b869bab5361955c66d604e32ab5cb6dca0403c1c in / 
# Fri, 19 Oct 2018 00:48:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:48:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:48:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:48:48 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:52:50 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Fri, 19 Oct 2018 01:53:15 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 19 Oct 2018 01:53:16 GMT
ARG CB_VERSION=4.6.5
# Fri, 19 Oct 2018 01:53:16 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Fri, 19 Oct 2018 01:53:16 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb
# Fri, 19 Oct 2018 01:53:25 GMT
ARG CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f
# Fri, 19 Oct 2018 01:53:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 19 Oct 2018 01:53:27 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f CB_VERSION=4.6.5
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 19 Oct 2018 01:53:44 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f CB_VERSION=4.6.5
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Fri, 19 Oct 2018 01:53:45 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Fri, 19 Oct 2018 01:53:45 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f CB_VERSION=4.6.5
RUN chown -R couchbase:couchbase /etc/service
# Fri, 19 Oct 2018 01:53:48 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Fri, 19 Oct 2018 01:53:49 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f CB_VERSION=4.6.5
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 19 Oct 2018 01:53:50 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f CB_VERSION=4.6.5
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Fri, 19 Oct 2018 01:53:50 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Fri, 19 Oct 2018 01:53:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 19 Oct 2018 01:53:51 GMT
CMD ["couchbase-server"]
# Fri, 19 Oct 2018 01:53:51 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 18095/tcp 18096/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp 8095/tcp 8096/tcp
# Fri, 19 Oct 2018 01:53:51 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:027274c8e1113b52e886c8f515b0abe6c67b81f17881acf3e9b7f352f901110a`  
		Last Modified: Fri, 19 Oct 2018 00:51:22 GMT  
		Size: 67.1 MB (67129254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f9339a13595d28726bb9d01196bcae9e2409d540d276ed7ba60a6a4a226654`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 72.7 KB (72651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f75707cf448723cfbf8bf808539676b8a612e45f8ac6f5f64f5ed30973260`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 366.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5eed9f50d581a74ed418f044c631fd0ed5afa21c12456ff33456f30321d00c`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ccd3676887e8f7e9d1bd9b2092bdf3279b51bfd5a08614abb69ad48f749893`  
		Last Modified: Fri, 19 Oct 2018 01:58:19 GMT  
		Size: 11.4 MB (11391900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:264c9935078262c228f047b3495f6c3e83909d422d95839a4ce874f07702e4ea`  
		Last Modified: Fri, 19 Oct 2018 01:58:17 GMT  
		Size: 1.9 KB (1907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c803b8e0d2afd14838df4a344fa017d2558cb27e9d404f8e040cffbea025273`  
		Last Modified: Fri, 19 Oct 2018 01:58:40 GMT  
		Size: 134.4 MB (134374456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e400f9b989de4abb1efb82c945ff03647f0029b8f679aec3fe09588970ae8855`  
		Last Modified: Fri, 19 Oct 2018 01:58:17 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f23e871634c5431b5a4ad139ddcbcb2a9debf152b40dd9e8138b022a0e75d51`  
		Last Modified: Fri, 19 Oct 2018 01:58:15 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a42165d97089c607342b97840a21b8928c38d8b91a5cd84926330d1a9e8b90af`  
		Last Modified: Fri, 19 Oct 2018 01:58:15 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:706f99eceb115252432353f8f7269d97bdd6678e2d2ddb274e237047e9d471a9`  
		Last Modified: Fri, 19 Oct 2018 01:58:16 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13438cb81d2b939a0979601cd0eb536392441b1ee847da27a0ee7a0ec3fd4f91`  
		Last Modified: Fri, 19 Oct 2018 01:58:16 GMT  
		Size: 105.4 KB (105401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0630bf73623a9c58a1392e8679e059c3585a2581e53cc5a182c54b6147fb0753`  
		Last Modified: Fri, 19 Oct 2018 01:58:15 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:5.5.2`

```console
$ docker pull couchbase@sha256:dcdf07a219ba5fe10bf6270082eb57b60320bb520a1f019b4793b9d0ec9fa2ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:5.5.2` - linux; amd64

```console
$ docker pull couchbase@sha256:3bdf2904d16b27d3836ec523b314259ca710ce2ff6f02487480e5d594c47bee6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.6 MB (321639474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5201ec0e2dd9b23ace4d6eff82f9c006581d31e4785ab3ed4bfda390afdc0cc`
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
# Fri, 19 Oct 2018 01:50:01 GMT
ARG CB_VERSION=5.5.2
# Fri, 19 Oct 2018 01:50:01 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Fri, 19 Oct 2018 01:50:01 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.5.2-ubuntu16.04_amd64.deb
# Fri, 19 Oct 2018 01:50:02 GMT
ARG CB_SHA256=9b187d76e159e5bf4b6f12bb246d997cd9847809cfc8591858cdd6bd90b6d862
# Fri, 19 Oct 2018 01:50:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 19 Oct 2018 01:50:11 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.2-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9b187d76e159e5bf4b6f12bb246d997cd9847809cfc8591858cdd6bd90b6d862 CB_VERSION=5.5.2
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 19 Oct 2018 01:50:41 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.2-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9b187d76e159e5bf4b6f12bb246d997cd9847809cfc8591858cdd6bd90b6d862 CB_VERSION=5.5.2
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Fri, 19 Oct 2018 01:50:41 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Fri, 19 Oct 2018 01:50:42 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.2-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9b187d76e159e5bf4b6f12bb246d997cd9847809cfc8591858cdd6bd90b6d862 CB_VERSION=5.5.2
RUN chown -R couchbase:couchbase /etc/service
# Fri, 19 Oct 2018 01:50:42 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Fri, 19 Oct 2018 01:50:43 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.2-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9b187d76e159e5bf4b6f12bb246d997cd9847809cfc8591858cdd6bd90b6d862 CB_VERSION=5.5.2
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 19 Oct 2018 01:50:44 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.2-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9b187d76e159e5bf4b6f12bb246d997cd9847809cfc8591858cdd6bd90b6d862 CB_VERSION=5.5.2
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Fri, 19 Oct 2018 01:50:44 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Fri, 19 Oct 2018 01:50:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 19 Oct 2018 01:50:45 GMT
CMD ["couchbase-server"]
# Fri, 19 Oct 2018 01:50:45 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 18095/tcp 18096/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp 8095/tcp 8096/tcp
# Fri, 19 Oct 2018 01:50:45 GMT
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
	-	`sha256:a5c53dfb80d77536bf69fdf374a2edeadc66ce5d5eaf14f2cd55eb2e902ca35b`  
		Last Modified: Fri, 19 Oct 2018 01:55:47 GMT  
		Size: 2.1 KB (2079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ba4b3775914da7ce3c2d95b2ce2e327948336da777b979b91593aebdf1e8e9`  
		Last Modified: Fri, 19 Oct 2018 01:56:25 GMT  
		Size: 263.9 MB (263875531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18924b37f297cdeb58d03acd037d7a4cf5e6f68ae4ea27f405c3ab07eaef3a77`  
		Last Modified: Fri, 19 Oct 2018 01:55:46 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344e83dbe3d3fb5ecccdc9514f664a450125d1637334104fc5dc843d53174b57`  
		Last Modified: Fri, 19 Oct 2018 01:55:46 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1049a208a670f575b67d273d70f48ee7750e14a63c702e94599afa8ea87af048`  
		Last Modified: Fri, 19 Oct 2018 01:55:45 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36612a3dd21bb29a3757821dd0a9e234960649f3ec54229f835ef8247f77fe7d`  
		Last Modified: Fri, 19 Oct 2018 01:55:45 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fa79e1ff3010f69d82585cf95f1da33f039f8a1a69cfb67f213a5a1b1a86748`  
		Last Modified: Fri, 19 Oct 2018 01:55:47 GMT  
		Size: 107.5 KB (107454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1801915e24609eadef61be016351573dbe58d02500aaa5c658a1b0d42e020e05`  
		Last Modified: Fri, 19 Oct 2018 01:55:45 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:6.0.0-beta`

```console
$ docker pull couchbase@sha256:3fbe0c7e628a292a4a0c0fea08519ce56add7c89e868f5ff2e3d7644b47b43e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:6.0.0-beta` - linux; amd64

```console
$ docker pull couchbase@sha256:d17369d15f2ad00811368fc9503b63303be903e1974aed6138433566d468086e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.8 MB (344841434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89bce469006f7fe6785c16e707d69737e5b0b6f176ba82f0faf67e4aab3df76e`
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
# Fri, 19 Oct 2018 01:51:06 GMT
ARG CB_VERSION=6.0.0-beta
# Fri, 19 Oct 2018 01:51:06 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Fri, 19 Oct 2018 01:51:06 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_6.0.0-beta-ubuntu16.04_amd64.deb
# Fri, 19 Oct 2018 01:51:16 GMT
ARG CB_SHA256=11c6d084f8c732993e1d8bb211a4f95eeae5eac5152521cc953ce728be3719dd
# Fri, 19 Oct 2018 01:51:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 19 Oct 2018 01:51:17 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-beta-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=11c6d084f8c732993e1d8bb211a4f95eeae5eac5152521cc953ce728be3719dd CB_VERSION=6.0.0-beta
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 19 Oct 2018 01:52:34 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-beta-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=11c6d084f8c732993e1d8bb211a4f95eeae5eac5152521cc953ce728be3719dd CB_VERSION=6.0.0-beta
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Fri, 19 Oct 2018 01:52:34 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Fri, 19 Oct 2018 01:52:35 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-beta-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=11c6d084f8c732993e1d8bb211a4f95eeae5eac5152521cc953ce728be3719dd CB_VERSION=6.0.0-beta
RUN chown -R couchbase:couchbase /etc/service
# Fri, 19 Oct 2018 01:52:35 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Fri, 19 Oct 2018 01:52:36 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-beta-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=11c6d084f8c732993e1d8bb211a4f95eeae5eac5152521cc953ce728be3719dd CB_VERSION=6.0.0-beta
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 19 Oct 2018 01:52:37 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-beta-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=11c6d084f8c732993e1d8bb211a4f95eeae5eac5152521cc953ce728be3719dd CB_VERSION=6.0.0-beta
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Fri, 19 Oct 2018 01:52:37 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Fri, 19 Oct 2018 01:52:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 19 Oct 2018 01:52:38 GMT
CMD ["couchbase-server"]
# Fri, 19 Oct 2018 01:52:38 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 18095/tcp 18096/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp 8095/tcp 8096/tcp
# Fri, 19 Oct 2018 01:52:38 GMT
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
	-	`sha256:d1792bffa78cbeaf0da39473b44a91b1f1270231ee892224b473658732ae1fda`  
		Last Modified: Fri, 19 Oct 2018 01:57:22 GMT  
		Size: 2.1 KB (2084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66b0b654fc7b5185b29ff8d9940902f00b4c8cebd2bf156e5b3a36a870eb80e`  
		Last Modified: Fri, 19 Oct 2018 01:58:02 GMT  
		Size: 287.1 MB (287064340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a01155ce4395c1d84748b054396040d79f84663b4cdc601252a9f5e291e701`  
		Last Modified: Fri, 19 Oct 2018 01:57:21 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a66a952b8ef0e592e895c89b3da9c7be0a26b3e24ab5daf2385f5354f580948`  
		Last Modified: Fri, 19 Oct 2018 01:57:21 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8813d966b9ac77d21e1e0fd03c8267e2b6e6556b07afd96e52c44d2dbc6b51c`  
		Last Modified: Fri, 19 Oct 2018 01:57:20 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9e6f9d6bddf115286fc2bf794e3229c95e2e2a66c8be0213e9c471222d2845`  
		Last Modified: Fri, 19 Oct 2018 01:57:21 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0add699466c02edfce2651afd59e462e089e1cbf405bc7da7e39ce8d06faa02`  
		Last Modified: Fri, 19 Oct 2018 01:57:21 GMT  
		Size: 120.6 KB (120598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4331fe2984bc570ed432d01a45611f7ac24c8da226dc8223d0ac69c6dd48d0d1`  
		Last Modified: Fri, 19 Oct 2018 01:57:21 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community`

```console
$ docker pull couchbase@sha256:71072ea315bd9a45df707122d56eca4cade8a500b75ebbfee1b3d6bb63148b9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community` - linux; amd64

```console
$ docker pull couchbase@sha256:c10e6167a9ffd88ce4ea58cc231a43463bd76f50fdb6e25e578b38f9f336d4cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.7 MB (190693104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cff9afda74894731408b3334acc80e23f437803c515422c606a3bd3714e5c23`
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
# Fri, 19 Oct 2018 01:54:02 GMT
ARG CB_VERSION=5.1.1
# Fri, 19 Oct 2018 01:54:02 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Fri, 19 Oct 2018 01:54:03 GMT
ARG CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb
# Fri, 19 Oct 2018 01:54:03 GMT
ARG CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb
# Fri, 19 Oct 2018 01:54:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 19 Oct 2018 01:54:04 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 19 Oct 2018 01:54:26 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Fri, 19 Oct 2018 01:54:26 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Fri, 19 Oct 2018 01:54:27 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN chown -R couchbase:couchbase /etc/service
# Fri, 19 Oct 2018 01:54:27 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Fri, 19 Oct 2018 01:54:28 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 19 Oct 2018 01:54:29 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Fri, 19 Oct 2018 01:54:29 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Fri, 19 Oct 2018 01:54:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 19 Oct 2018 01:54:30 GMT
CMD ["couchbase-server"]
# Fri, 19 Oct 2018 01:54:30 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 18095/tcp 18096/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp 8095/tcp 8096/tcp
# Fri, 19 Oct 2018 01:54:30 GMT
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
	-	`sha256:5a16f62321d90b87f6d84b2212b8e75796999c5657c720bf77830648eed38415`  
		Last Modified: Fri, 19 Oct 2018 01:59:07 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a3164786daa8cc6b4c1818ded7b563e98cf0678cd4f34bf6a2bcd48be6aa681`  
		Last Modified: Fri, 19 Oct 2018 01:59:29 GMT  
		Size: 132.9 MB (132929155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20f6611225d249f8920c79251d28417ca94fb882ad1903ca67f7b726f5fa228`  
		Last Modified: Fri, 19 Oct 2018 01:59:06 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2433d7197fe8fd969ad799ab5a8ce9a6edb6fab3077acb0996ddffa371791593`  
		Last Modified: Fri, 19 Oct 2018 01:59:06 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2eadac0ca3d5dfd49efc1164a907a01e4b119791a1dfef4f1d229fe72e2b92`  
		Last Modified: Fri, 19 Oct 2018 01:59:06 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e594fc63a1f9827640b1d0d3ec06ba0a2214f06f0df66aac3c0a48f3ade18c3`  
		Last Modified: Fri, 19 Oct 2018 01:59:05 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bb82c8e8c095a413615886f7bd95fa8af3a37ea32cb72ef66ed0e5399aac9d6`  
		Last Modified: Fri, 19 Oct 2018 01:59:05 GMT  
		Size: 107.5 KB (107460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83361f0ffad346098e76e9d7b0eac19152bd4dbe553f5b62ba26843a61346ac9`  
		Last Modified: Fri, 19 Oct 2018 01:59:06 GMT  
		Size: 858.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-4.5.1`

```console
$ docker pull couchbase@sha256:07f76e8bc22abf484d4ad6a422e440b88cc68727c7638c903bcb75176ae1316c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community-4.5.1` - linux; amd64

```console
$ docker pull couchbase@sha256:be547997dd3282ad9a0c379ee9428364f2ee5925a58fae56ca936aef64dc3922
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.8 MB (209755305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c22641a4efc096f557406179d62658f340496e5f46f9e416e858df4f1e0c9a6f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 19 Oct 2018 00:48:46 GMT
ADD file:ecefeeae93e44cb420508628b869bab5361955c66d604e32ab5cb6dca0403c1c in / 
# Fri, 19 Oct 2018 00:48:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:48:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:48:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:48:48 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:52:50 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Fri, 19 Oct 2018 01:53:15 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 19 Oct 2018 01:54:43 GMT
ARG CB_VERSION=4.5.1
# Fri, 19 Oct 2018 01:54:43 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Fri, 19 Oct 2018 01:54:43 GMT
ARG CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb
# Fri, 19 Oct 2018 01:54:43 GMT
ARG CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234
# Fri, 19 Oct 2018 01:54:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 19 Oct 2018 01:54:53 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 19 Oct 2018 01:55:11 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Fri, 19 Oct 2018 01:55:15 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Fri, 19 Oct 2018 01:55:16 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN chown -R couchbase:couchbase /etc/service
# Fri, 19 Oct 2018 01:55:25 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Fri, 19 Oct 2018 01:55:25 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 19 Oct 2018 01:55:26 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Fri, 19 Oct 2018 01:55:27 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Fri, 19 Oct 2018 01:55:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 19 Oct 2018 01:55:27 GMT
CMD ["couchbase-server"]
# Fri, 19 Oct 2018 01:55:27 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 18095/tcp 18096/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp 8095/tcp 8096/tcp
# Fri, 19 Oct 2018 01:55:28 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:027274c8e1113b52e886c8f515b0abe6c67b81f17881acf3e9b7f352f901110a`  
		Last Modified: Fri, 19 Oct 2018 00:51:22 GMT  
		Size: 67.1 MB (67129254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f9339a13595d28726bb9d01196bcae9e2409d540d276ed7ba60a6a4a226654`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 72.7 KB (72651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f75707cf448723cfbf8bf808539676b8a612e45f8ac6f5f64f5ed30973260`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 366.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5eed9f50d581a74ed418f044c631fd0ed5afa21c12456ff33456f30321d00c`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ccd3676887e8f7e9d1bd9b2092bdf3279b51bfd5a08614abb69ad48f749893`  
		Last Modified: Fri, 19 Oct 2018 01:58:19 GMT  
		Size: 11.4 MB (11391900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e3c4398a3afd075e50753829ab24c357ce348627363b6f8fe20501d93afa0eb`  
		Last Modified: Fri, 19 Oct 2018 01:59:53 GMT  
		Size: 1.9 KB (1908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d86471211c25b71d7f19e898188ab19055a995562a7c58eaf6d5895c6606159`  
		Last Modified: Fri, 19 Oct 2018 02:00:14 GMT  
		Size: 131.1 MB (131051529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4624b62b1d0b80aeb564eeb148802e0d87bc6e3aead5926fb831e6cf0b04d8`  
		Last Modified: Fri, 19 Oct 2018 01:59:53 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca8cc495ed4cbee5f6e61805ff23ba82f8ce35902c138ff252a5aa0d8eab8814`  
		Last Modified: Fri, 19 Oct 2018 01:59:52 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a153d7595a0dcba92bf902acfcd41da14975ab81ea20ccd643f53bd0e60eb344`  
		Last Modified: Fri, 19 Oct 2018 01:59:52 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d4ee21748e9aaa264785586cdaeba48d08a4a73f0b100adff86848ac6d4ab0`  
		Last Modified: Fri, 19 Oct 2018 01:59:52 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141766aefbc0c2f84b7c04cdfe0ea413383488e19167adfbf71657a51cd8d91a`  
		Last Modified: Fri, 19 Oct 2018 01:59:52 GMT  
		Size: 105.4 KB (105407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be1701abf2fd01dbb9c3bcfbe6d59bce9aa459c4422b945dc086a5d5ec47bb19`  
		Last Modified: Fri, 19 Oct 2018 01:59:52 GMT  
		Size: 858.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-5.1.1`

```console
$ docker pull couchbase@sha256:71072ea315bd9a45df707122d56eca4cade8a500b75ebbfee1b3d6bb63148b9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community-5.1.1` - linux; amd64

```console
$ docker pull couchbase@sha256:c10e6167a9ffd88ce4ea58cc231a43463bd76f50fdb6e25e578b38f9f336d4cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.7 MB (190693104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cff9afda74894731408b3334acc80e23f437803c515422c606a3bd3714e5c23`
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
# Fri, 19 Oct 2018 01:54:02 GMT
ARG CB_VERSION=5.1.1
# Fri, 19 Oct 2018 01:54:02 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Fri, 19 Oct 2018 01:54:03 GMT
ARG CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb
# Fri, 19 Oct 2018 01:54:03 GMT
ARG CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb
# Fri, 19 Oct 2018 01:54:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 19 Oct 2018 01:54:04 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 19 Oct 2018 01:54:26 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Fri, 19 Oct 2018 01:54:26 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Fri, 19 Oct 2018 01:54:27 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN chown -R couchbase:couchbase /etc/service
# Fri, 19 Oct 2018 01:54:27 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Fri, 19 Oct 2018 01:54:28 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 19 Oct 2018 01:54:29 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Fri, 19 Oct 2018 01:54:29 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Fri, 19 Oct 2018 01:54:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 19 Oct 2018 01:54:30 GMT
CMD ["couchbase-server"]
# Fri, 19 Oct 2018 01:54:30 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 18095/tcp 18096/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp 8095/tcp 8096/tcp
# Fri, 19 Oct 2018 01:54:30 GMT
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
	-	`sha256:5a16f62321d90b87f6d84b2212b8e75796999c5657c720bf77830648eed38415`  
		Last Modified: Fri, 19 Oct 2018 01:59:07 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a3164786daa8cc6b4c1818ded7b563e98cf0678cd4f34bf6a2bcd48be6aa681`  
		Last Modified: Fri, 19 Oct 2018 01:59:29 GMT  
		Size: 132.9 MB (132929155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20f6611225d249f8920c79251d28417ca94fb882ad1903ca67f7b726f5fa228`  
		Last Modified: Fri, 19 Oct 2018 01:59:06 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2433d7197fe8fd969ad799ab5a8ce9a6edb6fab3077acb0996ddffa371791593`  
		Last Modified: Fri, 19 Oct 2018 01:59:06 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2eadac0ca3d5dfd49efc1164a907a01e4b119791a1dfef4f1d229fe72e2b92`  
		Last Modified: Fri, 19 Oct 2018 01:59:06 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e594fc63a1f9827640b1d0d3ec06ba0a2214f06f0df66aac3c0a48f3ade18c3`  
		Last Modified: Fri, 19 Oct 2018 01:59:05 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bb82c8e8c095a413615886f7bd95fa8af3a37ea32cb72ef66ed0e5399aac9d6`  
		Last Modified: Fri, 19 Oct 2018 01:59:05 GMT  
		Size: 107.5 KB (107460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83361f0ffad346098e76e9d7b0eac19152bd4dbe553f5b62ba26843a61346ac9`  
		Last Modified: Fri, 19 Oct 2018 01:59:06 GMT  
		Size: 858.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise`

```console
$ docker pull couchbase@sha256:dcdf07a219ba5fe10bf6270082eb57b60320bb520a1f019b4793b9d0ec9fa2ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise` - linux; amd64

```console
$ docker pull couchbase@sha256:3bdf2904d16b27d3836ec523b314259ca710ce2ff6f02487480e5d594c47bee6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.6 MB (321639474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5201ec0e2dd9b23ace4d6eff82f9c006581d31e4785ab3ed4bfda390afdc0cc`
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
# Fri, 19 Oct 2018 01:50:01 GMT
ARG CB_VERSION=5.5.2
# Fri, 19 Oct 2018 01:50:01 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Fri, 19 Oct 2018 01:50:01 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.5.2-ubuntu16.04_amd64.deb
# Fri, 19 Oct 2018 01:50:02 GMT
ARG CB_SHA256=9b187d76e159e5bf4b6f12bb246d997cd9847809cfc8591858cdd6bd90b6d862
# Fri, 19 Oct 2018 01:50:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 19 Oct 2018 01:50:11 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.2-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9b187d76e159e5bf4b6f12bb246d997cd9847809cfc8591858cdd6bd90b6d862 CB_VERSION=5.5.2
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 19 Oct 2018 01:50:41 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.2-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9b187d76e159e5bf4b6f12bb246d997cd9847809cfc8591858cdd6bd90b6d862 CB_VERSION=5.5.2
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Fri, 19 Oct 2018 01:50:41 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Fri, 19 Oct 2018 01:50:42 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.2-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9b187d76e159e5bf4b6f12bb246d997cd9847809cfc8591858cdd6bd90b6d862 CB_VERSION=5.5.2
RUN chown -R couchbase:couchbase /etc/service
# Fri, 19 Oct 2018 01:50:42 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Fri, 19 Oct 2018 01:50:43 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.2-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9b187d76e159e5bf4b6f12bb246d997cd9847809cfc8591858cdd6bd90b6d862 CB_VERSION=5.5.2
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 19 Oct 2018 01:50:44 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.2-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9b187d76e159e5bf4b6f12bb246d997cd9847809cfc8591858cdd6bd90b6d862 CB_VERSION=5.5.2
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Fri, 19 Oct 2018 01:50:44 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Fri, 19 Oct 2018 01:50:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 19 Oct 2018 01:50:45 GMT
CMD ["couchbase-server"]
# Fri, 19 Oct 2018 01:50:45 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 18095/tcp 18096/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp 8095/tcp 8096/tcp
# Fri, 19 Oct 2018 01:50:45 GMT
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
	-	`sha256:a5c53dfb80d77536bf69fdf374a2edeadc66ce5d5eaf14f2cd55eb2e902ca35b`  
		Last Modified: Fri, 19 Oct 2018 01:55:47 GMT  
		Size: 2.1 KB (2079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ba4b3775914da7ce3c2d95b2ce2e327948336da777b979b91593aebdf1e8e9`  
		Last Modified: Fri, 19 Oct 2018 01:56:25 GMT  
		Size: 263.9 MB (263875531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18924b37f297cdeb58d03acd037d7a4cf5e6f68ae4ea27f405c3ab07eaef3a77`  
		Last Modified: Fri, 19 Oct 2018 01:55:46 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344e83dbe3d3fb5ecccdc9514f664a450125d1637334104fc5dc843d53174b57`  
		Last Modified: Fri, 19 Oct 2018 01:55:46 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1049a208a670f575b67d273d70f48ee7750e14a63c702e94599afa8ea87af048`  
		Last Modified: Fri, 19 Oct 2018 01:55:45 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36612a3dd21bb29a3757821dd0a9e234960649f3ec54229f835ef8247f77fe7d`  
		Last Modified: Fri, 19 Oct 2018 01:55:45 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fa79e1ff3010f69d82585cf95f1da33f039f8a1a69cfb67f213a5a1b1a86748`  
		Last Modified: Fri, 19 Oct 2018 01:55:47 GMT  
		Size: 107.5 KB (107454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1801915e24609eadef61be016351573dbe58d02500aaa5c658a1b0d42e020e05`  
		Last Modified: Fri, 19 Oct 2018 01:55:45 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-4.6.5`

```console
$ docker pull couchbase@sha256:c0555f5a2dde3e1e7752f4696fdd99f6e23be826d761ea5d9e494bbdd6a7af09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-4.6.5` - linux; amd64

```console
$ docker pull couchbase@sha256:3f127d347eaf1eece7b058f71daeb0cea618a223ce0c6b5da18166b690c6c672
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.1 MB (213078228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d7c1dd4da93845ee4fe76af16f285ecab11baefc6325bce7f17289dcd9b3806`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 19 Oct 2018 00:48:46 GMT
ADD file:ecefeeae93e44cb420508628b869bab5361955c66d604e32ab5cb6dca0403c1c in / 
# Fri, 19 Oct 2018 00:48:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:48:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:48:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:48:48 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:52:50 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Fri, 19 Oct 2018 01:53:15 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 19 Oct 2018 01:53:16 GMT
ARG CB_VERSION=4.6.5
# Fri, 19 Oct 2018 01:53:16 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Fri, 19 Oct 2018 01:53:16 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb
# Fri, 19 Oct 2018 01:53:25 GMT
ARG CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f
# Fri, 19 Oct 2018 01:53:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 19 Oct 2018 01:53:27 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f CB_VERSION=4.6.5
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 19 Oct 2018 01:53:44 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f CB_VERSION=4.6.5
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Fri, 19 Oct 2018 01:53:45 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Fri, 19 Oct 2018 01:53:45 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f CB_VERSION=4.6.5
RUN chown -R couchbase:couchbase /etc/service
# Fri, 19 Oct 2018 01:53:48 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Fri, 19 Oct 2018 01:53:49 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f CB_VERSION=4.6.5
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 19 Oct 2018 01:53:50 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f CB_VERSION=4.6.5
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Fri, 19 Oct 2018 01:53:50 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Fri, 19 Oct 2018 01:53:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 19 Oct 2018 01:53:51 GMT
CMD ["couchbase-server"]
# Fri, 19 Oct 2018 01:53:51 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 18095/tcp 18096/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp 8095/tcp 8096/tcp
# Fri, 19 Oct 2018 01:53:51 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:027274c8e1113b52e886c8f515b0abe6c67b81f17881acf3e9b7f352f901110a`  
		Last Modified: Fri, 19 Oct 2018 00:51:22 GMT  
		Size: 67.1 MB (67129254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f9339a13595d28726bb9d01196bcae9e2409d540d276ed7ba60a6a4a226654`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 72.7 KB (72651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f75707cf448723cfbf8bf808539676b8a612e45f8ac6f5f64f5ed30973260`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 366.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5eed9f50d581a74ed418f044c631fd0ed5afa21c12456ff33456f30321d00c`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ccd3676887e8f7e9d1bd9b2092bdf3279b51bfd5a08614abb69ad48f749893`  
		Last Modified: Fri, 19 Oct 2018 01:58:19 GMT  
		Size: 11.4 MB (11391900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:264c9935078262c228f047b3495f6c3e83909d422d95839a4ce874f07702e4ea`  
		Last Modified: Fri, 19 Oct 2018 01:58:17 GMT  
		Size: 1.9 KB (1907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c803b8e0d2afd14838df4a344fa017d2558cb27e9d404f8e040cffbea025273`  
		Last Modified: Fri, 19 Oct 2018 01:58:40 GMT  
		Size: 134.4 MB (134374456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e400f9b989de4abb1efb82c945ff03647f0029b8f679aec3fe09588970ae8855`  
		Last Modified: Fri, 19 Oct 2018 01:58:17 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f23e871634c5431b5a4ad139ddcbcb2a9debf152b40dd9e8138b022a0e75d51`  
		Last Modified: Fri, 19 Oct 2018 01:58:15 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a42165d97089c607342b97840a21b8928c38d8b91a5cd84926330d1a9e8b90af`  
		Last Modified: Fri, 19 Oct 2018 01:58:15 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:706f99eceb115252432353f8f7269d97bdd6678e2d2ddb274e237047e9d471a9`  
		Last Modified: Fri, 19 Oct 2018 01:58:16 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13438cb81d2b939a0979601cd0eb536392441b1ee847da27a0ee7a0ec3fd4f91`  
		Last Modified: Fri, 19 Oct 2018 01:58:16 GMT  
		Size: 105.4 KB (105401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0630bf73623a9c58a1392e8679e059c3585a2581e53cc5a182c54b6147fb0753`  
		Last Modified: Fri, 19 Oct 2018 01:58:15 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-5.5.2`

```console
$ docker pull couchbase@sha256:dcdf07a219ba5fe10bf6270082eb57b60320bb520a1f019b4793b9d0ec9fa2ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-5.5.2` - linux; amd64

```console
$ docker pull couchbase@sha256:3bdf2904d16b27d3836ec523b314259ca710ce2ff6f02487480e5d594c47bee6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.6 MB (321639474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5201ec0e2dd9b23ace4d6eff82f9c006581d31e4785ab3ed4bfda390afdc0cc`
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
# Fri, 19 Oct 2018 01:50:01 GMT
ARG CB_VERSION=5.5.2
# Fri, 19 Oct 2018 01:50:01 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Fri, 19 Oct 2018 01:50:01 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.5.2-ubuntu16.04_amd64.deb
# Fri, 19 Oct 2018 01:50:02 GMT
ARG CB_SHA256=9b187d76e159e5bf4b6f12bb246d997cd9847809cfc8591858cdd6bd90b6d862
# Fri, 19 Oct 2018 01:50:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 19 Oct 2018 01:50:11 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.2-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9b187d76e159e5bf4b6f12bb246d997cd9847809cfc8591858cdd6bd90b6d862 CB_VERSION=5.5.2
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 19 Oct 2018 01:50:41 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.2-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9b187d76e159e5bf4b6f12bb246d997cd9847809cfc8591858cdd6bd90b6d862 CB_VERSION=5.5.2
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Fri, 19 Oct 2018 01:50:41 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Fri, 19 Oct 2018 01:50:42 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.2-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9b187d76e159e5bf4b6f12bb246d997cd9847809cfc8591858cdd6bd90b6d862 CB_VERSION=5.5.2
RUN chown -R couchbase:couchbase /etc/service
# Fri, 19 Oct 2018 01:50:42 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Fri, 19 Oct 2018 01:50:43 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.2-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9b187d76e159e5bf4b6f12bb246d997cd9847809cfc8591858cdd6bd90b6d862 CB_VERSION=5.5.2
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 19 Oct 2018 01:50:44 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.2-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9b187d76e159e5bf4b6f12bb246d997cd9847809cfc8591858cdd6bd90b6d862 CB_VERSION=5.5.2
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Fri, 19 Oct 2018 01:50:44 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Fri, 19 Oct 2018 01:50:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 19 Oct 2018 01:50:45 GMT
CMD ["couchbase-server"]
# Fri, 19 Oct 2018 01:50:45 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 18095/tcp 18096/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp 8095/tcp 8096/tcp
# Fri, 19 Oct 2018 01:50:45 GMT
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
	-	`sha256:a5c53dfb80d77536bf69fdf374a2edeadc66ce5d5eaf14f2cd55eb2e902ca35b`  
		Last Modified: Fri, 19 Oct 2018 01:55:47 GMT  
		Size: 2.1 KB (2079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ba4b3775914da7ce3c2d95b2ce2e327948336da777b979b91593aebdf1e8e9`  
		Last Modified: Fri, 19 Oct 2018 01:56:25 GMT  
		Size: 263.9 MB (263875531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18924b37f297cdeb58d03acd037d7a4cf5e6f68ae4ea27f405c3ab07eaef3a77`  
		Last Modified: Fri, 19 Oct 2018 01:55:46 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344e83dbe3d3fb5ecccdc9514f664a450125d1637334104fc5dc843d53174b57`  
		Last Modified: Fri, 19 Oct 2018 01:55:46 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1049a208a670f575b67d273d70f48ee7750e14a63c702e94599afa8ea87af048`  
		Last Modified: Fri, 19 Oct 2018 01:55:45 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36612a3dd21bb29a3757821dd0a9e234960649f3ec54229f835ef8247f77fe7d`  
		Last Modified: Fri, 19 Oct 2018 01:55:45 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fa79e1ff3010f69d82585cf95f1da33f039f8a1a69cfb67f213a5a1b1a86748`  
		Last Modified: Fri, 19 Oct 2018 01:55:47 GMT  
		Size: 107.5 KB (107454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1801915e24609eadef61be016351573dbe58d02500aaa5c658a1b0d42e020e05`  
		Last Modified: Fri, 19 Oct 2018 01:55:45 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:latest`

```console
$ docker pull couchbase@sha256:dcdf07a219ba5fe10bf6270082eb57b60320bb520a1f019b4793b9d0ec9fa2ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:latest` - linux; amd64

```console
$ docker pull couchbase@sha256:3bdf2904d16b27d3836ec523b314259ca710ce2ff6f02487480e5d594c47bee6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.6 MB (321639474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5201ec0e2dd9b23ace4d6eff82f9c006581d31e4785ab3ed4bfda390afdc0cc`
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
# Fri, 19 Oct 2018 01:50:01 GMT
ARG CB_VERSION=5.5.2
# Fri, 19 Oct 2018 01:50:01 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Fri, 19 Oct 2018 01:50:01 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.5.2-ubuntu16.04_amd64.deb
# Fri, 19 Oct 2018 01:50:02 GMT
ARG CB_SHA256=9b187d76e159e5bf4b6f12bb246d997cd9847809cfc8591858cdd6bd90b6d862
# Fri, 19 Oct 2018 01:50:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 19 Oct 2018 01:50:11 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.2-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9b187d76e159e5bf4b6f12bb246d997cd9847809cfc8591858cdd6bd90b6d862 CB_VERSION=5.5.2
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 19 Oct 2018 01:50:41 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.2-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9b187d76e159e5bf4b6f12bb246d997cd9847809cfc8591858cdd6bd90b6d862 CB_VERSION=5.5.2
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Fri, 19 Oct 2018 01:50:41 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Fri, 19 Oct 2018 01:50:42 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.2-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9b187d76e159e5bf4b6f12bb246d997cd9847809cfc8591858cdd6bd90b6d862 CB_VERSION=5.5.2
RUN chown -R couchbase:couchbase /etc/service
# Fri, 19 Oct 2018 01:50:42 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Fri, 19 Oct 2018 01:50:43 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.2-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9b187d76e159e5bf4b6f12bb246d997cd9847809cfc8591858cdd6bd90b6d862 CB_VERSION=5.5.2
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 19 Oct 2018 01:50:44 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.2-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9b187d76e159e5bf4b6f12bb246d997cd9847809cfc8591858cdd6bd90b6d862 CB_VERSION=5.5.2
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Fri, 19 Oct 2018 01:50:44 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Fri, 19 Oct 2018 01:50:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 19 Oct 2018 01:50:45 GMT
CMD ["couchbase-server"]
# Fri, 19 Oct 2018 01:50:45 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 18095/tcp 18096/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp 8095/tcp 8096/tcp
# Fri, 19 Oct 2018 01:50:45 GMT
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
	-	`sha256:a5c53dfb80d77536bf69fdf374a2edeadc66ce5d5eaf14f2cd55eb2e902ca35b`  
		Last Modified: Fri, 19 Oct 2018 01:55:47 GMT  
		Size: 2.1 KB (2079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ba4b3775914da7ce3c2d95b2ce2e327948336da777b979b91593aebdf1e8e9`  
		Last Modified: Fri, 19 Oct 2018 01:56:25 GMT  
		Size: 263.9 MB (263875531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18924b37f297cdeb58d03acd037d7a4cf5e6f68ae4ea27f405c3ab07eaef3a77`  
		Last Modified: Fri, 19 Oct 2018 01:55:46 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344e83dbe3d3fb5ecccdc9514f664a450125d1637334104fc5dc843d53174b57`  
		Last Modified: Fri, 19 Oct 2018 01:55:46 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1049a208a670f575b67d273d70f48ee7750e14a63c702e94599afa8ea87af048`  
		Last Modified: Fri, 19 Oct 2018 01:55:45 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36612a3dd21bb29a3757821dd0a9e234960649f3ec54229f835ef8247f77fe7d`  
		Last Modified: Fri, 19 Oct 2018 01:55:45 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fa79e1ff3010f69d82585cf95f1da33f039f8a1a69cfb67f213a5a1b1a86748`  
		Last Modified: Fri, 19 Oct 2018 01:55:47 GMT  
		Size: 107.5 KB (107454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1801915e24609eadef61be016351573dbe58d02500aaa5c658a1b0d42e020e05`  
		Last Modified: Fri, 19 Oct 2018 01:55:45 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
