## `buildpack-deps:bionic-scm`

```console
$ docker pull buildpack-deps@sha256:1142b1fe428f1c2622490e6eec77e4c34437fa5d2dcb885298124fe882a10421
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:bionic-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:d45179d352963dfc28f5b932133d637d49fd74066576bf115cb182481d7b8ddf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85739747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5d01942e901d30081c3bd803a4b0d858f3fec7372fd19d7a4fd61a6ccb04816`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:41:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:41:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 15 May 2019 21:42:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a886ca1ebafc3d145644b74e70936e9e0a6c923012afedc495e6dbcdd7c018ec`  
		Last Modified: Wed, 15 May 2019 21:56:13 GMT  
		Size: 5.8 MB (5827851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6864ccbd1d60643c9607a42269a211104072c293beb500df92e2c9dcc5dee2d`  
		Last Modified: Wed, 15 May 2019 21:56:13 GMT  
		Size: 3.0 MB (2959618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e3bcbe44e3bb37693969dfdcc6a53cd23797081933b2fb6e63bc67681b3dc8`  
		Last Modified: Wed, 15 May 2019 21:56:29 GMT  
		Size: 48.1 MB (48096202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:b0a9ed1fc100b866ede723a4cd5be45313308f0d912f72e8a464666b54ca9029
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.2 MB (75176052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e42f01cd6ab3734304d2c7fa860282f1af4cfe54afe9ea981e3e1813a2b64c11`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:58:24 GMT
ADD file:816ebaa0df5396bcd14111f4c10b3aa1d9644e0fc8cbb961ba8755c1e54d768e in / 
# Wed, 15 May 2019 21:58:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:58:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:58:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:58:32 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:22:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:22:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 15 May 2019 22:23:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:642790bfe707b4b246624090d72784c59aa5f0d16abf95f4f7b3de91b02225b9`  
		Last Modified: Wed, 15 May 2019 22:01:58 GMT  
		Size: 24.4 MB (24445379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d7f0a2a454e1b31011791e8b8149efe28d6982ce345a35b250df991e3f1a1ba`  
		Last Modified: Wed, 15 May 2019 22:01:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040caec04e297f82c430a724a6bcb3f6971f28885f156a41340c3a56ca43e045`  
		Last Modified: Wed, 15 May 2019 22:01:51 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9598cb90eaa52e7fdb276538f32429f2ac8852143b9d70aa3ac3b2c64ea1cc9`  
		Last Modified: Wed, 15 May 2019 22:44:03 GMT  
		Size: 4.9 MB (4924537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de8bff07763b7c0a4cd651656e7f07e8aa5a3ce9ef603258b5f93e6268a5e3e8`  
		Last Modified: Wed, 15 May 2019 22:44:03 GMT  
		Size: 2.5 MB (2522645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56bcbe3ad42da38e278557fe013ffba2bb2b25d3bdfa8b5a4df1f82d3c08ada4`  
		Last Modified: Wed, 15 May 2019 22:44:27 GMT  
		Size: 43.3 MB (43282455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:bc47c789b7beb4443058d076e9d76de5257a42f563d932b785cc859b473718ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.2 MB (87242670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42469c3ede1c0b51176a7fd302dd1cbeae101ed3714e3c2dd8c45de0fd0968ea`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:35:52 GMT
ADD file:f046142405da23f452b26e01729a6fdc5a92b0fa85ec8456a1fee249160217bb in / 
# Sat, 27 Apr 2019 09:35:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:35:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:35:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:36:00 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 11:43:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:44:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 27 Apr 2019 11:46:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bf7c45c81bd70f13db7f1612a4596418f2c15b48384d2c1d5597b7534e60b3f3`  
		Last Modified: Sat, 27 Apr 2019 09:39:34 GMT  
		Size: 33.3 MB (33343401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5396f07cded369e173bde57fa17c337db371930ea1b2e925d3c04cb407794d5c`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ceb566582d63624b9d3a22ead5cbf0836b8c5bca41b4b7bb777c9c11923ede`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb3982847b2f6cb9353dc95b2dbd7092a92764a1946b9901adf59d886849542`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3550d01a0f48faad0159d936d489f7757e825cbcfc5fd549dbd90427035ac898`  
		Last Modified: Sat, 27 Apr 2019 12:45:22 GMT  
		Size: 5.3 MB (5293544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1aa072c385df3a4f3bb6f373f4c38a52f5f037cd9cd1f8dc4cf8a3db0dd3d6`  
		Last Modified: Sat, 27 Apr 2019 12:45:21 GMT  
		Size: 2.7 MB (2721723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3297c361ab584bbb7993d42d8414a988b88c3ab9f364ca545c2318363ead60db`  
		Last Modified: Sat, 27 Apr 2019 12:45:52 GMT  
		Size: 45.9 MB (45882458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:23f1e5a763da80aa793adc3b67cdab061e0c8cbc1ef3aec0d1d98d453427a0ef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.2 MB (88233053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2e83ea8bb921acffb5366cd5daca46f98f64f73ad9a7003988897a57d38b7ba`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:39:17 GMT
ADD file:f842b2940a14cba8471389ebac2a1dbee8f736dc270dc6ca35c0fa6017032873 in / 
# Wed, 15 May 2019 21:39:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:39:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:39:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:39:19 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:58:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:58:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 15 May 2019 21:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:13d592dcddc564565b96139277c35f06b708f92750b65584615e633b44ce946f`  
		Last Modified: Wed, 15 May 2019 21:41:03 GMT  
		Size: 29.3 MB (29266878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5311ad4c5dbad149b277499323dd6a79c193d5abe08c938384d82036be61dce`  
		Last Modified: Wed, 15 May 2019 21:40:54 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:683c78130c3fcc117311e7f89a1413be158927ccd9a294ec0803978c78bc754c`  
		Last Modified: Wed, 15 May 2019 21:40:54 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d60c1c8971772c7096ec27797da488bf0b5687dd8a5615874032795db90cbbc`  
		Last Modified: Wed, 15 May 2019 22:17:04 GMT  
		Size: 6.1 MB (6105066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e025a27a2ea7439d9727ae50cc91ffae1eba3141f98171ef8ea3d78134d7c7b6`  
		Last Modified: Wed, 15 May 2019 22:17:02 GMT  
		Size: 3.2 MB (3190406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2ecfade55518579d2f9309f223b0466e7837ac5b27b81231aa5e54e019e934`  
		Last Modified: Wed, 15 May 2019 22:17:26 GMT  
		Size: 49.7 MB (49669697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:ed03d9c0387f34645544cfab49c8bfd7a6d2ff0cd2b654c3babf48cf42290c52
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.6 MB (98594018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:844354e392423e3f8fec612018a2394d2005bf2ffdf79d6919c986c7a33c570d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 22:22:53 GMT
ADD file:f41b697e1dfb953c707b36804e362c7f39555ea72e42f91accbc2d003eb7a8e4 in / 
# Wed, 15 May 2019 22:23:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:23:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:23:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:23:21 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:11:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:13:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 15 May 2019 23:15:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:fe2c0e1c2ef60bdf8f65a2f45d232bd20d20e2a49d4bdd0ccf1a6e7e20184510`  
		Last Modified: Wed, 15 May 2019 22:28:38 GMT  
		Size: 32.6 MB (32559272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fbd1cbb08d35dad634c7997b32f338a35c83bf1e04f29deb15c521dc5093`  
		Last Modified: Wed, 15 May 2019 22:28:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069807fa449f2b2cfa8520cbd8a4f0cbffaf3445664f4f000df1bb4e4207fc0`  
		Last Modified: Wed, 15 May 2019 22:28:10 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71936671a0a93f0ca54bdf932f205d26c5e37f3918b80407c776be2ff4792cc`  
		Last Modified: Wed, 15 May 2019 23:58:52 GMT  
		Size: 6.0 MB (6039491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0d88edea975dfcdfc9d5b3d638abcd84678723dbdef0d17af854bfecba4663`  
		Last Modified: Wed, 15 May 2019 23:58:51 GMT  
		Size: 3.7 MB (3657991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880d0d5acf38642face691a81a5b2ffae85dd9dd7281d6336fae013745205b83`  
		Last Modified: Wed, 15 May 2019 23:59:35 GMT  
		Size: 56.3 MB (56336226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:9e151570438d37aae1a3cf5ae5c64b447c0442fcdac01bd35be39cc7a55dbb22
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.6 MB (83585980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e5cecfea6f876b6697289b7d97d7a3cd213523c2c94970539296711ad3b42c2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:42:57 GMT
ADD file:099f81542cb8e3e3e4fc2556d8067214392b39f0958e3452312495c98ae25e76 in / 
# Wed, 15 May 2019 21:43:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:43:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:43:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:43:14 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:05:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:06:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 15 May 2019 22:07:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a3ef07dd1fb74710cbd05c9bed2158fa7e005b766ac22ee052c37bc04215d25d`  
		Last Modified: Wed, 15 May 2019 21:46:43 GMT  
		Size: 27.5 MB (27532637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3f8f7d030578ebc1c4656ad55d61c81d712b0b43add1862837acf9d7365d67`  
		Last Modified: Wed, 15 May 2019 21:46:29 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4fa8d15db8edc923fd948fd13c76765471952cf1ac5df39c26f98250ab7944`  
		Last Modified: Wed, 15 May 2019 21:46:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d98e1120e7d78085f1c971326457f259b3ec1ec4d0b1adac295d507b253a34`  
		Last Modified: Wed, 15 May 2019 22:31:04 GMT  
		Size: 5.5 MB (5513664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47fcc7dd76c87bd0ac59cfdcc37b1436f2fb9acb9cdcceb70328d4fd77783474`  
		Last Modified: Wed, 15 May 2019 22:31:03 GMT  
		Size: 2.9 MB (2913531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:433453bc4d9171563c31161ee048bf5accf803d9773e9a720d6f463fdcfe4845`  
		Last Modified: Wed, 15 May 2019 22:31:29 GMT  
		Size: 47.6 MB (47625138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
