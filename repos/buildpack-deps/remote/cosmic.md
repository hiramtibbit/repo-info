## `buildpack-deps:cosmic`

```console
$ docker pull buildpack-deps@sha256:0c3a674e8e5c89c518625c774478b9f2c859bf1736cc5a23b2ed3851cdc8f1c5
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
$ docker pull buildpack-deps@sha256:e311c3f80d7ff598289afeb58a0c2600fdd40b3d53c4188e62ee759892d752f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.6 MB (221553700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2f8b23223c2e435a017a12545a84e09ac3a3fbe4b0f6486c48de66e4381ca14`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:23:43 GMT
ADD file:8d9908cb20ac0592f9e5a67da44c6348318033812fbd26ba3b441ca5ce5bfe33 in / 
# Fri, 28 Dec 2018 23:23:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:23:45 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:23:45 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:23:46 GMT
CMD ["/bin/bash"]
# Fri, 28 Dec 2018 23:49:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:49:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 28 Dec 2018 23:50:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:52:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d222a4da264e0b37d48b38c62b014a16ca5089ba478a3d7c9a0ce5d7db64fd07`  
		Last Modified: Mon, 24 Dec 2018 15:07:07 GMT  
		Size: 29.3 MB (29265985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc8aef08d7f5f3acb87daab04776b1c2df78d1097b3bf7e34b95b29ef8be0365`  
		Last Modified: Fri, 28 Dec 2018 23:26:11 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc25173478e95b766e8bc26944652b9baa87cbebb2d9d1d9d34b85303b9b2067`  
		Last Modified: Fri, 28 Dec 2018 23:26:11 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860140c5e05ae6e62f893bba5f4c8f332457aca9c2f0a9dd83094ea06b354dbd`  
		Last Modified: Fri, 28 Dec 2018 23:26:11 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049e2993e06d870b7433503d237353716027d5af22de46789632603b91538f7e`  
		Last Modified: Sat, 29 Dec 2018 00:17:44 GMT  
		Size: 6.1 MB (6099928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb216b5f31f4f2b3f95f9d40daa3fd30f1599ff371d81a3e79bb4a48e56c57b`  
		Last Modified: Sat, 29 Dec 2018 00:17:44 GMT  
		Size: 3.0 MB (2973818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa30873192b43f14f54d1b46b820e368648f30a5c4fad6fbc5af45faa98153e5`  
		Last Modified: Sat, 29 Dec 2018 00:18:01 GMT  
		Size: 48.4 MB (48376827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e9af533a4a365acf12dd3ef2c76e22a3a920504b4f95d7ea56ff8842743a92`  
		Last Modified: Sat, 29 Dec 2018 00:18:35 GMT  
		Size: 134.8 MB (134835899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:6beece309a68b3854a42aac0bdcfac4bfb98c5744f013d4226e7c849342eef85
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.0 MB (190978061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61b42bb17fac03161d5b0497d57e66be353c528d00995caf3b32594eb0ddf60a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:06:15 GMT
ADD file:7c4e466c789110f5d3cf277bfbda565b35bc8acf1ad61b770060da3b353e97ce in / 
# Tue, 20 Nov 2018 13:06:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:06:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:06:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:06:20 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 14:21:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:21:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 20 Nov 2018 14:22:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:24:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c56f6dd2a5625c67474a4f2f55b027383eb2c6a9bb27af3a2dbe4f31b23cdf15`  
		Last Modified: Tue, 20 Nov 2018 13:09:06 GMT  
		Size: 24.7 MB (24701497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aeafc6d072ae9e058ca653081927c0a4d2a744e1d3972eceaaab372ca84df7c`  
		Last Modified: Tue, 20 Nov 2018 13:09:01 GMT  
		Size: 864.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7441156fac0dcae857ed8fca83da94b75e944c4320aaebf244f77d25ff59994`  
		Last Modified: Tue, 20 Nov 2018 13:09:01 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a3e6b0a5e26ac8941c97e322aa83abc29a3fcc5d158b30e2a473d4122e6ef2`  
		Last Modified: Tue, 20 Nov 2018 13:09:01 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf088201c8e7c671745a6250dad89e459349dbf58c07bd735a3a7f6f1147372`  
		Last Modified: Tue, 20 Nov 2018 14:34:59 GMT  
		Size: 5.1 MB (5146721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b6640d20a7eaa198059395ae29dcabb211dd14c6d45c5c53fe7599afff8a02`  
		Last Modified: Tue, 20 Nov 2018 14:34:56 GMT  
		Size: 2.5 MB (2534779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fbbce444686eb9f608b53561ac6169d7b89c680967e241ccf3f72dc2715478f`  
		Last Modified: Tue, 20 Nov 2018 14:35:26 GMT  
		Size: 43.5 MB (43496907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da41ce37b8194c45b4c96afd68171b480699f0b5ead9b154895069284be5f35c`  
		Last Modified: Tue, 20 Nov 2018 14:36:11 GMT  
		Size: 115.1 MB (115096892 bytes)  
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
$ docker pull buildpack-deps@sha256:2c494bb41a66a88e6266efd4cad900c2bb061e7fe8670ad0c66aa0fa7c401fed
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.4 MB (248379157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:890504fb0ee6e40e3e7127c37ae6a341b059a3b81c771265345cf6ecbfcfccde`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:20:26 GMT
ADD file:f3fc8c6f59257146b3ff4ed962690a10f94c02d63d5fae2119143ea724ab5907 in / 
# Sat, 29 Dec 2018 09:20:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 09:20:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 09:20:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 09:20:58 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:07:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:07:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 10:10:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:17:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2387afb4886480eea4d2affe5b77f9c95fde6ec4b9787fb6dbcba583479fd339`  
		Last Modified: Sat, 29 Dec 2018 09:24:44 GMT  
		Size: 34.1 MB (34071295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82f2dc881aa644409d7df7ae377445a7a70a4ba5dcb8c3a1aba15aaaab3277f9`  
		Last Modified: Sat, 29 Dec 2018 09:24:29 GMT  
		Size: 869.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db7069cc32c6c169e5e5e8b5557488a169d710753fa3fbf4a308c645c20a0eea`  
		Last Modified: Sat, 29 Dec 2018 09:24:28 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b31cc0268d678509171c245cd87e53ec7cb8aab0144b87d8b50e8cade0405cf`  
		Last Modified: Sat, 29 Dec 2018 09:24:28 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:205b171814589b26de1247a8db9f3030c7a957062935e86c758d953041406b91`  
		Last Modified: Sat, 29 Dec 2018 11:11:35 GMT  
		Size: 6.8 MB (6821378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58da30ac7bdb30080f3477f9579a34ed5c446b65180ce1f66e8f1c3af2c3ca43`  
		Last Modified: Sat, 29 Dec 2018 11:11:33 GMT  
		Size: 3.8 MB (3757303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef08230025d22f9e80f4d870ecf8e49f378a3215f2a2ab0351800fe32318e525`  
		Last Modified: Sat, 29 Dec 2018 11:12:30 GMT  
		Size: 57.2 MB (57225789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9dbf267fd9f46e172ce902458d09b5b38819b0c1bfdb5edf5f7b165335a748`  
		Last Modified: Sat, 29 Dec 2018 11:13:52 GMT  
		Size: 146.5 MB (146502123 bytes)  
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
