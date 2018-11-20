## `buildpack-deps:cosmic`

```console
$ docker pull buildpack-deps@sha256:a3a4812e4341c037d746d262c8ea36feb03252aece56aab1652fd32c1abbb5fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:cosmic` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:413fdb779117af9e75e23de1f9ae8c558c54dd20879b1e5292e734e33dfbbfbb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.5 MB (221537592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dd427c0b0e6a8a2eec26eff8c1f9b590073577f3c3c23725954b300616a83cd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:21:31 GMT
ADD file:8b0da299645551a6820a13690f275011deb115b5211ad37935d5e86d62505054 in / 
# Mon, 19 Nov 2018 21:21:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:21:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:21:45 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:21:45 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:52:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:53:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 19 Nov 2018 21:54:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:57:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5940862bcfcd8fb0162ddb0087994492b39c51bd765a427d13b57f13c7b7a8e0`  
		Last Modified: Mon, 19 Nov 2018 15:04:36 GMT  
		Size: 29.3 MB (29268079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a496d03c4a240fbdc7dffb190703bcd093040d1bf2854b9e7d36e6a2d7f83a26`  
		Last Modified: Mon, 19 Nov 2018 21:25:22 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5e0ccd5d0c52780579e508bbeb75a57ff397a317098b7c3bcf13fc6a67072d`  
		Last Modified: Mon, 19 Nov 2018 21:25:22 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba24b170ddf12284a896354261f6cba112ad54e8e1431ed89537fc55a774dbdc`  
		Last Modified: Mon, 19 Nov 2018 21:25:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e97bba77bd6dbd920af1e0275687d1f705530da959317c3aea6895527b47cd6`  
		Last Modified: Mon, 19 Nov 2018 22:08:23 GMT  
		Size: 6.1 MB (6099427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89940218e727ffbeba9971838db856c86f97d8cdbbe096e69695e31c3448fd50`  
		Last Modified: Mon, 19 Nov 2018 22:08:23 GMT  
		Size: 3.0 MB (2974198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ce2abef17d088c5ccc5891edff86fd8e270e9c5d843eab4a670e052b979773`  
		Last Modified: Mon, 19 Nov 2018 22:09:05 GMT  
		Size: 48.4 MB (48374147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825091504740d83403354da72109850c5d615b3f0eeeb956a90dcf0670cdc593`  
		Last Modified: Mon, 19 Nov 2018 22:10:04 GMT  
		Size: 134.8 MB (134820500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:94b96adcfd1096232fda7208be856598e15cf58ae0e9359689fcace3171ede58
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.0 MB (190990440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4c79025aab5e769d3d6ea802c55dbbc5501e1725a16b47de9bd55bb64fef526`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 19 Oct 2018 12:28:28 GMT
ADD file:1ce3e3a3630e9bb8d2e5c8338543d661ceff2157eed352daa4d470b418948e12 in / 
# Fri, 19 Oct 2018 12:28:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 12:28:31 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:28:33 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 12:28:33 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 13:18:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:18:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 19 Oct 2018 13:19:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:21:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:dc2687bed40a437730d03c02ab085c197bc14b0a4c81adea35f0be040c7d964e`  
		Last Modified: Fri, 19 Oct 2018 12:30:52 GMT  
		Size: 24.7 MB (24700230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5fbcced990272b1acb4feb96edd7adf42272c4c20062f3cee7b04804baa7a98`  
		Last Modified: Fri, 19 Oct 2018 12:30:43 GMT  
		Size: 858.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9d4f42adfe057eab570af75bc5627e26dcdc266cf2262be933d471bd0a8620`  
		Last Modified: Fri, 19 Oct 2018 12:30:43 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdde21967f9ea0cdfcc9449ac885527361b2ae8cb19ea5049ec210a5c6c604ae`  
		Last Modified: Fri, 19 Oct 2018 12:30:43 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41906b183c2a36b35e4985896d623b6506fcaac9dae1e6f3953e864121b97006`  
		Last Modified: Fri, 19 Oct 2018 13:31:23 GMT  
		Size: 5.1 MB (5146418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e6c27e1806ff2b51c64583f9a36010a1788fa73391f6d095e297316f7792755`  
		Last Modified: Fri, 19 Oct 2018 13:31:22 GMT  
		Size: 2.5 MB (2534661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9323a94c76191e5fc29670cc3a709d1e2d3ce357181f00defa834d49f553ddb8`  
		Last Modified: Fri, 19 Oct 2018 13:31:58 GMT  
		Size: 43.5 MB (43496573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94095184765256806e708b9526f3b1f9ae0aa88fc1a07c58e609f900749163b4`  
		Last Modified: Fri, 19 Oct 2018 13:32:44 GMT  
		Size: 115.1 MB (115111302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:88a853c1b2cf7f7c5f0f836559f0beb8d16efea97c330eb23e7cc2b59550b57c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.7 MB (210715213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34e1c55705e2d425c6c5d193cdec5360f94c6078e2195e91d74a8ef42ff970a5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:45 GMT
ADD file:2e283f2e5622f5ce284aaff9ded1cc0c1777bb539ae7e532d8739bdefdc84231 in / 
# Tue, 20 Nov 2018 09:51:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:52 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:34:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:35:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 20 Nov 2018 10:37:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:45:13 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c5ac5bafc40334fa4424e530baeda860040b805c03832986194b1c2f45665eda`  
		Last Modified: Mon, 19 Nov 2018 15:05:03 GMT  
		Size: 27.5 MB (27535169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9ef68ce232124f29985fc803ae0534c49798640704609b6864df84b8393f49`  
		Last Modified: Tue, 20 Nov 2018 09:55:21 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b37b4fe0a4d1797914b8102c8bb8b51cf6f23b779a50dc1d6fbdc0e43d24474`  
		Last Modified: Tue, 20 Nov 2018 09:55:21 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd89d9aa82df465569f20b6d849b914460e6fd797cfe5091845833c7c9e99a7a`  
		Last Modified: Tue, 20 Nov 2018 09:55:21 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8e6657e8985d00d77d2947803fce8fb84ded08fa7837e4c35efe393e92f4403`  
		Last Modified: Tue, 20 Nov 2018 11:09:15 GMT  
		Size: 5.8 MB (5789570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39340e909cb5026ecc3f94938207ef48a0f2cf35bd221bbdca146525b9e41905`  
		Last Modified: Tue, 20 Nov 2018 11:09:14 GMT  
		Size: 2.9 MB (2943048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b201ace75700e5ac4100d721780904599aad4aaa139e2ea7260c0aa461d7b74f`  
		Last Modified: Tue, 20 Nov 2018 11:09:55 GMT  
		Size: 48.2 MB (48180243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fcefd9aa27cdc947c3276658f7489ff05d751dae01a64b92848fe03a705d77`  
		Last Modified: Tue, 20 Nov 2018 11:11:05 GMT  
		Size: 126.3 MB (126265948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic` - linux; 386

```console
$ docker pull buildpack-deps@sha256:895fcb571e6343430318e15847fd58007cdbbc7ef57b63f665bfacfb48a40214
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.0 MB (226005810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c82d331838960704d73353c87c0c3f4e53ac3d3f275ee19d5dfdccafe4d5bc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 12:18:09 GMT
ADD file:fb4f8ab2d5aab05fd02e28c8643a5308d66d962f4b4564f248237af2f8fee182 in / 
# Tue, 20 Nov 2018 12:18:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 12:18:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:18:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 12:18:12 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:52:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:52:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 20 Nov 2018 12:53:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:55:44 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e22ab2ead15f7ddf167f98db8140dfb9f074318a48ba8429199912b57363c0a1`  
		Last Modified: Mon, 19 Nov 2018 15:04:43 GMT  
		Size: 29.7 MB (29682871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f02356e0c2fc295a77e39f3d7f718c5aa6408afead84eee7e8c670f109d240`  
		Last Modified: Tue, 20 Nov 2018 12:21:23 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbae203df6d0893a49b1a6ddf1ef353ac1645c058392d948d3059b735284a2be`  
		Last Modified: Tue, 20 Nov 2018 12:21:23 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0bb96b4e7538aaf2cf274d3d83d4afc745a1a4043971f88ee41bf9030ff9cd5`  
		Last Modified: Tue, 20 Nov 2018 12:21:23 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad9372f2d93f4a9da2e04511641b202e1d587f26e9bb40adb104d197f8b02c0`  
		Last Modified: Tue, 20 Nov 2018 13:06:43 GMT  
		Size: 6.4 MB (6374636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48117ed36ac2ae999e4df2fab55338c92e07ca05e96eda95aa9aab8ea3f5a770`  
		Last Modified: Tue, 20 Nov 2018 13:06:42 GMT  
		Size: 3.2 MB (3204429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18ee230adb401b8a6a24eacae0d17121904c898eb99b7f54e7f8a1b170548b9`  
		Last Modified: Tue, 20 Nov 2018 13:07:28 GMT  
		Size: 49.7 MB (49677612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18056c0fd47882bc687c72d92908e8a3876fff46b5ca1bbd32ee0d83f33204ae`  
		Last Modified: Tue, 20 Nov 2018 13:08:33 GMT  
		Size: 137.1 MB (137065025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:a8516cf23a70e3756b52b6b788200f5cc9034e822215a10b2455ec921dba46d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.2 MB (248222000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:099400f484c9110b7de6b0c99e2cd8e987860313e9421e1f024bde17cd8bb602`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:27:11 GMT
ADD file:5653bd408806fd1977714c3105369f22eb750444e414f8f0d9c97ded61e5cafa in / 
# Tue, 20 Nov 2018 09:27:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:27:15 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:27:18 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:27:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:20:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:20:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 20 Nov 2018 10:22:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:34:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:44ad39f4f7a6a976d49fe3348dc061b74b1c236b9a450a732ea512451be4c8ae`  
		Last Modified: Tue, 20 Nov 2018 09:48:41 GMT  
		Size: 34.1 MB (34074209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d98053878298f82781eed4c29d362e963fcdf0ceb1b13a1e5cff1f9622d7504`  
		Last Modified: Tue, 20 Nov 2018 09:48:23 GMT  
		Size: 869.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:950413b3fbdce84c0b8daaad7b5891016354168adfdbe547ce92d2fb6fdb8fc7`  
		Last Modified: Tue, 20 Nov 2018 09:48:23 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc79b373be2b4db5bdbce50c554315fef4f3e60be4d5c4251314932e9875889`  
		Last Modified: Tue, 20 Nov 2018 09:48:23 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195bebf2de6c230e5a9c34588c2b86e11db6ee9e7c14946c6d686fd44292cd80`  
		Last Modified: Tue, 20 Nov 2018 11:08:09 GMT  
		Size: 6.8 MB (6792867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3733e1773e3365316b6907c93e4b1db01b646b037cc197f9a3fea8a90a57ba8`  
		Last Modified: Tue, 20 Nov 2018 11:08:06 GMT  
		Size: 3.8 MB (3756810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286823fa719269d440b3c4b1de3bccfd8045b186c4c30889b3a294d7fa6a9be6`  
		Last Modified: Tue, 20 Nov 2018 11:09:20 GMT  
		Size: 57.1 MB (57109098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b247a1b6caeb8f2a807acacd255dce472dff14e470fc0b296ca61ae036d1b3f6`  
		Last Modified: Tue, 20 Nov 2018 11:11:20 GMT  
		Size: 146.5 MB (146487748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:045b10f50a3ec3bf8e334692b7d5cc241b69cfdee1b7724b327f956055d17a91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.0 MB (206036739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99b28f0dd6911976ccf20dc14c43b3b22897dd879a1c7c906e41bf8b578e85fb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:10:24 GMT
ADD file:c043ca16892c02942adccf1ec94033caf833747e055729e57401b50c738648e1 in / 
# Tue, 20 Nov 2018 13:10:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:10:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:10:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:10:28 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:32:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:32:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 20 Nov 2018 13:33:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:34:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:df57303b2a98d18cb5f5f3399b58559d5feaaaa055254b9782abc86e26a775df`  
		Last Modified: Mon, 19 Nov 2018 15:06:33 GMT  
		Size: 27.7 MB (27686987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1550a3b2d521dcebd8645edded3c8724ea98162ce339e2f1ea07b69cb543056b`  
		Last Modified: Tue, 20 Nov 2018 13:12:24 GMT  
		Size: 864.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32816c65bc70aa930d937c606b52dacb4ff53e319dece98727022f275363147`  
		Last Modified: Tue, 20 Nov 2018 13:12:24 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24fce80ceafb95a74a53b09becd4fd3ab609dd68b17862c531bd0dab6a5585f`  
		Last Modified: Tue, 20 Nov 2018 13:12:24 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8306aee50f07544f99456b8700a5201bc33fb1ae1755975a1a48a4c13e350a94`  
		Last Modified: Tue, 20 Nov 2018 13:38:14 GMT  
		Size: 5.8 MB (5767969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf639c4b4dbfa887ae00410b95bd4847edb19fa38b77345aef27c162557b17e2`  
		Last Modified: Tue, 20 Nov 2018 13:38:14 GMT  
		Size: 2.9 MB (2914387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcb17f4f925c490bbc4a685e6f192bf52c58e7949bc02ed225010d330c1b9f79`  
		Last Modified: Tue, 20 Nov 2018 13:38:36 GMT  
		Size: 47.8 MB (47762579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780e27be6d76dd0c09e295315a7420c1b343a60d046ddc8f32b8f71a84f4e05c`  
		Last Modified: Tue, 20 Nov 2018 13:39:11 GMT  
		Size: 121.9 MB (121903581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
