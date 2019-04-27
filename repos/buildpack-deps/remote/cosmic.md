## `buildpack-deps:cosmic`

```console
$ docker pull buildpack-deps@sha256:ad9d732f4e3120414522a36410b2d6a0da536c556965ef02c02999cac47c7a89
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
$ docker pull buildpack-deps@sha256:02080e1aac1a5609381a4bd40a74028f143a1dcb1cb10378836facb79d939962
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.3 MB (222343764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb511eeb475b094b425acf1f6f98ac12d622cdb0cae1ad24913ee1f0d837987c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:21:29 GMT
ADD file:7d720b4a423f92d6f502a7fd82d91b639332e9435e6adbcf8ffe6df526d0eccd in / 
# Fri, 26 Apr 2019 22:21:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:21:31 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:21:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:21:32 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 22:47:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:47:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 26 Apr 2019 22:48:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:50:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a43aaa89cea0569e59fa9d1118576b9efdbc906116b241a5087ca44465737f6e`  
		Last Modified: Mon, 22 Apr 2019 15:15:43 GMT  
		Size: 29.3 MB (29276895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:483b18c8a50f763f3d56555657a8fa0f61dc4caf5c9bd37e2cfd7377ed967b2c`  
		Last Modified: Fri, 26 Apr 2019 22:22:55 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f62699848218e6e363d351d6397105dff563cdcd19556395fa8450d3dc22d6`  
		Last Modified: Fri, 26 Apr 2019 22:22:55 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ac49ee776b4569c1064b839d40c5ade038b50034872238522fb559eddc3473`  
		Last Modified: Fri, 26 Apr 2019 22:22:54 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6d5f2ea743087d7ebbfabd6ab87bb2e4218425d28881005043bd96676afd5c`  
		Last Modified: Fri, 26 Apr 2019 23:00:52 GMT  
		Size: 6.1 MB (6103581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8413c62b48ea3fa27407f2c7664f944e991a6a61aee52d21f82c6fef0b63605`  
		Last Modified: Fri, 26 Apr 2019 23:00:47 GMT  
		Size: 3.0 MB (2975191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d0093287fd917753909ab3e78c55bf61281400bef5d4223709bf2f00e57f8ac`  
		Last Modified: Fri, 26 Apr 2019 23:01:09 GMT  
		Size: 48.4 MB (48374823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181269e415ef9d2b805b70cb43b103ce9ea4ca191aa865e1607a47e7956b9bf4`  
		Last Modified: Fri, 26 Apr 2019 23:01:40 GMT  
		Size: 135.6 MB (135612030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:0c5aefb82bee6ba4c26f48da698fc0515b210552d4cb624166e36c07cc32dcca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.4 MB (191447895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e11bec41c0e44a9cfc4484263ed66337fc2020caedecddaeccba5161112296c6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:43:17 GMT
ADD file:cb4029f67c8663d09a5af719a676014e1cf309d777fbfb30a986078d4b4a8e16 in / 
# Tue, 12 Mar 2019 12:43:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:43:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:43:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:43:24 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 13:23:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:24:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Mar 2019 13:24:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:26:52 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4dd67d9979165fb29fac8116e79e8ec35057cacc8874f317f84fa4ef4915d794`  
		Last Modified: Tue, 12 Mar 2019 12:45:33 GMT  
		Size: 24.7 MB (24707005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773329f68b740e19bc53580f6453f70e19d0d8ef3b4aba5b4f218a3064ce6ae4`  
		Last Modified: Tue, 12 Mar 2019 12:45:26 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860705f78517cb6fbca62ebd89cc659e1fc89920259aeb052001f31f248f8375`  
		Last Modified: Tue, 12 Mar 2019 12:45:26 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9b4cb03da62e894a18687de8c08b0c24b55482f2ba7831915463e349f3e2d5`  
		Last Modified: Tue, 12 Mar 2019 12:45:26 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af81583ce231ccbe55545b6930e97bfb2c5858def7621d43538d7b6393cb676`  
		Last Modified: Tue, 12 Mar 2019 13:39:44 GMT  
		Size: 5.1 MB (5148498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018754bff4b8f7182c50929a73574e449a02110daf107f7c080eb152103ec1a8`  
		Last Modified: Tue, 12 Mar 2019 13:39:43 GMT  
		Size: 2.5 MB (2535801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590bf9094b9ef4b940b8bed7eea5cf48288a35818a5d07003ca19f28a6ed8948`  
		Last Modified: Tue, 12 Mar 2019 13:40:06 GMT  
		Size: 43.5 MB (43501309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ed8a99aad66aa4a547db4390bd5f91d84cffa1d6fe84ba90a45f423d17afd5`  
		Last Modified: Tue, 12 Mar 2019 13:40:47 GMT  
		Size: 115.6 MB (115554016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:236e37b5b9821bc1a08c9affdf8783535d5f2cb92f7ddbc18a0345c30da9203d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.5 MB (211489050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b709fe600d41e5df01d7e057029bc20ee1a44ebe924f8fb473151acd149019d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:35:37 GMT
ADD file:bb35650463800e191b418d7da8f6d48af3eb84d7b5f3640f6e5dd5112e2a1385 in / 
# Thu, 14 Mar 2019 09:35:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:35:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:35:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:35:44 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 11:40:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:41:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Mar 2019 11:44:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:58:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7cf0a21e5b4f87de3e324323f0ef0e0e757f5639c90d3325436eaa50bb35c2d4`  
		Last Modified: Thu, 14 Mar 2019 09:38:24 GMT  
		Size: 27.6 MB (27574782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db071b7879007c38472ac2ae602ad89f06e293a0f038b0ea13205053bb370b5`  
		Last Modified: Thu, 14 Mar 2019 09:38:13 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad373a016cf071eac0b9b1752aca4e365b24eb8bf2bbf31e35495236ada727f`  
		Last Modified: Thu, 14 Mar 2019 09:38:13 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8cbc133a25405bd6f60e323444f511a2cc3b320807426532c8535a33c1a5e2`  
		Last Modified: Thu, 14 Mar 2019 09:38:13 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ffa67c7c61c86e21a1dfd0c4aef2349b53734546670eb8d1e93167a6a995ed`  
		Last Modified: Thu, 14 Mar 2019 12:38:08 GMT  
		Size: 5.8 MB (5811247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86b82b07bcb66f1a424932520450f96f83e3e15a2bd8e4b61cbf97662ba65d4`  
		Last Modified: Thu, 14 Mar 2019 12:38:07 GMT  
		Size: 2.9 MB (2944012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:911a34c53e07afff8bbc984663953e40fe1b458c14de6ac940913928c1b4962b`  
		Last Modified: Thu, 14 Mar 2019 12:38:41 GMT  
		Size: 48.3 MB (48310577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ecc653a34ea95521d2e509b66c07377379346d03e4da434fd5f006dac11d91`  
		Last Modified: Thu, 14 Mar 2019 12:39:37 GMT  
		Size: 126.8 MB (126847189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic` - linux; 386

```console
$ docker pull buildpack-deps@sha256:79b50857b6c2288f2d2811882e331f927baf9b4690b68f16e2d25cf6fb40b43e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.6 MB (226621457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc451ae103d01ac6c6d92c095c24f73f725c41e4242c3bb8d6b9706899711695`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 12 Mar 2019 11:34:35 GMT
ADD file:217d6d0a6f1e186f4a0c8d853888c83d1e5c12e0ce5983138314e26da8cf0f60 in / 
# Tue, 12 Mar 2019 11:34:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 11:34:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 11:34:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 11:34:38 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 11:55:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 11:55:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Mar 2019 11:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 11:58:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f5c10b1e3de9df47a60d5f0da7e9953e29e5f95e46949aaf0dd2cc47068df194`  
		Last Modified: Tue, 12 Mar 2019 11:35:50 GMT  
		Size: 29.7 MB (29698170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21dca315e5159275c38fe2400e93c5bed12a3b8f8a08fcb3f32059852749677c`  
		Last Modified: Tue, 12 Mar 2019 11:35:44 GMT  
		Size: 861.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b45a0e345f7802f7e8c5d5b3203b6e012e49cc2ab59d692020b58314f62fdd`  
		Last Modified: Tue, 12 Mar 2019 11:35:44 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4508de725962cdde766341af52ee009dd39041b565ede32f0aba3380a626f65f`  
		Last Modified: Tue, 12 Mar 2019 11:35:43 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d69462f5b6fe9a545ec54c2ab60b5e542bb194e07d717d32be9fc387f46c89c3`  
		Last Modified: Tue, 12 Mar 2019 12:11:42 GMT  
		Size: 6.4 MB (6375817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de8847bfcd8ac7f37a5fd1324786e247ac7d52cd6fe9e95c3a835cdf32734130`  
		Last Modified: Tue, 12 Mar 2019 12:11:41 GMT  
		Size: 3.2 MB (3205773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe07023c411b5b7d3a039e5327a665e26e278ebcd757b157abe781659c9cc88`  
		Last Modified: Tue, 12 Mar 2019 12:12:00 GMT  
		Size: 49.7 MB (49684428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff367be831d1f914c5b0009a9e988cda803fde5040205b513c46ebe954c999ed`  
		Last Modified: Tue, 12 Mar 2019 12:12:38 GMT  
		Size: 137.7 MB (137656035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:830a1cf917211638d014d26ce4f6cc5d5b42f947e5dc909b13b54a6a5025da3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.4 MB (249360331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e5e471b8881c199acca59653f193ef367eb9220936f45e17a426dbcc9817c31`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:20:38 GMT
ADD file:44c88b73d704bd032f51ed3607964b5709cbea6ae4b07e6ee0a6bf2fe5acfc3f in / 
# Sat, 27 Apr 2019 09:20:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:20:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:21:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:21:02 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 10:04:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:05:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 27 Apr 2019 10:07:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:19:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6e719ad17430745f564beae472b51ff771ce7f912280e9adfcc17fdc856e77fc`  
		Last Modified: Mon, 22 Apr 2019 15:17:33 GMT  
		Size: 34.1 MB (34123812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02ffb7f2fdc5b239bc7f5afc1f21b73ab3c5d172cf15c0952ced65394ec1de6`  
		Last Modified: Sat, 27 Apr 2019 09:30:06 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4de7c4e0b5db5a901196d9cecb096664601404e6ed044b9d5b6b6910ad4118d`  
		Last Modified: Sat, 27 Apr 2019 09:30:06 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5717908812f9d703aa401bd4f7c395c20a16140ad33e65d725a8ba0c0fa6d82`  
		Last Modified: Sat, 27 Apr 2019 09:30:06 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ebc389923a816bd728f459040def86a850a01725135143d393de0a6d54effb`  
		Last Modified: Sat, 27 Apr 2019 11:11:56 GMT  
		Size: 6.8 MB (6832118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7093ea96b6e5b00209aea32e4b88247192b653ee59c780f006a0d7020e404a54`  
		Last Modified: Sat, 27 Apr 2019 11:11:54 GMT  
		Size: 3.8 MB (3758932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06fae42d2eb1039db1c1a50ba8c6b918b8cb508a0fe97288ad8d174308a63d61`  
		Last Modified: Sat, 27 Apr 2019 11:12:57 GMT  
		Size: 57.2 MB (57224234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dff4bfc3fcb572be618618b82aa03bf1410511d7cde265d4643539fe23473f1`  
		Last Modified: Sat, 27 Apr 2019 11:14:53 GMT  
		Size: 147.4 MB (147419966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:bed4123417dec313fa90d3cbe4d8eb43a7686d8912bf1a21ad3364ce69a603eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.6 MB (206628589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93f83fabe7e9de751aff16c86ffc9e7702dd2215aca29bd5ddf057d46cbadb2e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:09:01 GMT
ADD file:ec8f1b87af0d6d1e8c95c2f2955962242755d5e5a1a1c9bed5d20c41d283b44e in / 
# Tue, 12 Mar 2019 12:09:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:09:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:09:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:09:05 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 12:28:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:29:03 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Mar 2019 12:29:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:30:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:738caee49fa4288011d1a66e08c2902f29c0e7cb4d1c036316c117b09372ed6e`  
		Last Modified: Tue, 12 Mar 2019 12:10:22 GMT  
		Size: 27.7 MB (27684775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdbafd7f0517465f1a7f0e11513f086949ff99a09dbf3c6418db75485d4d07ca`  
		Last Modified: Tue, 12 Mar 2019 12:10:15 GMT  
		Size: 866.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c746b2e135c36fd82a88427c6b5a50680970e97ab5ffc87cccfa103b4051844`  
		Last Modified: Tue, 12 Mar 2019 12:10:15 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2f2b18073a557c6a4067fafd1473e1345f6a7003805f9a98a9b6f8f2d03c45`  
		Last Modified: Tue, 12 Mar 2019 12:10:15 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91e7ad2eff71d0a5ef8d58956b934a26b11b526fa22c4733002a664c22eca65`  
		Last Modified: Tue, 12 Mar 2019 12:37:37 GMT  
		Size: 5.8 MB (5769188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc3ae6dbddba03a6304441de66f872c324a286ab4d4b189d34dbb3ec217107a`  
		Last Modified: Tue, 12 Mar 2019 12:37:36 GMT  
		Size: 2.9 MB (2915768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def7378635cfba9b9825fff4f515aade65d581f2d7e50a120711ad227e2a2861`  
		Last Modified: Tue, 12 Mar 2019 12:37:54 GMT  
		Size: 47.8 MB (47759002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36123fc9fecf5f093e8c94c7b1e66b4f578de6923af7e55a83bfbb0fdc2cbea3`  
		Last Modified: Tue, 12 Mar 2019 12:38:27 GMT  
		Size: 122.5 MB (122498615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
