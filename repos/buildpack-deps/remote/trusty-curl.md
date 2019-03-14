## `buildpack-deps:trusty-curl`

```console
$ docker pull buildpack-deps@sha256:949cb69d41e03fde5b1bec1703ce7494144edb0947393c91fa1743b754b16331
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `buildpack-deps:trusty-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:100a00695d9dd82c675431a7dbfe0eeea548b22735b54211bce63dec7465f477
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71881347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddc52aff890cebcd07d086718a8a51fc656ba79278174a64f035c50a20cdd617`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:54 GMT
ADD file:4a03a167b06c4f47e20544d8e421dc0ebd8c1eadb24f0855f11b5759910e8674 in / 
# Tue, 12 Mar 2019 00:20:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:48:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:48:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:e082d449913058b0a86fef6c0208e5769b2d024c3bb465b13e53cc0da09e3c4c`  
		Last Modified: Tue, 05 Mar 2019 13:24:44 GMT  
		Size: 67.1 MB (67148830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371450624c9ee7ed9a89fe50488f5f03060a16a4bead015e11a423bd46f553c2`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a555b3a57ca08b00da3b695d8e5188503fbfed6f740bb9f5601e68c8497d4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1456d810d42e722e565c11020aaeb756ee536ec1f5f799f528eeea2cb0306f4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5e258c1a312bb5aa823bd20cf51f52c8d660b86c3b636c143cf7e9475fd077`  
		Last Modified: Tue, 12 Mar 2019 00:57:44 GMT  
		Size: 4.7 MB (4659342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:4dd3e4299f98f9aab9ee4966b79b0ece7bed059b824785c1037b49ab7c960321
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65813797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e5c44a5016d6e1f621ec107d7ca8095265fd1b43d2ea29e8464ec9033e5a32c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:44:14 GMT
ADD file:90a973e794494d63a330b31c285599343776962704a683c434551d819ab1a79e in / 
# Tue, 12 Mar 2019 12:44:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:44:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:44:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:44:20 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 13:31:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:31:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:91b349320ea3ce98ee662e7a170794bd1357034b708243b8183beb3cfac8194b`  
		Last Modified: Mon, 11 Mar 2019 15:20:46 GMT  
		Size: 61.5 MB (61488232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c0f69366f52c7c4bb008b7359854fa75744278293d4ca7aa71f56c46e18ca6`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 76.8 KB (76778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c675d4aed10d8bb382f7bd42c25b2401794ce970fc909d1709d0b5a0872d70b9`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01b3703bf2b4688044b1f12d0b608c6c27b1141775a92de870a89964ce78381`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38455fe686d6c0019281acdd3d1ac2ddc2bbc2bbf65361f6eaeec7b79fbfe789`  
		Last Modified: Tue, 12 Mar 2019 13:42:10 GMT  
		Size: 4.2 MB (4248238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:b98fc16226739fad26fbf6e9cf520b9335306e9662c0b45b8cbb27f822c1832c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.6 MB (67644100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0043ceb77acf3add73139b36d77e11ec709159cd1c94936d4f05fdf7d7ab23a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:36:37 GMT
ADD file:6f285b235a72a3aa8cf7c578d863e7098bc2e45cdcb4cbac36d22f50ea80e071 in / 
# Thu, 14 Mar 2019 09:36:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:36:43 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:36:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:36:47 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 12:16:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:16:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:804d6a3905aa72301e4e1bb5d06797cb6ee283d086cb9bc270b57e23edb55e47`  
		Last Modified: Mon, 11 Mar 2019 15:20:35 GMT  
		Size: 63.2 MB (63211687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b70fb30e31fad10fa93e3a07c02d9d205ee475f42eeb3b784b2a300de043975`  
		Last Modified: Thu, 14 Mar 2019 09:39:00 GMT  
		Size: 59.1 KB (59102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965f010c044e42545db11a054bb3309407b975bcfbab2492753216a7eb0a72b8`  
		Last Modified: Thu, 14 Mar 2019 09:39:00 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:005d86a5dc57ca266ba593b46fe86fdf251bf7c3a46a0163e29e0ca2c07014c0`  
		Last Modified: Thu, 14 Mar 2019 09:39:00 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abfc20ca638f3a392f96085df8c17ce5574ba70f480f5eb1555cc0a87fec0f75`  
		Last Modified: Thu, 14 Mar 2019 12:41:31 GMT  
		Size: 4.4 MB (4372790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:07427b30c4ca27ca929b06f0a5de649ece612bbb7d6c85c7f7cb6e4a34a8b0a4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.6 MB (69563226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b48733b5e3c88f52939fbb19d378b9f06f679c8ff21e7b4c87216b8035a1d4be`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 12 Mar 2019 11:35:05 GMT
ADD file:a545e9a90ba49231efc4376b0b7d7c9504dc139e390febeb4cf5c8f16a20e570 in / 
# Tue, 12 Mar 2019 11:35:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 11:35:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 11:35:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 11:35:07 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 12:03:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:03:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:14fc4ff9a1e24eb81d7e2fc1363144eaa79640241bf619b8f19bf4121e753130`  
		Last Modified: Wed, 06 Mar 2019 09:16:51 GMT  
		Size: 64.9 MB (64851414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52401ab23c5253f07e5d13182dbf8d0e754aa9f612879b8cdc2eac767ff8afaf`  
		Last Modified: Tue, 12 Mar 2019 11:36:06 GMT  
		Size: 64.9 KB (64859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d452e2688d8bfd1c1f660eac1a6cf7f1f7520055735fb8e88554634b9f752d7`  
		Last Modified: Tue, 12 Mar 2019 11:36:07 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e619c64a486303d3e8309b3d0c75144c89ecfa830d53e5bf812ae4ab6c99e44e`  
		Last Modified: Tue, 12 Mar 2019 11:36:06 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:637fbcb0e89ca8944ea6ff256b06b996ae74b60b1df87d40efe42ba6bdb6e8fc`  
		Last Modified: Tue, 12 Mar 2019 12:13:50 GMT  
		Size: 4.6 MB (4646432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:bb94643455f72a77e2370d4e4052845e85d28339f5a9fea0208cb702be64444b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.6 MB (74591078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57ad6e68c8d15587ebf3259e5b1555d2fb7fcc43eef79ff828ce4c0109bd882f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 12 Mar 2019 08:38:09 GMT
ADD file:4d2f8c359b4e201499c70a6b9f25e299347d15566f8fe1bc105f9d8a8ce59718 in / 
# Tue, 12 Mar 2019 08:38:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 08:38:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 08:38:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 08:38:32 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 09:29:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 09:29:41 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:f467b6300e666a0c45e457f955904030094680a70a36a7d5163528195ad96427`  
		Last Modified: Mon, 11 Mar 2019 15:23:13 GMT  
		Size: 69.8 MB (69812255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:522d28292b119385dc82dbe1d2b8e92b44d5da06db492b34c48634e622f7f558`  
		Last Modified: Tue, 12 Mar 2019 08:40:54 GMT  
		Size: 63.4 KB (63434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b2f8d4755a70999526fab64b7c6bab50520d0613f2db63344001fdf40effb29`  
		Last Modified: Tue, 12 Mar 2019 08:40:53 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425f5728bb9dc938d35ff7ca325ca02d610429aff390d9ec208b9a45b5007cff`  
		Last Modified: Tue, 12 Mar 2019 08:40:54 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad94670f83ccb4e7010f3057b3a41f5d2c04959eb1c9ded8d587b6e85e17290`  
		Last Modified: Tue, 12 Mar 2019 10:00:25 GMT  
		Size: 4.7 MB (4714841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
