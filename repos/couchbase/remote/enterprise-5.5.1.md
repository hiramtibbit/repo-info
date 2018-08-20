## `couchbase:enterprise-5.5.1`

```console
$ docker pull couchbase@sha256:4ade44792ab55ffa5fb68eae9af4ed93941ba2a3777c9f56553c5f8f96e9dc19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-5.5.1` - linux; amd64

```console
$ docker pull couchbase@sha256:49940497188452608dc63c89503f69e35664f10664155aea80a56684d419f236
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.4 MB (321420776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c46c5c493751c0fcced66d5021c920c79d2fc1bf7e2a2c4ea95405bf85c03610`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 26 Jul 2018 22:23:08 GMT
ADD file:204fb7ccb19ff7e863331131138621ff4d22720b3718e8f296902cc7d4f635b5 in / 
# Thu, 26 Jul 2018 22:23:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:23:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:23:11 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:06:23 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 26 Jul 2018 23:06:54 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 26 Jul 2018 23:06:55 GMT
ARG CB_VERSION=5.5.0
# Thu, 26 Jul 2018 23:06:55 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Thu, 26 Jul 2018 23:06:55 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.5.0-ubuntu16.04_amd64.deb
# Thu, 26 Jul 2018 23:06:56 GMT
ARG CB_SHA256=9eb499e953451e0675d4a3d04cee40b654d3d548d54f1fdece97c2a192f7d778
# Thu, 26 Jul 2018 23:06:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 26 Jul 2018 23:06:57 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9eb499e953451e0675d4a3d04cee40b654d3d548d54f1fdece97c2a192f7d778 CB_VERSION=5.5.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 26 Jul 2018 23:07:43 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9eb499e953451e0675d4a3d04cee40b654d3d548d54f1fdece97c2a192f7d778 CB_VERSION=5.5.0
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 26 Jul 2018 23:07:44 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Thu, 26 Jul 2018 23:07:45 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9eb499e953451e0675d4a3d04cee40b654d3d548d54f1fdece97c2a192f7d778 CB_VERSION=5.5.0
RUN chown -R couchbase:couchbase /etc/service
# Thu, 26 Jul 2018 23:07:46 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 26 Jul 2018 23:07:46 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9eb499e953451e0675d4a3d04cee40b654d3d548d54f1fdece97c2a192f7d778 CB_VERSION=5.5.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 26 Jul 2018 23:07:47 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=9eb499e953451e0675d4a3d04cee40b654d3d548d54f1fdece97c2a192f7d778 CB_VERSION=5.5.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 26 Jul 2018 23:07:47 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Thu, 26 Jul 2018 23:07:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Jul 2018 23:07:48 GMT
CMD ["couchbase-server"]
# Thu, 26 Jul 2018 23:07:48 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 18095/tcp 18096/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp 8095/tcp 8096/tcp
# Thu, 26 Jul 2018 23:07:49 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:8ee29e426c26c79e7ba03ccc8bbc7fe99db00ffcbccb679d9c643b5546d8dc8a`  
		Last Modified: Thu, 26 Jul 2018 22:27:22 GMT  
		Size: 43.2 MB (43228646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e83b260b73b908ebabde46b72fc5790bf4f029b53acbbfe35da8ff8fba795ac`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26b65fd1143ee4f9b7b6b958aeafdb996172d10b723f0bba24335a8f7ae692c`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dca07f8222e24aab97f026444d66a7604e4ae2b708cf079ff67a90c42efa60`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b420ae9e10b3f6a74f527914bc3c766b128435a62eca1061f41167205d5b0230`  
		Last Modified: Thu, 26 Jul 2018 22:26:54 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08dfef37a65dc49d6a9dc8038b622e16101e8a22ac730ff3886369b4f8ac4b64`  
		Last Modified: Thu, 26 Jul 2018 23:09:27 GMT  
		Size: 14.3 MB (14295515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8a520a623ffbcb347a3d6a00bf129c33eb0fe5454f748825102e7ae30eae63`  
		Last Modified: Thu, 26 Jul 2018 23:09:19 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48e9112571dc6053a87dcc92973dcef2605fed27590f8c2387877a071eae381`  
		Last Modified: Thu, 26 Jul 2018 23:10:43 GMT  
		Size: 263.8 MB (263782486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f7a0a69be54dbb8e02245dd56962f303ad2b9f5c39a0d079b11fcdbf246fdf`  
		Last Modified: Thu, 26 Jul 2018 23:09:19 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b064263f75bac59c5cf6e02ed63497225dee010192f70d838bc102257856acdc`  
		Last Modified: Thu, 26 Jul 2018 23:09:16 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7204ea70aa6686c488a6e158efed8ceae3e51d7a4e2a97819b1e98a0f9ccfcde`  
		Last Modified: Thu, 26 Jul 2018 23:09:16 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55ca910ea611b74f602f221e06d44b7841723c01d8df2b7bc01baa4fca8987c`  
		Last Modified: Thu, 26 Jul 2018 23:09:16 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e283afe03ca69e16fd1d73af00c7d9303e3e8333c63c764299e11f045e399f`  
		Last Modified: Thu, 26 Jul 2018 23:09:16 GMT  
		Size: 107.5 KB (107456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6b260b1dc9ddc54a25baade96989d95eaa3c6ea077500fa8f0859886c8b3f4`  
		Last Modified: Thu, 26 Jul 2018 23:09:16 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
