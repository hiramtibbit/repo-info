## `buildpack-deps:bionic`

```console
$ docker pull buildpack-deps@sha256:3c8ff49ff2e5cc80c0b9af3e74d986d141762835bfbb0bb16a1b73b95106f6b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:bionic` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:1cc24b3a23d5abb79dfe15b5dd0efec75c729d5a4d477f8b166b1e29dd0461b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.8 MB (220759552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95dff98a2234c32775706aa257d04edb76346530db89d3759a806dd9efbee83a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 19 Oct 2018 00:47:54 GMT
ADD file:bcd068f67af2788dbd57729c0c8193f022ec5c37fefb8704390c59081152e6fc in / 
# Fri, 19 Oct 2018 00:47:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:47:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:47:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:47:56 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:28:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:28:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 19 Oct 2018 01:29:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:31:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:473ede7ed136b710ab2dd51579af038b7d00fbbf6a1790c6294c93666203c0a6`  
		Last Modified: Fri, 19 Oct 2018 00:24:53 GMT  
		Size: 32.0 MB (32034160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46b5fa4d940569e49988515c1ea0295f56d0a16228d8f854e27613f467ec892`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ae3df89c92cb1d20e9c09f499e693d3a8a8cef161f7158f7a9a3b5d06e4ef2`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1eed27cadec5de8051d56697b0b67527e4076deedceefb41b7b2ea9b900459`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b00ea1eca54b7ed74364007ba7debf07a6a411fc9f3ab5c054326f7a29ccbc`  
		Last Modified: Fri, 19 Oct 2018 01:42:57 GMT  
		Size: 5.8 MB (5825833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc67feab261a2c5cf268f46c2201c5e1bcb1c43e1c96f2c8d883ae29e2c161b`  
		Last Modified: Fri, 19 Oct 2018 01:42:56 GMT  
		Size: 3.0 MB (2958712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b3b0181d3d465fa4ff5fa1fd4929d4bdc1923388c64966ecda82c6f53063c6`  
		Last Modified: Fri, 19 Oct 2018 01:43:45 GMT  
		Size: 48.1 MB (48064062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117b789d94c3bbb6dd6edc6d678b8de28c02c69028906a47922d5c60e6a95c81`  
		Last Modified: Fri, 19 Oct 2018 01:44:48 GMT  
		Size: 131.9 MB (131875226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:d49e59ee533fd998b24348c351245eaa5170eefb2311c1f40089cd39e186da0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.6 MB (190590587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38514d257a5dcce0ea90a5998472976c9ad33474774c5428d0b145dec9906d70`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 Aug 2018 13:29:21 GMT
ADD file:f15cbff8d74891f1401f6e7f27502f7bf45c8a4c30054a8c23224b3e9629314d in / 
# Thu, 23 Aug 2018 13:29:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 13:29:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 13:29:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 13:29:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 13:29:25 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 14:26:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 14:26:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 23 Aug 2018 14:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 14:29:31 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bca6ec5b89c4a31091b27541e4838ef3a204105cebb544ce3600b2584811540e`  
		Last Modified: Thu, 23 Aug 2018 13:30:55 GMT  
		Size: 27.2 MB (27167440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eadf4d1c3fab0bf807227d06f578e81cbc58c72f389da721bdf67e95c4e23a6e`  
		Last Modified: Thu, 23 Aug 2018 13:30:48 GMT  
		Size: 840.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ba9e49ecf13fa83d77d03bac48fbd2d506ca32d3d581df8995e1024f085203`  
		Last Modified: Thu, 23 Aug 2018 13:30:48 GMT  
		Size: 455.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29fd3e166029462053d78de0dd5ef15dfbb542ff4b0374c82ad3281bb49231d`  
		Last Modified: Thu, 23 Aug 2018 13:30:48 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a08f32902ceef3d4e1453674ac9c0fa5f849aaeaefcff172299842d95f88207`  
		Last Modified: Thu, 23 Aug 2018 13:30:48 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1ca7b706815f2f968a2d55ddd6138da9c4a88f5698814b4f0073e94ba70d53`  
		Last Modified: Thu, 23 Aug 2018 14:46:51 GMT  
		Size: 4.9 MB (4921708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b7320f98b4c92a1112182275b50308bb86d021e968f83075a8bc97b1f452c1`  
		Last Modified: Thu, 23 Aug 2018 14:46:51 GMT  
		Size: 2.5 MB (2520596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd5dd463de9afa9323e0e1d67c36c3b99ce18d913f1bbfc141e2fffd8dee91c9`  
		Last Modified: Thu, 23 Aug 2018 14:47:21 GMT  
		Size: 43.3 MB (43280081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db95b87f1d04e2d9ceb19b614166ba8568e35d96d96971ce109723cbba888f7d`  
		Last Modified: Thu, 23 Aug 2018 14:48:10 GMT  
		Size: 112.7 MB (112698428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:6920bf7ee2d9d7b62107451e8e0cf39a97836064b76e092d36b3b882294def9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.4 MB (204417518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edb5173156a8b6f25c624b3a3934d9d18799bbb678256d56a6077901a6be114e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 Aug 2018 17:56:54 GMT
ADD file:7a7f37f1518282b188a2e6efd752b806e74a3e03b89d4a9fa9c9f152f0a18cf5 in / 
# Thu, 23 Aug 2018 17:56:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 17:56:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 17:57:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 17:57:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 17:57:04 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 22:27:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:28:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 23 Aug 2018 22:30:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:42:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7dc40899884ddfbc2c46bcb408eadac218094356ce47c086c70055a9a5106232`  
		Last Modified: Thu, 23 Aug 2018 18:00:56 GMT  
		Size: 28.6 MB (28621029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3b1bd6c6b34662a55b82dcdb1dad925a66d4c5dce47cb9a24dd87d574980df`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b826692f9ce0816877c9f77c87684866283f1301ea97b908f2e09472b2f8f3`  
		Last Modified: Thu, 23 Aug 2018 18:00:54 GMT  
		Size: 458.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836583884d3ec17820ebc8e13f6cc8cf47ebb1346b54355d68021a4c22fcab11`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ede898dd26221aa350a0643dade517c27f7abf43a01b35713188fbeb5600ce`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bbad0f657b6f034a0e3b1508a887153a89390027d65b80d7729d988bec9ebfd`  
		Last Modified: Thu, 23 Aug 2018 23:32:49 GMT  
		Size: 5.3 MB (5287463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23c0d0cdbb7bf3937321983e0a90f25ab718f11887ed1246ddb46694222d9b2`  
		Last Modified: Thu, 23 Aug 2018 23:32:44 GMT  
		Size: 2.7 MB (2720035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d99094da2567984c3ec2df125b6ddbef715dd800b033d0f1810c6b7b5d6c29f`  
		Last Modified: Thu, 23 Aug 2018 23:34:22 GMT  
		Size: 45.9 MB (45875444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb74223be007b3069720d50f66112c9503f49b0bacb518a8c8edde3fb3a20cf`  
		Last Modified: Thu, 23 Aug 2018 23:35:59 GMT  
		Size: 121.9 MB (121911225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic` - linux; 386

```console
$ docker pull buildpack-deps@sha256:e35f9fa9f7795cba096dd2528c506968a2c346a173e9c641da419b91da35df20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.3 MB (224333601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:777df011dfa741f82ebf6ba82d98599f1570f5f813661a02deba3f3a827d27da`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 07 Sep 2018 06:06:38 GMT
ADD file:9ad44f301f5a2aa2ac0225577ddbab49e2d1aa6786beddb1124daad9d1b50166 in / 
# Fri, 07 Sep 2018 06:06:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 07 Sep 2018 06:06:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 06:06:40 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 07 Sep 2018 06:06:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 07 Sep 2018 06:06:41 GMT
CMD ["/bin/bash"]
# Fri, 07 Sep 2018 09:25:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 09:25:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 07 Sep 2018 09:26:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 09:28:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cadd553e30fe0683ef6f75828d84fcaf22e6bbba0cec71cbca740aef1040aa5c`  
		Last Modified: Thu, 23 Aug 2018 15:56:54 GMT  
		Size: 32.1 MB (32094821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026266f152d60665d4b6cb9df9778f4536659461e1b70b104ac9f14f94e77222`  
		Last Modified: Fri, 07 Sep 2018 06:07:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e260d06ba10a2000a95899b5bf04618fc2356430b8082e732479f59ba884c277`  
		Last Modified: Fri, 07 Sep 2018 06:07:42 GMT  
		Size: 464.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a1cc5c8dd4e4ada4acfecb19bf69f402436896fc14a53e16097d8ba25d21fb`  
		Last Modified: Fri, 07 Sep 2018 06:07:40 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0658367d57809aa2ebee720e5f6c50f5e8979bce5a8e7dfe1c9f92e0a6360970`  
		Last Modified: Fri, 07 Sep 2018 06:07:40 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d1f7157405ed7700d634a35278851118e10f6c8ae080dd5c2128983c23874d`  
		Last Modified: Fri, 07 Sep 2018 09:39:37 GMT  
		Size: 6.1 MB (6102463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff8d70b7d048fa39478f51e6487c078f65fb4354fdcb5fa662ff816c02d6b3d`  
		Last Modified: Fri, 07 Sep 2018 09:39:36 GMT  
		Size: 3.2 MB (3189256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eda77a3709113dcd25e2ae1900e20a098522e16212c8a4e05159a131a748fb2`  
		Last Modified: Fri, 07 Sep 2018 09:40:05 GMT  
		Size: 49.7 MB (49667203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1bb46c29f4a10b773c40557778bfb411d2f0aa3b06861b0ed32368900c28e20`  
		Last Modified: Fri, 07 Sep 2018 09:40:46 GMT  
		Size: 133.3 MB (133277537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:c2867e0c101180c8c9ac07b5ff68a40e3a0dafff309dde1b56f1ccd747ba5a1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.0 MB (242034315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe02b7b408a7e1e9ab0872b71eaba3c5618f6e639b622c601924197afdfc2229`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 19 Oct 2018 09:16:11 GMT
ADD file:ff56914a9be1ea1c29222a826731c6d0c874a3d35994269352595d646a5f923c in / 
# Fri, 19 Oct 2018 09:16:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 09:16:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 09:16:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 09:16:27 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 10:16:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:17:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 19 Oct 2018 10:19:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:25:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2c4fd606dee3befde0392952ad523fad88d460aed9ae927ff1037138cd79ed3f`  
		Last Modified: Fri, 19 Oct 2018 09:18:54 GMT  
		Size: 35.5 MB (35472905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:324762f962b9ba756f04453b96c926ea414b65dfdb3ef0c26f2336e60f231c5a`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f2857f1765b3e764add78aa519c6bef4827b9973650565d969b580c9bd2d82`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3aa3f305b3eedf728fcddc37359479689d1fdaadc23d2bad1e087216ac715a`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0769d3b33e58f8bc23d11dd5a107a87ee71829b6de536061c44087b56b53ebcf`  
		Last Modified: Fri, 19 Oct 2018 10:53:33 GMT  
		Size: 6.0 MB (6015667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d34093815134c5e8f4d68799760b0281f6d51827c6927d274233a6c43dca4f`  
		Last Modified: Fri, 19 Oct 2018 10:53:33 GMT  
		Size: 3.7 MB (3656504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe3c7bf676fe48c64f448b56bc6635b15c857ea22c3b46653399bac48254389`  
		Last Modified: Fri, 19 Oct 2018 10:54:27 GMT  
		Size: 56.3 MB (56323814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5609ffd21db89162eed43086280e91368c642ac97d8f0f7669fc5867d5ab9e59`  
		Last Modified: Fri, 19 Oct 2018 10:55:39 GMT  
		Size: 140.6 MB (140563792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:1fec855c694d6d4a165d44c195ef73919f0c26888ada3aa8d3c337d862ee86ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.9 MB (205870822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f422ad6a9570eb3618119df3073410ab84559e7140861083304ae305114aacf1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 Aug 2018 14:48:37 GMT
ADD file:3990672df51fc410ebddab7932cef3c63b06bea3f26003024261f61195a74a05 in / 
# Thu, 23 Aug 2018 14:48:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 14:48:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 14:48:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 14:48:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 14:48:40 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:43:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:43:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 23 Aug 2018 15:45:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:47:06 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:213032d1faaaff5fb9402fe0a528fc8bbafe650dfe7f333e32a458a25113eb1b`  
		Last Modified: Thu, 23 Aug 2018 14:49:54 GMT  
		Size: 30.2 MB (30178864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416a03beb604024f3521d349771d3d9b0ec332e7d32206e3c98b935996656c37`  
		Last Modified: Thu, 23 Aug 2018 14:49:35 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2cd337e0a2efa5443590c9c9f0fbe35462069ebd9af719a199bd33281f51f6a`  
		Last Modified: Thu, 23 Aug 2018 14:49:35 GMT  
		Size: 456.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633d6706494e2f5816b96d90eb1457556553c2550cf3f07bef856399483c538a`  
		Last Modified: Thu, 23 Aug 2018 14:49:35 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72ea06e618fb2d026d027f2e64a0e0a43878122074f7674a0ccec8a2c6cced8d`  
		Last Modified: Thu, 23 Aug 2018 14:49:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37bfe5429c1ab4a742642201eff0c5bf6da36d715e3dffdb50c0a59d4828621d`  
		Last Modified: Thu, 23 Aug 2018 15:57:03 GMT  
		Size: 5.5 MB (5511995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8449b8868b0156b5d29e17d80ff083f4355a0cccd2806857680e0a1677eae939`  
		Last Modified: Thu, 23 Aug 2018 15:57:01 GMT  
		Size: 2.9 MB (2911573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf7a4773238e30269433296a30f7418a63999901be5cd00aa6df418cb01e10e`  
		Last Modified: Thu, 23 Aug 2018 15:58:07 GMT  
		Size: 47.6 MB (47615128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4e16778d3b26b3a88f6429dcefd6ae8a05f9eb61682f930e969864f8a4f408`  
		Last Modified: Thu, 23 Aug 2018 15:59:30 GMT  
		Size: 119.7 MB (119650949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
