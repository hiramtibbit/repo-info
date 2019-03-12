## `buildpack-deps:cosmic-scm`

```console
$ docker pull buildpack-deps@sha256:2ad8896c461b0fdd3c04bbea7a4980cfda490d9bd37bccb3fba15466bbcb891d
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
$ docker pull buildpack-deps@sha256:f02de4db38f54adb8c6e2829f700f0e35cb017ec9c2df1dd1315968ae63e2202
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.9 MB (75890538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c7cfb122c772c8d51a44ecea8ed7c19b9f067c849ffe5d1b9eda823c6b309a6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 07 Feb 2019 14:56:59 GMT
ADD file:0dfd7c753f7a13620cd88e332b5fe2b40b1b5e539afcb5290d5139d4f3a94e67 in / 
# Thu, 07 Feb 2019 14:57:01 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 07 Feb 2019 14:57:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 14:57:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 07 Feb 2019 14:57:05 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 15:21:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:21:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 15:22:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bc6b4345d033d602e95ca0b8970d1537780bdc7c15c930898e67eeac73bf6953`  
		Last Modified: Mon, 04 Feb 2019 15:19:38 GMT  
		Size: 24.7 MB (24704159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91bf9e83d8982d2f9e2cf688ae86bdb9e61107f3d7799e419103872afb9481ab`  
		Last Modified: Thu, 07 Feb 2019 14:58:48 GMT  
		Size: 867.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb780d92a4a85d81a3f285d3d02e5a59e8e55201191d184d0b00710cfb27469f`  
		Last Modified: Thu, 07 Feb 2019 14:58:48 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a764090eaafbf9c74b44fbaeda482a137e921ef0025ac9d4ce43788c65e440`  
		Last Modified: Thu, 07 Feb 2019 14:58:48 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb714d8a164f1ebaadc81d3794619e4d75a3720dd6d652f867fddb6f70e0102`  
		Last Modified: Thu, 07 Feb 2019 15:46:49 GMT  
		Size: 5.1 MB (5148242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b149a64356d25404243c5b77d518166676c34159d8a3875988a3d860ed54a7a3`  
		Last Modified: Thu, 07 Feb 2019 15:46:48 GMT  
		Size: 2.5 MB (2535657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8ecd8e822be62e1ecee71f3d5203b17972d951c6ee5979b5f0e8e489193276`  
		Last Modified: Thu, 07 Feb 2019 15:47:19 GMT  
		Size: 43.5 MB (43501212 bytes)  
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
$ docker pull buildpack-deps@sha256:d7086f4ad125a7c7fed3a4e902a58fb211535b0834fa32740f19e5ed1162a69c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.0 MB (88952883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:607fc6c363cef613fc4c7be495848d82cb4227fdc3988748f2246c02a4ae3e61`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 07 Feb 2019 00:49:21 GMT
ADD file:54f073883f3bd46b8bb3dbba9dfa1b8e22126c6d89839f20e97157762aae56bd in / 
# Thu, 07 Feb 2019 00:49:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 07 Feb 2019 00:49:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 00:49:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 07 Feb 2019 00:49:24 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 01:25:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:25:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 01:26:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:648f8842b72477cddce06c46a560a8ad41ce8e9ea4774271d53e2a22deeba512`  
		Last Modified: Mon, 04 Feb 2019 15:11:58 GMT  
		Size: 29.7 MB (29691338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9c44921a54f08f898374cb0f8a2fd2729b69265b3fb979501419b9fdab3113`  
		Last Modified: Thu, 07 Feb 2019 00:50:09 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f8e4399a17c8b240094afc510a40c8909f6b3e239fc38acb97d16acf7c4e05`  
		Last Modified: Thu, 07 Feb 2019 00:50:09 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c05c83b9fe91c2f1d0bfb9cb63602167105f417effad24fc08c72c8c537bb87`  
		Last Modified: Thu, 07 Feb 2019 00:50:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b60bf9195841f6ff86d0b07d7cf88e8fe0b4754b0409fb8eca4fc9808cea351b`  
		Last Modified: Thu, 07 Feb 2019 01:58:21 GMT  
		Size: 6.4 MB (6375873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f83ae2c135eab1259fe24685e1efb8a5fa6487300c432f5e6ef23ab5ab0b522`  
		Last Modified: Thu, 07 Feb 2019 01:58:15 GMT  
		Size: 3.2 MB (3205904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da7001a8394021f535a4093898f3d48d5de1bb400a8cc605142ce2255629df9`  
		Last Modified: Thu, 07 Feb 2019 01:58:42 GMT  
		Size: 49.7 MB (49678523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:8c2cca11d10e72e2552ce807b342de1a87478fa3b716df9a702199a94bba4879
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.9 MB (101895332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64517e285e1d3746c765f9a8700eef7c6168fb91e01820e399bec3777e70f49c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Feb 2019 15:41:21 GMT
ADD file:4930a49ca85518eeb7acf2de2db2e9ba5bcd03df86ef4c6e1496225c491761f4 in / 
# Wed, 06 Feb 2019 15:41:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 15:41:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:41:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 15:41:46 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 18:38:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 18:38:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 18:40:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:356c0b14ba236d37bf8e81b97d66b8a4b36bc0e65107344ac2aa11268cb82b45`  
		Last Modified: Mon, 04 Feb 2019 15:13:13 GMT  
		Size: 34.1 MB (34087898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aab09e41cedcc52eeb753da5549223680df4b9ab3fb9f95219fcb364c88a960`  
		Last Modified: Wed, 06 Feb 2019 15:43:38 GMT  
		Size: 869.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad5555985398f7766fe920a78a6a65ed7f1912ef49afbb12f45e250ffde1560`  
		Last Modified: Wed, 06 Feb 2019 15:43:38 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb7c953d95c634a1949b8405ecc41762445591caa3f617bcc7173c223c8750ec`  
		Last Modified: Wed, 06 Feb 2019 15:43:38 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eab19ab785562fede941aae0aa2c5bbf3cf7d3876b33c6ee81cdaa032879696`  
		Last Modified: Wed, 06 Feb 2019 19:22:32 GMT  
		Size: 6.8 MB (6821635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3c54fc5036620c5ac27b8ae5a0e4d584df6e12799bbfdde91a84585a518caa`  
		Last Modified: Wed, 06 Feb 2019 19:22:31 GMT  
		Size: 3.8 MB (3758254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31dc415795ba6a1442c59204119c913069d69b96af213296b78c7ed4f5683aa1`  
		Last Modified: Wed, 06 Feb 2019 19:23:02 GMT  
		Size: 57.2 MB (57226275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:6789c40b11cc8518e93e2d02c7f9acde3300eebeb14e86891741fb1107fc22b5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.1 MB (84129323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3ec0ff87baad0eb1e9ea02a7983d0ce4caae8df657b63293547544347fb4433`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Feb 2019 15:15:08 GMT
ADD file:4d8fc3b0ec558c517cf3c70049442633f5a55e10345f1e27f9e53f412c54274b in / 
# Wed, 06 Feb 2019 15:15:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 15:15:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:15:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 15:15:11 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 15:23:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:23:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 15:24:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:fe869230382541de25cd7b7703a7c4c33487cb5d113899a7c50ce31b2ad361c8`  
		Last Modified: Wed, 06 Feb 2019 15:15:54 GMT  
		Size: 27.7 MB (27688701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d2678f5803ff6ac1a3d9ea67929097d02a27bfaab0f89f1c131ca3de23864d`  
		Last Modified: Wed, 06 Feb 2019 15:15:50 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b8c8a20cd3c6ad7637e3b81aed1c7be82e62b38a2c7911e591be7f41e437b4`  
		Last Modified: Wed, 06 Feb 2019 15:15:50 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d97af6549c2a29279f638da8d0a63cea5e9f55705d39fed651ea449d1dfb41c7`  
		Last Modified: Wed, 06 Feb 2019 15:15:49 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41da1b26c571316fa615410964d0e2b7d0f091923edc4d5dcb3d0e0f5be716c`  
		Last Modified: Wed, 06 Feb 2019 15:31:45 GMT  
		Size: 5.8 MB (5768760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a583078aa420b7f8b3b01bdf56ad4c5b1ae016e222c7851a15aa635e3b74b9b`  
		Last Modified: Wed, 06 Feb 2019 15:31:44 GMT  
		Size: 2.9 MB (2915415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa3dfac71e45e27ed37d4b6524d21c76efdd7ac4dfd6df53fe1828419b889bf`  
		Last Modified: Wed, 06 Feb 2019 15:32:00 GMT  
		Size: 47.8 MB (47755212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
