## `buildpack-deps:cosmic-scm`

```console
$ docker pull buildpack-deps@sha256:6493e4d5efc2a71f91a04904a545981fc57aee5c964fa8e79f0fc897ea9f4630
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
$ docker pull buildpack-deps@sha256:24463621afdb7f1da0e7a9db06ec722af4876e6720d5b61d5b171766f489b967
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.5 MB (86519665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b094393f647485bf0ffb0d841c113e7e75893361b4608ee675ec18b0fc2d6b3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:29:35 GMT
ADD file:f6ffec9946318d0be6095c6bfcf92c5b822d4132d04ddda311f029c0672d19e4 in / 
# Wed, 22 Aug 2018 17:29:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:29:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:29:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:29:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:29:53 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:02:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:02:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 22 Aug 2018 18:03:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f6ce8dd4f6a328d2c7def7290df9c4bb616665794bf4d96d30a021041090c1fa`  
		Last Modified: Wed, 22 Aug 2018 17:34:06 GMT  
		Size: 29.0 MB (29041919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e0a5e5001c3581f009549f4bf72273abe2c6a6581baf13af9087ae59f4d567`  
		Last Modified: Wed, 22 Aug 2018 17:33:57 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3682c8c930ee6683b1c2e168f2baad62ac35231c234a86d5a4d41fb142a2cc0b`  
		Last Modified: Wed, 22 Aug 2018 17:33:56 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aea40ddd174ef535393aeb138bddc3ad112518e417364cfa8c0e595fc745422`  
		Last Modified: Wed, 22 Aug 2018 17:33:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44230b0cedada0cb31e5f6001e8e0821533fdc159bda9e9f65a4fe7bb44741d`  
		Last Modified: Wed, 22 Aug 2018 18:24:29 GMT  
		Size: 5.8 MB (5847248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b6a9a7e06db1670f97d4da42e9d1b85adddb5f483ea9c7ce0472ad860cd59b`  
		Last Modified: Wed, 22 Aug 2018 18:24:27 GMT  
		Size: 3.0 MB (2965907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d239dc01282837b5e3ca9af62a7c538962d7d7418c4f570490cea809047d161`  
		Last Modified: Wed, 22 Aug 2018 18:25:36 GMT  
		Size: 48.7 MB (48662713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:8c2b33b98fd00793852bcc9bab0022f88e4f32bbb0f7759d375b477f1b273e24
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.7 MB (75677355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d844e676bb123db67ce1e092472207c61e2c418052fad9280d11f7f2862a7ff`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 Aug 2018 13:29:40 GMT
ADD file:6cdb197727426e76fee3c91e936eaf040136c37da29a447e5e258de6c0c823e7 in / 
# Thu, 23 Aug 2018 13:29:42 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 13:29:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 13:29:43 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 13:29:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 13:29:45 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 14:31:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 14:31:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 23 Aug 2018 14:32:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:adee882f80c5e0ab18af071145a3e13884f7f3eb1d4805d56ad631d546c7fb21`  
		Last Modified: Thu, 23 Aug 2018 13:31:34 GMT  
		Size: 24.6 MB (24559659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40da2918936a568cda51c312ac13bfe4943c11defe6276d94a27bc1f658d7e6`  
		Last Modified: Thu, 23 Aug 2018 13:31:27 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6b1c05d480f7cfd28dfb18d41f799019a77174b1e93b125e76434ab7da8222`  
		Last Modified: Thu, 23 Aug 2018 13:31:27 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602797cbbd5dfd999c5cee7ff11810fe8aa3034331912242330289e21acb9f64`  
		Last Modified: Thu, 23 Aug 2018 13:31:27 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f002da03f720a325e6abb9911ebd16f8a1b712ef225047a83d1f574efec45c6`  
		Last Modified: Thu, 23 Aug 2018 14:48:27 GMT  
		Size: 4.9 MB (4934913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0e8765605d412a48575519cf1c361324637f55b0e77b2c9ad19e1d6ff27392`  
		Last Modified: Thu, 23 Aug 2018 14:48:26 GMT  
		Size: 2.5 MB (2529656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6163981751206e3c7b24acb6f667fd8fd60413a83ab36f6fe45eb227a2973017`  
		Last Modified: Thu, 23 Aug 2018 14:48:59 GMT  
		Size: 43.7 MB (43651228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:4bcd3fb6736d52e6c49207f0c4bea8ef37203cb01a87c0173fb101ad1739184c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.4 MB (80415134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36e6b8491a05c45611a04e0cde793022e115ba0bdf430ed61e3ac02c93471f84`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:09:58 GMT
ADD file:a0ef649aa573d5183e1b8ed78b5cb0e396420715c5d9b36b5400b637114c9ed3 in / 
# Fri, 27 Jul 2018 12:10:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:10:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:10:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:10:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:10:06 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 14:04:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:05:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 27 Jul 2018 14:08:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:764d692f68fc6918edf65e2b3717b5c020758bb66b2f54f35c7f6683da7855fb`  
		Last Modified: Fri, 27 Jul 2018 12:13:46 GMT  
		Size: 26.1 MB (26073183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6f15e4fc9beb0827fe37d54407eb55255321d406aa462877eb775601f77e34`  
		Last Modified: Fri, 27 Jul 2018 12:13:38 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b24b8d4eb5cfb2fee1731423cab6c6dd71af24ffcff123a15f7c7331f607b4`  
		Last Modified: Fri, 27 Jul 2018 12:13:37 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6fe413b3557ad68112312c94991724d3e90c2b723b9b4c3f57eedf6ffa989e`  
		Last Modified: Fri, 27 Jul 2018 12:13:38 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bfbb499255a8d34ec24885cc85de84816304edaeac17d301b0d44c6f8dabdc8`  
		Last Modified: Fri, 27 Jul 2018 14:49:47 GMT  
		Size: 5.3 MB (5299772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f9c26307877f3daf2d901ff6c2d7c4b211b2b7b5897fd6bbeb7525d3e122d0`  
		Last Modified: Fri, 27 Jul 2018 14:49:46 GMT  
		Size: 2.7 MB (2727579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c2e551591b8848024adff249d43e1d9fca3d7ce5d5e55ad52aee7c4b01361f9`  
		Last Modified: Fri, 27 Jul 2018 14:50:43 GMT  
		Size: 46.3 MB (46312718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:c9f3894f00fdf38325fada70de55b3187ae43a58529c251755c2dbb9e9b8a3d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88785988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ef1bcf6d0d51e94cf3da6e356292043e8ddf78ae73964ab480b33edc5822ad7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 11:03:12 GMT
ADD file:e6bf0df5451e3b55cd4319c6398b8d33aa56c63ac38d1265dc0caf17b2fa3245 in / 
# Fri, 27 Jul 2018 11:03:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 11:03:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 11:03:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 11:03:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 11:03:16 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 11:33:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 11:33:41 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 27 Jul 2018 11:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4ba4efd6989f76364156cfe5c4476d4b3472b917635c19d9075d4cf0bf203f1b`  
		Last Modified: Fri, 27 Jul 2018 11:06:37 GMT  
		Size: 29.4 MB (29425806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d841a8d2107bedfb67c6e301b656a42eea50fb718b07d3db32479b287c97a54`  
		Last Modified: Fri, 27 Jul 2018 11:06:27 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9046aebf445dd4f78d444b1775b7538b847c140a10b6df2e8c37419f0211498`  
		Last Modified: Fri, 27 Jul 2018 11:06:27 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966ff83306ede63af38adee7a693b743373dcb3273a3a8b2ce76ea43764cd467`  
		Last Modified: Fri, 27 Jul 2018 11:06:27 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b16f57adbca305386c27838f0d436f30265c0f60579b1bd907c4a3614d22bcb`  
		Last Modified: Fri, 27 Jul 2018 11:50:12 GMT  
		Size: 6.1 MB (6110510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49c1ab3e775e028332ff7d7c027488139f6545e4f2fbcc0d3dedb09ef77b7e6`  
		Last Modified: Fri, 27 Jul 2018 11:50:11 GMT  
		Size: 3.2 MB (3198071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a216808770883e08715f62ee8d15b9f5667041a5b408cb56f02b1e53c20190b`  
		Last Modified: Fri, 27 Jul 2018 11:51:17 GMT  
		Size: 50.0 MB (50049728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:89762f56ed76b6211d37f1e7fe3b37e32d302d3525bcfbcbd1463687d4874740
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.9 MB (99935925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62afe2db8aaf9768374a4874c84e1e389e95de49bcd749b12ab44dce54f2b0ee`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 Aug 2018 12:48:50 GMT
ADD file:90ec39bdde69f12038306c80788caf1ca13570ed7352bc1bb849b15f3c820157 in / 
# Thu, 23 Aug 2018 12:48:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:49:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:49:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:49:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:49:08 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 16:26:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 16:26:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 23 Aug 2018 16:28:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d6916d90889e3acf9c06539b8da4bb9378ef3b50a3d20cfae32e2c4d25960068`  
		Last Modified: Thu, 23 Aug 2018 12:51:44 GMT  
		Size: 32.9 MB (32881701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb1230894de7f2c99d6016f19275a22be4f5b2df1fb8a8f797b6dbc99a2a5a3a`  
		Last Modified: Thu, 23 Aug 2018 12:51:35 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ee4347c1f875bf9a455db5844337c4f7113f23f3b577daed5baa97e0350ff5`  
		Last Modified: Thu, 23 Aug 2018 12:51:35 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d90ebc6bb0e401eb3ce2fb5f015a1ac46e8ea3f845ae1a878735d7ce4320fe9`  
		Last Modified: Thu, 23 Aug 2018 12:51:35 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aee4a3006faeeb49543179b09fbee1d725fa8116afec6dec5dca07cc3d3f3bd`  
		Last Modified: Thu, 23 Aug 2018 16:56:07 GMT  
		Size: 6.1 MB (6119526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1073515e47801981f1ddc78c026beed3ba2d55dfa618ae2255fa430db6e721`  
		Last Modified: Thu, 23 Aug 2018 16:56:06 GMT  
		Size: 3.7 MB (3672582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d22d5e5f1c543249e21068f3ff9d9bb0c0ee03288a8909431b39bdc534d0c6`  
		Last Modified: Thu, 23 Aug 2018 16:56:44 GMT  
		Size: 57.3 MB (57260210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:c8600ef024ec5281093adaf8bfbc30a6573d08602e577cf63d53ffebd50145a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.2 MB (84203615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9035044bd18d0e5d31ce54404d79014765a29ae6b0068dfdf556450bbe69861d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 Aug 2018 14:48:57 GMT
ADD file:5933957b70ad980d7dcdb7e70ed4aec93ef92c18e73d5f3e2360d268d9508ed9 in / 
# Thu, 23 Aug 2018 14:48:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 14:48:58 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 14:48:59 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 14:49:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 14:49:00 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:48:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:48:41 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 23 Aug 2018 15:49:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:42865ba64a2a07e0874f83a789c040e13cfa4e69647bbfce783a399cb44a2486`  
		Last Modified: Thu, 23 Aug 2018 14:50:42 GMT  
		Size: 27.6 MB (27641972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55777ab21beca450166647db9a39d054cd5bb5b3fa9f372408116456e1f3c384`  
		Last Modified: Thu, 23 Aug 2018 14:50:27 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ca04d5e7ebe189196398049ffede5640ea2f326f4eff72d36a844abb81f98d`  
		Last Modified: Thu, 23 Aug 2018 14:50:27 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5d2c90afb44d85ecac0c1363c8d326201fab7dda7ce9beb8251855dff27353d`  
		Last Modified: Thu, 23 Aug 2018 14:50:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859bcf4299599efb644b09159a5fefebdb1867c7697ee039cdfc65f262021dc2`  
		Last Modified: Thu, 23 Aug 2018 15:59:53 GMT  
		Size: 5.5 MB (5525780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff0939fa48b92aca2014ccbc466215d0080e8f249d32410421c194c83107978`  
		Last Modified: Thu, 23 Aug 2018 15:59:50 GMT  
		Size: 2.9 MB (2919117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:359a7cb54a3f48e8eba742437d69dffc0b4cfc76de53424fb89f2e591661d7ee`  
		Last Modified: Thu, 23 Aug 2018 16:00:45 GMT  
		Size: 48.1 MB (48114873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
