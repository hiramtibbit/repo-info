## `buildpack-deps:bionic`

```console
$ docker pull buildpack-deps@sha256:5f91a3dfd4057110674f31a380508789febb6d4545a44c5f342332f225f25b82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `buildpack-deps:bionic` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:db7a855ca2d5ea89e483f0cb664ed105c6a6b1d84c941a08d98901941c14024b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.0 MB (220010776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca8bfba0efb47d561339157c87e816e22b18c1a0fec5f70144285298ad0cc10f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 26 Jul 2018 22:20:44 GMT
ADD file:4bb62bb05874068552efeb626f8b31b4a29f26d6cc8c7d7fc7ab4c1fdece957a in / 
# Thu, 26 Jul 2018 22:20:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:20:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:20:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:20:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:20:48 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 22:57:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:58:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 26 Jul 2018 22:59:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:03:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c64513b741452f95d8a147b69c30f403f6289542dd7b2b51dd8ba0cb35d0e08b`  
		Last Modified: Thu, 26 Jul 2018 22:23:51 GMT  
		Size: 31.7 MB (31658876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b8b12bad90b51d9f15dd4b63103ea6221b339ac3b3e75807c963e678f28624`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d85cf7a05fec99bb829db84dc5a21cc0aca569253f45d1ea10ca9e8a03fa9a`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b268720157210d21bbe49f6112f815774e6d2a6144b14911749fadfdb034f0`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12192999ff18f01315563c63333d7c1059cd8e64dffe75fffe504b95eeb093c`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a4f0bdec9121ade8fc26abd9ad5355c37f3e827222e5a6321df4c831bfb946`  
		Last Modified: Thu, 26 Jul 2018 23:15:51 GMT  
		Size: 5.8 MB (5825945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24abc576625303fca43d2234287939860435ca3d399a60985452c4778d3a3a59`  
		Last Modified: Thu, 26 Jul 2018 23:15:50 GMT  
		Size: 3.0 MB (2958462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46832c93f97d2f4fa3c853237ca0568b6aff43646e63cd3b8896fc13034ea653`  
		Last Modified: Thu, 26 Jul 2018 23:17:11 GMT  
		Size: 48.1 MB (48060250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c41ab885eab6c8907c3018ec44f94d7477bdcfc23738446f88c5750514a2bae`  
		Last Modified: Thu, 26 Jul 2018 23:18:37 GMT  
		Size: 131.5 MB (131504916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:bf19e403e80ddd0841ec8053adcc44c04d0abf0a5603e258b5068b2c172e803b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.3 MB (190336503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:942679d63b262640260475304775d1d01f043470445e0bdcdbb978e37e1550e3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 13:21:57 GMT
ADD file:aeb281d640e05709f27a7bd05b850d1f13602ab63c3182df6ecbd72a215caa59 in / 
# Tue, 17 Jul 2018 13:21:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 13:22:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:22:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 13:22:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 13:22:03 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 13:30:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:30:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 13:31:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:32:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d81ad7e8dedca0217770c02345ac2ec31105eb6a716cb40340365bf3303958ba`  
		Last Modified: Tue, 17 Jul 2018 13:24:44 GMT  
		Size: 26.9 MB (26937866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc32849e56f09e1df99922dbe9a1dc567c3ca76ce4e1d62125e8777bc177ec6b`  
		Last Modified: Tue, 17 Jul 2018 13:24:37 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1a7c883e79bb9ad4f98b1fb3a1328496596cafd31e38da455f4f7a8c72cde7`  
		Last Modified: Tue, 17 Jul 2018 13:24:37 GMT  
		Size: 458.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f11fb189b434d1140a14208c8be40006d7095eed8b33992ae39f66cb4fe79fc`  
		Last Modified: Tue, 17 Jul 2018 13:24:37 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa5deb5232bd1ced8a51793e85d06e1977d36b1773586481c081af034e7adf6`  
		Last Modified: Tue, 17 Jul 2018 13:24:37 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d997519d52d1fc8609c0a9334da19c22755c2a9a8fe9c650690557dedd090138`  
		Last Modified: Tue, 17 Jul 2018 14:00:27 GMT  
		Size: 4.9 MB (4921461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe4aac2fcc97033cfcd42364f8f9fa33e0041cf9be1236d5ddbaff1a5dccd2c3`  
		Last Modified: Tue, 17 Jul 2018 14:00:26 GMT  
		Size: 2.5 MB (2520387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd229ea5c27ef367c78decdb8130e316dacd3bbda21e59f5b56e0ac463bfefb`  
		Last Modified: Tue, 17 Jul 2018 14:00:59 GMT  
		Size: 43.3 MB (43272166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445065c5385f32d15742c23354c63b00ec51db51b3128359961b4a0f20fb2d2f`  
		Last Modified: Tue, 17 Jul 2018 14:01:50 GMT  
		Size: 112.7 MB (112682282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:61e3a73dc3a1f18065141bbe64485f41af80507aa91d7b5bf4a8dd5b19a39794
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.3 MB (204327451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68d76a2e97284eb4684f90d8fcfdad9e0fd3699aa881d16c47605c7a931f30a5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:36:07 GMT
ADD file:e621379575a99de6e4ba37f4ae8dcc55df1c97a6400433124a2f19acb114dbd6 in / 
# Wed, 06 Jun 2018 09:36:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:36:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:36:13 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:36:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:36:16 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:21:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:21:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 10:23:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:31:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7832065b5d3446538e5ba50643be10e4c34b9e75f5a8b8df1358f999c7cd8424`  
		Last Modified: Mon, 28 May 2018 14:51:36 GMT  
		Size: 28.2 MB (28183155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e785b4ce40b0aea87739098d0012769178d94f1719637b68f9933a4f933c5d0c`  
		Last Modified: Wed, 06 Jun 2018 09:39:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1dddf51db09b762e68bab7662fa89879e6824075d6da9703eef3455e70a7f2`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66d20b2cdc45a149d7a54e6e605aabb6214e4811b6b0973649b36bc6e670621`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029aeb777c3f3fd5e77c8685eab4ce0f485d581b8359bcd0ada43b8eb8239453`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f081bee1c57849840ce0c8e23f9c624c491be3e2db34900a1f3c887dfef8651d`  
		Last Modified: Wed, 06 Jun 2018 10:58:09 GMT  
		Size: 5.3 MB (5285582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df74182c9423c94503d6d0f624d6f9ff382e20b45aa8114ceb3ff08e00d8594`  
		Last Modified: Wed, 06 Jun 2018 10:58:08 GMT  
		Size: 2.7 MB (2718116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a82519bd4f315d4a5039442f1ac53dd79b81a099798bcf0ca17106026658f131`  
		Last Modified: Wed, 06 Jun 2018 10:58:54 GMT  
		Size: 45.9 MB (45865893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848775b382318ba2273e0cf31069b8fbabb5d8926c7d151f93db4ed916e66a26`  
		Last Modified: Wed, 06 Jun 2018 11:00:06 GMT  
		Size: 122.3 MB (122272386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic` - linux; 386

```console
$ docker pull buildpack-deps@sha256:8e81736e29bffc4106ab82485a22c6d91d8942e6a883648799039e8d57b94f7c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.1 MB (224073808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1509594444dee9f39442202235271bc82fe0e8cd52ee1e7e169f0b120500b580`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:32:43 GMT
ADD file:91b8efd11811cc1350deed86bf1b596184849e7c9d0d571626e85ba5414abe16 in / 
# Tue, 17 Jul 2018 12:32:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 12:32:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:32:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 12:32:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 12:32:50 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 14:07:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:08:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:09:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:13:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9dd9643b519fc2fa2e9d18f89795f7eef2880b22601d4b06efef181160fc2e67`  
		Last Modified: Tue, 17 Jul 2018 12:36:00 GMT  
		Size: 31.9 MB (31864174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a12d7acfc4f3890e0c68de6b8dba6eb738e45e7a591f26869c05accc3ac18ba`  
		Last Modified: Tue, 17 Jul 2018 12:35:50 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1162f4bba59b57d2902fb207fed7bf71e8823dcac713d502890264f3872ca104`  
		Last Modified: Tue, 17 Jul 2018 12:35:50 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac8ff944b15a693011c2f14d971119a5686f9f78fbace70c1dfeb3cc9c278aa`  
		Last Modified: Tue, 17 Jul 2018 12:35:50 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab68d6d682511e89c3a3db660591b758e98fe70c36f90371a517ecc0dea26ece`  
		Last Modified: Tue, 17 Jul 2018 12:35:50 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4f299c1d76ab7a257e04555ddfc570e11c70360ed4f41845c22c346c1d806e`  
		Last Modified: Tue, 17 Jul 2018 15:00:17 GMT  
		Size: 6.1 MB (6102821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920a54992c5e8f46a5582e2e424be207b1ff3ea792e080f043e50312c273be55`  
		Last Modified: Tue, 17 Jul 2018 15:00:15 GMT  
		Size: 3.2 MB (3189526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f30906da4c351eb825b67c287bac6f86a6480483ba17500168cdb252063204`  
		Last Modified: Tue, 17 Jul 2018 15:01:08 GMT  
		Size: 49.7 MB (49660885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2cccd70f0fb65352881c71f2c4e0c42a364fc5c6970bd0296777f714ceb18da`  
		Last Modified: Tue, 17 Jul 2018 15:02:20 GMT  
		Size: 133.3 MB (133254070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:03378a484e0b2d1624ad585d0cea4110c5ca7e3017888ab827329f0812d617d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.9 MB (240893997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7495cad50ff08279d3b338c11072b90bdacd291018810c80288f821dead919eb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 11:21:44 GMT
ADD file:760e84797c21d62195e5690c1ac346e0e012c83d721b1d57365c8531c5aeef19 in / 
# Tue, 17 Jul 2018 11:21:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:21:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:21:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:21:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:22:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 12:17:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:18:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 12:19:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:28:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b9db97d251a21578f4739c155135fdef255851bf71e1d236ff50b36395f3bea6`  
		Last Modified: Tue, 17 Jul 2018 11:26:41 GMT  
		Size: 35.0 MB (35027327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958de27a231af36a292b67ccfc87cb18744f2c595e56bc130648e9a75fa398d7`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1dfbb3bcf01c584e01e3930c499e3495a1e246e5c28920885ee817a8ac18dfe`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914ba5689e73232ad03c695c45009a0bdb6bf16a1cfaeb6be99090a6a3eedc9f`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4d7ce343a96e76f3439c99dbd68ec93effecba6635e0577e140c0fa36580cc`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f4ac497a6e7270f4549dd291fa7f11e58ee5e02864de043ebfb48259e71710`  
		Last Modified: Tue, 17 Jul 2018 14:04:30 GMT  
		Size: 6.0 MB (6015582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4958e3b4e7ad48b56ca90038a3fb4c5bfd53b304d151515929b9e8674da741ca`  
		Last Modified: Tue, 17 Jul 2018 14:04:29 GMT  
		Size: 3.7 MB (3656260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da2018abcef0c1e53422bfbe861137fac8e1bb9d42ba70fb89c980140796c68`  
		Last Modified: Tue, 17 Jul 2018 14:05:46 GMT  
		Size: 56.3 MB (56314839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:600cd8c0f211b830e694e7a7d24229a22e760c8a95c49b7a4111d6272ce4feee`  
		Last Modified: Tue, 17 Jul 2018 14:07:14 GMT  
		Size: 139.9 MB (139877564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
