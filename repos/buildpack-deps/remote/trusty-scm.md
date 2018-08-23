## `buildpack-deps:trusty-scm`

```console
$ docker pull buildpack-deps@sha256:077db3cbe983b567af44c98a3979d5f1857c07961b91b455022c47330f6ba27f
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
$ docker pull buildpack-deps@sha256:5945b0500663468484e0947ee09ac5fe181fa08d83ebcbd6d7c4d34a17a4bf50
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.5 MB (101453639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9eca2524b628591915aa2a9e7fbd4943f3bd6b9179bd6d8d53511132aefbd1c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:30:42 GMT
ADD file:b52dc89539ef99aa7478debd2af0497ac50ee0d7658c05219bbf609440626583 in / 
# Wed, 22 Aug 2018 17:30:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:30:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:30:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:30:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:30:47 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:08:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:08:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 22 Aug 2018 18:09:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:72c01b436656c9a55ae968ed14e4f1b2a36e11a1103de1d78052edc926d5003f`  
		Last Modified: Wed, 22 Aug 2018 17:35:57 GMT  
		Size: 67.1 MB (67126755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944f9cf63457523d1b9cb2a03b24f959518a46db74340ec939cec53e6eaf4f7c`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6856614e8780c7b74fd9f5448864511a0dbb4d2d30a67c32f7b34c72dba00e50`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d0e4b6507f2bfe58324cac95a2327b9d8d14465b25cb07c1973f3236bcaf6f7`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00913272b9b1954235f892b11310c30df9a77bfad37ae48ca070bdd1ed2e0b6`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f415eba10245727e58d4dca4a9ee140a2c8885099e7068a38e48ddb41d191f5`  
		Last Modified: Wed, 22 Aug 2018 18:28:10 GMT  
		Size: 4.7 MB (4658201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863a241cabb52f1e475a6f6186c785d932634ee3a3e644c747fc0104127a7ae4`  
		Last Modified: Wed, 22 Aug 2018 18:29:31 GMT  
		Size: 29.6 MB (29594658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:7bfec18a311a8a49ec3d1c8ca7f0a5ee2dd32ed2f912cb029d517524990db771
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92888343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b30d673a068d0221e4d7a707452956f99aefac16226df7d65be0ee99839c6471`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 Aug 2018 13:30:08 GMT
ADD file:5e3787d44d01e9becfe5310d3247c9ce456da1b61fb73ffb2fceb5b72561387e in / 
# Thu, 23 Aug 2018 13:30:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 13:30:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 13:30:12 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 13:30:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 13:30:13 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 14:37:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 14:37:03 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 23 Aug 2018 14:38:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:78b0f13252d4e60560eff60018f22190f87ec4f29f18d3f281d66f86bec021fa`  
		Last Modified: Thu, 23 Aug 2018 13:32:20 GMT  
		Size: 61.5 MB (61464922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:591efdb1deaced5d70644f3f8f54e2c94d890a73853426da8f6327a3461fa7d6`  
		Last Modified: Thu, 23 Aug 2018 13:31:58 GMT  
		Size: 76.8 KB (76770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47ebe67924a57050d039d595cee9862ea3ae32414d0088e1c89ba9d23eeaa534`  
		Last Modified: Thu, 23 Aug 2018 13:31:58 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4d91398ea2ea1cdbb0a09d99c2c6ac1c774b908b4fc0cbb51cde5af760164d`  
		Last Modified: Thu, 23 Aug 2018 13:31:59 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041ad5c52989d00478fe324a2d20b5ab612311651b733da1389669b89ece0811`  
		Last Modified: Thu, 23 Aug 2018 13:31:59 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de0fc1df2121fe4051ddfb35d118b77bbbd77dde581ec785e131957fbbd2a4a3`  
		Last Modified: Thu, 23 Aug 2018 14:50:05 GMT  
		Size: 4.2 MB (4246125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a598b6152c16c04d1a2a443578c1c61c2908c4bc5c6fe5e0a944ce9a8bf71123`  
		Last Modified: Thu, 23 Aug 2018 14:50:27 GMT  
		Size: 27.1 MB (27099122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:7fdaaed4aac3eea93b48e77075581f38d41ed10870a83894d596838f54984f9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.6 MB (95648005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb32af762f74ce2cce061005ccb7e5a30fa26530bd38fc80e987ab097b3cf804`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 14:19:05 GMT
ADD file:9c932e4c93c73c414a550c0c23de27e5593be2eedfe574355fc8f8c7abac6900 in / 
# Tue, 17 Jul 2018 14:19:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 14:19:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:19:32 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 14:19:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 14:19:44 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 14:18:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:18:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 27 Jul 2018 14:20:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9c6438e6646ea44d58b24e5c91091916f32fae2a242554df327fc162c8cc25e4`  
		Last Modified: Tue, 17 Jul 2018 14:25:00 GMT  
		Size: 63.2 MB (63202896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43b6b12085fd93e3a38a59d2814c1c653d3db09ff2862bac7c094ae0e618096e`  
		Last Modified: Tue, 17 Jul 2018 14:24:37 GMT  
		Size: 59.1 KB (59097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42799cc9a444aef808e6fa811c3ce173f06a7e1841ebe5ecaa577562315db2d0`  
		Last Modified: Tue, 17 Jul 2018 14:24:38 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b874b3160ecd01640aca9f6c4648974f7f11c0abaff16201a6139cbb2f656c`  
		Last Modified: Tue, 17 Jul 2018 14:24:37 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1968d34fab26e4a84c0ab5621d408360d84a32677a1fda4e32e1a3c28664f39`  
		Last Modified: Tue, 17 Jul 2018 14:24:37 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:877d6acee01510d4d3789213ca34cbc0b9c3cba8ab5fe38ed9576e59ad11135e`  
		Last Modified: Fri, 27 Jul 2018 14:52:53 GMT  
		Size: 4.4 MB (4371351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9960ba7e6db11b0f167f375f09e9816009c3016df2f1f6775a5ceceb5223df`  
		Last Modified: Fri, 27 Jul 2018 14:53:41 GMT  
		Size: 28.0 MB (28013285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:7443e6766fd4e42c575de3cec0a0ca5906b29408dd883d0978213b329b5c250b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.8 MB (98751071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fe92ee4af95f558f811ad0e46793c46ac5c193e4c105c7d38fa080fed2e78ad`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:34:00 GMT
ADD file:9e5275a290e6d296c12bec1fbb5895f27e2cd30fa99f943a7bd054cc1ab13c41 in / 
# Tue, 17 Jul 2018 12:34:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 12:34:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:34:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 12:34:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 12:34:07 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 14:39:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:39:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:41:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ab33d6fb6a425f8565d20c8200775a8253affa499434e807e82d34ff75f993ef`  
		Last Modified: Tue, 17 Jul 2018 12:38:23 GMT  
		Size: 64.8 MB (64828853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e304388779e89c355fa454e92f0bfdbc9a51f805c7c3261f824a24501a1d5f27`  
		Last Modified: Tue, 17 Jul 2018 12:38:00 GMT  
		Size: 64.9 KB (64863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c934b8e4a552e5f9ef1b7023de78294f4437519e843b9c38411e186b647cb785`  
		Last Modified: Tue, 17 Jul 2018 12:38:01 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4dab88b2846e6ae8a9690b22ae571e3df003de93cfc0f766c55c652b0ae5c05`  
		Last Modified: Tue, 17 Jul 2018 12:38:00 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85dcdf1805efe897e563a731a0275c87b37216222f6cea534279de891e66d554`  
		Last Modified: Tue, 17 Jul 2018 12:38:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c2362f48e3bf3b9ee3fce48d4e5792e75bd4c75e8b3d135c0436f5ed218a626`  
		Last Modified: Tue, 17 Jul 2018 15:19:48 GMT  
		Size: 4.6 MB (4645463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e83323bcdc195e1050268eab6b83dd92b3389f15fda33c6cb6d447ba3ac2739`  
		Last Modified: Tue, 17 Jul 2018 15:20:33 GMT  
		Size: 29.2 MB (29210512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:4225f634874e33da76758010c0762fc3d87049b6332e85c9d9c192dffaedc116
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.6 MB (106579570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42b92ebecb09b15a8a0b1439d4d96575e2766ff715ecf5045415ecac766bac7d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 Aug 2018 12:49:35 GMT
ADD file:d5908c478aeceea666ea81fa646c49440fbaed8cfa7c4ba8710ae362430d0440 in / 
# Thu, 23 Aug 2018 12:49:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:49:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:49:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:49:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:49:52 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 16:36:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 16:36:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 23 Aug 2018 16:38:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1e40164cb1d2c51c94e7388377f55681eecd13466fd1619cf4d595e561361fe1`  
		Last Modified: Thu, 23 Aug 2018 12:52:32 GMT  
		Size: 69.8 MB (69760167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c69ee733da6c3cbc157d0fc0a72f9bcdd43e432f76e65c53af1ab30b1f76b7c`  
		Last Modified: Thu, 23 Aug 2018 12:52:13 GMT  
		Size: 63.4 KB (63425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32241c7aeba2cbdcd5aaaf02a5a10f48766c07ab779209d3e82a88ed812dbab0`  
		Last Modified: Thu, 23 Aug 2018 12:52:13 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f0c926284230df92c50916838ad3f39a1273c26a635a77eab94e03eecf6b3b`  
		Last Modified: Thu, 23 Aug 2018 12:52:13 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2daf74a81b4c67febefbbb68d6c2a5c2433d83f7717603cac8d43a66e431979`  
		Last Modified: Thu, 23 Aug 2018 12:52:13 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a446543df74e400fc5e8e9fcd1924b9c0d21a0994a0ab7453d51a08feed32c60`  
		Last Modified: Thu, 23 Aug 2018 16:58:04 GMT  
		Size: 4.7 MB (4713400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d82dd882dbbb0c4c72865fbb3a7792a630af3a9b6ffdceb48476717a739473`  
		Last Modified: Thu, 23 Aug 2018 16:58:33 GMT  
		Size: 32.0 MB (32041173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
