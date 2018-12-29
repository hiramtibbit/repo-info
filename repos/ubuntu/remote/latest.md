## `ubuntu:latest`

```console
$ docker pull ubuntu@sha256:ac3d800fcc6d7d8b40df1a658acc22deb1385fa302badfade8d6402bf272b9d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:latest` - linux; amd64

```console
$ docker pull ubuntu@sha256:cef0c2cde57a973ed80513a7d3614bc654d9d6becad2c068c9328b41bb3f6713
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32176210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d9c17228a9e80a0a23927f24f3cf17d012cf0bb3eae5e3541a8c6987ab9bd5a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:22:55 GMT
ADD file:c0f17c7189fc11b6a1d525e9fcff842b93bfaae92e5b91cb9a76aa867792756d in / 
# Fri, 28 Dec 2018 23:22:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:22:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:22:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:22:57 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:84ed7d2f608f8a65d944b40132a0333069302d24e9e51a6d6b338888e8fd0a6b`  
		Last Modified: Thu, 06 Dec 2018 08:24:38 GMT  
		Size: 32.2 MB (32174695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2bf1c4a48dae92d5a1b8aa319c8767fa491316fb80da52de80378264599a16`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bdc630309340a3154f37e17c00a61c28c476107656e8d6744d2ba9af980058`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9055237d68d011bb90d49096b637b3b6c5c7251f52e0f2a2a44148aec1181dc`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:latest` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:0983e7459521b1c099379d7a4457cd2b47737884beac64c004183e7fa6208fb7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27457210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7d691f1c05eec9437edf127444c3e110bde04bec260d63ec1262d96064b94fe`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:05:44 GMT
ADD file:0b53ffb024f9f01a10ebb0831142ae3450b661e3757c4936ede7f6a748150a7f in / 
# Tue, 20 Nov 2018 13:05:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:05:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:05:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:05:49 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:0a8b647e51f44dcf9d7ed02148cb87c5db06d6b413002d6ce14abec615c17120`  
		Last Modified: Tue, 20 Nov 2018 13:08:37 GMT  
		Size: 27.5 MB (27455618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a571fde31afa3e43991a1defe06c7840e3b4cc7f4cfcb0fce9709b98bebe8e75`  
		Last Modified: Tue, 20 Nov 2018 13:08:30 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4cf04bb04adf18110128c75166262590b366904c597c9b1636add316731388`  
		Last Modified: Tue, 20 Nov 2018 13:08:30 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf40350077702ab5d298adacee052b0f95372f4f2924dc16daeaf802c34108d2`  
		Last Modified: Tue, 20 Nov 2018 13:08:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:latest` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:d0955b39e27c8a99d4df14508a02bec95921b99e05a62b84cdf7e550998a3019
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.9 MB (28943867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ba4c3afb404ebae851cabaee89f92a00d614ffc3851268d3d10076bf8e30ffd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:10:02 GMT
ADD file:afc5edd7ca04112762b95f27d248d0332cf6a91c59d905995515f35caf9b3d8b in / 
# Sat, 29 Dec 2018 10:10:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:10:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:10:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:10:27 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:df1ba8568c1c37591ee9da550c96037520aa40640e4d811ea4a9ff448180b921`  
		Last Modified: Fri, 07 Dec 2018 23:46:22 GMT  
		Size: 28.9 MB (28942366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2f986b8a2715a54b27ed07fedc48acb6e87810ca9a1ab7b501b10c0ab4ae6b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ccfecef86fe20c786d8cd1e358bd0ac7e8d3eb5a1e9d8adc5f942376d3f35d`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1595dd5aa204fc90df29a0011cd42441562b947a9f99136fb1122d75f67220b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:latest` - linux; 386

```console
$ docker pull ubuntu@sha256:ec1b0f76a5a0c469146b2c5cf97f775f9d302be8394027c1bc48a71d5cd5570f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32399020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f030ee48e66172a66b56d4d31bfedf9107edd8845e6d3e44a0a5e3995f4306ba`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 12:17:34 GMT
ADD file:fb5ff1a058c3ac0492501460e6b62b990eaf0d1c0e02f55c7b932357c77c905f in / 
# Tue, 20 Nov 2018 12:17:34 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 12:17:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:17:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 12:17:36 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ced748eb2618c61b0e0c22c218afd0e793f2e9835aca1064ba3f12b25ad4bd01`  
		Last Modified: Mon, 19 Nov 2018 15:02:53 GMT  
		Size: 32.4 MB (32397519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b5754584ea8031191f8ba0c4cc57500c2ad54e29e00bd9d1ec986b984dbd2f`  
		Last Modified: Tue, 20 Nov 2018 12:20:23 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27f0603ab52e6e54db3e62aa71b52c7bfef6bddec67ac81015bac4ec8f7755e`  
		Last Modified: Tue, 20 Nov 2018 12:20:23 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2203731033493453b67a8e8c11129caa7410219e8ca1f067136a67250b7bcfa3`  
		Last Modified: Tue, 20 Nov 2018 12:20:24 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:latest` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:7b72fe578536a75386fcd22ac13876faecb1065a4188da7b7637f7e69a6a955c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35579483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a5ff0e3bcba5352f7b7ec5f2a834b29ffd929d3f6e92d27f7732a5e0b66c683`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:19:49 GMT
ADD file:2f7d4925b6f29bd394177409470782d016fa0c701e67fd7575b766cfe9a7a314 in / 
# Sat, 29 Dec 2018 09:20:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 09:20:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 09:20:10 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 09:20:11 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:8a2e3bd685111d9fd9ff5103b98851c63f5ac27755cda3a620650d307f51acbc`  
		Last Modified: Sat, 29 Dec 2018 09:24:13 GMT  
		Size: 35.6 MB (35577936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d59b4496758026b6655feff28311bfad7a5a4e056cf04738b85c373ac3700f`  
		Last Modified: Sat, 29 Dec 2018 09:23:54 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334893f342cee2de852d5650f102147e51472225eb12c885c9356de040bf925d`  
		Last Modified: Sat, 29 Dec 2018 09:23:54 GMT  
		Size: 504.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21954f557f789c43b3ca88db52beb9080db054e5cfa547731ac1fe5e8ec13652`  
		Last Modified: Sat, 29 Dec 2018 09:23:54 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:latest` - linux; s390x

```console
$ docker pull ubuntu@sha256:e3be8d290ae20ba436cb8f74db98b95e6239d30e2cea03b136edd303aebe02b5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30456862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab1104b4c252d8dd71fbbded7aa7f68c2e8856fab1bc246491f0e7f03b9c9db0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:10:00 GMT
ADD file:b4966d1cbe3e1b94ada34ee2e60e72320d82fa6c7744534021079daf988524fa in / 
# Tue, 20 Nov 2018 13:10:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:10:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:10:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:10:04 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:122ea77df7d8773a21fec7904fdd564c38b0902cc0130c94d55395b8b4fabbfb`  
		Last Modified: Mon, 19 Nov 2018 15:04:58 GMT  
		Size: 30.5 MB (30455296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e535a91ef482181ddb0f5394f0d84ba43571063a3b47b29989878e25ba840ed`  
		Last Modified: Tue, 20 Nov 2018 13:11:47 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7459d8266fcaf6df3f836b1994e60374b38649371a9451366e8d14588a03cd`  
		Last Modified: Tue, 20 Nov 2018 13:11:47 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f88e1404f4c1d2fa53e72ab13e0df90d762fa8974e639d510aab780c8cc567d`  
		Last Modified: Tue, 20 Nov 2018 13:11:47 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
