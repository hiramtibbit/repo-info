## `buildpack-deps:disco`

```console
$ docker pull buildpack-deps@sha256:ce041bdc2dc0e933a4b1cc68043bd348914bfef3fa63e57ce2398a94fb7a0efb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:disco` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:2601753312839f96a34f2a2a318006fae0b6426d8056bbad7d21858f9e8c2463
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238617696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d54d38cbdb98cbf1a7f1ee85a6792f659a9827a263fa542e26518037000971e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:38:09 GMT
ADD file:d1913f33c701cbb9d7c04d0b77842e4bed9b710cefdd7134db60bf52c19b3936 in / 
# Wed, 06 Feb 2019 03:38:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:38:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:38:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:38:12 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 05:37:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:37:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 05:38:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 01:30:55 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:311f739cf765a852fae2e17cf19fd7217531c3ef15353269024a910995ec0791`  
		Last Modified: Wed, 06 Feb 2019 03:39:01 GMT  
		Size: 29.8 MB (29808039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2062ff08c7fb52855c43eeb0cf2f31bf7f6922b06deeb4b4cf0c05555e1a2213`  
		Last Modified: Wed, 06 Feb 2019 03:38:56 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9284f431651ef5d48fc959f151d631bd7b35954d98365a2df298d8182beba13a`  
		Last Modified: Wed, 06 Feb 2019 03:38:55 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92a507bf7ffc004d4f7b6a940ebef83b7d5594e198bc995a9a112aa072e68b9`  
		Last Modified: Wed, 06 Feb 2019 03:38:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d7c2c812227d9f3f1cd8327deff63724714bf5014218d0c4a581af376acd3e`  
		Last Modified: Wed, 06 Feb 2019 05:59:09 GMT  
		Size: 6.7 MB (6653693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81eacb9d379dedcbdf7a252d11f677e906759a3dd4da4031f28c6cff12503ccb`  
		Last Modified: Wed, 06 Feb 2019 05:59:08 GMT  
		Size: 3.5 MB (3511057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0361a25c3ef3d75a0279893f3db944b074b3674df409d31a8ebf864a8e34466b`  
		Last Modified: Wed, 06 Feb 2019 05:59:25 GMT  
		Size: 51.1 MB (51145191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53587580f1ca19feadb8e4e568313832450f17125333ffc47e37c361b4ec491`  
		Last Modified: Sat, 02 Mar 2019 01:50:42 GMT  
		Size: 147.5 MB (147498482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:5a46e1dba20e547000e0a340f98903147282e811eead8dfee13fc1a4a9154a1b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.1 MB (205051388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfd527791fe4a00ad65c7ed45e8b22997536edb75a040171b7af907409ab13d8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 07 Feb 2019 14:57:24 GMT
ADD file:bb30ec0af781b45a3f5b96b25a4d70ef264d41f759f1605a705e94ccbf695eda in / 
# Thu, 07 Feb 2019 14:57:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 07 Feb 2019 14:57:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 14:57:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 07 Feb 2019 14:57:30 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 15:25:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:25:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 15:26:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 13:08:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:600eb1441d5bb529506e69067c9b0b7737a77f9947a20fba9ed3137c4bba596c`  
		Last Modified: Thu, 07 Feb 2019 14:59:10 GMT  
		Size: 25.2 MB (25228214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023c86d39a689e69962bad754da791a62dafe45d69fc5a54e72c72b1909f8267`  
		Last Modified: Thu, 07 Feb 2019 14:59:04 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f40cfb5120233188214daf75651a9b3d9a68d5f72dd8e63a01bcc6e3a41d95`  
		Last Modified: Thu, 07 Feb 2019 14:59:04 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0562bb71c14fe18b3a1d3f4e877fc87e2e565f5a8b3b005fb277d49f9d35a037`  
		Last Modified: Thu, 07 Feb 2019 14:59:04 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aeee51a6a621d346b3e1af5d8eb3b8ae92049d14af50e788c7a46d23a53f98c`  
		Last Modified: Thu, 07 Feb 2019 15:48:10 GMT  
		Size: 5.6 MB (5627110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7fc7de9ce17682e25426d9bb74f88f8c42dc73c9e5daa20ec064252275e83c`  
		Last Modified: Thu, 07 Feb 2019 15:48:08 GMT  
		Size: 3.0 MB (2975039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad42c9f0063370059f95e315802abee06ae270b72e178ed3c71d3d19844f81e0`  
		Last Modified: Thu, 07 Feb 2019 15:48:32 GMT  
		Size: 46.5 MB (46487563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b240264480085bb636266a0ed0023dd31d2d4e03489dca793935e73b358121`  
		Last Modified: Sat, 02 Mar 2019 13:25:27 GMT  
		Size: 124.7 MB (124732203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:e51bd21f9ea1a7345ff047a96ea66bb31ad2c654c7cadb1b20166c9b494819c8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229703585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42426338d3eb23e2cbcda11a1baa44847243bba1df2d7530500aac6c4e5f5857`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Feb 2019 19:17:06 GMT
ADD file:0c02a858df6308396dcfa844ba6dc59d3b6eb1775863020051161fe92a8c1e53 in / 
# Wed, 06 Feb 2019 19:17:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:17:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:17:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:17:17 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 03:42:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 03:42:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 03:45:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 10:29:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f2822db590de32fc353a528c4fc51c099782fdf80a8c8fab3207c39f91fcae02`  
		Last Modified: Wed, 06 Feb 2019 19:19:13 GMT  
		Size: 28.3 MB (28338150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ef541c33a05a64322753a12b5d0451637156c3738e101f4c26c8317b833483`  
		Last Modified: Wed, 06 Feb 2019 19:19:02 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d9eaf1e5e7893a4b56fed32a39f7765f080f91528d7fc651b4b5edc83fbc0d`  
		Last Modified: Wed, 06 Feb 2019 19:19:03 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4caccbf0a153e2c200de6b5f177ecc8fd92cd0892bc3ab2046f2c9ca0a97ab`  
		Last Modified: Wed, 06 Feb 2019 19:19:02 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85cbd21bd212029cc8dcd798225407262c33f6749e4b4ae0581a71b81724ae8b`  
		Last Modified: Thu, 07 Feb 2019 03:59:14 GMT  
		Size: 6.5 MB (6524366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fd97e9ab0ac002e193e8f9b2cc1105273a8c2658868d0f5133629b65996d92`  
		Last Modified: Thu, 07 Feb 2019 03:59:12 GMT  
		Size: 3.5 MB (3504901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4268177df69661005f3f76d97156c0de67ad6cd63fdb2bbb3d53ae9763fbe4`  
		Last Modified: Thu, 07 Feb 2019 03:59:45 GMT  
		Size: 51.4 MB (51376137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ece2b694269df82dd97e0a2534ed236752103e51f3854be93be2b03e8c63a1`  
		Last Modified: Sat, 02 Mar 2019 11:15:56 GMT  
		Size: 140.0 MB (139958797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco` - linux; 386

```console
$ docker pull buildpack-deps@sha256:edf08129cad074c7f224b6415de035584f0a58419622cf932e8d1d1279ff5441
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.9 MB (242921883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dec64b4887532c5e01e29c5877dcef2761224127e6b49287ff8d549e2518f84`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 07 Feb 2019 00:49:32 GMT
ADD file:b129ed53d83b299e95ecb9f43a11e815e047344c466888768ad01b7cd51a414e in / 
# Thu, 07 Feb 2019 00:49:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 07 Feb 2019 00:49:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 00:49:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 07 Feb 2019 00:49:34 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 01:29:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:30:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 01:31:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 11:46:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:02964b128234e98232949f14e8bb4d547cdae3b41b26a785c218695488321c0d`  
		Last Modified: Thu, 07 Feb 2019 00:50:27 GMT  
		Size: 30.3 MB (30266576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19545875a0d110e579baf09a54e0ef2784afac93dfe046b8a070997fed335d94`  
		Last Modified: Thu, 07 Feb 2019 00:50:20 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3b5c451a43715f81bb4a9977c444e9627b349dd160bf278c4eb93b080b146ed`  
		Last Modified: Thu, 07 Feb 2019 00:50:20 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3df3330f96dff1ebeaa18368e76658fda7bd33666e70cb18290663c0c647bf5`  
		Last Modified: Thu, 07 Feb 2019 00:50:20 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7e835e2e11bf357f597cea71e12304e2bc63e9c6cffde199f39941097f6bbb`  
		Last Modified: Thu, 07 Feb 2019 01:59:33 GMT  
		Size: 7.0 MB (6964380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d664b727e475264d7ee7f7853ff43f419d92357ac1a78012ee96dc8477eb94`  
		Last Modified: Thu, 07 Feb 2019 01:59:32 GMT  
		Size: 3.8 MB (3804144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9b6c6d83ae762b5eed695309b76d7bf89f7e6ca3b9beb2ec95b3613cb1c7ea`  
		Last Modified: Thu, 07 Feb 2019 01:59:57 GMT  
		Size: 52.8 MB (52803142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:652636f9d1e5eb038f21088a5e36eea6e9488f4ab4e278a838d43216de1a0309`  
		Last Modified: Sat, 02 Mar 2019 12:04:22 GMT  
		Size: 149.1 MB (149082413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:6e93edb9a229047a61f05f286b0fc5e06a35e4e6afef0e81d622a5c32681077b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.1 MB (270089280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3977dc716a181cae9c404aca82d26d49187e33670b0908653ee1504f684a2b8d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Feb 2019 15:42:02 GMT
ADD file:e5ccf01188cf6dcc68077f8b53c249ce0fff58d0d5bc610c271b5fbc6ebafad7 in / 
# Wed, 06 Feb 2019 15:42:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 15:42:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:42:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 15:42:28 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 18:47:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 18:47:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 18:50:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 09:56:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:68b107ae0f9a189cf67f2300ba5cbb4fc66f273026b15b61f5f34d9026f3be5b`  
		Last Modified: Wed, 06 Feb 2019 15:44:15 GMT  
		Size: 34.9 MB (34859943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2862cdb21e6569c8f3332e60ac58b6dce77b31ac54b8e60ab4e2fd34b39c33b3`  
		Last Modified: Wed, 06 Feb 2019 15:44:07 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4ce9f928bf4d1efb7e09e2a9dd0ba512be622a0361218defad41ca8890bf5f`  
		Last Modified: Wed, 06 Feb 2019 15:44:07 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b8ad09ee4798ed359734a7923c18af87af18561240af4a29bfeb5cd62e75dc`  
		Last Modified: Wed, 06 Feb 2019 15:44:07 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbebab16417945262264296e5f63b70f4e93a5569a41c50f821010e64df2dd5a`  
		Last Modified: Wed, 06 Feb 2019 19:24:09 GMT  
		Size: 7.6 MB (7605885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e580a8b9e347d8922b6aa6e3016f07151ab6459cf920b12eba66e37fef75abcd`  
		Last Modified: Wed, 06 Feb 2019 19:24:08 GMT  
		Size: 4.5 MB (4460441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5211996f6a7d65e1aded2c8d518dcf6f2f9ee80c668f17d7f2a498805dccfd65`  
		Last Modified: Wed, 06 Feb 2019 19:24:39 GMT  
		Size: 60.1 MB (60061681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68d1c7de8eb411f6d340604edf65589c62f84e0935e90cc7b0541fd7db85b034`  
		Last Modified: Sat, 02 Mar 2019 10:40:19 GMT  
		Size: 163.1 MB (163100067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:a438b1ef0279d715576ab3931653d7b5ff3e62009d2559d2e311b372f1e8b537
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.2 MB (222202111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9880330093bda43d2cdf456896c9d184098771f07fc30753077ab494d2d4ef57`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Feb 2019 15:15:20 GMT
ADD file:caeae918cdd434a009d231e24aa17075feb4ed9c1cc4aa28df5c728320ef41d8 in / 
# Wed, 06 Feb 2019 15:15:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 15:15:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:15:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 15:15:22 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 15:25:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:25:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 15:25:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 12:46:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:db7a192bbac64a3731a9883cd0e4c8a691b644366a7fda48b4357304e77bb72c`  
		Last Modified: Wed, 06 Feb 2019 15:16:09 GMT  
		Size: 28.3 MB (28292593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b85163d33b010baf1c67ea97a20f006806226ebd7ee406f1ae38c6e985d7f28`  
		Last Modified: Wed, 06 Feb 2019 15:16:00 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83991a8d1881639c7c58ba7436b9926830143083c70ffde2d273ed9cbc6ebb95`  
		Last Modified: Wed, 06 Feb 2019 15:16:01 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da534afccca292e26ae51dd4e7473405d87560c73063b978f20ad3edfd066e2`  
		Last Modified: Wed, 06 Feb 2019 15:16:01 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:301872adb70e3f13d9c54a9c8e9462c74a064edbc74d564dd30781926faf055c`  
		Last Modified: Wed, 06 Feb 2019 15:32:36 GMT  
		Size: 6.2 MB (6212451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d161bfe4a8929dbe193db0ab4afa984e0110adb65b236ae36e7faa84400dbb1`  
		Last Modified: Wed, 06 Feb 2019 15:32:36 GMT  
		Size: 3.4 MB (3428128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a5120b54628b66b80976a0f3ff2c3b36f7ff33bfb6bfdc8514effd9a4d91451`  
		Last Modified: Wed, 06 Feb 2019 15:32:50 GMT  
		Size: 50.8 MB (50811651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef5e47ce35cee605deb69d0ff980f9bea0e6a3106628e891702d92ac058a059`  
		Last Modified: Sat, 02 Mar 2019 12:53:26 GMT  
		Size: 133.5 MB (133456058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
