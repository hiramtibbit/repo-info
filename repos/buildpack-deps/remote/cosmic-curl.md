## `buildpack-deps:cosmic-curl`

```console
$ docker pull buildpack-deps@sha256:f7bda4fe8f6d5c90af8b0038c54afe3437b4661ceb0ea0cec6dd0c18ad273bbd
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
$ docker pull buildpack-deps@sha256:5c782ed7107eb86f9e2f99964b0981349454337c84b81dcf081dc80eca8df84e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.9 MB (37856952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a395702c2729afd5832c312fef08571f772ee9314aaeb4424f730550d9759bf3`
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

### `buildpack-deps:cosmic-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:70998ad8ff6675cb0ef6d21bf95ca0e64d633bb8a0ba316afa68b059e8779849
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (32035053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fefea400cd87ae5d3774c31a39509bae351e2547af2ad8563623423580dce7fc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:43:14 GMT
ADD file:6d6d6faf7366cc26f9b3fb467990c193d890d7b7c7fc63d743f5cbc50ce5fdb6 in / 
# Fri, 27 Jul 2018 12:43:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:43:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:43:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:43:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:43:27 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:14:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:14:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:223edca7d108400eb184eda52ad1c74c3ffa7669318b6d6a56246b80ce1c9020`  
		Last Modified: Fri, 27 Jul 2018 12:46:03 GMT  
		Size: 24.6 MB (24573445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a76a04e15a74d044073e2856e003f5ed96b77212c0c0455809b9d12b38e8e1`  
		Last Modified: Fri, 27 Jul 2018 12:46:00 GMT  
		Size: 861.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ec01e51e513f7ef2d78fd575ae734e4a34458874f839e2ad0be948e3548168`  
		Last Modified: Fri, 27 Jul 2018 12:45:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348e72bc25d5fcae2a9a8463b84b3a7f8fbae1e3758e20bbb96736c1d9466dca`  
		Last Modified: Fri, 27 Jul 2018 12:45:57 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd73326e4603388f720b2e5c21045f986d820bc4009552c0cdb33370be953a6f`  
		Last Modified: Fri, 27 Jul 2018 13:23:10 GMT  
		Size: 4.9 MB (4930103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed3daf80f5200bd58ec34725041e782abe46804fb666cec9442cdb717bfe996`  
		Last Modified: Fri, 27 Jul 2018 13:23:08 GMT  
		Size: 2.5 MB (2529603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:cb9e53f62d78ae60aefb7b80c55ffd823481135f5b5083d6a73a72abe682f320
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34102416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:861860b85d7a29ca75d2f465fe112299cfd7b74e7773ff6ea28aa7fb3003076b`
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

### `buildpack-deps:cosmic-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:e4eecfa34f7a5da0f476767d202c0aa7ff6ff0c55ba1799fec0629e321aa590e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38736260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64df86e0055ca00258f53dc95b7bb108a2ec71e46ce8a80448aba48cf8787149`
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

### `buildpack-deps:cosmic-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:1c937dea781fe3710645f5ded43218052f9ef021eddd8d1555dea53b3734575a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.5 MB (42520624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc5d2c99d019741182ad3d130ad986508084316c4c85e4c0876d56e94cc236dc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Aug 2018 18:04:14 GMT
ADD file:dffe89742e8e25b55f0bd555105231dbf1cb0f5f6151416cb00f6d028770b08b in / 
# Tue, 21 Aug 2018 18:04:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 21 Aug 2018 18:04:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:04:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 21 Aug 2018 18:04:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 21 Aug 2018 18:04:25 GMT
CMD ["/bin/bash"]
# Tue, 21 Aug 2018 18:52:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:53:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:6d83f949c5923860f4f465349f0f322a15638c433aab97f491f0b00ee226c211`  
		Last Modified: Tue, 21 Aug 2018 18:07:51 GMT  
		Size: 32.7 MB (32726915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe994e92d8ada7de1c32115d55eb572908ff3cd745bc11ab78dc2b871d39e793`  
		Last Modified: Tue, 21 Aug 2018 18:07:41 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14628e741305905786880018570eca019345e2699a707d935abef42674278baa`  
		Last Modified: Tue, 21 Aug 2018 18:07:41 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5157e150c83fcae3bc9dc079bde81704036a8cb1f88ea0d9a7c31608220b6b`  
		Last Modified: Tue, 21 Aug 2018 18:07:41 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:253e1ed9a8533e1eb0c20465669cba15d43936b39f96ade65ed6b23f317ecc79`  
		Last Modified: Tue, 21 Aug 2018 19:24:10 GMT  
		Size: 6.1 MB (6119354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a8fa533f68cca7795cbf917e23c3fbc73516e754ca7cf5464463b5641ec791a`  
		Last Modified: Tue, 21 Aug 2018 19:24:10 GMT  
		Size: 3.7 MB (3672451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:265967abc972d3e91bbd5593515be2a7212df45aae6a7053d2557a1b0d893417
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.1 MB (36100373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29bbcbba2382e69944a79b0b44e05987af55a04fe5ee468bd727749522d55406`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:59:25 GMT
ADD file:48017b0ab01f8980fd8ebfd8c5c6e0e5d22b63c4854045edb9dd6d855d060da4 in / 
# Fri, 27 Jul 2018 12:59:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:59:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:59:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:59:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:59:28 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:23:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:23:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:61116a870ed3705821e672d98265864409d7d34f3d448c983437666f22566217`  
		Last Modified: Fri, 27 Jul 2018 13:00:32 GMT  
		Size: 27.7 MB (27660753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1874fc2d357c631f761f335e63893740a1604f6ef167c66f0e0f1e762d7c3eed`  
		Last Modified: Fri, 27 Jul 2018 13:00:27 GMT  
		Size: 858.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ceffdd4c65b0e399ef70f1e5d6b07a4d14fe5a4c3b4cd774f7c84a7de117cd`  
		Last Modified: Fri, 27 Jul 2018 13:00:27 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2919bf5e092a307c8270472daeec23afa904aae520a2f680e10d0a80ede4410`  
		Last Modified: Fri, 27 Jul 2018 13:00:27 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8099dd0073ee829ca65e775a1a45515f712810451f1ca0e146e47612c8958a2e`  
		Last Modified: Fri, 27 Jul 2018 13:28:38 GMT  
		Size: 5.5 MB (5518751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:695ae553260c0787583d6f3954c401ea14cdc3f6498a669e7c07d852ec1a34cb`  
		Last Modified: Fri, 27 Jul 2018 13:28:37 GMT  
		Size: 2.9 MB (2918994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
