## `buildpack-deps:trusty-scm`

```console
$ docker pull buildpack-deps@sha256:d57c666f0c9b1f18421d5087c243b32146c8f810efb8155e068a6bf9b1053a30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `buildpack-deps:trusty-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:679247a89938da202f43bc4bb2b16cf7c1f1658ec4d22da0deebfe1b88ec8b74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.5 MB (107490326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4db51ac8d4c85583604caaf279a8057e8c0411c1726a572a7bbf4ea04e935e2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:33 GMT
ADD file:3c65bdbcf1318520e7af157cb00317c8312ec16bcaf181d0db919c45f0d7a85e in / 
# Tue, 05 Jun 2018 21:21:34 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:36 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 23:17:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:17:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Jun 2018 23:18:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:28bfaceaff9b7464b1e768b0af7e1efe7877a34f238f935c36978a1ecf82c9b1`  
		Last Modified: Mon, 04 Jun 2018 14:56:53 GMT  
		Size: 73.2 MB (73162466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac540055f2f8da75b6587a88763021178d876a2b789ff0c696fbdb62485b62cd`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2965585ef8b8370dc8c443e35c743ba723ee427c515535e3ff35d898804cacf9`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2416bb9f3ad2b5b0c700a4412e2ffbb671f001c45b4b7433ecdcc9c352847814`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b55a6a680757144baae1671d00d4328eee63e790ab36b27d8d52ceb62b179f`  
		Last Modified: Tue, 05 Jun 2018 21:24:12 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221b037f28e9b58f3c565d3adcede19ef92535e684d1a499bdea33de98aa75f1`  
		Last Modified: Tue, 05 Jun 2018 23:44:44 GMT  
		Size: 4.7 MB (4658460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aade067f8013ea805850bf47b68e5ce054fc9b95679417ab3c3ab7fa3ca3f00`  
		Last Modified: Tue, 05 Jun 2018 23:45:06 GMT  
		Size: 29.6 MB (29595102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:fc6464096d4c4849fa118ec50c17d1c8ba3754a7c0df6c0e65bd19f518198334
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.0 MB (98039824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:474f1097b5a07b34c17fcbf62bfdc08de44c4a4b44c85b7c7a886ba38c3a8149`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Jun 2018 12:17:53 GMT
ADD file:ac8ca37fe002d36588135c52914d0e873f023304fcb1b47f7cd43cdcd1b5e739 in / 
# Wed, 06 Jun 2018 12:17:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 12:18:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:18:21 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 12:18:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 12:18:33 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 12:49:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:49:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 12:50:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a30a59c90cf5f1388a00b51a3d23ddc16caa9c69e4ccdfe20c339f555200d7b8`  
		Last Modified: Wed, 06 Jun 2018 12:24:47 GMT  
		Size: 66.6 MB (66616443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9577dd729eef380b01a939d575992a253b32c24d06bd2657d6731b821a05bbbe`  
		Last Modified: Wed, 06 Jun 2018 12:24:26 GMT  
		Size: 76.8 KB (76771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ea885f62bfc3a25b62aba8b22616a9f6e24be0e25c61c27be6a14349628742`  
		Last Modified: Wed, 06 Jun 2018 12:24:25 GMT  
		Size: 623.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56d65a7e4b20d6421645d73bbb6d9955c6303520c419bf96a172bbd655fe1eb4`  
		Last Modified: Wed, 06 Jun 2018 12:24:26 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3376a28fb8bdb3774a3ee95597905c5653e6ed5ac716fc66061eac3c31f9939a`  
		Last Modified: Wed, 06 Jun 2018 12:24:25 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae13157227a06b48cc43e18e258d69bd5c469ecdba9fff8367e0574ae26f59d`  
		Last Modified: Wed, 06 Jun 2018 13:00:09 GMT  
		Size: 4.2 MB (4246244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc1a1ad5dfc03d80fed9cf26b6a3ea0f7c63635a7442634fefb4e977c25ac68`  
		Last Modified: Wed, 06 Jun 2018 13:00:46 GMT  
		Size: 27.1 MB (27098705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:d734d95b4a2b1712a1393cda441db697d8c8da414a0a12d876f43f9ae2400a20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.3 MB (100323188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9640d966fc2f5d9a4b5bb45c8061278a12544c5a4cf52945f4dbd743adb83b0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:37:41 GMT
ADD file:58644b9406fa8846b011736297a46d266e3dfd698c9ee201171f498ebff2f792 in / 
# Wed, 06 Jun 2018 09:37:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:37:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:37:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:37:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:37:52 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:33:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 10:34:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:451064406810418f1ad28a7437b9d4b7c7c88cd199e42a8c3c817700f7ebdf7d`  
		Last Modified: Mon, 04 Jun 2018 14:58:47 GMT  
		Size: 67.9 MB (67878962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1925cfc3c30798b008d103f4b4b7d2dbaf1bf8c8bd325b1bccde3cdb95f1afe`  
		Last Modified: Wed, 06 Jun 2018 09:42:07 GMT  
		Size: 59.1 KB (59091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2c4c5b773fca4eb071dd6bd5a3c3ae68c80f9c09076daa64ccd5cc240dca232`  
		Last Modified: Wed, 06 Jun 2018 09:42:07 GMT  
		Size: 624.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f94b68a328882603719ab4d69815aa23e0db6af9de2b0d8e68bbcfbfcdaf370`  
		Last Modified: Wed, 06 Jun 2018 09:42:06 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f14c24f5f30f6704bd754cf98b8bc75049949af390c9e9ad06a7e8ae76aba977`  
		Last Modified: Wed, 06 Jun 2018 09:42:06 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:818d48b492269b452b404a845c6b0af7da861cf6ea46ca1a4c841218ca8a8bb6`  
		Last Modified: Wed, 06 Jun 2018 11:01:05 GMT  
		Size: 4.4 MB (4371205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19b2480ae5393da39a90e0d9b71cb40f1ca15812dec1f77154f200e7305337c`  
		Last Modified: Wed, 06 Jun 2018 11:01:44 GMT  
		Size: 28.0 MB (28012288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:d2d9d7c0233fbff2ab5a57f05179d8939fd27721f475a993d716467f5ff8fddf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104428713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:927d2a9eedec50261cc229940f907bffb1c313031b2b016cf0700ef47d9e6173`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Jun 2018 10:49:08 GMT
ADD file:7a6ffc7c1131e4cd604a36ab3c5dd5a96937c81d8ec93652ff3e97be20fa6e25 in / 
# Wed, 06 Jun 2018 10:49:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 10:49:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:49:11 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 10:49:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 10:49:12 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 11:46:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:46:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 11:47:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5915f918d2a683a74cec1b2717cec778a1876d6f0ee6b139aaaf2a571982da17`  
		Last Modified: Mon, 04 Jun 2018 14:58:24 GMT  
		Size: 70.5 MB (70505083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4631453627bded1ce386a778b31ad02578e213d72e330961852133ceea6c97`  
		Last Modified: Wed, 06 Jun 2018 10:51:59 GMT  
		Size: 64.9 KB (64861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c710f737cc220b54a7d1cba94eeb7c57231a6f775cc5219bac6f5f5855eb3c9f`  
		Last Modified: Wed, 06 Jun 2018 10:51:59 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d360df8048bb9d57854dc6ede8a66cdc037e2d7f69edb89782b90a2fb4ea9c7c`  
		Last Modified: Wed, 06 Jun 2018 10:51:58 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d985a4e4740316e47a7e6db4a4aad6f18e26d6326d56c2bcb6660fc4292470`  
		Last Modified: Wed, 06 Jun 2018 10:51:59 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9cdc38c68b3d7316ae00a1a38d540be1f1f610ed6c56ca1e33668d53ffe69c5`  
		Last Modified: Wed, 06 Jun 2018 12:20:59 GMT  
		Size: 4.6 MB (4645033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9125719f2a88ef95f4768fb020428178470a51ad2a633f918f2e29e2138067c0`  
		Last Modified: Wed, 06 Jun 2018 12:21:30 GMT  
		Size: 29.2 MB (29212124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:6cefd3daa241f3333bdc7db768702aca9ea34e1c93e76b1eed57817677d89827
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111392696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86d0eba7d70b0a82a20029713430984d2b58839ad176be385be543a08e6412db`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:06:29 GMT
ADD file:31dfcc762afa52dd9caf11263487e785648a799a9de240d943a2e09e304a8d3f in / 
# Wed, 06 Jun 2018 09:06:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:06:43 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:06:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:06:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:06:51 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:19:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:20:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 10:21:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2832536012adfbf2de1fda98af576ec05129646e346f309ad1614903d5aa34b9`  
		Last Modified: Wed, 06 Jun 2018 09:10:17 GMT  
		Size: 74.6 MB (74573277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e07ba2d193a87b16958220883346e6f24f0ef0010974f201f56e5229645d9f2`  
		Last Modified: Wed, 06 Jun 2018 09:09:56 GMT  
		Size: 63.4 KB (63421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0700f77b760a0d0bb29f323d0949ffab70d47a9e916d538874a52740c305cb8`  
		Last Modified: Wed, 06 Jun 2018 09:09:56 GMT  
		Size: 658.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c66be20050456076e41857732de9b7cb19a9048067977e3141b0e0f7091501a`  
		Last Modified: Wed, 06 Jun 2018 09:09:56 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d3408adfa00c8129d1089e348883ca8328c1d942d0a86851e51b20a9f5b7dbd`  
		Last Modified: Wed, 06 Jun 2018 09:09:56 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826cbd1ffad69a01ba9af006fb52e37689de76ccc8edeadd4da2836baf75a36f`  
		Last Modified: Wed, 06 Jun 2018 10:48:33 GMT  
		Size: 4.7 MB (4713303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:950b39a7e00f2c03de87ef2d30339ff1d0ba66dbb9f8920aa2c1888500167e88`  
		Last Modified: Wed, 06 Jun 2018 10:49:03 GMT  
		Size: 32.0 MB (32040993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
