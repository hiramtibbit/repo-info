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
