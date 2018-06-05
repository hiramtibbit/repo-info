<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `couchbase`

-	[`couchbase:4.6.5`](#couchbase465)
-	[`couchbase:5.1.1`](#couchbase511)
-	[`couchbase:5.5.0-beta`](#couchbase550-beta)
-	[`couchbase:community`](#couchbasecommunity)
-	[`couchbase:community-4.5.1`](#couchbasecommunity-451)
-	[`couchbase:community-5.0.1`](#couchbasecommunity-501)
-	[`couchbase:enterprise`](#couchbaseenterprise)
-	[`couchbase:enterprise-4.6.5`](#couchbaseenterprise-465)
-	[`couchbase:enterprise-5.1.1`](#couchbaseenterprise-511)
-	[`couchbase:latest`](#couchbaselatest)

## `couchbase:4.6.5`

```console
$ docker pull couchbase@sha256:3abfed2dc31405aafd97206c842d484c6bcd3cbb51e1d5459c3d73d6b81162a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:4.6.5` - linux; amd64

```console
$ docker pull couchbase@sha256:2625e80ff2dfe222fb36546cfbb3ba58925b83c3d8854ff9f2f89fbfd7384391
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219111782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1c275ed25a1bfd31df9961e441be01257322745c4ef12b8a67629fd52a5bf4e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:33 GMT
ADD file:3c65bdbcf1318520e7af157cb00317c8312ec16bcaf181d0db919c45f0d7a85e in / 
# Tue, 05 Jun 2018 21:21:34 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:36 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 21:37:42 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Tue, 05 Jun 2018 21:38:27 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 05 Jun 2018 21:38:28 GMT
ARG CB_VERSION=4.6.5
# Tue, 05 Jun 2018 21:38:28 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Tue, 05 Jun 2018 21:38:28 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb
# Tue, 05 Jun 2018 21:38:28 GMT
ARG CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f
# Tue, 05 Jun 2018 21:38:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 05 Jun 2018 21:38:29 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f CB_VERSION=4.6.5
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 05 Jun 2018 21:38:50 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f CB_VERSION=4.6.5
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 05 Jun 2018 21:38:50 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Tue, 05 Jun 2018 21:38:51 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f CB_VERSION=4.6.5
RUN chown -R couchbase:couchbase /etc/service
# Tue, 05 Jun 2018 21:38:51 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 05 Jun 2018 21:38:52 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f CB_VERSION=4.6.5
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 05 Jun 2018 21:38:53 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f CB_VERSION=4.6.5
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 05 Jun 2018 21:38:53 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Tue, 05 Jun 2018 21:38:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Jun 2018 21:38:53 GMT
CMD ["couchbase-server"]
# Tue, 05 Jun 2018 21:38:54 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 05 Jun 2018 21:38:54 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:28bfaceaff9b7464b1e768b0af7e1efe7877a34f238f935c36978a1ecf82c9b1`  
		Last Modified: Mon, 04 Jun 2018 14:56:53 GMT  
		Size: 73.2 MB (73162466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac540055f2f8da75b6587a88763021178d876a2b789ff0c696fbdb62485b62cd`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2965585ef8b8370dc8c443e35c743ba723ee427c515535e3ff35d898804cacf9`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2416bb9f3ad2b5b0c700a4412e2ffbb671f001c45b4b7433ecdcc9c352847814`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b55a6a680757144baae1671d00d4328eee63e790ab36b27d8d52ceb62b179f`  
		Last Modified: Tue, 05 Jun 2018 21:24:12 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8685e44d603b8eba2617d6590b2d89c2f219c9f88076a88c0eed43f4f59ee53e`  
		Last Modified: Tue, 05 Jun 2018 21:43:22 GMT  
		Size: 11.4 MB (11391258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1806faaef89ccebc6baf61bdbaf5e81a6bfcf1bc1aa72dc8ec3eb845d0f5d67f`  
		Last Modified: Tue, 05 Jun 2018 21:43:17 GMT  
		Size: 1.9 KB (1908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7067f78049b956b39dbc8cf67e96e9d4776a95783b71550ede3735e85e4747`  
		Last Modified: Tue, 05 Jun 2018 21:43:44 GMT  
		Size: 134.4 MB (134374333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5d7997016fed158fcbde64ae6551fdf82f0c60250c551f94be71637bf8500a`  
		Last Modified: Tue, 05 Jun 2018 21:43:17 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73c31dd10537a257757e433271889aa76b7070bedef611d0c500d58f9330ba7`  
		Last Modified: Tue, 05 Jun 2018 21:43:15 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba85b97be04c6dd647f0f6d3cacb7519812f6f8ff45866c6c217ed1c368f8b7e`  
		Last Modified: Tue, 05 Jun 2018 21:43:15 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19293986ba7124ae50b98f76c3d758b29b10bbed66a2eb73170d7866262980ee`  
		Last Modified: Tue, 05 Jun 2018 21:43:15 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa69418b5e2daebcbde67702067b0c506b708a63c2f217293cef164b8e9ef976`  
		Last Modified: Tue, 05 Jun 2018 21:43:15 GMT  
		Size: 105.4 KB (105400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5daa733d7e63bb7c21eea7eddf154636d2f64b51b55dc3965542e9a83cd12d3a`  
		Last Modified: Tue, 05 Jun 2018 21:43:15 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:5.1.1`

```console
$ docker pull couchbase@sha256:f5e7370ee5bdf37f1495033b53adbf78a9733167a976d9610c40bc6394a44b91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:5.1.1` - linux; amd64

```console
$ docker pull couchbase@sha256:f0b2afc069fdc38b2730f1176b9ecf9b0601f40fa75a0fb5151a08794e43b862
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.2 MB (200222633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7caa6cb7c4afdde52831cc5d86aac8267386cab4b039cc0eb4d3cb686184733c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 21:35:27 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Tue, 05 Jun 2018 21:36:15 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 05 Jun 2018 21:36:15 GMT
ARG CB_VERSION=5.1.1
# Tue, 05 Jun 2018 21:36:15 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Tue, 05 Jun 2018 21:36:15 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb
# Tue, 05 Jun 2018 21:36:15 GMT
ARG CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c
# Tue, 05 Jun 2018 21:36:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 05 Jun 2018 21:36:16 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 05 Jun 2018 21:36:36 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 05 Jun 2018 21:36:36 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Tue, 05 Jun 2018 21:36:37 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN chown -R couchbase:couchbase /etc/service
# Tue, 05 Jun 2018 21:36:37 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 05 Jun 2018 21:36:38 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 05 Jun 2018 21:36:39 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 05 Jun 2018 21:36:39 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Tue, 05 Jun 2018 21:36:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Jun 2018 21:36:39 GMT
CMD ["couchbase-server"]
# Tue, 05 Jun 2018 21:36:40 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 05 Jun 2018 21:36:40 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330103d5c07b420a3e1adddc8e022f5015b68e9d201ba7588461a9d2dae3ddfa`  
		Last Modified: Tue, 05 Jun 2018 21:40:26 GMT  
		Size: 13.8 MB (13846107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:353dc87879e47a069fab870b2fd255f6f383bbba4e961847bb03fd1f73d330dd`  
		Last Modified: Tue, 05 Jun 2018 21:40:20 GMT  
		Size: 2.1 KB (2073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4c430647eecb5087c25fd6cc0641d47d22cbd6ec4f52396cfda22772167566`  
		Last Modified: Tue, 05 Jun 2018 21:40:49 GMT  
		Size: 143.1 MB (143139913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4a4aa3c5b1630238069a09565cfaa6449a5c6e58701aabb0964d86b3d448f3`  
		Last Modified: Tue, 05 Jun 2018 21:40:21 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8329628fa50b6a870a4aa62ac1c5859f84259761eedfb99873cf09ad4fbf3b53`  
		Last Modified: Tue, 05 Jun 2018 21:40:20 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3229911d27fac795bb4ef31bb6f2ae7184086f2b6d2e094cbf6b327e10268490`  
		Last Modified: Tue, 05 Jun 2018 21:40:18 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85b0cbbad9a4bd182df7bbf6e4dc0d50a2df28c0bd4d87af7640d743091f7d2`  
		Last Modified: Tue, 05 Jun 2018 21:40:18 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73bd7504e8d3b845d330553217179a14fe4d5953646ba1afe06acf50f68ab23`  
		Last Modified: Tue, 05 Jun 2018 21:40:18 GMT  
		Size: 107.5 KB (107452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91cf1964181a2c467caaccfff4fea76b66248a50eba6403903da6fc05c404a6a`  
		Last Modified: Tue, 05 Jun 2018 21:40:19 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:5.5.0-beta`

```console
$ docker pull couchbase@sha256:5079f2f7f81deea41a1a8125c16a42f3333e96812f167a720d08a588b610a25c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:5.5.0-beta` - linux; amd64

```console
$ docker pull couchbase@sha256:f6f32a7a647df42a5c700b22af6d63df64f122c3af2e6edbdd6afe4499cbe914
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.3 MB (318253313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6ae83a4e2d1378204d483a7326817ead5d46f5bc981dff0c9ae71f424f019b7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 21:35:27 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Tue, 05 Jun 2018 21:36:15 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 05 Jun 2018 21:36:55 GMT
ARG CB_VERSION=5.5.0-beta
# Tue, 05 Jun 2018 21:36:56 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Tue, 05 Jun 2018 21:36:56 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.5.0-beta-ubuntu16.04_amd64.deb
# Tue, 05 Jun 2018 21:36:56 GMT
ARG CB_SHA256=3d4eb959d51f26956ba7302a4e3fabfb922f0c8e4986c7ad52b570d13d617f26
# Tue, 05 Jun 2018 21:36:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 05 Jun 2018 21:36:57 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.0-beta-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=3d4eb959d51f26956ba7302a4e3fabfb922f0c8e4986c7ad52b570d13d617f26 CB_VERSION=5.5.0-beta
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 05 Jun 2018 21:37:30 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.0-beta-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=3d4eb959d51f26956ba7302a4e3fabfb922f0c8e4986c7ad52b570d13d617f26 CB_VERSION=5.5.0-beta
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 05 Jun 2018 21:37:30 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Tue, 05 Jun 2018 21:37:31 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.0-beta-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=3d4eb959d51f26956ba7302a4e3fabfb922f0c8e4986c7ad52b570d13d617f26 CB_VERSION=5.5.0-beta
RUN chown -R couchbase:couchbase /etc/service
# Tue, 05 Jun 2018 21:37:31 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 05 Jun 2018 21:37:32 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.0-beta-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=3d4eb959d51f26956ba7302a4e3fabfb922f0c8e4986c7ad52b570d13d617f26 CB_VERSION=5.5.0-beta
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 05 Jun 2018 21:37:32 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.0-beta-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=3d4eb959d51f26956ba7302a4e3fabfb922f0c8e4986c7ad52b570d13d617f26 CB_VERSION=5.5.0-beta
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 05 Jun 2018 21:37:33 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Tue, 05 Jun 2018 21:37:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Jun 2018 21:37:33 GMT
CMD ["couchbase-server"]
# Tue, 05 Jun 2018 21:37:33 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 05 Jun 2018 21:37:34 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330103d5c07b420a3e1adddc8e022f5015b68e9d201ba7588461a9d2dae3ddfa`  
		Last Modified: Tue, 05 Jun 2018 21:40:26 GMT  
		Size: 13.8 MB (13846107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cf074e59dc0df512323ee7c00c8add5fbac82af3741c9c603d0f53a3dee31a`  
		Last Modified: Tue, 05 Jun 2018 21:41:32 GMT  
		Size: 2.1 KB (2070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d659e961adff64a5a9758f7771343c7548ff75879b0e8bf0764196e94d4ee16`  
		Last Modified: Tue, 05 Jun 2018 21:42:47 GMT  
		Size: 261.2 MB (261170600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee913b853e30ee06ad433d1b70b6fbab4868688cb4aaaf59ada6ac60b51315a`  
		Last Modified: Tue, 05 Jun 2018 21:41:32 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e6c559793043f17ceb1992fa5045c2840e1996c879b167e045c6ca41d3e9aaf`  
		Last Modified: Tue, 05 Jun 2018 21:41:32 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d9499d895555275a4756a2155bd9918b84c91bf1448ab1cc96409cd91db025`  
		Last Modified: Tue, 05 Jun 2018 21:41:30 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3e91b6a4fa0632efa756dd0d6128193dd847b14a7e094ba5f8cab1a909c963`  
		Last Modified: Tue, 05 Jun 2018 21:41:30 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e77b0d24c1661d27dd06e00807e25b04c87e310405fdd1a009995be7caf94f07`  
		Last Modified: Tue, 05 Jun 2018 21:41:30 GMT  
		Size: 107.5 KB (107452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c08ec2c72b4c121dbb9437f385a2127491ade23e6aaf498360da575bcdd9d2`  
		Last Modified: Tue, 05 Jun 2018 21:41:30 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community`

```console
$ docker pull couchbase@sha256:a8edd57bcf2b316c386ef263086ccde3725de631d1765e16e5f17e82aac25e0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community` - linux; amd64

```console
$ docker pull couchbase@sha256:033d85d758bd2d5382b4f3212a932c5b0b138cb2a52d23eafa4d5368b457e1b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.9 MB (189872892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1636617eb37d7be1738fe09994e4d9b3e20952384b2f63c6c356ddc78099548`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 21:35:27 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Tue, 05 Jun 2018 21:36:15 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 05 Jun 2018 21:39:10 GMT
ARG CB_VERSION=5.0.1
# Tue, 05 Jun 2018 21:39:10 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Tue, 05 Jun 2018 21:39:10 GMT
ARG CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb
# Tue, 05 Jun 2018 21:39:11 GMT
ARG CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931
# Tue, 05 Jun 2018 21:39:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 05 Jun 2018 21:39:11 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 05 Jun 2018 21:39:31 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 05 Jun 2018 21:39:31 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Tue, 05 Jun 2018 21:39:32 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN chown -R couchbase:couchbase /etc/service
# Tue, 05 Jun 2018 21:39:32 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 05 Jun 2018 21:39:33 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 05 Jun 2018 21:39:34 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 05 Jun 2018 21:39:34 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Tue, 05 Jun 2018 21:39:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Jun 2018 21:39:35 GMT
CMD ["couchbase-server"]
# Tue, 05 Jun 2018 21:39:35 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 05 Jun 2018 21:39:35 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330103d5c07b420a3e1adddc8e022f5015b68e9d201ba7588461a9d2dae3ddfa`  
		Last Modified: Tue, 05 Jun 2018 21:40:26 GMT  
		Size: 13.8 MB (13846107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428afa579a2d4727b6381a77c536b1cbe2bb9a84e8539826483f8807343f4f38`  
		Last Modified: Tue, 05 Jun 2018 21:44:22 GMT  
		Size: 2.1 KB (2073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a189aa64211464a5e5a7f3504d90402a1236286d022f6ec583d9adcbd8dabe8`  
		Last Modified: Tue, 05 Jun 2018 21:44:46 GMT  
		Size: 132.8 MB (132790172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ace720c60d0626d20fd42686b6f31cb40ba5e6fb8317ac6c5ef4f4c78480a8e`  
		Last Modified: Tue, 05 Jun 2018 21:44:21 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:447c519872bb0201886cc096b5b02c14599fb49a51fc244583373d0b60129ef8`  
		Last Modified: Tue, 05 Jun 2018 21:44:20 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3a3a34731aca11f8bd638d26d0438ddd82464dcab7b8453412f4c7eca98193`  
		Last Modified: Tue, 05 Jun 2018 21:44:19 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3afb954b4f80fc1255c37e47c813651e95641e5e689ba04e8f1bce062d3cbeb4`  
		Last Modified: Tue, 05 Jun 2018 21:44:19 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5a704275cd6441e5100ccf7c96f89df1a41d90e2b8de9580edbe58d93bf273`  
		Last Modified: Tue, 05 Jun 2018 21:44:19 GMT  
		Size: 107.5 KB (107452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a63e271e8de239be74b13e2f2f4514b440dc99d31dc77132be1068048407174d`  
		Last Modified: Tue, 05 Jun 2018 21:44:20 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-4.5.1`

```console
$ docker pull couchbase@sha256:4d8bc44f1a68526b2031da9e41f5cdc1183cd8e48d89dc4ff6ea46d5dfb75444
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community-4.5.1` - linux; amd64

```console
$ docker pull couchbase@sha256:9307321850ab9b42e7b3ca7efd82b1c104ad38ca77e94d57d02dbd92ca69adcc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.8 MB (215788923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63bbf410e33c1754973dcebeab732c8965abf71742f3d0715cfa2555b9b6d5b1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:33 GMT
ADD file:3c65bdbcf1318520e7af157cb00317c8312ec16bcaf181d0db919c45f0d7a85e in / 
# Tue, 05 Jun 2018 21:21:34 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:36 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 21:37:42 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Tue, 05 Jun 2018 21:38:27 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 05 Jun 2018 21:39:44 GMT
ARG CB_VERSION=4.5.1
# Tue, 05 Jun 2018 21:39:44 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Tue, 05 Jun 2018 21:39:44 GMT
ARG CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb
# Tue, 05 Jun 2018 21:39:44 GMT
ARG CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234
# Tue, 05 Jun 2018 21:39:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 05 Jun 2018 21:39:45 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 05 Jun 2018 21:39:59 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 05 Jun 2018 21:40:00 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Tue, 05 Jun 2018 21:40:01 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN chown -R couchbase:couchbase /etc/service
# Tue, 05 Jun 2018 21:40:01 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 05 Jun 2018 21:40:02 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 05 Jun 2018 21:40:02 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 05 Jun 2018 21:40:03 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Tue, 05 Jun 2018 21:40:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Jun 2018 21:40:03 GMT
CMD ["couchbase-server"]
# Tue, 05 Jun 2018 21:40:03 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 05 Jun 2018 21:40:04 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:28bfaceaff9b7464b1e768b0af7e1efe7877a34f238f935c36978a1ecf82c9b1`  
		Last Modified: Mon, 04 Jun 2018 14:56:53 GMT  
		Size: 73.2 MB (73162466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac540055f2f8da75b6587a88763021178d876a2b789ff0c696fbdb62485b62cd`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2965585ef8b8370dc8c443e35c743ba723ee427c515535e3ff35d898804cacf9`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2416bb9f3ad2b5b0c700a4412e2ffbb671f001c45b4b7433ecdcc9c352847814`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b55a6a680757144baae1671d00d4328eee63e790ab36b27d8d52ceb62b179f`  
		Last Modified: Tue, 05 Jun 2018 21:24:12 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8685e44d603b8eba2617d6590b2d89c2f219c9f88076a88c0eed43f4f59ee53e`  
		Last Modified: Tue, 05 Jun 2018 21:43:22 GMT  
		Size: 11.4 MB (11391258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75fc216ad290f712b88818d951d99d7192c46dd0be65bd71f2fe842f74fcfa8a`  
		Last Modified: Tue, 05 Jun 2018 21:45:12 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f735d61e08b978410fca7da02d688f6d0f923b69442ea7b80fe50aab023df7a`  
		Last Modified: Tue, 05 Jun 2018 21:45:38 GMT  
		Size: 131.1 MB (131051471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f0b54642adb362f43239db20a555c93618462af6f54417de9ccb8b5e053cde`  
		Last Modified: Tue, 05 Jun 2018 21:45:12 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6454865f274dd00c08d1fa7c1da9880e2d8c75217f26278734ec171b37fc385f`  
		Last Modified: Tue, 05 Jun 2018 21:45:10 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fa64c98b72446269d8600d4d841c8cc58b64432e2b2bc3d17b2eca74403290`  
		Last Modified: Tue, 05 Jun 2018 21:45:10 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2e8c763027fed953632839c90ab11b8a3776ead9a586d4909bb2c62a0ee46f`  
		Last Modified: Tue, 05 Jun 2018 21:45:10 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f115111885e421c4682472e45ffe62e545bb78e45932a71ee7df9b9f72e473d`  
		Last Modified: Tue, 05 Jun 2018 21:45:10 GMT  
		Size: 105.4 KB (105405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e24dae86ade1ef4677e78cbd2f365878d63af97a5bbb27ade9c67b107dc5f7`  
		Last Modified: Tue, 05 Jun 2018 21:45:10 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-5.0.1`

```console
$ docker pull couchbase@sha256:a8edd57bcf2b316c386ef263086ccde3725de631d1765e16e5f17e82aac25e0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community-5.0.1` - linux; amd64

```console
$ docker pull couchbase@sha256:033d85d758bd2d5382b4f3212a932c5b0b138cb2a52d23eafa4d5368b457e1b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.9 MB (189872892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1636617eb37d7be1738fe09994e4d9b3e20952384b2f63c6c356ddc78099548`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 21:35:27 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Tue, 05 Jun 2018 21:36:15 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 05 Jun 2018 21:39:10 GMT
ARG CB_VERSION=5.0.1
# Tue, 05 Jun 2018 21:39:10 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Tue, 05 Jun 2018 21:39:10 GMT
ARG CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb
# Tue, 05 Jun 2018 21:39:11 GMT
ARG CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931
# Tue, 05 Jun 2018 21:39:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 05 Jun 2018 21:39:11 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 05 Jun 2018 21:39:31 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 05 Jun 2018 21:39:31 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Tue, 05 Jun 2018 21:39:32 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN chown -R couchbase:couchbase /etc/service
# Tue, 05 Jun 2018 21:39:32 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 05 Jun 2018 21:39:33 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 05 Jun 2018 21:39:34 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 05 Jun 2018 21:39:34 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Tue, 05 Jun 2018 21:39:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Jun 2018 21:39:35 GMT
CMD ["couchbase-server"]
# Tue, 05 Jun 2018 21:39:35 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 05 Jun 2018 21:39:35 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330103d5c07b420a3e1adddc8e022f5015b68e9d201ba7588461a9d2dae3ddfa`  
		Last Modified: Tue, 05 Jun 2018 21:40:26 GMT  
		Size: 13.8 MB (13846107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428afa579a2d4727b6381a77c536b1cbe2bb9a84e8539826483f8807343f4f38`  
		Last Modified: Tue, 05 Jun 2018 21:44:22 GMT  
		Size: 2.1 KB (2073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a189aa64211464a5e5a7f3504d90402a1236286d022f6ec583d9adcbd8dabe8`  
		Last Modified: Tue, 05 Jun 2018 21:44:46 GMT  
		Size: 132.8 MB (132790172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ace720c60d0626d20fd42686b6f31cb40ba5e6fb8317ac6c5ef4f4c78480a8e`  
		Last Modified: Tue, 05 Jun 2018 21:44:21 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:447c519872bb0201886cc096b5b02c14599fb49a51fc244583373d0b60129ef8`  
		Last Modified: Tue, 05 Jun 2018 21:44:20 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3a3a34731aca11f8bd638d26d0438ddd82464dcab7b8453412f4c7eca98193`  
		Last Modified: Tue, 05 Jun 2018 21:44:19 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3afb954b4f80fc1255c37e47c813651e95641e5e689ba04e8f1bce062d3cbeb4`  
		Last Modified: Tue, 05 Jun 2018 21:44:19 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5a704275cd6441e5100ccf7c96f89df1a41d90e2b8de9580edbe58d93bf273`  
		Last Modified: Tue, 05 Jun 2018 21:44:19 GMT  
		Size: 107.5 KB (107452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a63e271e8de239be74b13e2f2f4514b440dc99d31dc77132be1068048407174d`  
		Last Modified: Tue, 05 Jun 2018 21:44:20 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise`

```console
$ docker pull couchbase@sha256:f5e7370ee5bdf37f1495033b53adbf78a9733167a976d9610c40bc6394a44b91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise` - linux; amd64

```console
$ docker pull couchbase@sha256:f0b2afc069fdc38b2730f1176b9ecf9b0601f40fa75a0fb5151a08794e43b862
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.2 MB (200222633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7caa6cb7c4afdde52831cc5d86aac8267386cab4b039cc0eb4d3cb686184733c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 21:35:27 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Tue, 05 Jun 2018 21:36:15 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 05 Jun 2018 21:36:15 GMT
ARG CB_VERSION=5.1.1
# Tue, 05 Jun 2018 21:36:15 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Tue, 05 Jun 2018 21:36:15 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb
# Tue, 05 Jun 2018 21:36:15 GMT
ARG CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c
# Tue, 05 Jun 2018 21:36:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 05 Jun 2018 21:36:16 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 05 Jun 2018 21:36:36 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 05 Jun 2018 21:36:36 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Tue, 05 Jun 2018 21:36:37 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN chown -R couchbase:couchbase /etc/service
# Tue, 05 Jun 2018 21:36:37 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 05 Jun 2018 21:36:38 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 05 Jun 2018 21:36:39 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 05 Jun 2018 21:36:39 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Tue, 05 Jun 2018 21:36:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Jun 2018 21:36:39 GMT
CMD ["couchbase-server"]
# Tue, 05 Jun 2018 21:36:40 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 05 Jun 2018 21:36:40 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330103d5c07b420a3e1adddc8e022f5015b68e9d201ba7588461a9d2dae3ddfa`  
		Last Modified: Tue, 05 Jun 2018 21:40:26 GMT  
		Size: 13.8 MB (13846107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:353dc87879e47a069fab870b2fd255f6f383bbba4e961847bb03fd1f73d330dd`  
		Last Modified: Tue, 05 Jun 2018 21:40:20 GMT  
		Size: 2.1 KB (2073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4c430647eecb5087c25fd6cc0641d47d22cbd6ec4f52396cfda22772167566`  
		Last Modified: Tue, 05 Jun 2018 21:40:49 GMT  
		Size: 143.1 MB (143139913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4a4aa3c5b1630238069a09565cfaa6449a5c6e58701aabb0964d86b3d448f3`  
		Last Modified: Tue, 05 Jun 2018 21:40:21 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8329628fa50b6a870a4aa62ac1c5859f84259761eedfb99873cf09ad4fbf3b53`  
		Last Modified: Tue, 05 Jun 2018 21:40:20 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3229911d27fac795bb4ef31bb6f2ae7184086f2b6d2e094cbf6b327e10268490`  
		Last Modified: Tue, 05 Jun 2018 21:40:18 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85b0cbbad9a4bd182df7bbf6e4dc0d50a2df28c0bd4d87af7640d743091f7d2`  
		Last Modified: Tue, 05 Jun 2018 21:40:18 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73bd7504e8d3b845d330553217179a14fe4d5953646ba1afe06acf50f68ab23`  
		Last Modified: Tue, 05 Jun 2018 21:40:18 GMT  
		Size: 107.5 KB (107452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91cf1964181a2c467caaccfff4fea76b66248a50eba6403903da6fc05c404a6a`  
		Last Modified: Tue, 05 Jun 2018 21:40:19 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-4.6.5`

```console
$ docker pull couchbase@sha256:3abfed2dc31405aafd97206c842d484c6bcd3cbb51e1d5459c3d73d6b81162a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-4.6.5` - linux; amd64

```console
$ docker pull couchbase@sha256:2625e80ff2dfe222fb36546cfbb3ba58925b83c3d8854ff9f2f89fbfd7384391
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219111782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1c275ed25a1bfd31df9961e441be01257322745c4ef12b8a67629fd52a5bf4e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:33 GMT
ADD file:3c65bdbcf1318520e7af157cb00317c8312ec16bcaf181d0db919c45f0d7a85e in / 
# Tue, 05 Jun 2018 21:21:34 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:36 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 21:37:42 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Tue, 05 Jun 2018 21:38:27 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 05 Jun 2018 21:38:28 GMT
ARG CB_VERSION=4.6.5
# Tue, 05 Jun 2018 21:38:28 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Tue, 05 Jun 2018 21:38:28 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb
# Tue, 05 Jun 2018 21:38:28 GMT
ARG CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f
# Tue, 05 Jun 2018 21:38:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 05 Jun 2018 21:38:29 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f CB_VERSION=4.6.5
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 05 Jun 2018 21:38:50 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f CB_VERSION=4.6.5
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 05 Jun 2018 21:38:50 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Tue, 05 Jun 2018 21:38:51 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f CB_VERSION=4.6.5
RUN chown -R couchbase:couchbase /etc/service
# Tue, 05 Jun 2018 21:38:51 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 05 Jun 2018 21:38:52 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f CB_VERSION=4.6.5
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 05 Jun 2018 21:38:53 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f CB_VERSION=4.6.5
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 05 Jun 2018 21:38:53 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Tue, 05 Jun 2018 21:38:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Jun 2018 21:38:53 GMT
CMD ["couchbase-server"]
# Tue, 05 Jun 2018 21:38:54 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 05 Jun 2018 21:38:54 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:28bfaceaff9b7464b1e768b0af7e1efe7877a34f238f935c36978a1ecf82c9b1`  
		Last Modified: Mon, 04 Jun 2018 14:56:53 GMT  
		Size: 73.2 MB (73162466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac540055f2f8da75b6587a88763021178d876a2b789ff0c696fbdb62485b62cd`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2965585ef8b8370dc8c443e35c743ba723ee427c515535e3ff35d898804cacf9`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2416bb9f3ad2b5b0c700a4412e2ffbb671f001c45b4b7433ecdcc9c352847814`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b55a6a680757144baae1671d00d4328eee63e790ab36b27d8d52ceb62b179f`  
		Last Modified: Tue, 05 Jun 2018 21:24:12 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8685e44d603b8eba2617d6590b2d89c2f219c9f88076a88c0eed43f4f59ee53e`  
		Last Modified: Tue, 05 Jun 2018 21:43:22 GMT  
		Size: 11.4 MB (11391258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1806faaef89ccebc6baf61bdbaf5e81a6bfcf1bc1aa72dc8ec3eb845d0f5d67f`  
		Last Modified: Tue, 05 Jun 2018 21:43:17 GMT  
		Size: 1.9 KB (1908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7067f78049b956b39dbc8cf67e96e9d4776a95783b71550ede3735e85e4747`  
		Last Modified: Tue, 05 Jun 2018 21:43:44 GMT  
		Size: 134.4 MB (134374333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5d7997016fed158fcbde64ae6551fdf82f0c60250c551f94be71637bf8500a`  
		Last Modified: Tue, 05 Jun 2018 21:43:17 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73c31dd10537a257757e433271889aa76b7070bedef611d0c500d58f9330ba7`  
		Last Modified: Tue, 05 Jun 2018 21:43:15 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba85b97be04c6dd647f0f6d3cacb7519812f6f8ff45866c6c217ed1c368f8b7e`  
		Last Modified: Tue, 05 Jun 2018 21:43:15 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19293986ba7124ae50b98f76c3d758b29b10bbed66a2eb73170d7866262980ee`  
		Last Modified: Tue, 05 Jun 2018 21:43:15 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa69418b5e2daebcbde67702067b0c506b708a63c2f217293cef164b8e9ef976`  
		Last Modified: Tue, 05 Jun 2018 21:43:15 GMT  
		Size: 105.4 KB (105400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5daa733d7e63bb7c21eea7eddf154636d2f64b51b55dc3965542e9a83cd12d3a`  
		Last Modified: Tue, 05 Jun 2018 21:43:15 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-5.1.1`

```console
$ docker pull couchbase@sha256:f5e7370ee5bdf37f1495033b53adbf78a9733167a976d9610c40bc6394a44b91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-5.1.1` - linux; amd64

```console
$ docker pull couchbase@sha256:f0b2afc069fdc38b2730f1176b9ecf9b0601f40fa75a0fb5151a08794e43b862
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.2 MB (200222633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7caa6cb7c4afdde52831cc5d86aac8267386cab4b039cc0eb4d3cb686184733c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 21:35:27 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Tue, 05 Jun 2018 21:36:15 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 05 Jun 2018 21:36:15 GMT
ARG CB_VERSION=5.1.1
# Tue, 05 Jun 2018 21:36:15 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Tue, 05 Jun 2018 21:36:15 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb
# Tue, 05 Jun 2018 21:36:15 GMT
ARG CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c
# Tue, 05 Jun 2018 21:36:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 05 Jun 2018 21:36:16 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 05 Jun 2018 21:36:36 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 05 Jun 2018 21:36:36 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Tue, 05 Jun 2018 21:36:37 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN chown -R couchbase:couchbase /etc/service
# Tue, 05 Jun 2018 21:36:37 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 05 Jun 2018 21:36:38 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 05 Jun 2018 21:36:39 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 05 Jun 2018 21:36:39 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Tue, 05 Jun 2018 21:36:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Jun 2018 21:36:39 GMT
CMD ["couchbase-server"]
# Tue, 05 Jun 2018 21:36:40 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 05 Jun 2018 21:36:40 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330103d5c07b420a3e1adddc8e022f5015b68e9d201ba7588461a9d2dae3ddfa`  
		Last Modified: Tue, 05 Jun 2018 21:40:26 GMT  
		Size: 13.8 MB (13846107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:353dc87879e47a069fab870b2fd255f6f383bbba4e961847bb03fd1f73d330dd`  
		Last Modified: Tue, 05 Jun 2018 21:40:20 GMT  
		Size: 2.1 KB (2073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4c430647eecb5087c25fd6cc0641d47d22cbd6ec4f52396cfda22772167566`  
		Last Modified: Tue, 05 Jun 2018 21:40:49 GMT  
		Size: 143.1 MB (143139913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4a4aa3c5b1630238069a09565cfaa6449a5c6e58701aabb0964d86b3d448f3`  
		Last Modified: Tue, 05 Jun 2018 21:40:21 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8329628fa50b6a870a4aa62ac1c5859f84259761eedfb99873cf09ad4fbf3b53`  
		Last Modified: Tue, 05 Jun 2018 21:40:20 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3229911d27fac795bb4ef31bb6f2ae7184086f2b6d2e094cbf6b327e10268490`  
		Last Modified: Tue, 05 Jun 2018 21:40:18 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85b0cbbad9a4bd182df7bbf6e4dc0d50a2df28c0bd4d87af7640d743091f7d2`  
		Last Modified: Tue, 05 Jun 2018 21:40:18 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73bd7504e8d3b845d330553217179a14fe4d5953646ba1afe06acf50f68ab23`  
		Last Modified: Tue, 05 Jun 2018 21:40:18 GMT  
		Size: 107.5 KB (107452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91cf1964181a2c467caaccfff4fea76b66248a50eba6403903da6fc05c404a6a`  
		Last Modified: Tue, 05 Jun 2018 21:40:19 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:latest`

```console
$ docker pull couchbase@sha256:f5e7370ee5bdf37f1495033b53adbf78a9733167a976d9610c40bc6394a44b91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:latest` - linux; amd64

```console
$ docker pull couchbase@sha256:f0b2afc069fdc38b2730f1176b9ecf9b0601f40fa75a0fb5151a08794e43b862
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.2 MB (200222633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7caa6cb7c4afdde52831cc5d86aac8267386cab4b039cc0eb4d3cb686184733c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 21:35:27 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Tue, 05 Jun 2018 21:36:15 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 05 Jun 2018 21:36:15 GMT
ARG CB_VERSION=5.1.1
# Tue, 05 Jun 2018 21:36:15 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Tue, 05 Jun 2018 21:36:15 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb
# Tue, 05 Jun 2018 21:36:15 GMT
ARG CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c
# Tue, 05 Jun 2018 21:36:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 05 Jun 2018 21:36:16 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 05 Jun 2018 21:36:36 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 05 Jun 2018 21:36:36 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Tue, 05 Jun 2018 21:36:37 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN chown -R couchbase:couchbase /etc/service
# Tue, 05 Jun 2018 21:36:37 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 05 Jun 2018 21:36:38 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 05 Jun 2018 21:36:39 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 05 Jun 2018 21:36:39 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Tue, 05 Jun 2018 21:36:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Jun 2018 21:36:39 GMT
CMD ["couchbase-server"]
# Tue, 05 Jun 2018 21:36:40 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 05 Jun 2018 21:36:40 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330103d5c07b420a3e1adddc8e022f5015b68e9d201ba7588461a9d2dae3ddfa`  
		Last Modified: Tue, 05 Jun 2018 21:40:26 GMT  
		Size: 13.8 MB (13846107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:353dc87879e47a069fab870b2fd255f6f383bbba4e961847bb03fd1f73d330dd`  
		Last Modified: Tue, 05 Jun 2018 21:40:20 GMT  
		Size: 2.1 KB (2073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4c430647eecb5087c25fd6cc0641d47d22cbd6ec4f52396cfda22772167566`  
		Last Modified: Tue, 05 Jun 2018 21:40:49 GMT  
		Size: 143.1 MB (143139913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4a4aa3c5b1630238069a09565cfaa6449a5c6e58701aabb0964d86b3d448f3`  
		Last Modified: Tue, 05 Jun 2018 21:40:21 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8329628fa50b6a870a4aa62ac1c5859f84259761eedfb99873cf09ad4fbf3b53`  
		Last Modified: Tue, 05 Jun 2018 21:40:20 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3229911d27fac795bb4ef31bb6f2ae7184086f2b6d2e094cbf6b327e10268490`  
		Last Modified: Tue, 05 Jun 2018 21:40:18 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85b0cbbad9a4bd182df7bbf6e4dc0d50a2df28c0bd4d87af7640d743091f7d2`  
		Last Modified: Tue, 05 Jun 2018 21:40:18 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73bd7504e8d3b845d330553217179a14fe4d5953646ba1afe06acf50f68ab23`  
		Last Modified: Tue, 05 Jun 2018 21:40:18 GMT  
		Size: 107.5 KB (107452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91cf1964181a2c467caaccfff4fea76b66248a50eba6403903da6fc05c404a6a`  
		Last Modified: Tue, 05 Jun 2018 21:40:19 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
