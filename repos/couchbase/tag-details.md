<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `couchbase`

-	[`couchbase:6.0.1`](#couchbase601)
-	[`couchbase:community`](#couchbasecommunity)
-	[`couchbase:community-6.0.0`](#couchbasecommunity-600)
-	[`couchbase:enterprise`](#couchbaseenterprise)
-	[`couchbase:enterprise-6.0.1`](#couchbaseenterprise-601)
-	[`couchbase:latest`](#couchbaselatest)

## `couchbase:6.0.1`

```console
$ docker pull couchbase@sha256:f540d2acfdf775c5f52babcd09f9c3bf942e65e97e2cc002fdf466421a063336
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:6.0.1` - linux; amd64

```console
$ docker pull couchbase@sha256:71102739396c21724752a4a9cd9050c5feb33fba5cfa5bfb1469cfa8d9c9c55f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **468.6 MB (468586199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c47613857bec0879639cf53362d26d6f969cadef228ba7044bc039b07514f44c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:37:51 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Tue, 12 Mar 2019 00:38:26 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 12 Mar 2019 00:38:27 GMT
ARG CB_VERSION=6.0.1
# Tue, 12 Mar 2019 00:38:27 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Tue, 12 Mar 2019 00:38:27 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb
# Tue, 12 Mar 2019 00:38:27 GMT
ARG CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55
# Tue, 12 Mar 2019 00:38:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 12 Mar 2019 00:38:28 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 12 Mar 2019 00:39:14 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 12 Mar 2019 00:39:14 GMT
COPY file:c6fd6f453d9002075df56abe0ebaf954000d3da3e4024dae5247722594f1295f in /etc/service/couchbase-server/run 
# Tue, 12 Mar 2019 00:39:15 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN chown -R couchbase:couchbase /etc/service
# Tue, 12 Mar 2019 00:39:15 GMT
COPY file:1302333e9e56b11ae357341056dee0080efda9457b1ce3de1a1ecb6023e760ae in /usr/local/bin/ 
# Tue, 12 Mar 2019 00:39:16 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 12 Mar 2019 00:39:17 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 12 Mar 2019 00:39:17 GMT
COPY file:5b1804ce8aa2d4de6558b1cfeb0d3a7d800c0c5768056b6471846007f864830e in / 
# Tue, 12 Mar 2019 00:39:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Mar 2019 00:39:17 GMT
CMD ["couchbase-server"]
# Tue, 12 Mar 2019 00:39:18 GMT
EXPOSE 11207 11210 11211 18091 18092 18093 18094 18095 18096 8091 8092 8093 8094 8095 8096
# Tue, 12 Mar 2019 00:39:18 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76606e73863ea1972202ba6e3b1e227315d36630ae556307b7ca3fda028dd1ec`  
		Last Modified: Tue, 12 Mar 2019 00:40:15 GMT  
		Size: 14.3 MB (14324476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb291ccb75507b42aeb6d60aa908c01ddebd4375a726a28c28523d023eb6edb`  
		Last Modified: Tue, 12 Mar 2019 00:40:11 GMT  
		Size: 2.1 KB (2073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102f67c2527f8f3dcf197fd7e89c1ed4a9b0290975113bd97ae3d4422bcdade1`  
		Last Modified: Tue, 12 Mar 2019 00:40:57 GMT  
		Size: 410.6 MB (410573887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c028f8166bc250f4f81029ad173f53c432ca29829da88745c1ff1470bc032e5c`  
		Last Modified: Tue, 12 Mar 2019 00:40:11 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b959f5ae89e55f2db0bc9690ead87a71330092ac6577604f895f93131b2e9676`  
		Last Modified: Tue, 12 Mar 2019 00:40:10 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fd5835e06cea634b8fc6702efa08901e5f796103445df790c740b7f18ce18e3`  
		Last Modified: Tue, 12 Mar 2019 00:40:11 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac036c04e8f8e52a4ab63e936ddf333cd941716c94f1c011330d4249b948b17`  
		Last Modified: Tue, 12 Mar 2019 00:40:10 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873be445c478fe74c13cfa0191c9675a11d4f5b5602c267e61178bd69e64a87e`  
		Last Modified: Tue, 12 Mar 2019 00:40:10 GMT  
		Size: 120.6 KB (120597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e3c72507fae8825d790905d504c5f308f832d18cfbe5a34de8655f8d1b3b73`  
		Last Modified: Tue, 12 Mar 2019 00:40:10 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community`

```console
$ docker pull couchbase@sha256:421bc0f857906dd988d4954d9957fe6f631730be0255f4254a498d8a7e8df701
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community` - linux; amd64

```console
$ docker pull couchbase@sha256:64ce2c3ac69049f358714a2a3c78384f9f20e7028b5e9a941e07562091be59e3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.9 MB (198899640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc8fccdd0778885b9234619a784e60c58c9bb649ef7b9060d3ca51e234f0e40`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:37:51 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Tue, 12 Mar 2019 00:38:26 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 12 Mar 2019 00:39:34 GMT
ARG CB_VERSION=6.0.0
# Tue, 12 Mar 2019 00:39:34 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Tue, 12 Mar 2019 00:39:34 GMT
ARG CB_PACKAGE=couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb
# Tue, 12 Mar 2019 00:39:34 GMT
ARG CB_SHA256=949b1ded72776a557b9cd3ac89253a4fe6aed079966a4057c5aec41ae5a30ece
# Tue, 12 Mar 2019 00:39:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 12 Mar 2019 00:39:35 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=949b1ded72776a557b9cd3ac89253a4fe6aed079966a4057c5aec41ae5a30ece CB_VERSION=6.0.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 12 Mar 2019 00:39:56 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=949b1ded72776a557b9cd3ac89253a4fe6aed079966a4057c5aec41ae5a30ece CB_VERSION=6.0.0
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 12 Mar 2019 00:39:56 GMT
COPY file:c6fd6f453d9002075df56abe0ebaf954000d3da3e4024dae5247722594f1295f in /etc/service/couchbase-server/run 
# Tue, 12 Mar 2019 00:39:57 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=949b1ded72776a557b9cd3ac89253a4fe6aed079966a4057c5aec41ae5a30ece CB_VERSION=6.0.0
RUN chown -R couchbase:couchbase /etc/service
# Tue, 12 Mar 2019 00:39:57 GMT
COPY file:1302333e9e56b11ae357341056dee0080efda9457b1ce3de1a1ecb6023e760ae in /usr/local/bin/ 
# Tue, 12 Mar 2019 00:39:58 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=949b1ded72776a557b9cd3ac89253a4fe6aed079966a4057c5aec41ae5a30ece CB_VERSION=6.0.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 12 Mar 2019 00:39:59 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=949b1ded72776a557b9cd3ac89253a4fe6aed079966a4057c5aec41ae5a30ece CB_VERSION=6.0.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 12 Mar 2019 00:39:59 GMT
COPY file:5b1804ce8aa2d4de6558b1cfeb0d3a7d800c0c5768056b6471846007f864830e in / 
# Tue, 12 Mar 2019 00:39:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Mar 2019 00:39:59 GMT
CMD ["couchbase-server"]
# Tue, 12 Mar 2019 00:39:59 GMT
EXPOSE 11207 11210 11211 18091 18092 18093 18094 18095 18096 8091 8092 8093 8094 8095 8096
# Tue, 12 Mar 2019 00:40:00 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76606e73863ea1972202ba6e3b1e227315d36630ae556307b7ca3fda028dd1ec`  
		Last Modified: Tue, 12 Mar 2019 00:40:15 GMT  
		Size: 14.3 MB (14324476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c7f0815449d23eeb6697b050bab55b9cc1285b948a0d00a0ac50e042bfafa9`  
		Last Modified: Tue, 12 Mar 2019 00:41:05 GMT  
		Size: 2.1 KB (2076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4673a8af764345c6516138c049a0f93d385dd1f25dcdc1f2a79dba3b7a72a90`  
		Last Modified: Tue, 12 Mar 2019 00:41:30 GMT  
		Size: 140.9 MB (140887335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd84b0b7d3d786dd55a0f3e6bea3b52fea6098bff18f40e289280be33a8edfdf`  
		Last Modified: Tue, 12 Mar 2019 00:41:05 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41f4be1020d70c91c9ea678cf526633ccf83b166b62af1f230a8eb0e512092cd`  
		Last Modified: Tue, 12 Mar 2019 00:41:04 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4518e7064f00ea78d50492e858f6de54b0ea14923e43638157546e1eea3f996`  
		Last Modified: Tue, 12 Mar 2019 00:41:04 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268845ff98f8c640689e827afa25c6431b8f1236b5f4faa472f0f883fa7e0264`  
		Last Modified: Tue, 12 Mar 2019 00:41:04 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05826b25d123623eef610e061abde0ad55f8b873e647d775b97aa53a6b4fbb1`  
		Last Modified: Tue, 12 Mar 2019 00:41:04 GMT  
		Size: 120.6 KB (120597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba057e3edbe777a5dccfa5ac6f2964fc536400118a3b5c3d7db7cab017e807c7`  
		Last Modified: Tue, 12 Mar 2019 00:41:04 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-6.0.0`

```console
$ docker pull couchbase@sha256:421bc0f857906dd988d4954d9957fe6f631730be0255f4254a498d8a7e8df701
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community-6.0.0` - linux; amd64

```console
$ docker pull couchbase@sha256:64ce2c3ac69049f358714a2a3c78384f9f20e7028b5e9a941e07562091be59e3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.9 MB (198899640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc8fccdd0778885b9234619a784e60c58c9bb649ef7b9060d3ca51e234f0e40`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:37:51 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Tue, 12 Mar 2019 00:38:26 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 12 Mar 2019 00:39:34 GMT
ARG CB_VERSION=6.0.0
# Tue, 12 Mar 2019 00:39:34 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Tue, 12 Mar 2019 00:39:34 GMT
ARG CB_PACKAGE=couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb
# Tue, 12 Mar 2019 00:39:34 GMT
ARG CB_SHA256=949b1ded72776a557b9cd3ac89253a4fe6aed079966a4057c5aec41ae5a30ece
# Tue, 12 Mar 2019 00:39:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 12 Mar 2019 00:39:35 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=949b1ded72776a557b9cd3ac89253a4fe6aed079966a4057c5aec41ae5a30ece CB_VERSION=6.0.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 12 Mar 2019 00:39:56 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=949b1ded72776a557b9cd3ac89253a4fe6aed079966a4057c5aec41ae5a30ece CB_VERSION=6.0.0
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 12 Mar 2019 00:39:56 GMT
COPY file:c6fd6f453d9002075df56abe0ebaf954000d3da3e4024dae5247722594f1295f in /etc/service/couchbase-server/run 
# Tue, 12 Mar 2019 00:39:57 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=949b1ded72776a557b9cd3ac89253a4fe6aed079966a4057c5aec41ae5a30ece CB_VERSION=6.0.0
RUN chown -R couchbase:couchbase /etc/service
# Tue, 12 Mar 2019 00:39:57 GMT
COPY file:1302333e9e56b11ae357341056dee0080efda9457b1ce3de1a1ecb6023e760ae in /usr/local/bin/ 
# Tue, 12 Mar 2019 00:39:58 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=949b1ded72776a557b9cd3ac89253a4fe6aed079966a4057c5aec41ae5a30ece CB_VERSION=6.0.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 12 Mar 2019 00:39:59 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=949b1ded72776a557b9cd3ac89253a4fe6aed079966a4057c5aec41ae5a30ece CB_VERSION=6.0.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 12 Mar 2019 00:39:59 GMT
COPY file:5b1804ce8aa2d4de6558b1cfeb0d3a7d800c0c5768056b6471846007f864830e in / 
# Tue, 12 Mar 2019 00:39:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Mar 2019 00:39:59 GMT
CMD ["couchbase-server"]
# Tue, 12 Mar 2019 00:39:59 GMT
EXPOSE 11207 11210 11211 18091 18092 18093 18094 18095 18096 8091 8092 8093 8094 8095 8096
# Tue, 12 Mar 2019 00:40:00 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76606e73863ea1972202ba6e3b1e227315d36630ae556307b7ca3fda028dd1ec`  
		Last Modified: Tue, 12 Mar 2019 00:40:15 GMT  
		Size: 14.3 MB (14324476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c7f0815449d23eeb6697b050bab55b9cc1285b948a0d00a0ac50e042bfafa9`  
		Last Modified: Tue, 12 Mar 2019 00:41:05 GMT  
		Size: 2.1 KB (2076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4673a8af764345c6516138c049a0f93d385dd1f25dcdc1f2a79dba3b7a72a90`  
		Last Modified: Tue, 12 Mar 2019 00:41:30 GMT  
		Size: 140.9 MB (140887335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd84b0b7d3d786dd55a0f3e6bea3b52fea6098bff18f40e289280be33a8edfdf`  
		Last Modified: Tue, 12 Mar 2019 00:41:05 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41f4be1020d70c91c9ea678cf526633ccf83b166b62af1f230a8eb0e512092cd`  
		Last Modified: Tue, 12 Mar 2019 00:41:04 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4518e7064f00ea78d50492e858f6de54b0ea14923e43638157546e1eea3f996`  
		Last Modified: Tue, 12 Mar 2019 00:41:04 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268845ff98f8c640689e827afa25c6431b8f1236b5f4faa472f0f883fa7e0264`  
		Last Modified: Tue, 12 Mar 2019 00:41:04 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05826b25d123623eef610e061abde0ad55f8b873e647d775b97aa53a6b4fbb1`  
		Last Modified: Tue, 12 Mar 2019 00:41:04 GMT  
		Size: 120.6 KB (120597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba057e3edbe777a5dccfa5ac6f2964fc536400118a3b5c3d7db7cab017e807c7`  
		Last Modified: Tue, 12 Mar 2019 00:41:04 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise`

```console
$ docker pull couchbase@sha256:f540d2acfdf775c5f52babcd09f9c3bf942e65e97e2cc002fdf466421a063336
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise` - linux; amd64

```console
$ docker pull couchbase@sha256:71102739396c21724752a4a9cd9050c5feb33fba5cfa5bfb1469cfa8d9c9c55f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **468.6 MB (468586199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c47613857bec0879639cf53362d26d6f969cadef228ba7044bc039b07514f44c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:37:51 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Tue, 12 Mar 2019 00:38:26 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 12 Mar 2019 00:38:27 GMT
ARG CB_VERSION=6.0.1
# Tue, 12 Mar 2019 00:38:27 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Tue, 12 Mar 2019 00:38:27 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb
# Tue, 12 Mar 2019 00:38:27 GMT
ARG CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55
# Tue, 12 Mar 2019 00:38:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 12 Mar 2019 00:38:28 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 12 Mar 2019 00:39:14 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 12 Mar 2019 00:39:14 GMT
COPY file:c6fd6f453d9002075df56abe0ebaf954000d3da3e4024dae5247722594f1295f in /etc/service/couchbase-server/run 
# Tue, 12 Mar 2019 00:39:15 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN chown -R couchbase:couchbase /etc/service
# Tue, 12 Mar 2019 00:39:15 GMT
COPY file:1302333e9e56b11ae357341056dee0080efda9457b1ce3de1a1ecb6023e760ae in /usr/local/bin/ 
# Tue, 12 Mar 2019 00:39:16 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 12 Mar 2019 00:39:17 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 12 Mar 2019 00:39:17 GMT
COPY file:5b1804ce8aa2d4de6558b1cfeb0d3a7d800c0c5768056b6471846007f864830e in / 
# Tue, 12 Mar 2019 00:39:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Mar 2019 00:39:17 GMT
CMD ["couchbase-server"]
# Tue, 12 Mar 2019 00:39:18 GMT
EXPOSE 11207 11210 11211 18091 18092 18093 18094 18095 18096 8091 8092 8093 8094 8095 8096
# Tue, 12 Mar 2019 00:39:18 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76606e73863ea1972202ba6e3b1e227315d36630ae556307b7ca3fda028dd1ec`  
		Last Modified: Tue, 12 Mar 2019 00:40:15 GMT  
		Size: 14.3 MB (14324476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb291ccb75507b42aeb6d60aa908c01ddebd4375a726a28c28523d023eb6edb`  
		Last Modified: Tue, 12 Mar 2019 00:40:11 GMT  
		Size: 2.1 KB (2073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102f67c2527f8f3dcf197fd7e89c1ed4a9b0290975113bd97ae3d4422bcdade1`  
		Last Modified: Tue, 12 Mar 2019 00:40:57 GMT  
		Size: 410.6 MB (410573887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c028f8166bc250f4f81029ad173f53c432ca29829da88745c1ff1470bc032e5c`  
		Last Modified: Tue, 12 Mar 2019 00:40:11 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b959f5ae89e55f2db0bc9690ead87a71330092ac6577604f895f93131b2e9676`  
		Last Modified: Tue, 12 Mar 2019 00:40:10 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fd5835e06cea634b8fc6702efa08901e5f796103445df790c740b7f18ce18e3`  
		Last Modified: Tue, 12 Mar 2019 00:40:11 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac036c04e8f8e52a4ab63e936ddf333cd941716c94f1c011330d4249b948b17`  
		Last Modified: Tue, 12 Mar 2019 00:40:10 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873be445c478fe74c13cfa0191c9675a11d4f5b5602c267e61178bd69e64a87e`  
		Last Modified: Tue, 12 Mar 2019 00:40:10 GMT  
		Size: 120.6 KB (120597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e3c72507fae8825d790905d504c5f308f832d18cfbe5a34de8655f8d1b3b73`  
		Last Modified: Tue, 12 Mar 2019 00:40:10 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-6.0.1`

```console
$ docker pull couchbase@sha256:f540d2acfdf775c5f52babcd09f9c3bf942e65e97e2cc002fdf466421a063336
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-6.0.1` - linux; amd64

```console
$ docker pull couchbase@sha256:71102739396c21724752a4a9cd9050c5feb33fba5cfa5bfb1469cfa8d9c9c55f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **468.6 MB (468586199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c47613857bec0879639cf53362d26d6f969cadef228ba7044bc039b07514f44c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:37:51 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Tue, 12 Mar 2019 00:38:26 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 12 Mar 2019 00:38:27 GMT
ARG CB_VERSION=6.0.1
# Tue, 12 Mar 2019 00:38:27 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Tue, 12 Mar 2019 00:38:27 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb
# Tue, 12 Mar 2019 00:38:27 GMT
ARG CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55
# Tue, 12 Mar 2019 00:38:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 12 Mar 2019 00:38:28 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 12 Mar 2019 00:39:14 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 12 Mar 2019 00:39:14 GMT
COPY file:c6fd6f453d9002075df56abe0ebaf954000d3da3e4024dae5247722594f1295f in /etc/service/couchbase-server/run 
# Tue, 12 Mar 2019 00:39:15 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN chown -R couchbase:couchbase /etc/service
# Tue, 12 Mar 2019 00:39:15 GMT
COPY file:1302333e9e56b11ae357341056dee0080efda9457b1ce3de1a1ecb6023e760ae in /usr/local/bin/ 
# Tue, 12 Mar 2019 00:39:16 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 12 Mar 2019 00:39:17 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 12 Mar 2019 00:39:17 GMT
COPY file:5b1804ce8aa2d4de6558b1cfeb0d3a7d800c0c5768056b6471846007f864830e in / 
# Tue, 12 Mar 2019 00:39:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Mar 2019 00:39:17 GMT
CMD ["couchbase-server"]
# Tue, 12 Mar 2019 00:39:18 GMT
EXPOSE 11207 11210 11211 18091 18092 18093 18094 18095 18096 8091 8092 8093 8094 8095 8096
# Tue, 12 Mar 2019 00:39:18 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76606e73863ea1972202ba6e3b1e227315d36630ae556307b7ca3fda028dd1ec`  
		Last Modified: Tue, 12 Mar 2019 00:40:15 GMT  
		Size: 14.3 MB (14324476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb291ccb75507b42aeb6d60aa908c01ddebd4375a726a28c28523d023eb6edb`  
		Last Modified: Tue, 12 Mar 2019 00:40:11 GMT  
		Size: 2.1 KB (2073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102f67c2527f8f3dcf197fd7e89c1ed4a9b0290975113bd97ae3d4422bcdade1`  
		Last Modified: Tue, 12 Mar 2019 00:40:57 GMT  
		Size: 410.6 MB (410573887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c028f8166bc250f4f81029ad173f53c432ca29829da88745c1ff1470bc032e5c`  
		Last Modified: Tue, 12 Mar 2019 00:40:11 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b959f5ae89e55f2db0bc9690ead87a71330092ac6577604f895f93131b2e9676`  
		Last Modified: Tue, 12 Mar 2019 00:40:10 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fd5835e06cea634b8fc6702efa08901e5f796103445df790c740b7f18ce18e3`  
		Last Modified: Tue, 12 Mar 2019 00:40:11 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac036c04e8f8e52a4ab63e936ddf333cd941716c94f1c011330d4249b948b17`  
		Last Modified: Tue, 12 Mar 2019 00:40:10 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873be445c478fe74c13cfa0191c9675a11d4f5b5602c267e61178bd69e64a87e`  
		Last Modified: Tue, 12 Mar 2019 00:40:10 GMT  
		Size: 120.6 KB (120597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e3c72507fae8825d790905d504c5f308f832d18cfbe5a34de8655f8d1b3b73`  
		Last Modified: Tue, 12 Mar 2019 00:40:10 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:latest`

```console
$ docker pull couchbase@sha256:f540d2acfdf775c5f52babcd09f9c3bf942e65e97e2cc002fdf466421a063336
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:latest` - linux; amd64

```console
$ docker pull couchbase@sha256:71102739396c21724752a4a9cd9050c5feb33fba5cfa5bfb1469cfa8d9c9c55f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **468.6 MB (468586199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c47613857bec0879639cf53362d26d6f969cadef228ba7044bc039b07514f44c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:37:51 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Tue, 12 Mar 2019 00:38:26 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 12 Mar 2019 00:38:27 GMT
ARG CB_VERSION=6.0.1
# Tue, 12 Mar 2019 00:38:27 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Tue, 12 Mar 2019 00:38:27 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb
# Tue, 12 Mar 2019 00:38:27 GMT
ARG CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55
# Tue, 12 Mar 2019 00:38:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 12 Mar 2019 00:38:28 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 12 Mar 2019 00:39:14 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 12 Mar 2019 00:39:14 GMT
COPY file:c6fd6f453d9002075df56abe0ebaf954000d3da3e4024dae5247722594f1295f in /etc/service/couchbase-server/run 
# Tue, 12 Mar 2019 00:39:15 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN chown -R couchbase:couchbase /etc/service
# Tue, 12 Mar 2019 00:39:15 GMT
COPY file:1302333e9e56b11ae357341056dee0080efda9457b1ce3de1a1ecb6023e760ae in /usr/local/bin/ 
# Tue, 12 Mar 2019 00:39:16 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 12 Mar 2019 00:39:17 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 12 Mar 2019 00:39:17 GMT
COPY file:5b1804ce8aa2d4de6558b1cfeb0d3a7d800c0c5768056b6471846007f864830e in / 
# Tue, 12 Mar 2019 00:39:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Mar 2019 00:39:17 GMT
CMD ["couchbase-server"]
# Tue, 12 Mar 2019 00:39:18 GMT
EXPOSE 11207 11210 11211 18091 18092 18093 18094 18095 18096 8091 8092 8093 8094 8095 8096
# Tue, 12 Mar 2019 00:39:18 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76606e73863ea1972202ba6e3b1e227315d36630ae556307b7ca3fda028dd1ec`  
		Last Modified: Tue, 12 Mar 2019 00:40:15 GMT  
		Size: 14.3 MB (14324476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb291ccb75507b42aeb6d60aa908c01ddebd4375a726a28c28523d023eb6edb`  
		Last Modified: Tue, 12 Mar 2019 00:40:11 GMT  
		Size: 2.1 KB (2073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102f67c2527f8f3dcf197fd7e89c1ed4a9b0290975113bd97ae3d4422bcdade1`  
		Last Modified: Tue, 12 Mar 2019 00:40:57 GMT  
		Size: 410.6 MB (410573887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c028f8166bc250f4f81029ad173f53c432ca29829da88745c1ff1470bc032e5c`  
		Last Modified: Tue, 12 Mar 2019 00:40:11 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b959f5ae89e55f2db0bc9690ead87a71330092ac6577604f895f93131b2e9676`  
		Last Modified: Tue, 12 Mar 2019 00:40:10 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fd5835e06cea634b8fc6702efa08901e5f796103445df790c740b7f18ce18e3`  
		Last Modified: Tue, 12 Mar 2019 00:40:11 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac036c04e8f8e52a4ab63e936ddf333cd941716c94f1c011330d4249b948b17`  
		Last Modified: Tue, 12 Mar 2019 00:40:10 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873be445c478fe74c13cfa0191c9675a11d4f5b5602c267e61178bd69e64a87e`  
		Last Modified: Tue, 12 Mar 2019 00:40:10 GMT  
		Size: 120.6 KB (120597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e3c72507fae8825d790905d504c5f308f832d18cfbe5a34de8655f8d1b3b73`  
		Last Modified: Tue, 12 Mar 2019 00:40:10 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
