## `buildpack-deps:bionic-curl`

```console
$ docker pull buildpack-deps@sha256:09446244d069f90916ee6e2720050e6412464f375e5f0639f8bc58628ebd8874
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
$ docker pull buildpack-deps@sha256:51e251a3d0a61bc75c3bde8121689a2259f80cd204e9eb5095cceb7364130779
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.4 MB (40411034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d04042ef99d4f2f81d0ce9c6e6787ae239f08d15dcce9ae46a926218ecc4b398`
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

### `buildpack-deps:bionic-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:7e82ff89d2c70f6e287d45503fa63368fe4735539f4ba436b654dc1b8481b02f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44211607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b1531bcd7dd7c0e303f77697764c49656c17ee0bff8fc1459d4df1261008898`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:34:39 GMT
ADD file:cd32b0f79a6c6b793b0f5aacac1a9efbdb040dea18815b163aa1cb94091224d5 in / 
# Sat, 28 Apr 2018 08:34:42 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 08:34:45 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 08:34:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 08:34:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 08:34:51 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 09:39:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:39:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:a53346b88292c85919f7b9ee6314cef8ec60edfabd9e3451d4c2a52eda9db142`  
		Last Modified: Sat, 28 Apr 2018 08:36:48 GMT  
		Size: 34.5 MB (34547337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f7bd1b94e7e8e329981ae905d68a56d8971691f0d348a874205a6e67af892b5`  
		Last Modified: Sat, 28 Apr 2018 08:36:39 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555692d414accf22ff9bfbff253879a4805e9c5a23db62d22c2c0485c8e8e76d`  
		Last Modified: Sat, 28 Apr 2018 08:36:39 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6732c378bccae9cc47cf95139d14cea776fabf9edfcdaa26e67c33f22690772c`  
		Last Modified: Sat, 28 Apr 2018 08:36:39 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370ca1c0154585a3d692a17ab51e04cc17c4e67d5ab259b6065079615a9eda78`  
		Last Modified: Sat, 28 Apr 2018 08:36:39 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd06b7e1a92747a9cc14df58807644b0cbe81853fd595f1949199099f32088b`  
		Last Modified: Sat, 28 Apr 2018 10:34:17 GMT  
		Size: 6.0 MB (6007505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad321c2dbbe61b3ce00ab79df176f99a3e5231f07d48131cf75c2dddc9aecfe9`  
		Last Modified: Sat, 28 Apr 2018 10:34:16 GMT  
		Size: 3.7 MB (3654469 bytes)  
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
