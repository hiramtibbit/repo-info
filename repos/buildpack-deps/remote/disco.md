## `buildpack-deps:disco`

```console
$ docker pull buildpack-deps@sha256:cc3ac7038977af3649876c9f8fa5454ae3667b211bf35e10559152d2a3a0310f
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
$ docker pull buildpack-deps@sha256:aa7091193dc405c16f00a49cfe6d36d9cb4387ebc1a6f2b30b5b9506204ee929
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.0 MB (235993366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b86b9d28f1d629bb5a893e8eb078910b7e566e5b570bbb294387c42c0ee1dc85`
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
# Wed, 06 Feb 2019 05:41:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
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
	-	`sha256:0d53aad21d485afbbdb1ce13ac132f202698f92cc2d1b3c2b3498283d7b19810`  
		Last Modified: Wed, 06 Feb 2019 05:59:58 GMT  
		Size: 144.9 MB (144874152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:9c426e7078ab0e79b399199e013788552ebeb0b0f025e8da1b64e5b226429d07
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.5 MB (193534889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:064453735ba38c7c7c0b3988f7178837514844bba2172d1562383eacdcb2493d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 23 Jan 2019 12:59:15 GMT
ADD file:471cd2f4e793d53fb4404c7971d45b667b9ec27bf95d0161a0a78b2c1b7234ef in / 
# Wed, 23 Jan 2019 12:59:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:59:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:59:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:59:23 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:30:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:31:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:33:55 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d52c3a0d49142e9ac5191fe029321c0fe33e153c0cf40386158659c71553b388`  
		Last Modified: Wed, 23 Jan 2019 13:01:54 GMT  
		Size: 25.0 MB (24974250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7380a8e1ad2b13cf16168a1c9ee9f395394875da856a261c4bc0d2b0d1a1fd8`  
		Last Modified: Wed, 23 Jan 2019 13:01:48 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93912c1b43e36cb712a08dcbb502c4667ad4c9d0e182875de9fa35782b77bf18`  
		Last Modified: Wed, 23 Jan 2019 13:01:48 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5541ce3a09889ab7dd08f9c72f30cff9bfd5dce1598f2bd081b53f0290a0932`  
		Last Modified: Wed, 23 Jan 2019 13:01:48 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfdaf13d9761ef080ca0304e3d6ed80f0399a7c495a3b883628c3cbc8076f9c1`  
		Last Modified: Wed, 23 Jan 2019 14:01:48 GMT  
		Size: 5.2 MB (5239991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d5940d00a35cb809cf6fb08145dbb122cd10517c16c68a767532ad5e5dbf3e0`  
		Last Modified: Wed, 23 Jan 2019 14:01:48 GMT  
		Size: 2.5 MB (2531909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3b02ecc6d0337f04cbca47a5dcc75f2db9abbe73f3e727cfde4d9f0e045b320`  
		Last Modified: Wed, 23 Jan 2019 14:02:16 GMT  
		Size: 43.7 MB (43702516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f15b0a7cef3f44e575d183e6b134bef747ddf7d8362d86df95b4cc0ebf81fdd`  
		Last Modified: Wed, 23 Jan 2019 14:02:59 GMT  
		Size: 117.1 MB (117084976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:99e2be808011a6bcd5ec006d91a2ef1054b7ae16fafb13796a95e5c39bad69a8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.9 MB (228946064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c05379f4f0a1bdfb8e1e39c9b3bc83ef7c2e5486fe4c1addbeb81682b148a3da`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:07:16 GMT
ADD file:7bddbcfde2712b195f7b29919253202cd8b86ed3b822f0e41bdcce5681c50566 in / 
# Wed, 23 Jan 2019 10:07:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:07:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:07:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:07:26 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 10:12:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:13:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 10:14:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:25:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:23161dfa9a67096ae0bae97eced0e687b416fa390c9510633be248bb01882fee`  
		Last Modified: Wed, 23 Jan 2019 10:10:32 GMT  
		Size: 28.0 MB (27955896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0ad28aa04a826bee2bb0fed4884eb9e7684f661ba9172a28fa7b57f966b1dc`  
		Last Modified: Wed, 23 Jan 2019 10:10:22 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab439b030de103a3d43703194fe2347f22d3e943a67363a77771fd134821027d`  
		Last Modified: Wed, 23 Jan 2019 10:10:22 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3844f59ed18e50d46a5acda75001527aa215116c1cad21fb9039ece1c783a143`  
		Last Modified: Wed, 23 Jan 2019 10:10:22 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbd3cb72cdd86853b1ff2cae8863eaae3af27cd3e868e51ba91901a61dfaf1a0`  
		Last Modified: Wed, 06 Feb 2019 11:12:22 GMT  
		Size: 6.5 MB (6527315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9856196072cef33ec562bf6ef2e2050e80abc887c671d43482667bb6ec9ed4`  
		Last Modified: Wed, 06 Feb 2019 11:12:20 GMT  
		Size: 3.7 MB (3738142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e88f230743be706bc2657e85b30b9b109231e5656097112242735d3585a210`  
		Last Modified: Wed, 06 Feb 2019 11:14:19 GMT  
		Size: 51.4 MB (51377650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77d19485b6ca203fe1778faf589cf233337e0a7cd47210a3f9101c566b41fc7`  
		Last Modified: Wed, 06 Feb 2019 11:16:46 GMT  
		Size: 139.3 MB (139345843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco` - linux; 386

```console
$ docker pull buildpack-deps@sha256:a95985f705c0e44e8477ed496b795b02d85ab677afcdb2f4da91f8bcdf71b9de
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.1 MB (240133259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a95ce00b2f3f80b1a7e65393b50a9eab59dddaeb7512b25662799319b9ca655b`
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
# Thu, 07 Feb 2019 01:33:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
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
	-	`sha256:cf91215b5ecbe7184d251bea3396be040dcb6645967071eba672e1aef78903ef`  
		Last Modified: Thu, 07 Feb 2019 02:00:39 GMT  
		Size: 146.3 MB (146293789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:f7a03ecfd23c96fc2f1099c9a8ad5f1de19ffb59bc46d571abf95217a0962f2b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.1 MB (267126269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:160b820e9342b7f10484cefc12d0eeac4428c00e3afb3ba3cde65b13ee48e583`
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
# Wed, 06 Feb 2019 18:57:13 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
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
	-	`sha256:eb6e9fba739b0c3e2fc01337b6a7ded249c8540b32368578e7771555e076e250`  
		Last Modified: Wed, 06 Feb 2019 19:25:47 GMT  
		Size: 160.1 MB (160137056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:25a830d29c11151b0229f530a38b13cd45f29428391c642c5b7e1386cab9ecee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.8 MB (219770505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f6bea0eb62467b238d3df3bc865692d1a36e42dfe3ed45232e2b8c3606a5ddf`
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
# Wed, 06 Feb 2019 15:26:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
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
	-	`sha256:d17299930c2a666a7f8df32f2e94de9257df38637eb5f28ac5b0f1b086c8f4f9`  
		Last Modified: Wed, 06 Feb 2019 15:33:18 GMT  
		Size: 131.0 MB (131024452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
