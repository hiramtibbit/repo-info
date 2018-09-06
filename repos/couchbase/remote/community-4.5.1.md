## `couchbase:community-4.5.1`

```console
$ docker pull couchbase@sha256:818e4632f12e289d4bcc49007ddbf423ac1ec1c0d57c2dd5cbd85846ab47c17b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community-4.5.1` - linux; amd64

```console
$ docker pull couchbase@sha256:bfcb8948d66e1cf50a93a16a89d7ac41ef8895c1c47dea42e67003598bb20b23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.8 MB (209753048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2432afe8f52706b0843985e4ae8a424f84cf1a0dc88e0be49cadb9633266c1d8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:40 GMT
ADD file:b52dc89539ef99aa7478debd2af0497ac50ee0d7658c05219bbf609440626583 in / 
# Wed, 05 Sep 2018 22:20:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:43 GMT
CMD ["/bin/bash"]
# Thu, 06 Sep 2018 00:06:24 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 06 Sep 2018 00:06:58 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 06 Sep 2018 00:08:01 GMT
ARG CB_VERSION=4.5.1
# Thu, 06 Sep 2018 00:08:01 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Thu, 06 Sep 2018 00:08:01 GMT
ARG CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb
# Thu, 06 Sep 2018 00:08:01 GMT
ARG CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234
# Thu, 06 Sep 2018 00:08:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 06 Sep 2018 00:08:02 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 06 Sep 2018 00:08:18 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 06 Sep 2018 00:08:18 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Thu, 06 Sep 2018 00:08:19 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN chown -R couchbase:couchbase /etc/service
# Thu, 06 Sep 2018 00:08:19 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 06 Sep 2018 00:08:20 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 06 Sep 2018 00:08:21 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 06 Sep 2018 00:08:22 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Thu, 06 Sep 2018 00:08:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Sep 2018 00:08:22 GMT
CMD ["couchbase-server"]
# Thu, 06 Sep 2018 00:08:22 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 18095/tcp 18096/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp 8095/tcp 8096/tcp
# Thu, 06 Sep 2018 00:08:22 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:72c01b436656c9a55ae968ed14e4f1b2a36e11a1103de1d78052edc926d5003f`  
		Last Modified: Wed, 22 Aug 2018 17:35:57 GMT  
		Size: 67.1 MB (67126755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65584f5f70eeea5b72e357d4e2bc0edf9b1a82fb23f1de65880e1dae719f78ab`  
		Last Modified: Wed, 05 Sep 2018 22:21:53 GMT  
		Size: 72.7 KB (72659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9874b529521c67727d1a5ad5d8eb24af93cdc5aa232cc42ff37488c4c2e5c8`  
		Last Modified: Wed, 05 Sep 2018 22:21:53 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86656bbaa6fd4511807a37afa01c1d4dce5cc973faed463aafa4fabd32b6dcde`  
		Last Modified: Wed, 05 Sep 2018 22:21:52 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe6916ab38229dcf39f8534843008d42dd93a44241619505dbf4774f0b70d28`  
		Last Modified: Wed, 05 Sep 2018 22:21:52 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e73d2e63a747f6505530c6fa1f89c6e7b2e0600f59c0d3c4c399487ba4db7c`  
		Last Modified: Thu, 06 Sep 2018 00:10:34 GMT  
		Size: 11.4 MB (11391684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7901641461ef8c920182210b20a1eb427a3a468cbcc537cb35329034624c38a6`  
		Last Modified: Thu, 06 Sep 2018 00:11:38 GMT  
		Size: 1.9 KB (1910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bcb64f5332d86ee3b119802c745c4627390b92bbecd53b7e8302846b1c4d5d0`  
		Last Modified: Thu, 06 Sep 2018 00:11:58 GMT  
		Size: 131.1 MB (131051133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c66acfd121eeaae69885cbeeb28fbf6af81682100991ab89ee94f15d39a06f`  
		Last Modified: Thu, 06 Sep 2018 00:11:38 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754f95fb7285d0a74bf61e2d163af6f05aaa5a4bd0c6c5ee2cfe522e8e44055d`  
		Last Modified: Thu, 06 Sep 2018 00:11:36 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e871023514cca51a7efc01b4a9cbbb6cf53e89a0f2ab451c8d9f1acdd0664d7`  
		Last Modified: Thu, 06 Sep 2018 00:11:36 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d462a461aec1780f8eb1e1406d64d5f5c1273ba17e2f3e9d7aaa4a522e85ff`  
		Last Modified: Thu, 06 Sep 2018 00:11:36 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0adae627c085deb4d0b3ba517e0754e68c6ddf86c52d238851825d0a99423499`  
		Last Modified: Thu, 06 Sep 2018 00:11:37 GMT  
		Size: 105.4 KB (105406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c5f1ae1899bf5d138e87ee9db670972a3dfd9046a634d8095cc4bb7daae2ea`  
		Last Modified: Thu, 06 Sep 2018 00:11:59 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
