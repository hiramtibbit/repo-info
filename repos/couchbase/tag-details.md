<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `couchbase`

-	[`couchbase:4.6.5`](#couchbase465)
-	[`couchbase:5.1.1`](#couchbase511)
-	[`couchbase:5.5.0-beta`](#couchbase550-beta)
-	[`couchbase:community`](#couchbasecommunity)
-	[`couchbase:community-4.5.1`](#couchbasecommunity-451)
-	[`couchbase:community-5.1.1`](#couchbasecommunity-511)
-	[`couchbase:enterprise`](#couchbaseenterprise)
-	[`couchbase:enterprise-4.6.5`](#couchbaseenterprise-465)
-	[`couchbase:enterprise-5.1.1`](#couchbaseenterprise-511)
-	[`couchbase:latest`](#couchbaselatest)

## `couchbase:4.6.5`

```console
$ docker pull couchbase@sha256:550c724fd0f8f5b3c115a7b64ffd2e214e519ebe0f9d4d9947ccdd50aef672b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:4.6.5` - linux; amd64

```console
$ docker pull couchbase@sha256:9884d5e8e15ac4f8b89c5357e3383d2733fc82072372ef9226032562120ac177
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219112182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d8260d376c14a50a8b8f7f9bdaa1f53ba72cf66069723c2526dc9f2a6c1a4e`
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
# Thu, 14 Jun 2018 05:22:44 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 14 Jun 2018 05:22:44 GMT
ARG CB_VERSION=4.6.5
# Thu, 14 Jun 2018 05:22:44 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Thu, 14 Jun 2018 05:22:44 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb
# Thu, 14 Jun 2018 05:22:45 GMT
ARG CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f
# Thu, 14 Jun 2018 05:22:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 14 Jun 2018 05:22:46 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f CB_VERSION=4.6.5
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 14 Jun 2018 05:23:14 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f CB_VERSION=4.6.5
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 14 Jun 2018 05:23:14 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Thu, 14 Jun 2018 05:23:15 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f CB_VERSION=4.6.5
RUN chown -R couchbase:couchbase /etc/service
# Thu, 14 Jun 2018 05:23:15 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 14 Jun 2018 05:23:16 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f CB_VERSION=4.6.5
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 14 Jun 2018 05:23:17 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f CB_VERSION=4.6.5
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 14 Jun 2018 05:23:17 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Thu, 14 Jun 2018 05:23:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Jun 2018 05:23:18 GMT
CMD ["couchbase-server"]
# Thu, 14 Jun 2018 05:23:18 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 14 Jun 2018 05:23:18 GMT
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
	-	`sha256:c65043da38bf6d1125f0a3258db417dbf91e4da9da1003de91112f359bf19742`  
		Last Modified: Thu, 14 Jun 2018 05:27:14 GMT  
		Size: 11.4 MB (11391228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c351a3e138faf5520e7ad3290bf9e0bd8b706fd251ff325ed6ed0afe4f5ee4`  
		Last Modified: Thu, 14 Jun 2018 05:27:10 GMT  
		Size: 1.9 KB (1914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e84a722d459890b0599884905c05555c56b27a5051b79d1f3eec00b830b4cdb1`  
		Last Modified: Thu, 14 Jun 2018 05:27:34 GMT  
		Size: 134.4 MB (134374746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0af4d5487acd65b08fb029754afddb3ea4823fbf8e4f703aeab0efab14f2bed`  
		Last Modified: Thu, 14 Jun 2018 05:27:10 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dd86a7126f9cdf6fccaa11bcb2b044fdb66df3be47e23df401f697df926a2a`  
		Last Modified: Thu, 14 Jun 2018 05:27:08 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722393181e191a951634447c84a6dc7dda72f909aaf70f94e089996ded422e0f`  
		Last Modified: Thu, 14 Jun 2018 05:27:08 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:821d9683905c42ecac1b56a728af5e09bbde43a96bfe61a50c67bed21c7c6a9d`  
		Last Modified: Thu, 14 Jun 2018 05:27:09 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:931dfec6483f07646de752e3ccb5fa42651d7678d95e975539eaec2eaa33a578`  
		Last Modified: Thu, 14 Jun 2018 05:27:08 GMT  
		Size: 105.4 KB (105407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da356de10db9b123938c144d217cc465860b1620264b45badd102e0d2bd0f784`  
		Last Modified: Thu, 14 Jun 2018 05:27:08 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:5.1.1`

```console
$ docker pull couchbase@sha256:967652855ecdcfa4e032315ca80e059f604f6e9a9b5e35e6fef8941c0065fca0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:5.1.1` - linux; amd64

```console
$ docker pull couchbase@sha256:9e662bdd5978cc24050b2f1891a0911572135c5f04642b95988910b432a98fac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200671548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeaf5287842e09cdaf3a8a1f48d926700dfdb248941bea9f1414c918d9123c6a`
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
# Thu, 14 Jun 2018 05:20:25 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 14 Jun 2018 05:20:25 GMT
ARG CB_VERSION=5.1.1
# Thu, 14 Jun 2018 05:20:25 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Thu, 14 Jun 2018 05:20:26 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb
# Thu, 14 Jun 2018 05:20:26 GMT
ARG CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c
# Thu, 14 Jun 2018 05:20:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 14 Jun 2018 05:20:27 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 14 Jun 2018 05:20:48 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 14 Jun 2018 05:20:48 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Thu, 14 Jun 2018 05:20:49 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN chown -R couchbase:couchbase /etc/service
# Thu, 14 Jun 2018 05:20:49 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 14 Jun 2018 05:20:50 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 14 Jun 2018 05:20:51 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 14 Jun 2018 05:20:51 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Thu, 14 Jun 2018 05:20:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Jun 2018 05:20:52 GMT
CMD ["couchbase-server"]
# Thu, 14 Jun 2018 05:20:52 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 14 Jun 2018 05:20:52 GMT
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
	-	`sha256:265eac6f77c98948605600568457dd18c927a0b482a8fc1279eaa8f981f2e2a9`  
		Last Modified: Thu, 14 Jun 2018 05:25:05 GMT  
		Size: 14.3 MB (14294786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:576bcdfdb8b29437cf740fd1a524c52bac57bb9242d2d728be8dd0dba766aaad`  
		Last Modified: Thu, 14 Jun 2018 05:25:00 GMT  
		Size: 2.1 KB (2074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e02bcfdcc3e4a1dc686340d8c5973c724084f9204baa03afe83a53b2da57e0`  
		Last Modified: Thu, 14 Jun 2018 05:25:25 GMT  
		Size: 143.1 MB (143140146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6862832c1f455f3f3f1befb8d6e19d6285079f0f2c35329980378262f5cedad0`  
		Last Modified: Thu, 14 Jun 2018 05:24:59 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd76940c94fa2f9f697efebdfb42d5fc2d99ff5d326968c5a85730d5d17e07e8`  
		Last Modified: Thu, 14 Jun 2018 05:24:57 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6aa371be9b08200a304192284e4394c781c2f05a4918a18a8fa97050b32ca80`  
		Last Modified: Thu, 14 Jun 2018 05:24:57 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994e04427d0d90856933292f4e0e4e6507d4d1ec7fca60c847935331edd3a5cf`  
		Last Modified: Thu, 14 Jun 2018 05:24:57 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23edaafc3f4d436c766b36aa2de2df88c1aec98b69bb8792b5301c93117e7726`  
		Last Modified: Thu, 14 Jun 2018 05:24:58 GMT  
		Size: 107.5 KB (107453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2375b68af6c0f8759dbca3bbbabbec226a698c3923da4b3c6a93f71bcde46397`  
		Last Modified: Thu, 14 Jun 2018 05:24:58 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:5.5.0-beta`

```console
$ docker pull couchbase@sha256:5720aa8b6b83b71cb51ae24ec373255ec433fcf10f32a1f1f7531797de01f49a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:5.5.0-beta` - linux; amd64

```console
$ docker pull couchbase@sha256:4ce066e610baa786c066be15b0f324c54a023b0affb243c346aeb06f4f0cc0f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.7 MB (318702650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b3d109498a457d7335c6530087eadc6dbe18d63a7ee2a1dbb3b16f58f36dc9a`
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
# Thu, 14 Jun 2018 05:20:25 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 14 Jun 2018 05:21:01 GMT
ARG CB_VERSION=5.5.0-beta
# Thu, 14 Jun 2018 05:21:01 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Thu, 14 Jun 2018 05:21:02 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.5.0-beta-ubuntu16.04_amd64.deb
# Thu, 14 Jun 2018 05:21:02 GMT
ARG CB_SHA256=3d4eb959d51f26956ba7302a4e3fabfb922f0c8e4986c7ad52b570d13d617f26
# Thu, 14 Jun 2018 05:21:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 14 Jun 2018 05:21:03 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.0-beta-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=3d4eb959d51f26956ba7302a4e3fabfb922f0c8e4986c7ad52b570d13d617f26 CB_VERSION=5.5.0-beta
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 14 Jun 2018 05:21:39 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.0-beta-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=3d4eb959d51f26956ba7302a4e3fabfb922f0c8e4986c7ad52b570d13d617f26 CB_VERSION=5.5.0-beta
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 14 Jun 2018 05:21:39 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Thu, 14 Jun 2018 05:21:40 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.0-beta-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=3d4eb959d51f26956ba7302a4e3fabfb922f0c8e4986c7ad52b570d13d617f26 CB_VERSION=5.5.0-beta
RUN chown -R couchbase:couchbase /etc/service
# Thu, 14 Jun 2018 05:21:40 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 14 Jun 2018 05:21:41 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.0-beta-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=3d4eb959d51f26956ba7302a4e3fabfb922f0c8e4986c7ad52b570d13d617f26 CB_VERSION=5.5.0-beta
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 14 Jun 2018 05:21:42 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.0-beta-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=3d4eb959d51f26956ba7302a4e3fabfb922f0c8e4986c7ad52b570d13d617f26 CB_VERSION=5.5.0-beta
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 14 Jun 2018 05:21:42 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Thu, 14 Jun 2018 05:21:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Jun 2018 05:21:43 GMT
CMD ["couchbase-server"]
# Thu, 14 Jun 2018 05:21:43 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 14 Jun 2018 05:21:43 GMT
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
	-	`sha256:265eac6f77c98948605600568457dd18c927a0b482a8fc1279eaa8f981f2e2a9`  
		Last Modified: Thu, 14 Jun 2018 05:25:05 GMT  
		Size: 14.3 MB (14294786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:903627c47a4d057de3462661f0e6ecfd692f051e32af0dfe1c07aebf2cbe8d9b`  
		Last Modified: Thu, 14 Jun 2018 05:26:14 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9b78339c6403b34d1d027bfcf4a389f4ee6e5646381b917a8280189a3b78a8`  
		Last Modified: Thu, 14 Jun 2018 05:26:53 GMT  
		Size: 261.2 MB (261171245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d958b04858f25e670b192f9df7b2615e26f0a6ff1fa2496197a9cdb143297913`  
		Last Modified: Thu, 14 Jun 2018 05:26:13 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0575a2e77fab9848e40772362149596f2e6f0b6a7eb8bc21a393826f98e905`  
		Last Modified: Thu, 14 Jun 2018 05:26:12 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee5215ef64ad6647198ca3129f8d123c3b7c163de1d12ab955eee3c9ee7d4f27`  
		Last Modified: Thu, 14 Jun 2018 05:26:11 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b926ea6048fc98cbde3bf4cd71bf278c5e75af7198a3726dabfba6ad63aaf64`  
		Last Modified: Thu, 14 Jun 2018 05:26:11 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25cbc1a4474a2498208f2de2c48a851ad566196a78025c24dd6588b8f94d3678`  
		Last Modified: Thu, 14 Jun 2018 05:26:11 GMT  
		Size: 107.5 KB (107455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11578547fe17adc5586b0c0b2de8ec925ca5de444ad43c289aec735342443cb6`  
		Last Modified: Thu, 14 Jun 2018 05:26:11 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community`

```console
$ docker pull couchbase@sha256:60865a6433c6b5b8cf84e2ca22bd954566fac04962b03aabf145550724e8ca66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community` - linux; amd64

```console
$ docker pull couchbase@sha256:2d77a35e7b5989053b13a42242afade88117fd671278f529f67f66cc618c50b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.5 MB (190459718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef9f42084796467e32f74dc0ce4fb9191692965dfe6c2bc34b468b7f30cf4489`
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
# Thu, 14 Jun 2018 05:20:25 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 14 Jun 2018 05:20:25 GMT
ARG CB_VERSION=5.1.1
# Thu, 14 Jun 2018 05:20:25 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Thu, 14 Jun 2018 05:23:42 GMT
ARG CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb
# Thu, 14 Jun 2018 05:23:42 GMT
ARG CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb
# Thu, 14 Jun 2018 05:23:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 14 Jun 2018 05:23:43 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 14 Jun 2018 05:24:04 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 14 Jun 2018 05:24:04 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Thu, 14 Jun 2018 05:24:05 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN chown -R couchbase:couchbase /etc/service
# Thu, 14 Jun 2018 05:24:05 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 14 Jun 2018 05:24:06 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 14 Jun 2018 05:24:07 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 14 Jun 2018 05:24:07 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Thu, 14 Jun 2018 05:24:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Jun 2018 05:24:08 GMT
CMD ["couchbase-server"]
# Thu, 14 Jun 2018 05:24:08 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 14 Jun 2018 05:24:08 GMT
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
	-	`sha256:265eac6f77c98948605600568457dd18c927a0b482a8fc1279eaa8f981f2e2a9`  
		Last Modified: Thu, 14 Jun 2018 05:25:05 GMT  
		Size: 14.3 MB (14294786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79ac8c3d1935bf0ae9dfb72e1c0885725e69157a5ba4dfcd2fe8f9e0f77a3fb`  
		Last Modified: Thu, 14 Jun 2018 05:28:01 GMT  
		Size: 2.1 KB (2074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109a2d6aefd3f20cf939cc1735942706cc6d8fa0783bd880504601eec6d4097f`  
		Last Modified: Thu, 14 Jun 2018 05:28:22 GMT  
		Size: 132.9 MB (132928317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20b16a1ade6cde52b1fedbf1231e06f69e865c812866c2598d59282f7be34168`  
		Last Modified: Thu, 14 Jun 2018 05:28:01 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f346c73d216d40747b9568a9655930cffaea0a6f516c060afb2e6cf04bab543`  
		Last Modified: Thu, 14 Jun 2018 05:27:59 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a00daed70eff853eb765ea3d389b44dae932d8f78e3f9a6fe7abe05e579a54e4`  
		Last Modified: Thu, 14 Jun 2018 05:27:59 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ea307ec0c7c5bd7debc3807afa70499f78babc997c79e3fa29cc8f396d6f15`  
		Last Modified: Thu, 14 Jun 2018 05:27:59 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfeed3675ba15a1836d8d119a21c120261679e1a660a81a9f049b61609ccbbde`  
		Last Modified: Thu, 14 Jun 2018 05:27:59 GMT  
		Size: 107.5 KB (107454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6cb5b55340fac2b07d9d0bab6d8d423dbc393148699b8358007fea9c10e48a9`  
		Last Modified: Thu, 14 Jun 2018 05:27:59 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-4.5.1`

```console
$ docker pull couchbase@sha256:a0206f28196e3492e827c005c171e13a9d537bbe2d2fa22e866c5f694d888642
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community-4.5.1` - linux; amd64

```console
$ docker pull couchbase@sha256:de265806d8673fe4404eff83deff3d58a2228bef182c9969abc3d31296c9c846
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.8 MB (215788797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03237c07e5bb8a4b4b48d5650d843c882ddd7bb435530e0880457a8ae9504b9b`
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
# Thu, 14 Jun 2018 05:22:44 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 14 Jun 2018 05:24:17 GMT
ARG CB_VERSION=4.5.1
# Thu, 14 Jun 2018 05:24:17 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Thu, 14 Jun 2018 05:24:17 GMT
ARG CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb
# Thu, 14 Jun 2018 05:24:17 GMT
ARG CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234
# Thu, 14 Jun 2018 05:24:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 14 Jun 2018 05:24:19 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 14 Jun 2018 05:24:38 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 14 Jun 2018 05:24:39 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Thu, 14 Jun 2018 05:24:40 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN chown -R couchbase:couchbase /etc/service
# Thu, 14 Jun 2018 05:24:40 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 14 Jun 2018 05:24:41 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 14 Jun 2018 05:24:41 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 14 Jun 2018 05:24:42 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Thu, 14 Jun 2018 05:24:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Jun 2018 05:24:42 GMT
CMD ["couchbase-server"]
# Thu, 14 Jun 2018 05:24:42 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 14 Jun 2018 05:24:43 GMT
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
	-	`sha256:c65043da38bf6d1125f0a3258db417dbf91e4da9da1003de91112f359bf19742`  
		Last Modified: Thu, 14 Jun 2018 05:27:14 GMT  
		Size: 11.4 MB (11391228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c838b34e75f1fa8d6e062f21adc2f72d7f96b11fc44541f831bf5acb359a714`  
		Last Modified: Thu, 14 Jun 2018 05:28:53 GMT  
		Size: 1.9 KB (1914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3377552bc6d33c72f28b6236e35903a6e64f85a073c7aac0085aeacbfc1c101`  
		Last Modified: Thu, 14 Jun 2018 05:29:16 GMT  
		Size: 131.1 MB (131051373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d3ac2219e1509d159f81b2bd4f586f402adf01d9d91c753d9257d4a7ed2ad3`  
		Last Modified: Thu, 14 Jun 2018 05:28:53 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae97cf063e57d49ca42b270f2086163ddc4085ca70966769486a830345fa22c`  
		Last Modified: Thu, 14 Jun 2018 05:28:51 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45cced2145e5158e3dc03a2c9bbddeab5fcc0026d83f6b20b6002c910e7fa25`  
		Last Modified: Thu, 14 Jun 2018 05:28:51 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1909067366bff4dabc83c77c90961dc23309949757007df7f339f9c4efeb5e6d`  
		Last Modified: Thu, 14 Jun 2018 05:28:51 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abc4a6f30e163deb6b129be2d1fa0bc1d55a14837cf050666420d929692386c`  
		Last Modified: Thu, 14 Jun 2018 05:28:51 GMT  
		Size: 105.4 KB (105402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ea9ec4493ddfc2370267a93982d2d67665c3ee4e6e2f6cc9f97eb831d1de93`  
		Last Modified: Thu, 14 Jun 2018 05:28:51 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-5.1.1`

```console
$ docker pull couchbase@sha256:60865a6433c6b5b8cf84e2ca22bd954566fac04962b03aabf145550724e8ca66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community-5.1.1` - linux; amd64

```console
$ docker pull couchbase@sha256:2d77a35e7b5989053b13a42242afade88117fd671278f529f67f66cc618c50b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.5 MB (190459718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef9f42084796467e32f74dc0ce4fb9191692965dfe6c2bc34b468b7f30cf4489`
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
# Thu, 14 Jun 2018 05:20:25 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 14 Jun 2018 05:20:25 GMT
ARG CB_VERSION=5.1.1
# Thu, 14 Jun 2018 05:20:25 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Thu, 14 Jun 2018 05:23:42 GMT
ARG CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb
# Thu, 14 Jun 2018 05:23:42 GMT
ARG CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb
# Thu, 14 Jun 2018 05:23:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 14 Jun 2018 05:23:43 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 14 Jun 2018 05:24:04 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 14 Jun 2018 05:24:04 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Thu, 14 Jun 2018 05:24:05 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN chown -R couchbase:couchbase /etc/service
# Thu, 14 Jun 2018 05:24:05 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 14 Jun 2018 05:24:06 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 14 Jun 2018 05:24:07 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 14 Jun 2018 05:24:07 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Thu, 14 Jun 2018 05:24:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Jun 2018 05:24:08 GMT
CMD ["couchbase-server"]
# Thu, 14 Jun 2018 05:24:08 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 14 Jun 2018 05:24:08 GMT
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
	-	`sha256:265eac6f77c98948605600568457dd18c927a0b482a8fc1279eaa8f981f2e2a9`  
		Last Modified: Thu, 14 Jun 2018 05:25:05 GMT  
		Size: 14.3 MB (14294786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79ac8c3d1935bf0ae9dfb72e1c0885725e69157a5ba4dfcd2fe8f9e0f77a3fb`  
		Last Modified: Thu, 14 Jun 2018 05:28:01 GMT  
		Size: 2.1 KB (2074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109a2d6aefd3f20cf939cc1735942706cc6d8fa0783bd880504601eec6d4097f`  
		Last Modified: Thu, 14 Jun 2018 05:28:22 GMT  
		Size: 132.9 MB (132928317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20b16a1ade6cde52b1fedbf1231e06f69e865c812866c2598d59282f7be34168`  
		Last Modified: Thu, 14 Jun 2018 05:28:01 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f346c73d216d40747b9568a9655930cffaea0a6f516c060afb2e6cf04bab543`  
		Last Modified: Thu, 14 Jun 2018 05:27:59 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a00daed70eff853eb765ea3d389b44dae932d8f78e3f9a6fe7abe05e579a54e4`  
		Last Modified: Thu, 14 Jun 2018 05:27:59 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ea307ec0c7c5bd7debc3807afa70499f78babc997c79e3fa29cc8f396d6f15`  
		Last Modified: Thu, 14 Jun 2018 05:27:59 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfeed3675ba15a1836d8d119a21c120261679e1a660a81a9f049b61609ccbbde`  
		Last Modified: Thu, 14 Jun 2018 05:27:59 GMT  
		Size: 107.5 KB (107454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6cb5b55340fac2b07d9d0bab6d8d423dbc393148699b8358007fea9c10e48a9`  
		Last Modified: Thu, 14 Jun 2018 05:27:59 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise`

```console
$ docker pull couchbase@sha256:967652855ecdcfa4e032315ca80e059f604f6e9a9b5e35e6fef8941c0065fca0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise` - linux; amd64

```console
$ docker pull couchbase@sha256:9e662bdd5978cc24050b2f1891a0911572135c5f04642b95988910b432a98fac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200671548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeaf5287842e09cdaf3a8a1f48d926700dfdb248941bea9f1414c918d9123c6a`
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
# Thu, 14 Jun 2018 05:20:25 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 14 Jun 2018 05:20:25 GMT
ARG CB_VERSION=5.1.1
# Thu, 14 Jun 2018 05:20:25 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Thu, 14 Jun 2018 05:20:26 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb
# Thu, 14 Jun 2018 05:20:26 GMT
ARG CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c
# Thu, 14 Jun 2018 05:20:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 14 Jun 2018 05:20:27 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 14 Jun 2018 05:20:48 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 14 Jun 2018 05:20:48 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Thu, 14 Jun 2018 05:20:49 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN chown -R couchbase:couchbase /etc/service
# Thu, 14 Jun 2018 05:20:49 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 14 Jun 2018 05:20:50 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 14 Jun 2018 05:20:51 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 14 Jun 2018 05:20:51 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Thu, 14 Jun 2018 05:20:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Jun 2018 05:20:52 GMT
CMD ["couchbase-server"]
# Thu, 14 Jun 2018 05:20:52 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 14 Jun 2018 05:20:52 GMT
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
	-	`sha256:265eac6f77c98948605600568457dd18c927a0b482a8fc1279eaa8f981f2e2a9`  
		Last Modified: Thu, 14 Jun 2018 05:25:05 GMT  
		Size: 14.3 MB (14294786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:576bcdfdb8b29437cf740fd1a524c52bac57bb9242d2d728be8dd0dba766aaad`  
		Last Modified: Thu, 14 Jun 2018 05:25:00 GMT  
		Size: 2.1 KB (2074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e02bcfdcc3e4a1dc686340d8c5973c724084f9204baa03afe83a53b2da57e0`  
		Last Modified: Thu, 14 Jun 2018 05:25:25 GMT  
		Size: 143.1 MB (143140146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6862832c1f455f3f3f1befb8d6e19d6285079f0f2c35329980378262f5cedad0`  
		Last Modified: Thu, 14 Jun 2018 05:24:59 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd76940c94fa2f9f697efebdfb42d5fc2d99ff5d326968c5a85730d5d17e07e8`  
		Last Modified: Thu, 14 Jun 2018 05:24:57 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6aa371be9b08200a304192284e4394c781c2f05a4918a18a8fa97050b32ca80`  
		Last Modified: Thu, 14 Jun 2018 05:24:57 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994e04427d0d90856933292f4e0e4e6507d4d1ec7fca60c847935331edd3a5cf`  
		Last Modified: Thu, 14 Jun 2018 05:24:57 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23edaafc3f4d436c766b36aa2de2df88c1aec98b69bb8792b5301c93117e7726`  
		Last Modified: Thu, 14 Jun 2018 05:24:58 GMT  
		Size: 107.5 KB (107453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2375b68af6c0f8759dbca3bbbabbec226a698c3923da4b3c6a93f71bcde46397`  
		Last Modified: Thu, 14 Jun 2018 05:24:58 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-4.6.5`

```console
$ docker pull couchbase@sha256:550c724fd0f8f5b3c115a7b64ffd2e214e519ebe0f9d4d9947ccdd50aef672b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-4.6.5` - linux; amd64

```console
$ docker pull couchbase@sha256:9884d5e8e15ac4f8b89c5357e3383d2733fc82072372ef9226032562120ac177
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219112182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d8260d376c14a50a8b8f7f9bdaa1f53ba72cf66069723c2526dc9f2a6c1a4e`
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
# Thu, 14 Jun 2018 05:22:44 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 14 Jun 2018 05:22:44 GMT
ARG CB_VERSION=4.6.5
# Thu, 14 Jun 2018 05:22:44 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Thu, 14 Jun 2018 05:22:44 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb
# Thu, 14 Jun 2018 05:22:45 GMT
ARG CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f
# Thu, 14 Jun 2018 05:22:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 14 Jun 2018 05:22:46 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f CB_VERSION=4.6.5
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 14 Jun 2018 05:23:14 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f CB_VERSION=4.6.5
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 14 Jun 2018 05:23:14 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Thu, 14 Jun 2018 05:23:15 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f CB_VERSION=4.6.5
RUN chown -R couchbase:couchbase /etc/service
# Thu, 14 Jun 2018 05:23:15 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 14 Jun 2018 05:23:16 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f CB_VERSION=4.6.5
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 14 Jun 2018 05:23:17 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.5-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=f1629c70ea9a13f88ddf70923dcfb6e05f9840a1bfee0b7150a80c930d25917f CB_VERSION=4.6.5
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 14 Jun 2018 05:23:17 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Thu, 14 Jun 2018 05:23:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Jun 2018 05:23:18 GMT
CMD ["couchbase-server"]
# Thu, 14 Jun 2018 05:23:18 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 14 Jun 2018 05:23:18 GMT
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
	-	`sha256:c65043da38bf6d1125f0a3258db417dbf91e4da9da1003de91112f359bf19742`  
		Last Modified: Thu, 14 Jun 2018 05:27:14 GMT  
		Size: 11.4 MB (11391228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c351a3e138faf5520e7ad3290bf9e0bd8b706fd251ff325ed6ed0afe4f5ee4`  
		Last Modified: Thu, 14 Jun 2018 05:27:10 GMT  
		Size: 1.9 KB (1914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e84a722d459890b0599884905c05555c56b27a5051b79d1f3eec00b830b4cdb1`  
		Last Modified: Thu, 14 Jun 2018 05:27:34 GMT  
		Size: 134.4 MB (134374746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0af4d5487acd65b08fb029754afddb3ea4823fbf8e4f703aeab0efab14f2bed`  
		Last Modified: Thu, 14 Jun 2018 05:27:10 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dd86a7126f9cdf6fccaa11bcb2b044fdb66df3be47e23df401f697df926a2a`  
		Last Modified: Thu, 14 Jun 2018 05:27:08 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722393181e191a951634447c84a6dc7dda72f909aaf70f94e089996ded422e0f`  
		Last Modified: Thu, 14 Jun 2018 05:27:08 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:821d9683905c42ecac1b56a728af5e09bbde43a96bfe61a50c67bed21c7c6a9d`  
		Last Modified: Thu, 14 Jun 2018 05:27:09 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:931dfec6483f07646de752e3ccb5fa42651d7678d95e975539eaec2eaa33a578`  
		Last Modified: Thu, 14 Jun 2018 05:27:08 GMT  
		Size: 105.4 KB (105407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da356de10db9b123938c144d217cc465860b1620264b45badd102e0d2bd0f784`  
		Last Modified: Thu, 14 Jun 2018 05:27:08 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-5.1.1`

```console
$ docker pull couchbase@sha256:967652855ecdcfa4e032315ca80e059f604f6e9a9b5e35e6fef8941c0065fca0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-5.1.1` - linux; amd64

```console
$ docker pull couchbase@sha256:9e662bdd5978cc24050b2f1891a0911572135c5f04642b95988910b432a98fac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200671548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeaf5287842e09cdaf3a8a1f48d926700dfdb248941bea9f1414c918d9123c6a`
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
# Thu, 14 Jun 2018 05:20:25 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 14 Jun 2018 05:20:25 GMT
ARG CB_VERSION=5.1.1
# Thu, 14 Jun 2018 05:20:25 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Thu, 14 Jun 2018 05:20:26 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb
# Thu, 14 Jun 2018 05:20:26 GMT
ARG CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c
# Thu, 14 Jun 2018 05:20:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 14 Jun 2018 05:20:27 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 14 Jun 2018 05:20:48 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 14 Jun 2018 05:20:48 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Thu, 14 Jun 2018 05:20:49 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN chown -R couchbase:couchbase /etc/service
# Thu, 14 Jun 2018 05:20:49 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 14 Jun 2018 05:20:50 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 14 Jun 2018 05:20:51 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 14 Jun 2018 05:20:51 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Thu, 14 Jun 2018 05:20:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Jun 2018 05:20:52 GMT
CMD ["couchbase-server"]
# Thu, 14 Jun 2018 05:20:52 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 14 Jun 2018 05:20:52 GMT
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
	-	`sha256:265eac6f77c98948605600568457dd18c927a0b482a8fc1279eaa8f981f2e2a9`  
		Last Modified: Thu, 14 Jun 2018 05:25:05 GMT  
		Size: 14.3 MB (14294786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:576bcdfdb8b29437cf740fd1a524c52bac57bb9242d2d728be8dd0dba766aaad`  
		Last Modified: Thu, 14 Jun 2018 05:25:00 GMT  
		Size: 2.1 KB (2074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e02bcfdcc3e4a1dc686340d8c5973c724084f9204baa03afe83a53b2da57e0`  
		Last Modified: Thu, 14 Jun 2018 05:25:25 GMT  
		Size: 143.1 MB (143140146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6862832c1f455f3f3f1befb8d6e19d6285079f0f2c35329980378262f5cedad0`  
		Last Modified: Thu, 14 Jun 2018 05:24:59 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd76940c94fa2f9f697efebdfb42d5fc2d99ff5d326968c5a85730d5d17e07e8`  
		Last Modified: Thu, 14 Jun 2018 05:24:57 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6aa371be9b08200a304192284e4394c781c2f05a4918a18a8fa97050b32ca80`  
		Last Modified: Thu, 14 Jun 2018 05:24:57 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994e04427d0d90856933292f4e0e4e6507d4d1ec7fca60c847935331edd3a5cf`  
		Last Modified: Thu, 14 Jun 2018 05:24:57 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23edaafc3f4d436c766b36aa2de2df88c1aec98b69bb8792b5301c93117e7726`  
		Last Modified: Thu, 14 Jun 2018 05:24:58 GMT  
		Size: 107.5 KB (107453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2375b68af6c0f8759dbca3bbbabbec226a698c3923da4b3c6a93f71bcde46397`  
		Last Modified: Thu, 14 Jun 2018 05:24:58 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:latest`

```console
$ docker pull couchbase@sha256:967652855ecdcfa4e032315ca80e059f604f6e9a9b5e35e6fef8941c0065fca0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:latest` - linux; amd64

```console
$ docker pull couchbase@sha256:9e662bdd5978cc24050b2f1891a0911572135c5f04642b95988910b432a98fac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200671548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeaf5287842e09cdaf3a8a1f48d926700dfdb248941bea9f1414c918d9123c6a`
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
# Thu, 14 Jun 2018 05:20:25 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 14 Jun 2018 05:20:25 GMT
ARG CB_VERSION=5.1.1
# Thu, 14 Jun 2018 05:20:25 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Thu, 14 Jun 2018 05:20:26 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb
# Thu, 14 Jun 2018 05:20:26 GMT
ARG CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c
# Thu, 14 Jun 2018 05:20:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 14 Jun 2018 05:20:27 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 14 Jun 2018 05:20:48 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 14 Jun 2018 05:20:48 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Thu, 14 Jun 2018 05:20:49 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN chown -R couchbase:couchbase /etc/service
# Thu, 14 Jun 2018 05:20:49 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 14 Jun 2018 05:20:50 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 14 Jun 2018 05:20:51 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 14 Jun 2018 05:20:51 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Thu, 14 Jun 2018 05:20:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Jun 2018 05:20:52 GMT
CMD ["couchbase-server"]
# Thu, 14 Jun 2018 05:20:52 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 14 Jun 2018 05:20:52 GMT
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
	-	`sha256:265eac6f77c98948605600568457dd18c927a0b482a8fc1279eaa8f981f2e2a9`  
		Last Modified: Thu, 14 Jun 2018 05:25:05 GMT  
		Size: 14.3 MB (14294786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:576bcdfdb8b29437cf740fd1a524c52bac57bb9242d2d728be8dd0dba766aaad`  
		Last Modified: Thu, 14 Jun 2018 05:25:00 GMT  
		Size: 2.1 KB (2074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e02bcfdcc3e4a1dc686340d8c5973c724084f9204baa03afe83a53b2da57e0`  
		Last Modified: Thu, 14 Jun 2018 05:25:25 GMT  
		Size: 143.1 MB (143140146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6862832c1f455f3f3f1befb8d6e19d6285079f0f2c35329980378262f5cedad0`  
		Last Modified: Thu, 14 Jun 2018 05:24:59 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd76940c94fa2f9f697efebdfb42d5fc2d99ff5d326968c5a85730d5d17e07e8`  
		Last Modified: Thu, 14 Jun 2018 05:24:57 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6aa371be9b08200a304192284e4394c781c2f05a4918a18a8fa97050b32ca80`  
		Last Modified: Thu, 14 Jun 2018 05:24:57 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994e04427d0d90856933292f4e0e4e6507d4d1ec7fca60c847935331edd3a5cf`  
		Last Modified: Thu, 14 Jun 2018 05:24:57 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23edaafc3f4d436c766b36aa2de2df88c1aec98b69bb8792b5301c93117e7726`  
		Last Modified: Thu, 14 Jun 2018 05:24:58 GMT  
		Size: 107.5 KB (107453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2375b68af6c0f8759dbca3bbbabbec226a698c3923da4b3c6a93f71bcde46397`  
		Last Modified: Thu, 14 Jun 2018 05:24:58 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
