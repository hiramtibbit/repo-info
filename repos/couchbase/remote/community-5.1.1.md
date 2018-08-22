## `couchbase:community-5.1.1`

```console
$ docker pull couchbase@sha256:a02f17a267e37b3a0b935dfb7d75094c1940b1d7ed367c4db46adb87bd73727c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community-5.1.1` - linux; amd64

```console
$ docker pull couchbase@sha256:62e7ef5fd9e7f96883d1f12d4d0bc5ea42c701566d85a334ba3981fccbdbb19f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.6 MB (190590499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfc6bba5c6457132071441320b6d6618cbda8c66c656b8aec2868a7b1d97cf4e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Wed, 22 Aug 2018 17:31:28 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 22 Aug 2018 17:31:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:31:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:31:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:31:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:31:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:00:39 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Wed, 22 Aug 2018 18:01:20 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 22 Aug 2018 18:05:50 GMT
ARG CB_VERSION=5.1.1
# Wed, 22 Aug 2018 18:05:50 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Wed, 22 Aug 2018 18:05:51 GMT
ARG CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb
# Wed, 22 Aug 2018 18:05:51 GMT
ARG CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb
# Wed, 22 Aug 2018 18:05:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 22 Aug 2018 18:05:52 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Wed, 22 Aug 2018 18:06:14 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Wed, 22 Aug 2018 18:06:14 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Wed, 22 Aug 2018 18:06:15 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN chown -R couchbase:couchbase /etc/service
# Wed, 22 Aug 2018 18:06:16 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Wed, 22 Aug 2018 18:06:17 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Wed, 22 Aug 2018 18:06:18 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Wed, 22 Aug 2018 18:06:18 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Wed, 22 Aug 2018 18:06:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 22 Aug 2018 18:06:19 GMT
CMD ["couchbase-server"]
# Wed, 22 Aug 2018 18:06:19 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 18095/tcp 18096/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp 8095/tcp 8096/tcp
# Wed, 22 Aug 2018 18:06:19 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba077e1ddb3aa8b95b2ecc5e58830800af4f5c06a5a37a3b7d7e0a67e178fb65`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c83d2bc656952f573cee825d42e58622909b4be524b653f4f3df7464e57aa2`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b69b6e47437924b207458fe7fc8f66812622983ae5a5d84bfdd2d83a9581e1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f72e97e1f61face716660657e4df5f70c2008a0b8b89e35dc6a460124fe01d1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81d67433296beca9bbdf617ca851f05356bd3c217c742ee2463f6fdbca96a68`  
		Last Modified: Wed, 22 Aug 2018 18:07:50 GMT  
		Size: 14.3 MB (14295132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f45f589a4d02897db2e485c54d140d340a5fa757328049d4dd902e2387017ac`  
		Last Modified: Wed, 22 Aug 2018 18:12:29 GMT  
		Size: 2.1 KB (2072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa21c956bf39696085f9a375f975710741527365fed4e85fe512709ab55d9556`  
		Last Modified: Wed, 22 Aug 2018 18:13:10 GMT  
		Size: 132.9 MB (132928730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c0c9724360fa9c90cea4e0b49f50eff0c029e1a4139d5d4905392ba39fd86af`  
		Last Modified: Wed, 22 Aug 2018 18:12:29 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3717d47362bab090347ec2894031a2fef27956dadb7ecab6ba52d2f2e5990e`  
		Last Modified: Wed, 22 Aug 2018 18:12:27 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e473fb9e410087ef4e4c012148d85d378d7089eeb9b22431b20b17ab8588c7f3`  
		Last Modified: Wed, 22 Aug 2018 18:12:26 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eeddf3812c2ab65dad1efc948e5f06ca2ca73f8964f1a8bd5bbcec827d6fa2b`  
		Last Modified: Wed, 22 Aug 2018 18:12:26 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f6f75134311871601f935f9426460812f2c1368945e6a4d72c704552eb6e5a`  
		Last Modified: Wed, 22 Aug 2018 18:12:27 GMT  
		Size: 107.5 KB (107455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffcbad56f96fc70f770f2c5d74370a956c0f051e90353f554f54b7f2466a110`  
		Last Modified: Wed, 22 Aug 2018 18:12:26 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
