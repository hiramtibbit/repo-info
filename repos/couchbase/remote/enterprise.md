## `couchbase:enterprise`

```console
$ docker pull couchbase@sha256:516be56ba8a6e41e930e7c4b2dcf2ac8736b86ea4a7af9d63201d7a1ce23f52e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise` - linux; amd64

```console
$ docker pull couchbase@sha256:6054e1624c40d97c188c8547f2f19be9afb0dd0a48fbc8dcbefd02d677930e2a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.5 MB (321536984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5391ff8b630d934f4b3a5ef4bb715be81e3c684adbc5dbf84bb8d5614c0ff6bb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:55 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 05 Sep 2018 22:20:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:57 GMT
CMD ["/bin/bash"]
# Thu, 06 Sep 2018 00:04:29 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 06 Sep 2018 00:04:47 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 02 Oct 2018 02:19:30 GMT
ARG CB_VERSION=5.5.2
# Tue, 02 Oct 2018 02:19:30 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Tue, 02 Oct 2018 02:19:31 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.5.2-ubuntu16.04_amd64.deb
# Tue, 02 Oct 2018 02:19:31 GMT
ARG CB_SHA256=9b187d76e159e5bf4b6f12bb246d997cd9847809cfc8591858cdd6bd90b6d862
# Tue, 02 Oct 2018 02:19:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 02 Oct 2018 02:19:32 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.2-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9b187d76e159e5bf4b6f12bb246d997cd9847809cfc8591858cdd6bd90b6d862 CB_VERSION=5.5.2
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 02 Oct 2018 02:19:59 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.2-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9b187d76e159e5bf4b6f12bb246d997cd9847809cfc8591858cdd6bd90b6d862 CB_VERSION=5.5.2
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 02 Oct 2018 02:20:00 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Tue, 02 Oct 2018 02:20:01 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.2-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9b187d76e159e5bf4b6f12bb246d997cd9847809cfc8591858cdd6bd90b6d862 CB_VERSION=5.5.2
RUN chown -R couchbase:couchbase /etc/service
# Tue, 02 Oct 2018 02:20:01 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 02 Oct 2018 02:20:01 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.2-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9b187d76e159e5bf4b6f12bb246d997cd9847809cfc8591858cdd6bd90b6d862 CB_VERSION=5.5.2
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 02 Oct 2018 02:20:02 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.2-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9b187d76e159e5bf4b6f12bb246d997cd9847809cfc8591858cdd6bd90b6d862 CB_VERSION=5.5.2
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 02 Oct 2018 02:20:02 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Tue, 02 Oct 2018 02:20:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Oct 2018 02:20:03 GMT
CMD ["couchbase-server"]
# Tue, 02 Oct 2018 02:20:03 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 18095/tcp 18096/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp 8095/tcp 8096/tcp
# Tue, 02 Oct 2018 02:20:03 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504facff238fde83f1ca8f9f54520b4219c5b8f80be9616ddc52d31448a044bd`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbcacd28e101968415b0c812b2d2dc60f969e36b0b08c073bf796e12b1bb449`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fb3351ecad291a88b92b600037e2435c84a347683d540042086fe72c902b8a`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3debadcbf7e542e2aefbce1b64a358b1931fb403b3e4aeca27cb4d809d56c2`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0435b6dff1ba7b65dd3b47f1cbf916db712247b820f2420a6da4f2ecb6a85192`  
		Last Modified: Thu, 06 Sep 2018 00:08:39 GMT  
		Size: 14.3 MB (14295177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d02f9ed0cc6b01922d59cf5502de60c14668d3056fd1374ba913b07f44468ef7`  
		Last Modified: Tue, 02 Oct 2018 02:20:49 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:632bf3e3ebb632c0a036939d6163ca258407351e0752686ae0c50280ee57a8c1`  
		Last Modified: Tue, 02 Oct 2018 02:21:25 GMT  
		Size: 263.9 MB (263875160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ebd8ed1678171b7f02a0154ddca39556ccbe8496cd1d0c1498ab716bc27223a`  
		Last Modified: Tue, 02 Oct 2018 02:20:48 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f46c607647a37d7bc96ff49e9854710f1e927d80b9d787179bbc9929933094`  
		Last Modified: Tue, 02 Oct 2018 02:20:47 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d762663ff745bd94d66781121729f91e9de464aa7d0c63951e031e898799e0`  
		Last Modified: Tue, 02 Oct 2018 02:20:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af727a7877555b5f40d60e339ed8cf7d9c68a048b5271f098b6862bde981d703`  
		Last Modified: Tue, 02 Oct 2018 02:20:48 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7016a6045ed002a76f5819d027285c71e6437cb75fd2d0bf226b7046c6a76bb7`  
		Last Modified: Tue, 02 Oct 2018 02:20:47 GMT  
		Size: 107.5 KB (107457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083f759feaf94b94a0fe936d48f97d5267e93b708dce73d1a0c25693bb927316`  
		Last Modified: Tue, 02 Oct 2018 02:20:49 GMT  
		Size: 858.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
