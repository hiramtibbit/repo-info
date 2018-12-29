## `buildpack-deps:cosmic-curl`

```console
$ docker pull buildpack-deps@sha256:59bbdbec0a435a885a8e6cbfd30534a905f24010adaeb4d2a538d2534093a52b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:cosmic-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:c5f20efa26c8f227cb01e77e2881c807ef56a582ec2241c13d633b41a12d3c3d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 MB (38340974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:060fa826b616ddf12184856e8dd30e58f8a1dcd2c69054c08b98c368a63c9358`
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

### `buildpack-deps:cosmic-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:307072f754d6d431348ff981781aefb3347ad7ccf0e5f4551edc5b2e61f5f8f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32384262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4a3ef2ed45c7e77ac15399587fb8e3f1ce676d215305b3259474a1932217100`
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

### `buildpack-deps:cosmic-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:0c8879be7cc14a2c90d9d6298ee402df93248903323d27585d14ea44cf8432bc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.3 MB (36290775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60795fc2a09f5ed59b5124928d90f80e29e966cd9b8e90ff107e0eeaa9520ab5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:11:00 GMT
ADD file:930028bb17a501984afe6ec997a401944227b3c8b653e177e9eb06172aa9de1a in / 
# Sat, 29 Dec 2018 10:11:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:11:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:11:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:11:11 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 11:27:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:28:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:919f14d488bc1ccefac87b120e8343f9313fdcbc56d17dfb1447734c89e0093c`  
		Last Modified: Mon, 24 Dec 2018 15:07:56 GMT  
		Size: 27.5 MB (27535419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502e0f9d51060b0e8a8d19c30f9816df749a0f8ba8dd82de3d46461491b9d256`  
		Last Modified: Sat, 29 Dec 2018 10:13:54 GMT  
		Size: 869.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e05db67b68a2e832f544fec952432c14c6a00cab9006b52f5c1591950c7ab5`  
		Last Modified: Sat, 29 Dec 2018 10:13:54 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685bb06ec766ec1f0c066ec18c6344ed73a32d7bbcd60964143019744a7f69b2`  
		Last Modified: Sat, 29 Dec 2018 10:13:54 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966de9515c140154f2129671cc1bcdb995d12d40170d514cbc3efa4f809e291e`  
		Last Modified: Sat, 29 Dec 2018 13:14:24 GMT  
		Size: 5.8 MB (5810550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92c5ba64e752cc1a2f54d3fef23a0324e9c85e809e2642382df612b87799d0f`  
		Last Modified: Sat, 29 Dec 2018 13:13:55 GMT  
		Size: 2.9 MB (2943560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:fc07c56cf9454bfd998bc8451bc29b900b0fc3b3b3389f90dd3e6a75b8786a9e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39261724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6e2c53d8d67aa3692e23af19c2c3b0ff4e153b87046883510d347f0f756fb0e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:15:55 GMT
ADD file:38e95d18f44d68e017c68a51a896f142985f2a6b4ad3efd55628e39d24438481 in / 
# Sat, 29 Dec 2018 12:15:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 12:15:58 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:15:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 12:16:00 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 12:36:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:37:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:9a39577adb7b72d769510de0645a7e1d4d568e1b583fde5e969123f7ac0eb223`  
		Last Modified: Mon, 24 Dec 2018 15:07:46 GMT  
		Size: 29.7 MB (29680496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda9c6392dd3f4c8d737b6200f31ce714a495589e3445ddca857348f681d2f51`  
		Last Modified: Sat, 29 Dec 2018 12:20:14 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70a53ee9423e3e266bca93f78a65e258d68c2c0eb72aeeb9eed35bebf70283f`  
		Last Modified: Sat, 29 Dec 2018 12:20:14 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d9d054ce3756ee92b55336e5315f5f4a39c71d2c0ad736a0b08244529a7b1b1`  
		Last Modified: Sat, 29 Dec 2018 12:20:13 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4640f941347a77bf8752b49a887b2a7122a09309152ef0916a303eecf29cab6a`  
		Last Modified: Sat, 29 Dec 2018 13:20:53 GMT  
		Size: 6.4 MB (6375478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312c65dd7a9b3dcbadd4f8548d2fee1d0cb69e71d640eb897e0c2c90007710f3`  
		Last Modified: Sat, 29 Dec 2018 13:20:51 GMT  
		Size: 3.2 MB (3204514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:88dda157dcc96629c99b3302c9639439329264a97fe91b9675392451723ea2bd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.7 MB (44651245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1b439153831ea468f88c3e08fd01915da6aaea322f34cbaba1c423a4c41446f`
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

### `buildpack-deps:cosmic-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:d51537a7382399a13974e53235d068a456ccb71b1e09d1b2655023531772f5a4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36372081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ac323e432768732b6ad027562032001515eb240adffeb72f0bc0767db07ffcb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:48:39 GMT
ADD file:5a4ed2953f2fb23baeb609122507295f6fd55c5b64c447396943b8ef8fbc4b63 in / 
# Sat, 29 Dec 2018 12:48:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 12:48:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:48:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 12:48:41 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:10:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:10:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:5e6457bb6e27daab020140acd698ce3a8647cf39ea8bcced27e35c4a0266ba6e`  
		Last Modified: Mon, 24 Dec 2018 15:09:05 GMT  
		Size: 27.7 MB (27687130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de86428243964231ebb8c869b7a82915ab5c7cd16f0580970c14a2d96fdac852`  
		Last Modified: Sat, 29 Dec 2018 12:49:36 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:382313d1da52c128f0f14505df82a0fc241ed58d9a89a30ba1a1c5ce79466d21`  
		Last Modified: Sat, 29 Dec 2018 12:49:36 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3b0a45c6c69809d231262e6253a71899694ead745f05bd724a6019066864e0`  
		Last Modified: Sat, 29 Dec 2018 12:49:36 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e4b8f8c52f0c447ec6e85b4ec02fc49dc5d071c9d1ec7d7b731a5b7ff24427`  
		Last Modified: Sat, 29 Dec 2018 13:22:18 GMT  
		Size: 5.8 MB (5768912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7acca6e5f8681b06a27123651782648a4b015d3f4a4230d2b627792b151021cc`  
		Last Modified: Sat, 29 Dec 2018 13:22:17 GMT  
		Size: 2.9 MB (2914802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
