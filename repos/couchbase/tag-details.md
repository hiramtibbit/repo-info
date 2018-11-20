<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `couchbase`

-	[`couchbase:6.0.0`](#couchbase600)
-	[`couchbase:community`](#couchbasecommunity)
-	[`couchbase:community-6.0.0`](#couchbasecommunity-600)
-	[`couchbase:enterprise`](#couchbaseenterprise)
-	[`couchbase:enterprise-6.0.0`](#couchbaseenterprise-600)
-	[`couchbase:latest`](#couchbaselatest)

## `couchbase:6.0.0`

```console
$ docker pull couchbase@sha256:d0963abad2d36f5e2097c8edba722218a2ec865cb579607d881bde64aa61b93b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:6.0.0` - linux; amd64

```console
$ docker pull couchbase@sha256:4e28199a64e085040882f0b2d2ab82d49f068702c22f6b6e8554a929a456695a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.9 MB (344936345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:855c7310d3da0c8be8d4065b6163e8e4662e554373d36d77b8de5a4f4ea7bde0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:49:40 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Mon, 19 Nov 2018 21:49:59 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 19 Nov 2018 21:49:59 GMT
ARG CB_VERSION=6.0.0
# Mon, 19 Nov 2018 21:49:59 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Mon, 19 Nov 2018 21:50:00 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb
# Mon, 19 Nov 2018 21:50:00 GMT
ARG CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686
# Mon, 19 Nov 2018 21:50:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 19 Nov 2018 21:50:01 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686 CB_VERSION=6.0.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Mon, 19 Nov 2018 21:50:30 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686 CB_VERSION=6.0.0
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Mon, 19 Nov 2018 21:50:31 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Mon, 19 Nov 2018 21:50:32 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686 CB_VERSION=6.0.0
RUN chown -R couchbase:couchbase /etc/service
# Mon, 19 Nov 2018 21:50:32 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Mon, 19 Nov 2018 21:50:33 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686 CB_VERSION=6.0.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Mon, 19 Nov 2018 21:50:34 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686 CB_VERSION=6.0.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Mon, 19 Nov 2018 21:50:34 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Mon, 19 Nov 2018 21:50:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 19 Nov 2018 21:50:34 GMT
CMD ["couchbase-server"]
# Mon, 19 Nov 2018 21:50:35 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 18095/tcp 18096/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp 8095/tcp 8096/tcp
# Mon, 19 Nov 2018 21:50:35 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b584a7644432c882630d23005df4b3066e543e38ac8d17bd013535ff484f1244`  
		Last Modified: Mon, 19 Nov 2018 21:51:54 GMT  
		Size: 14.3 MB (14299982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a4281693251c11a5b1b88702a314c2a218687b515f4f464d35bf31de41844a`  
		Last Modified: Mon, 19 Nov 2018 21:51:50 GMT  
		Size: 2.1 KB (2079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dd75542076bce8585bad7a02075755956a4d8abccd3b6fc80766197d2d89c1`  
		Last Modified: Mon, 19 Nov 2018 21:52:38 GMT  
		Size: 287.1 MB (287097745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d422e4b3ea3a9a9bfef8e5007ff8ad23664f6adb4f8d6d786c2bd768d1423dce`  
		Last Modified: Mon, 19 Nov 2018 21:51:50 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5657c9a45cadc3f554667c552c231330e06af5c9d7b8337c272abf4a1c4ddb`  
		Last Modified: Mon, 19 Nov 2018 21:51:49 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dce1ccd043b5231a3549a028984028c625c9fdd5e142e3fe656a03cf24a02dd`  
		Last Modified: Mon, 19 Nov 2018 21:51:48 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1722f6346c9e751e96bc0b61f9e42cf32cb706d2d727f12a9331c9650db82464`  
		Last Modified: Mon, 19 Nov 2018 21:51:49 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970a2d613de43a4df9e9f9b43140a601f7d55cd95a88b66d45ef6eb73eaa9a99`  
		Last Modified: Mon, 19 Nov 2018 21:51:49 GMT  
		Size: 120.6 KB (120597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225c92a94126f9787f5cfcbd2167533baa0f14c15305007a4691a3dfc6f261dc`  
		Last Modified: Mon, 19 Nov 2018 21:51:49 GMT  
		Size: 858.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community`

```console
$ docker pull couchbase@sha256:9fc2952ff8dd3280b8b03433fb797ba316e28904732781713b7e8e42a6ca2830
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community` - linux; amd64

```console
$ docker pull couchbase@sha256:684f4cefb7b7633cdfadc1b7467cec1bec251eb61d93733cc7c85bd129434e3e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.7 MB (198739592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd0698d22a5372cff2d81b93d29fbe31ff67660dca61cb0ea2ef732d67c1e299`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:49:40 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Mon, 19 Nov 2018 21:49:59 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 19 Nov 2018 21:49:59 GMT
ARG CB_VERSION=6.0.0
# Mon, 19 Nov 2018 21:49:59 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Mon, 19 Nov 2018 21:51:00 GMT
ARG CB_PACKAGE=couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb
# Mon, 19 Nov 2018 21:51:00 GMT
ARG CB_SHA256=949b1ded72776a557b9cd3ac89253a4fe6aed079966a4057c5aec41ae5a30ece
# Mon, 19 Nov 2018 21:51:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 19 Nov 2018 21:51:01 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=949b1ded72776a557b9cd3ac89253a4fe6aed079966a4057c5aec41ae5a30ece CB_VERSION=6.0.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Mon, 19 Nov 2018 21:51:19 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=949b1ded72776a557b9cd3ac89253a4fe6aed079966a4057c5aec41ae5a30ece CB_VERSION=6.0.0
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Mon, 19 Nov 2018 21:51:20 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Mon, 19 Nov 2018 21:51:21 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=949b1ded72776a557b9cd3ac89253a4fe6aed079966a4057c5aec41ae5a30ece CB_VERSION=6.0.0
RUN chown -R couchbase:couchbase /etc/service
# Mon, 19 Nov 2018 21:51:21 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Mon, 19 Nov 2018 21:51:22 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=949b1ded72776a557b9cd3ac89253a4fe6aed079966a4057c5aec41ae5a30ece CB_VERSION=6.0.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Mon, 19 Nov 2018 21:51:22 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=949b1ded72776a557b9cd3ac89253a4fe6aed079966a4057c5aec41ae5a30ece CB_VERSION=6.0.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Mon, 19 Nov 2018 21:51:23 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Mon, 19 Nov 2018 21:51:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 19 Nov 2018 21:51:23 GMT
CMD ["couchbase-server"]
# Mon, 19 Nov 2018 21:51:24 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 18095/tcp 18096/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp 8095/tcp 8096/tcp
# Mon, 19 Nov 2018 21:51:24 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b584a7644432c882630d23005df4b3066e543e38ac8d17bd013535ff484f1244`  
		Last Modified: Mon, 19 Nov 2018 21:51:54 GMT  
		Size: 14.3 MB (14299982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4d50bd71db6d256de9de13f7f35d5f6b864785f984ec9f7f1b763fbb6d5bda`  
		Last Modified: Mon, 19 Nov 2018 21:53:53 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2415356a10d48b0f89bd52e1186a4194ebec7da8626cd35ed8aa6ec68fa94db`  
		Last Modified: Mon, 19 Nov 2018 21:54:19 GMT  
		Size: 140.9 MB (140900986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b9c012e01cf9d5e0051640bca51db4aa5cac779a9f95c42895a049281f2a8c`  
		Last Modified: Mon, 19 Nov 2018 21:53:53 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a465821eed64ca18574e857150460bafffc21e699ef586e2e797ae0f3da9a90`  
		Last Modified: Mon, 19 Nov 2018 21:53:52 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06b252af59f2298dd38573580cddfabc7363c68fd57cd7439c811e4d74204f0`  
		Last Modified: Mon, 19 Nov 2018 21:53:52 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc6178b47dfb5dfd9552e0609723268398926da98b6ee9892a45c9a6a3994df`  
		Last Modified: Mon, 19 Nov 2018 21:53:52 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b026c5a7aa253c28111ba7aece73f52fdfa60901f2591b313a84021378cf5097`  
		Last Modified: Mon, 19 Nov 2018 21:53:53 GMT  
		Size: 120.6 KB (120597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5132545e2a9b94ef191c1d97a81b27cbfeb0415206b3cf1acaaf6c53d2edba24`  
		Last Modified: Mon, 19 Nov 2018 21:53:53 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-6.0.0`

```console
$ docker pull couchbase@sha256:9fc2952ff8dd3280b8b03433fb797ba316e28904732781713b7e8e42a6ca2830
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community-6.0.0` - linux; amd64

```console
$ docker pull couchbase@sha256:684f4cefb7b7633cdfadc1b7467cec1bec251eb61d93733cc7c85bd129434e3e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.7 MB (198739592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd0698d22a5372cff2d81b93d29fbe31ff67660dca61cb0ea2ef732d67c1e299`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:49:40 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Mon, 19 Nov 2018 21:49:59 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 19 Nov 2018 21:49:59 GMT
ARG CB_VERSION=6.0.0
# Mon, 19 Nov 2018 21:49:59 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Mon, 19 Nov 2018 21:51:00 GMT
ARG CB_PACKAGE=couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb
# Mon, 19 Nov 2018 21:51:00 GMT
ARG CB_SHA256=949b1ded72776a557b9cd3ac89253a4fe6aed079966a4057c5aec41ae5a30ece
# Mon, 19 Nov 2018 21:51:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 19 Nov 2018 21:51:01 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=949b1ded72776a557b9cd3ac89253a4fe6aed079966a4057c5aec41ae5a30ece CB_VERSION=6.0.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Mon, 19 Nov 2018 21:51:19 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=949b1ded72776a557b9cd3ac89253a4fe6aed079966a4057c5aec41ae5a30ece CB_VERSION=6.0.0
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Mon, 19 Nov 2018 21:51:20 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Mon, 19 Nov 2018 21:51:21 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=949b1ded72776a557b9cd3ac89253a4fe6aed079966a4057c5aec41ae5a30ece CB_VERSION=6.0.0
RUN chown -R couchbase:couchbase /etc/service
# Mon, 19 Nov 2018 21:51:21 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Mon, 19 Nov 2018 21:51:22 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=949b1ded72776a557b9cd3ac89253a4fe6aed079966a4057c5aec41ae5a30ece CB_VERSION=6.0.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Mon, 19 Nov 2018 21:51:22 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=949b1ded72776a557b9cd3ac89253a4fe6aed079966a4057c5aec41ae5a30ece CB_VERSION=6.0.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Mon, 19 Nov 2018 21:51:23 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Mon, 19 Nov 2018 21:51:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 19 Nov 2018 21:51:23 GMT
CMD ["couchbase-server"]
# Mon, 19 Nov 2018 21:51:24 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 18095/tcp 18096/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp 8095/tcp 8096/tcp
# Mon, 19 Nov 2018 21:51:24 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b584a7644432c882630d23005df4b3066e543e38ac8d17bd013535ff484f1244`  
		Last Modified: Mon, 19 Nov 2018 21:51:54 GMT  
		Size: 14.3 MB (14299982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4d50bd71db6d256de9de13f7f35d5f6b864785f984ec9f7f1b763fbb6d5bda`  
		Last Modified: Mon, 19 Nov 2018 21:53:53 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2415356a10d48b0f89bd52e1186a4194ebec7da8626cd35ed8aa6ec68fa94db`  
		Last Modified: Mon, 19 Nov 2018 21:54:19 GMT  
		Size: 140.9 MB (140900986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b9c012e01cf9d5e0051640bca51db4aa5cac779a9f95c42895a049281f2a8c`  
		Last Modified: Mon, 19 Nov 2018 21:53:53 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a465821eed64ca18574e857150460bafffc21e699ef586e2e797ae0f3da9a90`  
		Last Modified: Mon, 19 Nov 2018 21:53:52 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06b252af59f2298dd38573580cddfabc7363c68fd57cd7439c811e4d74204f0`  
		Last Modified: Mon, 19 Nov 2018 21:53:52 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc6178b47dfb5dfd9552e0609723268398926da98b6ee9892a45c9a6a3994df`  
		Last Modified: Mon, 19 Nov 2018 21:53:52 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b026c5a7aa253c28111ba7aece73f52fdfa60901f2591b313a84021378cf5097`  
		Last Modified: Mon, 19 Nov 2018 21:53:53 GMT  
		Size: 120.6 KB (120597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5132545e2a9b94ef191c1d97a81b27cbfeb0415206b3cf1acaaf6c53d2edba24`  
		Last Modified: Mon, 19 Nov 2018 21:53:53 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise`

```console
$ docker pull couchbase@sha256:d0963abad2d36f5e2097c8edba722218a2ec865cb579607d881bde64aa61b93b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise` - linux; amd64

```console
$ docker pull couchbase@sha256:4e28199a64e085040882f0b2d2ab82d49f068702c22f6b6e8554a929a456695a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.9 MB (344936345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:855c7310d3da0c8be8d4065b6163e8e4662e554373d36d77b8de5a4f4ea7bde0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:49:40 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Mon, 19 Nov 2018 21:49:59 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 19 Nov 2018 21:49:59 GMT
ARG CB_VERSION=6.0.0
# Mon, 19 Nov 2018 21:49:59 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Mon, 19 Nov 2018 21:50:00 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb
# Mon, 19 Nov 2018 21:50:00 GMT
ARG CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686
# Mon, 19 Nov 2018 21:50:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 19 Nov 2018 21:50:01 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686 CB_VERSION=6.0.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Mon, 19 Nov 2018 21:50:30 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686 CB_VERSION=6.0.0
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Mon, 19 Nov 2018 21:50:31 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Mon, 19 Nov 2018 21:50:32 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686 CB_VERSION=6.0.0
RUN chown -R couchbase:couchbase /etc/service
# Mon, 19 Nov 2018 21:50:32 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Mon, 19 Nov 2018 21:50:33 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686 CB_VERSION=6.0.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Mon, 19 Nov 2018 21:50:34 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686 CB_VERSION=6.0.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Mon, 19 Nov 2018 21:50:34 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Mon, 19 Nov 2018 21:50:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 19 Nov 2018 21:50:34 GMT
CMD ["couchbase-server"]
# Mon, 19 Nov 2018 21:50:35 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 18095/tcp 18096/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp 8095/tcp 8096/tcp
# Mon, 19 Nov 2018 21:50:35 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b584a7644432c882630d23005df4b3066e543e38ac8d17bd013535ff484f1244`  
		Last Modified: Mon, 19 Nov 2018 21:51:54 GMT  
		Size: 14.3 MB (14299982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a4281693251c11a5b1b88702a314c2a218687b515f4f464d35bf31de41844a`  
		Last Modified: Mon, 19 Nov 2018 21:51:50 GMT  
		Size: 2.1 KB (2079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dd75542076bce8585bad7a02075755956a4d8abccd3b6fc80766197d2d89c1`  
		Last Modified: Mon, 19 Nov 2018 21:52:38 GMT  
		Size: 287.1 MB (287097745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d422e4b3ea3a9a9bfef8e5007ff8ad23664f6adb4f8d6d786c2bd768d1423dce`  
		Last Modified: Mon, 19 Nov 2018 21:51:50 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5657c9a45cadc3f554667c552c231330e06af5c9d7b8337c272abf4a1c4ddb`  
		Last Modified: Mon, 19 Nov 2018 21:51:49 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dce1ccd043b5231a3549a028984028c625c9fdd5e142e3fe656a03cf24a02dd`  
		Last Modified: Mon, 19 Nov 2018 21:51:48 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1722f6346c9e751e96bc0b61f9e42cf32cb706d2d727f12a9331c9650db82464`  
		Last Modified: Mon, 19 Nov 2018 21:51:49 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970a2d613de43a4df9e9f9b43140a601f7d55cd95a88b66d45ef6eb73eaa9a99`  
		Last Modified: Mon, 19 Nov 2018 21:51:49 GMT  
		Size: 120.6 KB (120597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225c92a94126f9787f5cfcbd2167533baa0f14c15305007a4691a3dfc6f261dc`  
		Last Modified: Mon, 19 Nov 2018 21:51:49 GMT  
		Size: 858.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-6.0.0`

```console
$ docker pull couchbase@sha256:d0963abad2d36f5e2097c8edba722218a2ec865cb579607d881bde64aa61b93b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-6.0.0` - linux; amd64

```console
$ docker pull couchbase@sha256:4e28199a64e085040882f0b2d2ab82d49f068702c22f6b6e8554a929a456695a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.9 MB (344936345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:855c7310d3da0c8be8d4065b6163e8e4662e554373d36d77b8de5a4f4ea7bde0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:49:40 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Mon, 19 Nov 2018 21:49:59 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 19 Nov 2018 21:49:59 GMT
ARG CB_VERSION=6.0.0
# Mon, 19 Nov 2018 21:49:59 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Mon, 19 Nov 2018 21:50:00 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb
# Mon, 19 Nov 2018 21:50:00 GMT
ARG CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686
# Mon, 19 Nov 2018 21:50:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 19 Nov 2018 21:50:01 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686 CB_VERSION=6.0.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Mon, 19 Nov 2018 21:50:30 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686 CB_VERSION=6.0.0
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Mon, 19 Nov 2018 21:50:31 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Mon, 19 Nov 2018 21:50:32 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686 CB_VERSION=6.0.0
RUN chown -R couchbase:couchbase /etc/service
# Mon, 19 Nov 2018 21:50:32 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Mon, 19 Nov 2018 21:50:33 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686 CB_VERSION=6.0.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Mon, 19 Nov 2018 21:50:34 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686 CB_VERSION=6.0.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Mon, 19 Nov 2018 21:50:34 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Mon, 19 Nov 2018 21:50:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 19 Nov 2018 21:50:34 GMT
CMD ["couchbase-server"]
# Mon, 19 Nov 2018 21:50:35 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 18095/tcp 18096/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp 8095/tcp 8096/tcp
# Mon, 19 Nov 2018 21:50:35 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b584a7644432c882630d23005df4b3066e543e38ac8d17bd013535ff484f1244`  
		Last Modified: Mon, 19 Nov 2018 21:51:54 GMT  
		Size: 14.3 MB (14299982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a4281693251c11a5b1b88702a314c2a218687b515f4f464d35bf31de41844a`  
		Last Modified: Mon, 19 Nov 2018 21:51:50 GMT  
		Size: 2.1 KB (2079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dd75542076bce8585bad7a02075755956a4d8abccd3b6fc80766197d2d89c1`  
		Last Modified: Mon, 19 Nov 2018 21:52:38 GMT  
		Size: 287.1 MB (287097745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d422e4b3ea3a9a9bfef8e5007ff8ad23664f6adb4f8d6d786c2bd768d1423dce`  
		Last Modified: Mon, 19 Nov 2018 21:51:50 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5657c9a45cadc3f554667c552c231330e06af5c9d7b8337c272abf4a1c4ddb`  
		Last Modified: Mon, 19 Nov 2018 21:51:49 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dce1ccd043b5231a3549a028984028c625c9fdd5e142e3fe656a03cf24a02dd`  
		Last Modified: Mon, 19 Nov 2018 21:51:48 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1722f6346c9e751e96bc0b61f9e42cf32cb706d2d727f12a9331c9650db82464`  
		Last Modified: Mon, 19 Nov 2018 21:51:49 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970a2d613de43a4df9e9f9b43140a601f7d55cd95a88b66d45ef6eb73eaa9a99`  
		Last Modified: Mon, 19 Nov 2018 21:51:49 GMT  
		Size: 120.6 KB (120597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225c92a94126f9787f5cfcbd2167533baa0f14c15305007a4691a3dfc6f261dc`  
		Last Modified: Mon, 19 Nov 2018 21:51:49 GMT  
		Size: 858.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:latest`

```console
$ docker pull couchbase@sha256:d0963abad2d36f5e2097c8edba722218a2ec865cb579607d881bde64aa61b93b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:latest` - linux; amd64

```console
$ docker pull couchbase@sha256:4e28199a64e085040882f0b2d2ab82d49f068702c22f6b6e8554a929a456695a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.9 MB (344936345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:855c7310d3da0c8be8d4065b6163e8e4662e554373d36d77b8de5a4f4ea7bde0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:49:40 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Mon, 19 Nov 2018 21:49:59 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 19 Nov 2018 21:49:59 GMT
ARG CB_VERSION=6.0.0
# Mon, 19 Nov 2018 21:49:59 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Mon, 19 Nov 2018 21:50:00 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb
# Mon, 19 Nov 2018 21:50:00 GMT
ARG CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686
# Mon, 19 Nov 2018 21:50:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 19 Nov 2018 21:50:01 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686 CB_VERSION=6.0.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Mon, 19 Nov 2018 21:50:30 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686 CB_VERSION=6.0.0
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Mon, 19 Nov 2018 21:50:31 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Mon, 19 Nov 2018 21:50:32 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686 CB_VERSION=6.0.0
RUN chown -R couchbase:couchbase /etc/service
# Mon, 19 Nov 2018 21:50:32 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Mon, 19 Nov 2018 21:50:33 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686 CB_VERSION=6.0.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Mon, 19 Nov 2018 21:50:34 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686 CB_VERSION=6.0.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Mon, 19 Nov 2018 21:50:34 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Mon, 19 Nov 2018 21:50:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 19 Nov 2018 21:50:34 GMT
CMD ["couchbase-server"]
# Mon, 19 Nov 2018 21:50:35 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 18095/tcp 18096/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp 8095/tcp 8096/tcp
# Mon, 19 Nov 2018 21:50:35 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b584a7644432c882630d23005df4b3066e543e38ac8d17bd013535ff484f1244`  
		Last Modified: Mon, 19 Nov 2018 21:51:54 GMT  
		Size: 14.3 MB (14299982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a4281693251c11a5b1b88702a314c2a218687b515f4f464d35bf31de41844a`  
		Last Modified: Mon, 19 Nov 2018 21:51:50 GMT  
		Size: 2.1 KB (2079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dd75542076bce8585bad7a02075755956a4d8abccd3b6fc80766197d2d89c1`  
		Last Modified: Mon, 19 Nov 2018 21:52:38 GMT  
		Size: 287.1 MB (287097745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d422e4b3ea3a9a9bfef8e5007ff8ad23664f6adb4f8d6d786c2bd768d1423dce`  
		Last Modified: Mon, 19 Nov 2018 21:51:50 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5657c9a45cadc3f554667c552c231330e06af5c9d7b8337c272abf4a1c4ddb`  
		Last Modified: Mon, 19 Nov 2018 21:51:49 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dce1ccd043b5231a3549a028984028c625c9fdd5e142e3fe656a03cf24a02dd`  
		Last Modified: Mon, 19 Nov 2018 21:51:48 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1722f6346c9e751e96bc0b61f9e42cf32cb706d2d727f12a9331c9650db82464`  
		Last Modified: Mon, 19 Nov 2018 21:51:49 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970a2d613de43a4df9e9f9b43140a601f7d55cd95a88b66d45ef6eb73eaa9a99`  
		Last Modified: Mon, 19 Nov 2018 21:51:49 GMT  
		Size: 120.6 KB (120597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225c92a94126f9787f5cfcbd2167533baa0f14c15305007a4691a3dfc6f261dc`  
		Last Modified: Mon, 19 Nov 2018 21:51:49 GMT  
		Size: 858.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
