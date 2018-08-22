## `couchbase:enterprise`

```console
$ docker pull couchbase@sha256:4ff9cf3e490863fbce583e635de5fcb0099bf86f50c6c44e4198f78b9c17ada9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise` - linux; amd64

```console
$ docker pull couchbase@sha256:636da2ea70b25d717292a4eaf8325cf618590236bc1a5ac70b453287034ec7c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.5 MB (321496997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e5ad188dc7276f9448f99710c2766a985b800b78fc9bb05bc72ae3a14d7f818`
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
# Wed, 22 Aug 2018 18:01:34 GMT
ARG CB_VERSION=5.5.1
# Wed, 22 Aug 2018 18:01:35 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Wed, 22 Aug 2018 18:01:35 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.5.1-ubuntu16.04_amd64.deb
# Wed, 22 Aug 2018 18:01:35 GMT
ARG CB_SHA256=d1db2051d530a1769982a9042acb17cc7ac1d0beb1c71f1c6214186212237ce6
# Wed, 22 Aug 2018 18:01:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 22 Aug 2018 18:01:37 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d1db2051d530a1769982a9042acb17cc7ac1d0beb1c71f1c6214186212237ce6 CB_VERSION=5.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Wed, 22 Aug 2018 18:02:11 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d1db2051d530a1769982a9042acb17cc7ac1d0beb1c71f1c6214186212237ce6 CB_VERSION=5.5.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Wed, 22 Aug 2018 18:02:12 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Wed, 22 Aug 2018 18:02:13 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d1db2051d530a1769982a9042acb17cc7ac1d0beb1c71f1c6214186212237ce6 CB_VERSION=5.5.1
RUN chown -R couchbase:couchbase /etc/service
# Wed, 22 Aug 2018 18:02:13 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Wed, 22 Aug 2018 18:02:14 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d1db2051d530a1769982a9042acb17cc7ac1d0beb1c71f1c6214186212237ce6 CB_VERSION=5.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Wed, 22 Aug 2018 18:02:15 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d1db2051d530a1769982a9042acb17cc7ac1d0beb1c71f1c6214186212237ce6 CB_VERSION=5.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Wed, 22 Aug 2018 18:02:16 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Wed, 22 Aug 2018 18:02:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 22 Aug 2018 18:02:16 GMT
CMD ["couchbase-server"]
# Wed, 22 Aug 2018 18:02:16 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 18095/tcp 18096/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp 8095/tcp 8096/tcp
# Wed, 22 Aug 2018 18:02:17 GMT
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
	-	`sha256:5415a31b07f35743cee13a958afe0e5f7a8e36f96a4d98e1e47b491da3a869a4`  
		Last Modified: Wed, 22 Aug 2018 18:07:47 GMT  
		Size: 2.1 KB (2074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59b369eab27ad5483d4635725515aef87145c7489446ae926e0e59745333f4b9`  
		Last Modified: Wed, 22 Aug 2018 18:09:02 GMT  
		Size: 263.8 MB (263835226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e163ce99a500181acabf9f58f7778ca294cda9a9df8514736a68dcfc9f8ec10`  
		Last Modified: Wed, 22 Aug 2018 18:07:45 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e47fb5337bfa261faff18070f7b49c7ea1538f638d50759e865908012279e9`  
		Last Modified: Wed, 22 Aug 2018 18:07:41 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db12ed8871403d8ce6317af35a0a6141d6ab17f4fdc4a358ad2d9f765c64eff4`  
		Last Modified: Wed, 22 Aug 2018 18:07:41 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153c916f21891cc5f2b3c9db1b2733da5aa0e468951c91af00506c5899053c13`  
		Last Modified: Wed, 22 Aug 2018 18:07:41 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c765a21742455bfa88072f6e0459d709ed175e585212d05251925e947e108306`  
		Last Modified: Wed, 22 Aug 2018 18:07:43 GMT  
		Size: 107.5 KB (107454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2acb8a441219a0242b9e5e8758e44fa9b85ccf2701a42edb4841493cd4bcf64`  
		Last Modified: Wed, 22 Aug 2018 18:07:41 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
