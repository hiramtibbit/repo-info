## `couchbase:enterprise-5.5.1`

```console
$ docker pull couchbase@sha256:c1ec6a5faa505a865f1f1cc17a26e7c8b5f51470ebba5d96c6ecd77cc9286b46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-5.5.1` - linux; amd64

```console
$ docker pull couchbase@sha256:3cb377604b25c9b4d575278828d9ec8d743f99a27f557d5ce81f18d589557de4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.5 MB (321473991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5592b4f7113bf10155156504bb78f0fa4ae736f44bc904c653206c10ea7b0823`
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
# Mon, 20 Aug 2018 20:21:03 GMT
ARG CB_VERSION=5.5.1
# Mon, 20 Aug 2018 20:21:03 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Mon, 20 Aug 2018 20:21:03 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.5.1-ubuntu16.04_amd64.deb
# Mon, 20 Aug 2018 20:21:04 GMT
ARG CB_SHA256=d1db2051d530a1769982a9042acb17cc7ac1d0beb1c71f1c6214186212237ce6
# Mon, 20 Aug 2018 20:21:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 20 Aug 2018 20:21:05 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d1db2051d530a1769982a9042acb17cc7ac1d0beb1c71f1c6214186212237ce6 CB_VERSION=5.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Mon, 20 Aug 2018 20:21:46 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d1db2051d530a1769982a9042acb17cc7ac1d0beb1c71f1c6214186212237ce6 CB_VERSION=5.5.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Mon, 20 Aug 2018 20:21:47 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Mon, 20 Aug 2018 20:21:47 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d1db2051d530a1769982a9042acb17cc7ac1d0beb1c71f1c6214186212237ce6 CB_VERSION=5.5.1
RUN chown -R couchbase:couchbase /etc/service
# Mon, 20 Aug 2018 20:21:48 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Mon, 20 Aug 2018 20:21:48 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d1db2051d530a1769982a9042acb17cc7ac1d0beb1c71f1c6214186212237ce6 CB_VERSION=5.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Mon, 20 Aug 2018 20:21:49 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d1db2051d530a1769982a9042acb17cc7ac1d0beb1c71f1c6214186212237ce6 CB_VERSION=5.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Mon, 20 Aug 2018 20:21:50 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Mon, 20 Aug 2018 20:21:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Aug 2018 20:21:50 GMT
CMD ["couchbase-server"]
# Mon, 20 Aug 2018 20:21:50 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 18095/tcp 18096/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp 8095/tcp 8096/tcp
# Mon, 20 Aug 2018 20:21:51 GMT
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
	-	`sha256:274ef43724703f3763a5146986b41dcdd9b1fd0b0427024352904616c6db0ac8`  
		Last Modified: Mon, 20 Aug 2018 20:23:49 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83c1a517e7f082319750a9b56200f5958a9dd30eb2a2738bfe2e062e7b303fd`  
		Last Modified: Mon, 20 Aug 2018 20:25:07 GMT  
		Size: 263.8 MB (263835679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c105335e741c8fac7829685839895d2a67ee3dbfadd123c87c49835ce0e1ff`  
		Last Modified: Mon, 20 Aug 2018 20:23:50 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9dae3301cc7a7e2cc1e54fb4577ec0784477d10e7ff66d7c174104ada54bed4`  
		Last Modified: Mon, 20 Aug 2018 20:23:47 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368c58d8b497b8a0680118259fad4c861a4c4637bfdfab58c2b36285ea66800c`  
		Last Modified: Mon, 20 Aug 2018 20:23:47 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817c3a0b04acb3f4228df0827b458628c3d9b86689d8ddede7423fe3b36eb587`  
		Last Modified: Mon, 20 Aug 2018 20:23:47 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c251e58ddb0f2cc3c076a270c39e6114ebf51fc8c46e42c490b0c60eef731206`  
		Last Modified: Mon, 20 Aug 2018 20:23:47 GMT  
		Size: 107.5 KB (107460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94cb31c92f0d11b545c9481d649e59114ca5247bc6725e97a00453b4522875ec`  
		Last Modified: Mon, 20 Aug 2018 20:23:47 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
