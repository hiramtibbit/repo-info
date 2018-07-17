## `buildpack-deps:trusty`

```console
$ docker pull buildpack-deps@sha256:881b8e1df79c13338ea0176c4983a69bce7cc732d8093a26b17b42e750d5063c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `buildpack-deps:trusty` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:b282c600025d1f1fe94db50252024ede4d25fa3315637cc6514fee4cd0e4c197
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.1 MB (208121251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dadb55f5a5a9e3b204472c9a1517f79566fe7f16de685ce6e3ad75695e39485`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:53:22 GMT
ADD file:2b307231ea5854129fb2b708dc49d44d30c66023186d861778defb768aa3a8a8 in / 
# Tue, 17 Jul 2018 00:53:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:53:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:53:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:53:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:53:26 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 03:17:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:17:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:18:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:22:13 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8284e13a281d55cc734a66ada0b6cabef2447ce16e91ce96317eca132253f734`  
		Last Modified: Tue, 17 Jul 2018 00:58:36 GMT  
		Size: 67.1 MB (67127095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e1916a92974ed667a04ce36771ef2599e58e2e3b118375e19a8af98c6fa3b2`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4102fc66d4abcb83d0739b402e2fd6e9a884d75ad9cbada70bc9286d58d97abf`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf2b01777b2f9a1c015cc2b7c39b9916de816806c3eee2d1b6cd63757868451`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7a2d5e04ed4e9237521229a3e7837dc552b4e1157b79c02c2fecbc14003032`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa431ed54cb397d7d1cbdafeaecb8b6207fb81ee0ff58086b41c2dead37762a4`  
		Last Modified: Tue, 17 Jul 2018 03:58:10 GMT  
		Size: 4.7 MB (4658057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147caa65eebd289df52485731adbe63658e6d23d478b175ab9bc7f6ef4e574e6`  
		Last Modified: Tue, 17 Jul 2018 03:58:58 GMT  
		Size: 29.6 MB (29594864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2faf0cf5c10237611e2f63cb7bd3380209013d991766e82a0629771650250d`  
		Last Modified: Tue, 17 Jul 2018 04:00:22 GMT  
		Size: 106.7 MB (106667208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:768cc6b1624bcf8226f19af4300c3ac09a8eb07828594e0016e564599d9be376
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.4 MB (184433211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:199dd0ee3e95cbd31b9cda22ca7885cb45f165667c85f31bb9235fff891a2dd3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Jun 2018 12:17:53 GMT
ADD file:ac8ca37fe002d36588135c52914d0e873f023304fcb1b47f7cd43cdcd1b5e739 in / 
# Wed, 06 Jun 2018 12:17:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 12:18:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:18:21 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 12:18:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 12:18:33 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 12:49:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:49:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 12:50:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:52:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a30a59c90cf5f1388a00b51a3d23ddc16caa9c69e4ccdfe20c339f555200d7b8`  
		Last Modified: Wed, 06 Jun 2018 12:24:47 GMT  
		Size: 66.6 MB (66616443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9577dd729eef380b01a939d575992a253b32c24d06bd2657d6731b821a05bbbe`  
		Last Modified: Wed, 06 Jun 2018 12:24:26 GMT  
		Size: 76.8 KB (76771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ea885f62bfc3a25b62aba8b22616a9f6e24be0e25c61c27be6a14349628742`  
		Last Modified: Wed, 06 Jun 2018 12:24:25 GMT  
		Size: 623.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56d65a7e4b20d6421645d73bbb6d9955c6303520c419bf96a172bbd655fe1eb4`  
		Last Modified: Wed, 06 Jun 2018 12:24:26 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3376a28fb8bdb3774a3ee95597905c5653e6ed5ac716fc66061eac3c31f9939a`  
		Last Modified: Wed, 06 Jun 2018 12:24:25 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae13157227a06b48cc43e18e258d69bd5c469ecdba9fff8367e0574ae26f59d`  
		Last Modified: Wed, 06 Jun 2018 13:00:09 GMT  
		Size: 4.2 MB (4246244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc1a1ad5dfc03d80fed9cf26b6a3ea0f7c63635a7442634fefb4e977c25ac68`  
		Last Modified: Wed, 06 Jun 2018 13:00:46 GMT  
		Size: 27.1 MB (27098705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e419b3c0e5501bb03da06480262740b9ef10b3e54367b29f884b1bb0d8b4dc5`  
		Last Modified: Wed, 06 Jun 2018 13:01:37 GMT  
		Size: 86.4 MB (86393387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:29080b96a02c510a1cced402b74798bce14da44783b54eb64a69be43425bc7de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.9 MB (188917283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49b71d2af03c987f6873745ff3c1a0482e5a86d8581d45e0f4b5cac70e188cd3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:37:41 GMT
ADD file:58644b9406fa8846b011736297a46d266e3dfd698c9ee201171f498ebff2f792 in / 
# Wed, 06 Jun 2018 09:37:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:37:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:37:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:37:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:37:52 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:33:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 10:34:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:42:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:451064406810418f1ad28a7437b9d4b7c7c88cd199e42a8c3c817700f7ebdf7d`  
		Last Modified: Mon, 04 Jun 2018 14:58:47 GMT  
		Size: 67.9 MB (67878962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1925cfc3c30798b008d103f4b4b7d2dbaf1bf8c8bd325b1bccde3cdb95f1afe`  
		Last Modified: Wed, 06 Jun 2018 09:42:07 GMT  
		Size: 59.1 KB (59091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2c4c5b773fca4eb071dd6bd5a3c3ae68c80f9c09076daa64ccd5cc240dca232`  
		Last Modified: Wed, 06 Jun 2018 09:42:07 GMT  
		Size: 624.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f94b68a328882603719ab4d69815aa23e0db6af9de2b0d8e68bbcfbfcdaf370`  
		Last Modified: Wed, 06 Jun 2018 09:42:06 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f14c24f5f30f6704bd754cf98b8bc75049949af390c9e9ad06a7e8ae76aba977`  
		Last Modified: Wed, 06 Jun 2018 09:42:06 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:818d48b492269b452b404a845c6b0af7da861cf6ea46ca1a4c841218ca8a8bb6`  
		Last Modified: Wed, 06 Jun 2018 11:01:05 GMT  
		Size: 4.4 MB (4371205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19b2480ae5393da39a90e0d9b71cb40f1ca15812dec1f77154f200e7305337c`  
		Last Modified: Wed, 06 Jun 2018 11:01:44 GMT  
		Size: 28.0 MB (28012288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce382ba5ab9b993f6323fb9ba568973dcd762963217cf2cb3c9d37efaa1c5a98`  
		Last Modified: Wed, 06 Jun 2018 11:02:45 GMT  
		Size: 88.6 MB (88594095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty` - linux; 386

```console
$ docker pull buildpack-deps@sha256:b03fb9e7d6a4d72ea6e8a7c76c31d3ec40e9f50c489d1dc79116aaa492ec30c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.3 MB (208277063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfb526331dfba8f85a1a04d9470858c0fd481d167fd9b7ab36a541043f74d8b9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Jun 2018 10:49:08 GMT
ADD file:7a6ffc7c1131e4cd604a36ab3c5dd5a96937c81d8ec93652ff3e97be20fa6e25 in / 
# Wed, 06 Jun 2018 10:49:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 10:49:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:49:11 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 10:49:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 10:49:12 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 11:46:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:46:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 11:47:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:53:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5915f918d2a683a74cec1b2717cec778a1876d6f0ee6b139aaaf2a571982da17`  
		Last Modified: Mon, 04 Jun 2018 14:58:24 GMT  
		Size: 70.5 MB (70505083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4631453627bded1ce386a778b31ad02578e213d72e330961852133ceea6c97`  
		Last Modified: Wed, 06 Jun 2018 10:51:59 GMT  
		Size: 64.9 KB (64861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c710f737cc220b54a7d1cba94eeb7c57231a6f775cc5219bac6f5f5855eb3c9f`  
		Last Modified: Wed, 06 Jun 2018 10:51:59 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d360df8048bb9d57854dc6ede8a66cdc037e2d7f69edb89782b90a2fb4ea9c7c`  
		Last Modified: Wed, 06 Jun 2018 10:51:58 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d985a4e4740316e47a7e6db4a4aad6f18e26d6326d56c2bcb6660fc4292470`  
		Last Modified: Wed, 06 Jun 2018 10:51:59 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9cdc38c68b3d7316ae00a1a38d540be1f1f610ed6c56ca1e33668d53ffe69c5`  
		Last Modified: Wed, 06 Jun 2018 12:20:59 GMT  
		Size: 4.6 MB (4645033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9125719f2a88ef95f4768fb020428178470a51ad2a633f918f2e29e2138067c0`  
		Last Modified: Wed, 06 Jun 2018 12:21:30 GMT  
		Size: 29.2 MB (29212124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e254e3c06c4d3045e80a8b5dbf0feba188af36b2ac51a8b69452548547c8e8bb`  
		Last Modified: Wed, 06 Jun 2018 12:22:35 GMT  
		Size: 103.8 MB (103848350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:0151ac7a1e4be1e80a14768643f7aaeb258792cac88083528d3e5116de83cb34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.3 MB (214348054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfce94f77f8669d0395386c84418838ed034972f05952b2a8e445586fb7f8c84`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:06:29 GMT
ADD file:31dfcc762afa52dd9caf11263487e785648a799a9de240d943a2e09e304a8d3f in / 
# Wed, 06 Jun 2018 09:06:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:06:43 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:06:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:06:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:06:51 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:19:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:20:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 10:21:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:31:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2832536012adfbf2de1fda98af576ec05129646e346f309ad1614903d5aa34b9`  
		Last Modified: Wed, 06 Jun 2018 09:10:17 GMT  
		Size: 74.6 MB (74573277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e07ba2d193a87b16958220883346e6f24f0ef0010974f201f56e5229645d9f2`  
		Last Modified: Wed, 06 Jun 2018 09:09:56 GMT  
		Size: 63.4 KB (63421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0700f77b760a0d0bb29f323d0949ffab70d47a9e916d538874a52740c305cb8`  
		Last Modified: Wed, 06 Jun 2018 09:09:56 GMT  
		Size: 658.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c66be20050456076e41857732de9b7cb19a9048067977e3141b0e0f7091501a`  
		Last Modified: Wed, 06 Jun 2018 09:09:56 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d3408adfa00c8129d1089e348883ca8328c1d942d0a86851e51b20a9f5b7dbd`  
		Last Modified: Wed, 06 Jun 2018 09:09:56 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826cbd1ffad69a01ba9af006fb52e37689de76ccc8edeadd4da2836baf75a36f`  
		Last Modified: Wed, 06 Jun 2018 10:48:33 GMT  
		Size: 4.7 MB (4713303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:950b39a7e00f2c03de87ef2d30339ff1d0ba66dbb9f8920aa2c1888500167e88`  
		Last Modified: Wed, 06 Jun 2018 10:49:03 GMT  
		Size: 32.0 MB (32040993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2cc155e815d6ca71ab7696f1ef93519a9f1f91096e03e04762e21744df69d5b`  
		Last Modified: Wed, 06 Jun 2018 10:49:52 GMT  
		Size: 103.0 MB (102955358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
