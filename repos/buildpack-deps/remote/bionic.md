## `buildpack-deps:bionic`

```console
$ docker pull buildpack-deps@sha256:824a7d007e648a5ff1cc4f5206151c699158fd45afe02b020edd28584878dd7e
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
$ docker pull buildpack-deps@sha256:dd2b580545fabde53521938fdff0d7de46cdd9c6399efc3807a5b33f56c37bd3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219037340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94e8842c58ed60ce5d83e0d5f8e104f54be43755d851f5f8e0d97614b8582ae8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 12 Apr 2018 18:35:22 GMT
ADD file:8ea3d3659b2327b95fc6f8cb229245bcea4b44e77510f165c313659e6f0e6fd5 in / 
# Thu, 12 Apr 2018 18:35:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:35:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:35:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:35:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:35:25 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 06:14:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 06:15:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 06:16:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 06:26:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c448d9b1e62fac680864f7063fd32e1712e6bb9845df446d8e61243498a1d3b5`  
		Last Modified: Thu, 12 Apr 2018 19:21:09 GMT  
		Size: 30.7 MB (30696655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0277fe36251d91645bc4bc6f0752e6b79f883c3c00d856c3d465a48eeb30f370`  
		Last Modified: Thu, 12 Apr 2018 19:21:02 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6591defe1cd92783337ed7d0f107c61139f5f656c7dbc6084ff1a5cd3a6bad54`  
		Last Modified: Thu, 12 Apr 2018 19:21:02 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c321da2a3ae45deda6730d5adcf7a7fe31db03d3cff5c657ef11ba69cb01f02`  
		Last Modified: Thu, 12 Apr 2018 19:21:03 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d8a7c0ac3cea69a3bf6c23bd2db7f2d1ded30b3736bca4e114630645a74683`  
		Last Modified: Thu, 12 Apr 2018 19:21:02 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c4e94907bb2dc7317f36f2bfef4d11fe8f0bde190350a37d9101e9d1662643`  
		Last Modified: Fri, 13 Apr 2018 08:14:40 GMT  
		Size: 5.8 MB (5846206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6740e0a1bc824ed5e1ca8aaf710f7e01b1b7e3aceb3e14ecb3d5b8135ef608e`  
		Last Modified: Fri, 13 Apr 2018 08:14:39 GMT  
		Size: 3.0 MB (2955581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68a435c4cef2ae6003133683be853c6aa912eead1a6d65f6b744722d0b6f8c2`  
		Last Modified: Fri, 13 Apr 2018 08:17:34 GMT  
		Size: 48.0 MB (48036015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f747a901b5ccafb9fb883e3aaa1892af680843039fe9812fa9bd9777f01e8fd9`  
		Last Modified: Fri, 13 Apr 2018 08:27:12 GMT  
		Size: 131.5 MB (131500615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:d2cfdbfad05469a442ac70fcfb0299ec02be51e70b42780bb66dd4e8c80710b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.7 MB (189662601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2be8ae9efdbf3593e45107f9c60368989b2d6428999353ea7d41d44559f7abfb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 11:58:40 GMT
ADD file:3863878f56ad2a4858369eaa800955aa4284e3fbf5e18ad45275f5acbb995c59 in / 
# Fri, 13 Apr 2018 11:58:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 11:58:43 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 11:58:44 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 11:58:45 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 11:58:45 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:22:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:22:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 12:23:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:24:13 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c9723c8fb76b3e5e63d109746699503c82a03745d0db1e1fbcf74487a2af72de`  
		Last Modified: Fri, 13 Apr 2018 12:01:43 GMT  
		Size: 26.3 MB (26262988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fbc1d7c870a6dd5dea7f0dc6cc936db897a788d3ae80f7019cd475e127df580`  
		Last Modified: Fri, 13 Apr 2018 12:01:35 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa148740a3bcd8cafaf42a54bf1e9d1656be6ab700e0875a30f7c778a52f1d1c`  
		Last Modified: Fri, 13 Apr 2018 12:01:35 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859bba15a7ec1ca7c25ff8b0d92dd20db1a831d2cc319175fd187226e1e776f7`  
		Last Modified: Fri, 13 Apr 2018 12:01:35 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794a43972298ed7f825b48ce612532ebaca53b24a4878850cf5961bded591f78`  
		Last Modified: Fri, 13 Apr 2018 12:01:34 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e483cfd2f7ce528859b4abdb1a35eb7cf7929be38ce8d81ffbb95bf21b3b131`  
		Last Modified: Fri, 13 Apr 2018 12:32:40 GMT  
		Size: 4.9 MB (4945019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484b81300555c26f9d723ea19f320a2a83e97463ad25a69724b3786f6c0afac6`  
		Last Modified: Fri, 13 Apr 2018 12:32:40 GMT  
		Size: 2.5 MB (2519648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25adbaa3a8b2a5bc9897b3eeddf8da3bdd40203d04562d42729db279c15b9191`  
		Last Modified: Fri, 13 Apr 2018 12:33:10 GMT  
		Size: 43.3 MB (43266702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e99fb68b61d38dc1e3540a08a008fb2ab918e25dc0d38e74347edcac72bd4d7`  
		Last Modified: Fri, 13 Apr 2018 12:33:57 GMT  
		Size: 112.7 MB (112665953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:772e2185f1e42fe50bc009d81e51b4eaa5c0983da3a396036828dc3237b49931
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.9 MB (205871690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:648e79cc1ec29ee6ff52378985da1f5462063c8f62303527d7aa623d60317992`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 09:02:44 GMT
ADD file:fb41f052ca697d090b47a5d5611d7295a28bb57888c3dc9ac743bc21f251e8c9 in / 
# Fri, 13 Apr 2018 09:02:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 09:02:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:02:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 09:02:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 09:02:52 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 09:44:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:45:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 09:47:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:55:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:03699202315231f25cffe272e4754a4b50de722d642d281d204cfa25809d12c1`  
		Last Modified: Fri, 13 Apr 2018 09:07:38 GMT  
		Size: 27.7 MB (27663005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed9a934a098f92ffe03ff865e089382bd3d1a6603a66e1ba614e336c074741f`  
		Last Modified: Fri, 13 Apr 2018 09:07:27 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52aaacd9b9f122018430beb6470ff23f508ccce2e19ca6399f0bf68585402f41`  
		Last Modified: Fri, 13 Apr 2018 09:07:27 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82ed990d6a19db5a4bbfd13160f9657f85affa2eb72c76319211acb3fc0b4df`  
		Last Modified: Fri, 13 Apr 2018 09:07:27 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51e04ccd22359e90d67bde92a59c51b32f5ce4ba2d438efcb69662eda3e6dfd`  
		Last Modified: Fri, 13 Apr 2018 09:07:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f736bff0f0de4a98e20927061dbcd54ddd5856d989fa20f6bbedcb9b1829031`  
		Last Modified: Fri, 13 Apr 2018 10:29:23 GMT  
		Size: 5.3 MB (5308195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35cc230e4849a62262de078238cda4466e0c76554f2d7f6900b7c8c3bc9eddbb`  
		Last Modified: Fri, 13 Apr 2018 10:29:22 GMT  
		Size: 2.7 MB (2716722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2c9d3105ba6d1b5795a5386bbad1796a0b38621cce754e07e126f53a1dcc51`  
		Last Modified: Fri, 13 Apr 2018 10:30:29 GMT  
		Size: 45.9 MB (45911097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da09f1feb8ec4c552ee1da855e0be193166e7dbc8ab1ffa336079ea4c6531c56`  
		Last Modified: Fri, 13 Apr 2018 10:32:06 GMT  
		Size: 124.3 MB (124270402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic` - linux; 386

```console
$ docker pull buildpack-deps@sha256:36a36a5c998ddfef420c285a27cd8cfdbdf6482e9b5d4321530c68dfb0bb7781
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.3 MB (223285242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbeec1f1a80f92b69244f83e1941e0a6673f6b39dcd45a61239951b6ad03dba2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 22:38:20 GMT
ADD file:56d02105a50e8636ebcfcab4cddbb8b0d1a267f480c07e17e0068f3948459dda in / 
# Fri, 13 Apr 2018 22:38:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 22:38:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:38:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 22:38:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 22:38:23 GMT
CMD ["/bin/bash"]
# Sat, 14 Apr 2018 05:02:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:02:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 14 Apr 2018 05:02:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:03:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8251bd6e86bed794e40c65b319f1fc3d5b0a26b847a446dccb64b615e26de5c0`  
		Last Modified: Fri, 13 Apr 2018 13:59:37 GMT  
		Size: 31.1 MB (31097293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4752feb858e2997e64e107c1339e88df0e84b6860f32a244914b1ac8262d261`  
		Last Modified: Fri, 13 Apr 2018 22:39:23 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a6ec6c9f43b36b5eb02477a7a4d9d98629c75c51c07e14a1765eef84e2bc2b`  
		Last Modified: Fri, 13 Apr 2018 22:39:24 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95849bc406fc255e29fba7f33844f16369a22e40446e3b4a086fc0ff8cc8394f`  
		Last Modified: Fri, 13 Apr 2018 22:39:23 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847b2a221e87a47ef7eb6cff4439bf7abaf59078fb413f5b80d485aac39fd15d`  
		Last Modified: Fri, 13 Apr 2018 22:39:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d952f4ceb94e1023bcd84a9b357ca2ccd8a0c358ebc87492773e20fcec0879`  
		Last Modified: Sat, 14 Apr 2018 05:11:08 GMT  
		Size: 6.1 MB (6125336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca59a9f93dac8dc77dabd1efaa3e3fb22375b3892aa0bcb23f2c837067d21a0`  
		Last Modified: Sat, 14 Apr 2018 05:11:08 GMT  
		Size: 3.2 MB (3186135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:107784f56cff5563b012497c8e9fdc62a6bfc994cdd7a58bb469928ab72d36bf`  
		Last Modified: Sat, 14 Apr 2018 05:11:36 GMT  
		Size: 49.6 MB (49632421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44980d661fdc2b1a231e472bfa54aea1c6c069c2f5de4d78049f3ddc2c3406c9`  
		Last Modified: Sat, 14 Apr 2018 05:12:26 GMT  
		Size: 133.2 MB (133241787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:66b1a80bc505e34356e0eb727147a910ac0b2c75099ca8cbdbbf5abea86d85c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.7 MB (240682080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68864ad4d85c293767f95a2797b14f603dab8622025e4d0d437222adaae83749`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 08:23:54 GMT
ADD file:9957336e45a98f5788b033e8bea371b339330a23a7f01b0e8fd313619d92294c in / 
# Fri, 13 Apr 2018 08:23:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 08:23:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 08:24:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 08:24:08 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 08:24:08 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 08:47:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 08:47:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 16 Apr 2018 19:46:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 16 Apr 2018 19:51:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:851aa21fba2222dd4cd1f060219dace84790db948168ee070bde21618d410315`  
		Last Modified: Fri, 13 Apr 2018 08:27:51 GMT  
		Size: 34.1 MB (34137641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7647b7cbb93cf05dac64f8346acd6355532167c14535035211c2b459c14de8bc`  
		Last Modified: Fri, 13 Apr 2018 08:27:42 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac5dc1b6c6c60d3b74ed38b15592e515849b2813da14baf101af39e5c838193`  
		Last Modified: Fri, 13 Apr 2018 08:27:42 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27775f31a024796d3acb491a0ab82f0938a0cb2ab2cede896c4b560728a33920`  
		Last Modified: Fri, 13 Apr 2018 08:27:42 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd40ed2808fc6c2ac8927e9a5402187a763d151c09b1e02385cb0859aef60faf`  
		Last Modified: Fri, 13 Apr 2018 08:27:42 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d97467fd2701ef6ce4c1f8edb73e54b72f335b8bd97cb78408b6f8859e58b3`  
		Last Modified: Fri, 13 Apr 2018 08:51:58 GMT  
		Size: 6.0 MB (6040943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da91893f1d74cfcdea319da98ebc6a2acec936e8dac7e44cf0bb0c2b47c730d3`  
		Last Modified: Fri, 13 Apr 2018 08:51:57 GMT  
		Size: 3.7 MB (3654125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72505b9949a8b4f5d0839602ae7befb041f06836e6e760e1bec298e15535fe3c`  
		Last Modified: Mon, 16 Apr 2018 19:54:29 GMT  
		Size: 56.3 MB (56293713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc5b252a6e7d2796cb33762f87e09fb8681e308b82079bafdb06956eadc515c`  
		Last Modified: Mon, 16 Apr 2018 19:55:21 GMT  
		Size: 140.6 MB (140553369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:33249c6ad1dc8ba8435fd76335dc0f665477ec92cce85e7ef9c8ae856f6a26da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.9 MB (204884647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c6b61b87cb26ac3f0ba4120592a63b8828ab55b521ed40e7486951ea5f9da1e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 12:00:21 GMT
ADD file:f597080ba6c19b2233650e5c5c8d4d20604ec0b09cb14033ebb788dc09953c9b in / 
# Fri, 13 Apr 2018 12:00:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 12:00:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:00:23 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 12:00:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 12:00:24 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 13:38:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 13:38:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 13:38:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 13:39:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bf7b53fabf455e22fa81faf7711b1d58afa9e9ce661e102719bb3dc9f8311220`  
		Last Modified: Fri, 13 Apr 2018 12:01:29 GMT  
		Size: 29.3 MB (29263031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6321a64e05e864b766aa0f746329e35a7e6e86b73d0d2a227c62dda9040ab6b4`  
		Last Modified: Fri, 13 Apr 2018 12:01:24 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7054c84f5de79d7af73e46b613fdc1303ca336e3cde4980e1c3a586bd8861a`  
		Last Modified: Fri, 13 Apr 2018 12:01:24 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37e4145b425874daa0feffa480f5f7051a33577c3f432e04168dee3455c9360`  
		Last Modified: Fri, 13 Apr 2018 12:01:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce6dea188869f9f0775436296f6d46b95ce766fa30c9fe3bcb142fe30961b1fb`  
		Last Modified: Fri, 13 Apr 2018 12:01:24 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aee1b0526f7a0c8bb4ee1cba10e2fb1c0aa78b28f865c56fc23250bf461db8e2`  
		Last Modified: Fri, 13 Apr 2018 13:43:48 GMT  
		Size: 5.5 MB (5535558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c8b259758e4f17a7978bc7c8b5048ce5cc2148e508e50e0c02e1562675da49`  
		Last Modified: Fri, 13 Apr 2018 13:43:47 GMT  
		Size: 2.9 MB (2909484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d70b91170b971af329a6b888315d62707cec1684cb5dfc7381026554fd22a22`  
		Last Modified: Fri, 13 Apr 2018 13:44:11 GMT  
		Size: 47.6 MB (47581785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa0f97689d73bb86ddf3f93753b491330b0bf9fdab705672a7bba5d98fa4e204`  
		Last Modified: Fri, 13 Apr 2018 13:44:45 GMT  
		Size: 119.6 MB (119592524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
