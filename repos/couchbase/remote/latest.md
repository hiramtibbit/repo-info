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
