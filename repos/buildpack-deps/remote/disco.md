## `buildpack-deps:disco`

```console
$ docker pull buildpack-deps@sha256:fdb298a8cd860ceddefac2d9331cb4850a1af58d11d4b086b09a7954b1e8d39b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `buildpack-deps:disco` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:a898ca5de0d5fad85413514cff00ff81fddfc779e50200de7ec261ac0004a22b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.0 MB (225041805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8355ec8ab3d613a36804c54e34cd9e539eca57b2de77f39d466df7eca4374dd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:22:35 GMT
ADD file:90689176a9c50e81ddd2854c4cc148c8c0a89da2f45e4ea7a56c611f22c32aa2 in / 
# Mon, 19 Nov 2018 21:22:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:22:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:22:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:22:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Dec 2018 23:20:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Dec 2018 23:20:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Dec 2018 23:21:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Dec 2018 23:24:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a051180de8da70b092ee2f14774e264340ba4d2068b05ce125779b622e681702`  
		Last Modified: Mon, 19 Nov 2018 21:26:30 GMT  
		Size: 29.5 MB (29501601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11d9cbf1b688af3911b28b0efd80e0fc9c1699812d850c631d3d513d225b6e64`  
		Last Modified: Mon, 19 Nov 2018 21:26:25 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffb718a3ec78e3a79ba9a71db6be89db856bc90189a784556966d1b3ba61684`  
		Last Modified: Mon, 19 Nov 2018 21:26:25 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9251c5721cc8150e7bd7d40a5de8aa6053a04c75a4ed200954188b9260103a75`  
		Last Modified: Mon, 19 Nov 2018 21:26:25 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7372f7150b5d270e07002258671ef9c4477f7b1a8d28cb65310c2f90ac7bba0b`  
		Last Modified: Tue, 04 Dec 2018 23:26:16 GMT  
		Size: 6.1 MB (6146002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5434688efbf340fbc0b9eedd940d77f03e8c8f89e0ab1c1a4e7e2ee101ae34`  
		Last Modified: Tue, 04 Dec 2018 23:26:15 GMT  
		Size: 3.0 MB (2971361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7fe7c4204a62afc42cadfc0cb363fdefce3d148619e54127e7265a074fda205`  
		Last Modified: Tue, 04 Dec 2018 23:27:15 GMT  
		Size: 47.7 MB (47656579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0563afc1675a130d58374c9a6fa49c2c5d78e0aa9b4e6477b9e2ee37687db87`  
		Last Modified: Tue, 04 Dec 2018 23:28:19 GMT  
		Size: 138.8 MB (138765045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:afc6799a6380c1302f3e3d68ce4c60fc68fc4b965eb664e64b27f20972d88947
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.3 MB (214340001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f08ce33b65cb2a930fe08e6174592bd4a8986be464724ecbd11150015eeec19c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:52:16 GMT
ADD file:7344b2780092eb0580516b798b85c19f665d8f0f6962166b851a75991810fc35 in / 
# Tue, 20 Nov 2018 09:52:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:52:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:52:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:52:32 GMT
CMD ["/bin/bash"]
# Wed, 05 Dec 2018 09:40:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Dec 2018 09:40:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Dec 2018 09:41:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Dec 2018 09:49:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8c357efdaec52fce4e027720fe69fed72bf2948bc87725246a6c6a8b7e19b890`  
		Last Modified: Tue, 20 Nov 2018 09:56:25 GMT  
		Size: 27.8 MB (27793652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be69864713df57e321efc3c935af24f24f7450d1eda16c156dd6a4a6ffd0430`  
		Last Modified: Tue, 20 Nov 2018 09:56:12 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e7a518aa95acfe884deb1ee1e1e76ac6fcb97991b65fc75f54e903cf5d7964`  
		Last Modified: Tue, 20 Nov 2018 09:56:12 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349a5019a4779f00c9d91b5bc9885f48ce8df61890a7d1e17b607ddd87ceaba5`  
		Last Modified: Tue, 20 Nov 2018 09:56:12 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62fbaee63a01006cfca9a9e371cbcfb50ff5d1f2913a9f89ec02c692c4b3460`  
		Last Modified: Wed, 05 Dec 2018 09:50:18 GMT  
		Size: 6.0 MB (6022364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423f35105f95a0046c6fa1252932b37a4645e85effdabee50b41c500d7964c85`  
		Last Modified: Wed, 05 Dec 2018 09:50:17 GMT  
		Size: 2.9 MB (2943560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f28aff46d0b1a7e80f59d7f801c8290cefe25b038a9b62d72359b09ed84bb7e`  
		Last Modified: Wed, 05 Dec 2018 09:51:00 GMT  
		Size: 47.9 MB (47872331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c9da461e396cfd8bda6a4737843d5a0dd517fc7f0b6d0a808704afba25ad07`  
		Last Modified: Wed, 05 Dec 2018 09:52:09 GMT  
		Size: 129.7 MB (129706875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco` - linux; 386

```console
$ docker pull buildpack-deps@sha256:13e29dbab1d0e81444411343e5d4c156ec0f15fd8874dea436b378abd9b5198b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.8 MB (229758442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2137de1c4bc8fe9f5c1cdfc803790bf2cf5e5df1154065a40897aa9b0590e22f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 12:18:44 GMT
ADD file:7e657b3a739d3b59bf073c45b33dc5986070acae80ef30ee5f075270ddb528c2 in / 
# Tue, 20 Nov 2018 12:18:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 12:18:45 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:18:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 12:18:46 GMT
CMD ["/bin/bash"]
# Wed, 05 Dec 2018 11:39:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Dec 2018 11:39:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Dec 2018 11:40:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Dec 2018 11:43:31 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b25787be2647215207aa9e275ab49a7fd66eefd2b419d9816d29da2da9067c69`  
		Last Modified: Tue, 20 Nov 2018 12:22:30 GMT  
		Size: 29.9 MB (29904820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad7d52881b5120764f626b01bb517b7321a24c0fcd45be7595c5f6b18911caa`  
		Last Modified: Tue, 20 Nov 2018 12:22:23 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b004f669deef8471282d7dd38bedff7e9b052ff0eccb2ae828bf5efb5f5c0cec`  
		Last Modified: Tue, 20 Nov 2018 12:22:22 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a69163a735301f92bedb8e6d05114aadb85d8ee00da9c810ba22e070c6fdfd`  
		Last Modified: Tue, 20 Nov 2018 12:22:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8567cab71942aaa35e855f867c0ec4c668bfa6de5ec49f263f22d392560b51f`  
		Last Modified: Wed, 05 Dec 2018 11:44:51 GMT  
		Size: 6.4 MB (6420884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfda097fc3c01fe17061036e0c60df2c97de02650a97caa6203eda6458f15e0`  
		Last Modified: Wed, 05 Dec 2018 11:44:50 GMT  
		Size: 3.2 MB (3204043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab59cb8183faea7da4ae94566980b1dc21ce2cc1e3c83c0b8ddf0069697b858e`  
		Last Modified: Wed, 05 Dec 2018 11:45:38 GMT  
		Size: 49.1 MB (49109887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6bab8bdb788b66998cfb344c5858e03169e3d45e229c3c2a6cf1da1f426d2e`  
		Last Modified: Wed, 05 Dec 2018 11:46:43 GMT  
		Size: 141.1 MB (141117589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:990f56b1ad079927b03b008f322baca03bd1e73fb85be747d5ce6546f5d9fe91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.8 MB (251756457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93e39804165e62f257fb9969e38ddfa7dbfee3e6297e01638588d8bd365ee26f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:28:04 GMT
ADD file:c52f45fc7e193e1a7a0b098f5cc5b2b7d00953d45ce03e99ae154e5370e09c32 in / 
# Tue, 20 Nov 2018 09:28:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:28:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:28:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:28:18 GMT
CMD ["/bin/bash"]
# Wed, 05 Dec 2018 09:27:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Dec 2018 09:28:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Dec 2018 09:32:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Dec 2018 09:41:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:62428cf1a2cb2075006b7029751141bac9d67b4356cddb4fbe18e88ea29a94fd`  
		Last Modified: Tue, 20 Nov 2018 09:49:57 GMT  
		Size: 34.3 MB (34322924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0db628500f8e6afffc44fdd6e579767958b0debb9821009902dfe2d74848f46`  
		Last Modified: Tue, 20 Nov 2018 09:49:42 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026ee41cc324eee3b3217b04f8206cea23ecdd656e97d75d782d14f3633fc077`  
		Last Modified: Tue, 20 Nov 2018 09:49:42 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da5868108c071347aeec39a17a4e58aafbcf9a29fe8554a7bdd6712e75f88d4`  
		Last Modified: Tue, 20 Nov 2018 09:49:42 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ea08591e656b52112a0fd02917d01c9ea1f55852c87d80f441f704ddf8255cd`  
		Last Modified: Wed, 05 Dec 2018 09:46:08 GMT  
		Size: 7.0 MB (6983967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59da67c497ab83defa744cf81c87c2e9671f2cc23966c53e9df03540457e2f74`  
		Last Modified: Wed, 05 Dec 2018 09:46:07 GMT  
		Size: 3.8 MB (3756357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:452fce88b968185d6e6935f809f370662da282a029065f715613d220a1927d91`  
		Last Modified: Wed, 05 Dec 2018 09:52:13 GMT  
		Size: 56.5 MB (56510458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ea30ac984ac6b036f78c2d5b6054cf532e049141c186b62801e7d605c64f7e`  
		Last Modified: Wed, 05 Dec 2018 09:56:20 GMT  
		Size: 150.2 MB (150181509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
