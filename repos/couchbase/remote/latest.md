## `couchbase:latest`

```console
$ docker pull couchbase@sha256:a1843c7b747012ca7466f4cd887bfbbd39f685a4d1cbe1b76d16dc1a0a2a96a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:latest` - linux; amd64

```console
$ docker pull couchbase@sha256:1f7b3e0d86f76e55d4e3504cf701455510448bfeed3d384ccfca032427148dee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200739279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cae62149832bb84a8f403294c65c087201cf32987dcc54759a12f0e37bf69032`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 17 Jul 2018 00:53:59 GMT
ADD file:7b8419bb9079c6d91ceeb2d0f35c46bcb8083d9d666eb21fda765ed755a07840 in / 
# Tue, 17 Jul 2018 00:54:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:54:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:54:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:54:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:54:02 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 10:51:27 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Tue, 17 Jul 2018 10:51:58 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 17 Jul 2018 10:51:59 GMT
ARG CB_VERSION=5.1.1
# Tue, 17 Jul 2018 10:52:00 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Tue, 17 Jul 2018 10:52:00 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb
# Tue, 17 Jul 2018 10:52:00 GMT
ARG CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c
# Tue, 17 Jul 2018 10:52:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 17 Jul 2018 10:52:02 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 17 Jul 2018 10:52:30 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 17 Jul 2018 10:52:35 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Tue, 17 Jul 2018 10:52:36 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN chown -R couchbase:couchbase /etc/service
# Tue, 17 Jul 2018 10:52:37 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 17 Jul 2018 10:52:38 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 17 Jul 2018 10:52:39 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=058acc6567db7acd8dcb80aa55a7a1de1b318848255bcb2878b285c0e52ecc8c CB_VERSION=5.1.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 17 Jul 2018 10:52:39 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Tue, 17 Jul 2018 10:52:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 10:52:40 GMT
CMD ["couchbase-server"]
# Tue, 17 Jul 2018 10:52:40 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 17 Jul 2018 10:52:41 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:3620e2d282dce98978bc2ae770aa43121cfa88cafdb8888d552bfd96ade2c857`  
		Last Modified: Mon, 09 Jul 2018 15:05:32 GMT  
		Size: 43.2 MB (43190074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef22f5e4b3b2cfcefabf6ae23afc6eec160c1a9ab32ba72f9117feee454a6dc5`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f229f854da0ebac56b80462718952353fe22745701123dee20cbd24dede33d`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe433abe16a89c38c06a4e91d1db85448407c4783d6cfbde3a03c4d71481d24`  
		Last Modified: Tue, 17 Jul 2018 00:59:22 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b72a16d85e58632c1b2114dd92916b5c923f697a667ae56fd14a9a9a33869b`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346308c1dac0600f1976818a633e464ac7f0968a0ab8ffb1b322f3fd0de12981`  
		Last Modified: Tue, 17 Jul 2018 10:58:30 GMT  
		Size: 14.3 MB (14295079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18351995ab6d9cc9e0395748ff7e56ff434419364b4f8888332268c6698399ef`  
		Last Modified: Tue, 17 Jul 2018 10:58:25 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f775fefdae9a5cd2a61a021afcc3db57352c1429cf00be763ac6486cd5cc57`  
		Last Modified: Tue, 17 Jul 2018 10:59:08 GMT  
		Size: 143.1 MB (143139984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb5ee1b3f6002c1f7513828804f56fe51f1a65ba46c18eb13da1b261516bb30`  
		Last Modified: Tue, 17 Jul 2018 10:58:23 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a188f1545e56278b9ed07c77250b3fa5c8622d771cde21bb9add8f5abc99edf7`  
		Last Modified: Tue, 17 Jul 2018 10:58:23 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716b839be6131a6b0864a5567eb1fdfbe0eb80c8c6d80bfac81db3f753944146`  
		Last Modified: Tue, 17 Jul 2018 10:58:23 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8308c3a26cb7d4d531e68698caf25e2a2dd422cc79763abb45d594e9c6c181df`  
		Last Modified: Tue, 17 Jul 2018 10:58:20 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f783ecdbd121c2fc6003fa6d25ebebc7080d35d49ecdccb04d34a68e0003cb3`  
		Last Modified: Tue, 17 Jul 2018 10:58:21 GMT  
		Size: 107.5 KB (107455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c49c04ef02758dbac392b91edf92fa1e951b3c999d9d88b4832a4dbfb1b56d`  
		Last Modified: Tue, 17 Jul 2018 10:58:21 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
