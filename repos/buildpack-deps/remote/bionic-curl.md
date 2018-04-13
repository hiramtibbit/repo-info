## `buildpack-deps:bionic-curl`

```console
$ docker pull buildpack-deps@sha256:e453c8784b6f67e4fc04c95fad052927ea2b110221038199a1c010d00bfedb85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:bionic-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:9c984daae07d9f7a8691743ae20180857233b39e0c0271e2c06f39fb3bff521a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39500710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc7e1781de629b60aefa4ba457c3c9cd6690d1fa8a3f2b87b5a9993a4ffbcc83`
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

### `buildpack-deps:bionic-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:9da2dd152dfa205ae424e197484504eadc4fdf36c7ec5c797350cf804185906f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33729946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa37edc075a5dd52139272839e9ba046ea330b4de20c998dc8d49e4c1de73498`
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

### `buildpack-deps:bionic-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:e368b7366fcb0957bbb73e4686536c685f35d7e36102f68cf6ea7993e5f7d797
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.7 MB (35690191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d1324ab7fb0f21afb476bd18b4882542ccec33d0171cacd993ccea3aaded99c`
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

### `buildpack-deps:bionic-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:355e432e437b022cbbfd39a9a77efaeb9a040dec917bbd78a026b9053eaddac4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.6 MB (40615032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8213a80592fcf3755772cc0ff67e5537eeb3f9aff31a183eca1b7014c32078d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 08 Mar 2018 03:55:00 GMT
ADD file:8282136f5dd3d107181527be6243aa0422d1f5797d76b9dc6b4a0535c0bf781f in / 
# Thu, 08 Mar 2018 03:55:01 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 08 Mar 2018 03:55:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 08 Mar 2018 03:55:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 08 Mar 2018 03:55:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 08 Mar 2018 03:55:04 GMT
CMD ["/bin/bash"]
# Thu, 08 Mar 2018 10:13:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Mar 2018 10:13:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:68c038c15d304c9e1aaff039d3ca36770d889582108aeae54e4a28e66258d706`  
		Last Modified: Mon, 26 Feb 2018 14:45:52 GMT  
		Size: 35.9 MB (35892425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55613e36b8b6396da57b246baa29f0f9e9bf2f07e7c1558320f952b3e4b7fe68`  
		Last Modified: Thu, 08 Mar 2018 05:04:13 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fac81ee2875abb3fb4761616c54dd4a81962e766fa3ada7786a51d0f7037b1`  
		Last Modified: Thu, 08 Mar 2018 05:04:13 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b24bee7315d3d32b062a05d357e3c01a1bbeb262050af57430236238191c2a`  
		Last Modified: Thu, 08 Mar 2018 05:04:14 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4fb99389d5f276de2b65c753d1a43d771920f78f812561021583c87c860918c`  
		Last Modified: Thu, 08 Mar 2018 05:04:14 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d8654daa543eec04c87b0448331ac53557327cacf5697cbd929d4ef5b80330`  
		Last Modified: Thu, 08 Mar 2018 12:15:33 GMT  
		Size: 4.7 MB (4720335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:ff7a4d03fe83d6ae177b4642cd4b6dc6ebc365b466cd840cbb59e2d031401241
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43834998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06c0dc11192531cdb7a50cce5c9d7f5b4369484c5d1a8c222ce2fe4f518d2ab3`
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

### `buildpack-deps:bionic-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:40fcb03d22e9ca14187d810d7f7975acff6912f4258b68dd290d552c7457da35
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37710338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cdee00ce87f295d101c185eb67133f9a15674fce4604ed3794d584dadfda729`
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
