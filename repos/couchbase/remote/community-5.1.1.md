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
