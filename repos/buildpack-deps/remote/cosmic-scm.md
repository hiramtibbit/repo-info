## `buildpack-deps:cosmic-scm`

```console
$ docker pull buildpack-deps@sha256:36f6c765a22e31aa7906855bb192511a00e7b84d0b94abc7d0e1e6b013c7d839
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:cosmic-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:4a1a851b2c87abfbb12103f2f4b2a03d3d8e3e1bda62886716efafafb380ea86
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86726573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ac1767db70936b72bc7708393a24e440480fe09deeb250570c3c6e8acfa2791`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:27 GMT
ADD file:1e61cdcaa90161d6a9c427b3a0e0ee918a16e0e84a6ad1744a4c9f7c2ea52f1f in / 
# Tue, 12 Mar 2019 00:20:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:30 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:41:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:42:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Mar 2019 00:42:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e58ad9fd24ca67aa4bc5efae635f723da54990904df55ad6caf8850d74ffffe0`  
		Last Modified: Tue, 12 Mar 2019 00:21:43 GMT  
		Size: 29.3 MB (29274269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a4c669d2dea894c7620d4c849bdcc279d80c37dc590704c51519a2feab29f3e`  
		Last Modified: Tue, 12 Mar 2019 00:21:38 GMT  
		Size: 864.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab60767ef52bb46f7bf379e45482c2d4a8ef57d66d2537153ff292733dd9fd35`  
		Last Modified: Tue, 12 Mar 2019 00:21:38 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cc3b738fbea17f2d0c129ec3ea0b7982343d07d8dc4ce2e978a216980b97cb2`  
		Last Modified: Tue, 12 Mar 2019 00:21:38 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6ce5d5f215b3aa45aaa16323d9665362a4ff553e1e40d1285d376d5306d315`  
		Last Modified: Tue, 12 Mar 2019 00:55:51 GMT  
		Size: 6.1 MB (6101104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f1c09bd24e3c76c868b6270289b715c81ff9e6227c9bb39742a2f455e1aa4d0`  
		Last Modified: Tue, 12 Mar 2019 00:55:50 GMT  
		Size: 3.0 MB (2975300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb18400ddf379af0f82402c4806f793117af9834dafe7f9f54c3c0161e7418ac`  
		Last Modified: Tue, 12 Mar 2019 00:56:06 GMT  
		Size: 48.4 MB (48374664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:143fd27fc00fe14f2b883b2ca4bdc0afbdac9aa6612122a8a72801b449509f55
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.9 MB (75893879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e7ba26680788f47e10dd8bef2c765cd2f0802b8cfdf559f96a4bcd43108aa87`
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

### `buildpack-deps:cosmic-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:e0c5a42d75919a404827de726fc24cb591fe8ce736375910765a20392a4ca42f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.6 MB (84607893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:117b1d1e875c43a0b5bb387f5cb02de81487e14fd39e9e37bc4eded89197b058`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:40 GMT
ADD file:6ae96557996987850d9e8cd0c506fd91f18f82a96d6f0137473ff605b71a2628 in / 
# Wed, 06 Feb 2019 19:16:42 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:45 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:49 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 03:31:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 03:32:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 03:34:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d5fc74b6582763dd58332e1af6a900a65c2d05925ec75cccb100d67bddc65757`  
		Last Modified: Mon, 04 Feb 2019 15:11:06 GMT  
		Size: 27.5 MB (27540742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9bf63374e05ac4dd3d99e703ef65b0d830239ff05b974b924f7d1ed0a390303`  
		Last Modified: Wed, 06 Feb 2019 19:18:41 GMT  
		Size: 872.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e1d332b4a972cc9c4eae76beec9661d427b5f643e7b404a5bd482f53cd7873a`  
		Last Modified: Wed, 06 Feb 2019 19:18:41 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0c23ab65d4b7da1f26f1f11b1f6492ef0c5fbcb61f861bfb831d3690ab7ec92`  
		Last Modified: Wed, 06 Feb 2019 19:18:41 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b47dcbf842775828f13e3f876df2d77555f27996b6853e1ea8eae01a9aa06091`  
		Last Modified: Thu, 07 Feb 2019 03:57:34 GMT  
		Size: 5.8 MB (5810652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fa66ff5d36f0396b8d0650b498feae1e4d25d2322bc34151b6b6779c8d3cfd`  
		Last Modified: Thu, 07 Feb 2019 03:57:31 GMT  
		Size: 2.9 MB (2943398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a70612045a0e00a1e6acc7582ac7a44cdc9d14cd573373d532113f6522e0e13`  
		Last Modified: Thu, 07 Feb 2019 03:58:03 GMT  
		Size: 48.3 MB (48311854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:3fa3401f17f2d3b544ba1e99441cfcadb631872cf59b6134aa8b20fd443a1076
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.0 MB (88965422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72aa8726db6204a32bb63e46d1cc731a9c2d53c295a2f1fafe33ba74fff4e44c`
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

### `buildpack-deps:cosmic-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:9d19d0e17711a7af9cecbf3e11d52fa0d699d7e5a25cd2352fba8c1b6eb89c6e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.9 MB (101929702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0749bd4ae8db32aef5273464cbf5765946cce1518d588ea2489328ee1e08df91`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 12 Mar 2019 08:36:45 GMT
ADD file:8f354e6cff0ac873d406a338b07995aeb7c026c707e01f483d2d0ef5fe00c725 in / 
# Tue, 12 Mar 2019 08:36:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 08:37:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 08:37:10 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 08:37:13 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 09:08:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 09:09:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Mar 2019 09:10:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:864251cd0e66280cdf2c56112679d0440d2bbaeed8fad2764afac91efdc66538`  
		Last Modified: Tue, 12 Mar 2019 08:40:13 GMT  
		Size: 34.1 MB (34123862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c211eefd0ecb87a39430bb4ad123970b6f40d8218d6b3b79c0892c18d93505`  
		Last Modified: Tue, 12 Mar 2019 08:40:05 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0b20de1eb6637526eaa29a61dd4b3548037128107b4efc60085a883059d24b`  
		Last Modified: Tue, 12 Mar 2019 08:40:06 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d257debec8fef751da56315bda0d530cb28d7db8f11e2461d811b8e283e310`  
		Last Modified: Tue, 12 Mar 2019 08:40:06 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26149f561cbd3884b35a391e762c4a67602f5f86fcee9b08a18db8a54b0e2fd9`  
		Last Modified: Tue, 12 Mar 2019 09:55:46 GMT  
		Size: 6.8 MB (6821789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca833a2066baaafde78784cd5d0247c332baa4dc1faf2301f81cc6fdd6fc98f`  
		Last Modified: Tue, 12 Mar 2019 09:55:46 GMT  
		Size: 3.8 MB (3758593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19366bc863e38a9fa24f3a2593ce884093b536535a9b9e2a31b9d05a51bdc200`  
		Last Modified: Tue, 12 Mar 2019 09:56:22 GMT  
		Size: 57.2 MB (57224192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:dc2cec1ac7c7e18149cbbd8a329bb920a25f3630734dad69730017125059f868
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.1 MB (84129974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcb2f822d37df39c1527bd7990d04351f95976c483383617bad29b758f35fc78`
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
