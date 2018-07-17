## `buildpack-deps:artful`

```console
$ docker pull buildpack-deps@sha256:9297dfb40fe9dbd9591128d115256b0c406dce245a54e8f1f723dd2ff4eca053
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:artful` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:68b99799e3db597e7ea35f5be696db415e8ce178a06cec808da3a47b0615f1c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.3 MB (263265948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:538c441f13ecb0b29b17a8d328fb2c04212cc75c9996efd80ec1b124a45fc55b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:51:43 GMT
ADD file:d3d5130b8f7f795c053d60902a67257290e689a661581dd3e63e52931b2d835e in / 
# Tue, 17 Jul 2018 00:51:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:51:45 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:51:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:51:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:51:47 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 02:42:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 02:42:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 02:43:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 02:48:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4ccdce43d1e00fd03ac5438d39e731c16db3dfcf03c68390884b8e8c814221ca`  
		Last Modified: Mon, 09 Jul 2018 14:53:17 GMT  
		Size: 40.8 MB (40789477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95f13c88d926e6181e0594f76953a14ab80ce002fc6dbc968084a7e18aaafe9`  
		Last Modified: Tue, 17 Jul 2018 00:54:34 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82656eee95ad054e0aa75486e7c55b7666c26abbd9bf19373dd349f6e172ce9d`  
		Last Modified: Tue, 17 Jul 2018 00:54:37 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ff727be57a68299558bb40b737669ca5cb9a8db948411d852ec809c14e7a1f`  
		Last Modified: Tue, 17 Jul 2018 00:54:34 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448bb314afa553bfb1578121328bbe92d2b5ca0f411967e7a0a200f672ade92f`  
		Last Modified: Tue, 17 Jul 2018 00:54:35 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5385822d13da4858fc337a2977cb55db7590f4cb898a1c02086e23fee86ce5`  
		Last Modified: Tue, 17 Jul 2018 03:33:11 GMT  
		Size: 6.1 MB (6065572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f408ef01287ccbc19922997eed4c744d6b5d1bbc39933f6beda364cc076077`  
		Last Modified: Tue, 17 Jul 2018 03:34:09 GMT  
		Size: 45.8 MB (45760305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63314e962953b7c89dcc6835b4041ecdfc4e9cf954d3d13ce1684897a3ac9da0`  
		Last Modified: Tue, 17 Jul 2018 03:35:52 GMT  
		Size: 170.6 MB (170648120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:8a3e5ff8723a88a54daa4dd008bf61b79cf05e6a9301cecd1d6251c748c391e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233651064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:403154cfcfa9c61a67c62b55722642d9963c3077f56a88cf1ca958b7163d9e50`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 13:21:27 GMT
ADD file:a4dc99411ab860d329eab0274053cd2fbe7c42c472f8a63467b5d5f771e48634 in / 
# Tue, 17 Jul 2018 13:21:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 13:21:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:21:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 13:21:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 13:21:33 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 13:28:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:28:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 13:28:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:30:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:806d9892b0b77043e6019471e61b20ca7de7d33c54841abbcb5a4e9123edbc99`  
		Last Modified: Tue, 17 Jul 2018 13:24:09 GMT  
		Size: 36.3 MB (36283365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7f8d3c7de4d035216ab5b8f9d69cbbd09f06b9d1fb06113f55bd89670fe4648`  
		Last Modified: Tue, 17 Jul 2018 13:24:00 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b47d15749e065d0a65f47b434f099fb66423d2022038bc03b966496fba41dd`  
		Last Modified: Tue, 17 Jul 2018 13:23:59 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88159cf8386473438935404ae3388b2c64e93f596b56be73b3e4f15b3ffdc46f`  
		Last Modified: Tue, 17 Jul 2018 13:23:59 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315f43869bb429b821bb0f509894fc274eec98cc92e100582e7e6056f467374b`  
		Last Modified: Tue, 17 Jul 2018 13:23:59 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b10d88caedc401a08dbe4d187960973c8a88b581f28c851ff400617b46558e5`  
		Last Modified: Tue, 17 Jul 2018 13:58:23 GMT  
		Size: 5.1 MB (5110704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1dac95f5ab569ede22c70a7f81407d0875fe3874ae1a4d038bfc7ce02e78dc6`  
		Last Modified: Tue, 17 Jul 2018 13:58:56 GMT  
		Size: 41.9 MB (41867277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57abf24e0d4ca963888733b727555b9ccabb0c9c6554603029955aee23386448`  
		Last Modified: Tue, 17 Jul 2018 13:59:56 GMT  
		Size: 150.4 MB (150387225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:63f29a2b352d740f23edcc64a7222e4b86839ee5d3907d47ba607e51b571e78b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247317136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be06abbe97e15df1e2c8fa4bb8256079d12d33e9426fc1de56af9b34a77d3eb8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:35:28 GMT
ADD file:5d8ebb8e5cf137700cbe3aa15a561d3ecd29771c954a19b9ac8ed18df4f97188 in / 
# Wed, 06 Jun 2018 09:35:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:35:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:35:36 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:35:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:35:38 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:09:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:09:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 10:10:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:20:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0f2da3426de2504346508a957d14f1e51e309d37bf4ce6d88346ed79e94b2499`  
		Last Modified: Mon, 28 May 2018 14:49:41 GMT  
		Size: 37.5 MB (37541116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053f35d1230b5c79c468ad9d5b9a7e8926322de47a0052b26b9b07416bb2b533`  
		Last Modified: Wed, 06 Jun 2018 09:39:04 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b323aa331d9163a64a91ee196928ddf931b161aaa7d91d53da804bffc70e8e`  
		Last Modified: Wed, 06 Jun 2018 09:39:04 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c49a475637d84aa7ba0b46fa62260510674c19a1652caceae9bb95929c0431`  
		Last Modified: Wed, 06 Jun 2018 09:39:04 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891e25a061a6e7e5e5ede6bc616521250369a8bb67e7c103caed0abade4fb3ab`  
		Last Modified: Wed, 06 Jun 2018 09:39:04 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a3b39d0ab1bda151a3768a7093d6ac121e130a1375bf4a4f7f7c5d58bda616`  
		Last Modified: Wed, 06 Jun 2018 10:55:25 GMT  
		Size: 5.3 MB (5345248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:200d69e8d421e8bda441f45d8f3d3aba8708a8879982a582dafc4f603dd8426e`  
		Last Modified: Wed, 06 Jun 2018 10:56:10 GMT  
		Size: 44.0 MB (43978823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4432d41515340a5047f1fbc0c50af865f610db871149d8b2e1e895cdbd7f5f`  
		Last Modified: Wed, 06 Jun 2018 10:57:37 GMT  
		Size: 160.4 MB (160449552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful` - linux; 386

```console
$ docker pull buildpack-deps@sha256:4606039e490c6270eca6c391e29b7c7623bbe6da8af263ddebf8260dabb7eb83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265623014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:665f5cb0f803f3edfec450107f67c346846c7d0d7ffbfe250b35e05f758f64bc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:31:58 GMT
ADD file:62f81af90da068b714e333fdddccef66810c674c87f2ec5944f178b614349946 in / 
# Tue, 17 Jul 2018 12:32:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 12:32:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:32:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 12:32:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 12:32:13 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 14:01:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:01:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:02:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:06:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9106a110de6d68f7d431f06eb86c1156a1ceb044bf0737e9ddf5dad64bebb9e6`  
		Last Modified: Mon, 09 Jul 2018 14:53:17 GMT  
		Size: 41.6 MB (41578224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c55a98a6f7f19fac47090023a15cd7332ce549c5225fab33986109da366aa6b`  
		Last Modified: Tue, 17 Jul 2018 12:35:05 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e304870486cf62a01306ca30f002c46fa09b537514095a07b64536c3ae54e70`  
		Last Modified: Tue, 17 Jul 2018 12:35:05 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf61281e020a706741e3190d6efe3531ea73cb2255cb80babd8ff75755ef8a55`  
		Last Modified: Tue, 17 Jul 2018 12:35:05 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2b22e8324b83233e8072bed0aa24cdd91cae34a65184fd5bc408eba006b146`  
		Last Modified: Tue, 17 Jul 2018 12:35:05 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7364e4aba9a6591c6c3e93eaebb0758e9d8b2285fe7dc3df2db22a022271b176`  
		Last Modified: Tue, 17 Jul 2018 14:56:43 GMT  
		Size: 6.1 MB (6123995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:564c5537bc2aa9684d1ba1485abcbb515b1dabea5dc5b382ea29bbebf15598d6`  
		Last Modified: Tue, 17 Jul 2018 14:57:42 GMT  
		Size: 47.4 MB (47367073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89804f3eda7d106ca03e10eb454bdc375081a459658c950e0553d137fa723ec9`  
		Last Modified: Tue, 17 Jul 2018 14:59:38 GMT  
		Size: 170.6 MB (170551286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:1c1003526229e1398f17b2470083a1ad20c0b88dfba134830a354fcc6b5325d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.2 MB (284202142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddf8cf91c56ec94696f00200112e7aa24fc837eb7015ed3964a5eae7cdb32aed`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 11:21:04 GMT
ADD file:d572c5a0ba1a128fb877701ec29b9c121b3e78f1f68cb120b94063206d227155 in / 
# Tue, 17 Jul 2018 11:21:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:21:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:21:17 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:21:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:21:23 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 12:02:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:02:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 12:04:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:15:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c3cef7a7aa54d1727c33401e33c754d1d07f46b4b5092728a1a4f7bf0a2a729e`  
		Last Modified: Tue, 17 Jul 2018 11:26:03 GMT  
		Size: 44.0 MB (44018002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cbf0d1d81270f780bdda5da8e541f8c0460582f2f4344b3336886e30462385e`  
		Last Modified: Tue, 17 Jul 2018 11:25:49 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b5d7d7519b4e5b7431ebd1fff28268f34bf21e41956c30b7c10d97276364ac3`  
		Last Modified: Tue, 17 Jul 2018 11:25:50 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855c347561ac326d81b656a7c12c2e1fec85465a4dc776525fbfb1ebbb76f186`  
		Last Modified: Tue, 17 Jul 2018 11:25:50 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1530a7444ce228086b8a964321f845858db2172e9a37d0f0384b3a25e9262b`  
		Last Modified: Tue, 17 Jul 2018 11:25:50 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19be11bb25fad7859e9b7cf1b324fecbea1cd7618ef441fa376d74ab2fdc12e`  
		Last Modified: Tue, 17 Jul 2018 14:00:07 GMT  
		Size: 6.1 MB (6143137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ab8dec6845c418402e3fee6fa0646728ed11298d60a0de9023c29aaa4380dd`  
		Last Modified: Tue, 17 Jul 2018 14:01:31 GMT  
		Size: 53.3 MB (53318200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f68dcb2a1f99f99e505ab834c759490b97d95a9d1bd76104636ac4444de422`  
		Last Modified: Tue, 17 Jul 2018 14:03:59 GMT  
		Size: 180.7 MB (180720334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:14226386a22f06d911374a2371c3218a271e488fa6ff7be04d6ae8b8f99391b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.0 MB (248982468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:162cca61dd52a8de635855d4e33f0023f4387236c166b0af43203a4fd931b760`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 13:07:18 GMT
ADD file:28cd3b8f5dc13d74ef72b48d980fefdc325c0ede386ec8a4d23e2ce24ddf2144 in / 
# Tue, 17 Jul 2018 13:07:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 13:07:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:07:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 13:07:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 13:07:21 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 13:10:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:10:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 13:11:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:12:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:99671ea34968efb1695cfcf50f341d8d93f3d967ed97658e62324266dd92be00`  
		Last Modified: Mon, 09 Jul 2018 14:55:12 GMT  
		Size: 39.4 MB (39410975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9d284847f2f5a37e0b104a7b7b43e563231d007e65462b8e99f847ba8f288f7`  
		Last Modified: Tue, 17 Jul 2018 13:08:39 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba18b28295235e05464d864cd05f45f22aab283b7ba81e94499611c0d8a95b45`  
		Last Modified: Tue, 17 Jul 2018 13:08:35 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f145a944924141fc9b10b7cdee1e65e6c9119a58b0cc94fba5bea80ba0d62e`  
		Last Modified: Tue, 17 Jul 2018 13:08:35 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5620ca5fe741f11331d5629edf2fbab68b8b43a7c804cde677a2d49530a675b9`  
		Last Modified: Tue, 17 Jul 2018 13:08:34 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4052c369346775a7b135fba6136b594be54464e5c02d7d03d68cadee1247519c`  
		Last Modified: Tue, 17 Jul 2018 13:24:39 GMT  
		Size: 5.7 MB (5748124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c49403ad7b4b0254af7b990c591e8065de080a0e5cca1b72800be8dec6e3cb`  
		Last Modified: Tue, 17 Jul 2018 13:25:04 GMT  
		Size: 45.7 MB (45710197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2af923b838ede1cce0f861a71fa31f222aca3fbcd95b165dd96e3231223fdd4`  
		Last Modified: Tue, 17 Jul 2018 13:25:47 GMT  
		Size: 158.1 MB (158110779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
