## `buildpack-deps:cosmic`

```console
$ docker pull buildpack-deps@sha256:bf7938e180a20957462b280bb6e3145178c9cbe09270cab5ba0aa3fce6734b27
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
$ docker pull buildpack-deps@sha256:4504641fa28fea3959316873762dffd5e41c8e2ad062afe56ac0b72361c50db5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.7 MB (221737158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b188a85da9c9fad8717562cfda1c6588829f24ae8b2c74e04610b57d1aae3d08`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:59 GMT
ADD file:8b0ccc99800a5f78a832ee06e3c0b41a440e09a7440cb4083c586db4ed5ef8c6 in / 
# Wed, 06 Feb 2019 03:38:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:38:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:38:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:38:01 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 05:32:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:33:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 05:33:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:36:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a138b85795ddb9bf319d1eb360af4ae2a107c3624533f2469756781c4b96b2eb`  
		Last Modified: Mon, 04 Feb 2019 15:11:05 GMT  
		Size: 29.3 MB (29269866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03f26254a3512bb6ad17698533a45f5cdeaced032b17205e0955763a8184172`  
		Last Modified: Wed, 06 Feb 2019 03:38:46 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c574f2a0d5fc60acda8ff09fd5e3eb34e1354802f0806f8ae17d2bd2c991772b`  
		Last Modified: Wed, 06 Feb 2019 03:38:46 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d214b3691158cb216fecf74099639861395c962a63a458fec1ad422d25afcf7c`  
		Last Modified: Wed, 06 Feb 2019 03:38:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25180066f9da7861f9df3c264f079e692528fba4bc372b4465bce5b6477384f`  
		Last Modified: Wed, 06 Feb 2019 05:58:12 GMT  
		Size: 6.1 MB (6099988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc323916b9899972866439fbce70da0666eb846c6cb3b12afa7b3e2011fdfb1`  
		Last Modified: Wed, 06 Feb 2019 05:58:12 GMT  
		Size: 3.0 MB (2974289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025f9b2a2c5182f5a72e46c54f70432892f61d7a557d3b7878bdc7cca8054b33`  
		Last Modified: Wed, 06 Feb 2019 05:58:28 GMT  
		Size: 48.4 MB (48376078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21478134d02530b6fad2cbeda74a936ee7b338d41cb21a583060d7f42c97aa19`  
		Last Modified: Wed, 06 Feb 2019 05:59:03 GMT  
		Size: 135.0 MB (135015698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:916ca2e7e2454a1e912c9e186e84c31a3818ca580b7a04ae3a743cc27aac29d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.1 MB (191113490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6696307d9064e229213d13aa1c7582833217caa9b47bfa461d5c5b5a78d0119c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 23 Jan 2019 12:58:48 GMT
ADD file:3b048f60db2f4df8710371c70e9ca8dd2cab6ee789fa1eda47fed3c30b74b266 in / 
# Wed, 23 Jan 2019 12:58:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:58:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:58:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:58:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:26:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:26:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:27:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:24dfcde4629ca0e77e64aa17b22b16e720dae9db062f063d4b374411fac97a15`  
		Last Modified: Wed, 23 Jan 2019 13:01:38 GMT  
		Size: 24.7 MB (24697971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17174ccd0cfc954bacc2051b67e4eaa0047e627e9dbd7f4d40e19b3871a11a2e`  
		Last Modified: Wed, 23 Jan 2019 13:01:31 GMT  
		Size: 867.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0018bef5931ca162197e806e3692a02fbb5e50b8cce7377b57a2e8f12010776f`  
		Last Modified: Wed, 23 Jan 2019 13:01:31 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e31b27059526153df819f9f94d62da558cad7b8636c1f59a5c5f573efead3620`  
		Last Modified: Wed, 23 Jan 2019 13:01:31 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537d045cc0e4c6385f3343de90228cbff4a11832e18b68eac1d044c6494886e2`  
		Last Modified: Wed, 23 Jan 2019 14:00:37 GMT  
		Size: 5.1 MB (5147982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0888ec247fda3f32028ce90d543124f3d3d38ec61f9e1891114a48d76125a3e7`  
		Last Modified: Wed, 23 Jan 2019 14:00:36 GMT  
		Size: 2.5 MB (2535559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384fe2d74cf0dc41d826cb5d20189aaaa0cd057908b70fdbddd30e8a4b725779`  
		Last Modified: Wed, 23 Jan 2019 14:00:58 GMT  
		Size: 43.5 MB (43503790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57db08f08d3d67709d5150ac7fef202228be6b7ddccbeb294c73b5c3562f2948`  
		Last Modified: Wed, 23 Jan 2019 14:01:41 GMT  
		Size: 115.2 MB (115226921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:819301dcc572e56d085de3c9e16df9bea1c1c2aa13134dfcd7798c36b71a79e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.1 MB (211090001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50b8365ebe97502937217b262ae6cfb87eb1a227ec6a6e81213af085715d3294`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:06:03 GMT
ADD file:37c662a6fb15af79ea0791b68d1d68098c1ae643457d31990f2e2874dc4a7a7e in / 
# Wed, 23 Jan 2019 10:06:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:06:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:06:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:06:34 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 10:00:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:01:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 10:02:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:11:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:97f52970d34c751bf03904e90eed3a6ce318cf7aaeedd1d0f23a85bb9f3b39f8`  
		Last Modified: Wed, 23 Jan 2019 10:10:08 GMT  
		Size: 27.5 MB (27535388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38132e010580afc152676206efb3c9cbe49a9e4188deb4fa1cdb8ec37aa7e02b`  
		Last Modified: Wed, 23 Jan 2019 10:09:58 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c337d9ca532c2f5259193fc0beb718465e447d4e03b5a049c6ca33cff107c6aa`  
		Last Modified: Wed, 23 Jan 2019 10:09:58 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20606d0c66aa158e7828d38999cdc15fca990bcee90adaa04b0d25f1f1dfdfe7`  
		Last Modified: Wed, 23 Jan 2019 10:09:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6c5723ff7c70c94ad23f337cf93709ec55acd159e87ffa26f4522cd70e89d9`  
		Last Modified: Wed, 06 Feb 2019 11:08:10 GMT  
		Size: 5.8 MB (5810604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2610c524df31b8cf62a7202e2e4780228d7c739e26d9576bc1c2dd67e7493ce4`  
		Last Modified: Wed, 06 Feb 2019 11:08:07 GMT  
		Size: 2.9 MB (2943459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599d7ab042eb56e7076507559f366a301382917d4329adada01a7432701e2df2`  
		Last Modified: Wed, 06 Feb 2019 11:09:20 GMT  
		Size: 48.3 MB (48311869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21236a4cce9d3daebd31760fc6d6912bb4defbb7ea3b5ec36cffac0515501efc`  
		Last Modified: Wed, 06 Feb 2019 11:12:01 GMT  
		Size: 126.5 MB (126487440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic` - linux; 386

```console
$ docker pull buildpack-deps@sha256:7e97a2b452fa0f9c82db336f2f8738c1cf1ba63d036b3a9dd17f08c761064cf2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.2 MB (226156025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3f776ac8997ec542b222ad670fe066500ed4e7485af8278febe71fabd387e3a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 23 Jan 2019 12:07:39 GMT
ADD file:d592beabc397d155adb741bc0b9e6c8db874035c4168d2aa64284fab794a1c02 in / 
# Wed, 23 Jan 2019 12:07:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:07:43 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:07:45 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:07:46 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 12:28:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:28:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:31:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:df25fea682441d1403c9ec0a3c622e77952d000388ae59f30c344a64d93150f1`  
		Last Modified: Wed, 23 Jan 2019 12:11:07 GMT  
		Size: 29.7 MB (29681756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c016d88b17169fdbbfc2447710150998364ff638086e7780cf04ad546e0ccecd`  
		Last Modified: Wed, 23 Jan 2019 12:10:58 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922775fc0e99123400d43047364b562785fde1c3ced69734546f84082720a555`  
		Last Modified: Wed, 23 Jan 2019 12:10:58 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596a8a843e8032e3e3301ce6d885718df74147b1a6aeb4ca70d8d4f40d72858c`  
		Last Modified: Wed, 23 Jan 2019 12:10:58 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:125cc33bc6f58323ebfbd8ffeee2736d467ed39b23c262473f50ef98be108023`  
		Last Modified: Wed, 23 Jan 2019 13:05:28 GMT  
		Size: 6.4 MB (6375759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:456b4796efc0de6627ac59f80095bd94977cf32e33f7be9e99f99d2a9b119ffd`  
		Last Modified: Wed, 23 Jan 2019 13:05:27 GMT  
		Size: 3.2 MB (3205766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed426c2fd0b75546163043044d7e6ed5d07da9bdabf91cb063456bbf42b302b1`  
		Last Modified: Wed, 23 Jan 2019 13:05:55 GMT  
		Size: 49.7 MB (49681011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93cadcefa92e7e22cbce0afa83579ed70bdc40f57ee3e39515f1cf669ee44670`  
		Last Modified: Wed, 23 Jan 2019 13:06:50 GMT  
		Size: 137.2 MB (137210495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:fded970b92728e839dac8fc2247a025b0ccddc9b56948edd6add1b8570bfd28a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.6 MB (248639089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f97503ae4c7f1331aba0b10d141908cb6075d3abf9734b9b5e0bcae64a4978f5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:25:26 GMT
ADD file:9f6c5aabe53f2d2784936bb74479b0b14fafb109a7907be1879922412def9ff6 in / 
# Wed, 23 Jan 2019 09:25:32 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:25:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:25:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:26:06 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:24:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 10:26:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:35:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4ff6d53b5130f99fbb859ee6d48d00e79b4cf98c77122859c7637e5ec56733fe`  
		Last Modified: Wed, 23 Jan 2019 09:29:55 GMT  
		Size: 34.1 MB (34072500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e360a97617704f060fd6d8bb627ef162357ea6609beac58c287e7a71a2ba20d`  
		Last Modified: Wed, 23 Jan 2019 09:29:43 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559a31eaa7872916d1dcacf4217a1099f590e25ef272ce364778c68eeedd6b45`  
		Last Modified: Wed, 23 Jan 2019 09:29:43 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa27459201019b9bcb40f65ea83a03a05118d14c10fbd5d168c21495d7ff3bed`  
		Last Modified: Wed, 23 Jan 2019 09:29:43 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b1c2b714c333b9f2ffa0ff76d9d141e4855294dd0ac1c234046fe7f15ae3d1`  
		Last Modified: Wed, 23 Jan 2019 11:42:37 GMT  
		Size: 6.8 MB (6821479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f73d7a9ae7b91777477d8e80e4d47e9cdfc12f2dfbd717b26f66274d71c459`  
		Last Modified: Wed, 23 Jan 2019 11:42:35 GMT  
		Size: 3.8 MB (3758361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9421dbabfc81fcb8f9ad0c3d3a26a62ef929c7e6cfb4f3cf0dd0f5d982a41cd8`  
		Last Modified: Wed, 23 Jan 2019 11:43:13 GMT  
		Size: 57.2 MB (57225301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7206f913f323546fdb77b1877dd7fb2ea7e6a164ae027f86fff26ff01b0a37`  
		Last Modified: Wed, 23 Jan 2019 11:44:19 GMT  
		Size: 146.8 MB (146760177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:2ddf0e695e300505b9bd57d5caf55dab64a5bb2db35d6de66e4c5649c0419918
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.2 MB (206203008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf4cbff75ac925ef2ad7513b7de4e337f9c90a487827ab1fb824b533429bbdb4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 23 Jan 2019 12:51:18 GMT
ADD file:b0bf675c9a0d58f4a2711e74e7e9d9608aaf17c39a619ae173b8932533fbaa5f in / 
# Wed, 23 Jan 2019 12:51:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:51:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:51:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:51:22 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:11:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:11:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:11:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:12:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f928c2224ef1d8299a2bfebec8b608e42be56f1b16e8ee70e52761edcde21075`  
		Last Modified: Wed, 23 Jan 2019 12:52:55 GMT  
		Size: 27.7 MB (27687589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85f572b69f5b11da81e7aef882b4592961ca1725375936581ea26b42607cfbf`  
		Last Modified: Wed, 23 Jan 2019 12:52:49 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a4e6a1538041752d98f7692c4f098b4570dcbb44e38214dec0ace1ab3f3e07a`  
		Last Modified: Wed, 23 Jan 2019 12:52:49 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773fb3f06c06605b2fa12d8a0dc5ea37ef8392d5515dc5f792a044d9232e9680`  
		Last Modified: Wed, 23 Jan 2019 12:52:49 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e32767f3abc5ddfc3cdd8ab5e8fbad0199030bbe8cfba232350c9b37dec3680`  
		Last Modified: Wed, 23 Jan 2019 13:24:04 GMT  
		Size: 5.8 MB (5768820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c624b372c058caee379ac2a2be9f7ff400aa5cfb8fcc07b4ec0f724f4720d802`  
		Last Modified: Wed, 23 Jan 2019 13:24:03 GMT  
		Size: 2.9 MB (2915601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73ff5a3080222f37bc47dace990ad996c1822e3ad1102eaa14300d60e8c3024`  
		Last Modified: Wed, 23 Jan 2019 13:24:20 GMT  
		Size: 47.8 MB (47757628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05987e0105a6d3d7ba52fd671dbdb59d9130a2d5a95e9238f1171feb3cfa108b`  
		Last Modified: Wed, 23 Jan 2019 13:24:49 GMT  
		Size: 122.1 MB (122072131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
