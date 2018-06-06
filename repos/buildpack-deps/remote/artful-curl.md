## `buildpack-deps:artful-curl`

```console
$ docker pull buildpack-deps@sha256:2d599b97c0aeb55911da58456fac9952ad4dbc6ead999934d606639e2bad2c4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:artful-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:b58d8128282c2330581768b20ba311a71f70c042a5165a237eb1b0f3442ca489
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.7 MB (46743069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:542ac79c43965e53e3993f2aa9217075ec1a22d6b7eb0c5a7148afacb9a801cd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:20:32 GMT
ADD file:2a5d2b4d38cca65ba2a08a780e10a7aa0c92e07930d9b7a1d9cc4943138c1503 in / 
# Tue, 05 Jun 2018 21:20:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:20:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:20:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:20:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:20:35 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 22:50:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 22:50:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:3dcaa911bc8f46143bb91f9e1a07d99951be217e822b62a1b7c9c788266e60d8`  
		Last Modified: Mon, 28 May 2018 14:49:36 GMT  
		Size: 40.7 MB (40675642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f4fafaa221f18fab2c0a24d7859a145a9171cd281a4d4ecbb1f512baf983b9`  
		Last Modified: Tue, 05 Jun 2018 21:22:10 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a42e5448b1f3e26d97dd4fa237e80a21bc382d79cecd2963c9cea5065fea7b`  
		Last Modified: Tue, 05 Jun 2018 21:22:10 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6280163c6fae97a105feabc0c9b9e3d1d8c3dc720ed9ff4988661401cc015`  
		Last Modified: Tue, 05 Jun 2018 21:22:10 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c9a8527d4865f048ab9da9708f19a00617a1463afef91f8d59325b829628f8`  
		Last Modified: Tue, 05 Jun 2018 21:22:10 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4e5c7e861c3e6dbf53bc189c3a041f17d0c3dd6dc2f088de34971733d218f9`  
		Last Modified: Tue, 05 Jun 2018 23:31:34 GMT  
		Size: 6.1 MB (6064957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:76b11a1833daedff7cb3c1ee8bc179e235fced3c2cb5a0de19503d15f7a8beb8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41291831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02a8a6aecdc206e4156a84f3564e6e561fdce4bf269e5ce6b811b43a2784bc9e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Jun 2018 12:15:25 GMT
ADD file:654da1541c131ee220e18807c951aacf0386714e9a5d6da1aa5cc03e5ed895c1 in / 
# Wed, 06 Jun 2018 12:15:32 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 12:15:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:15:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 12:15:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 12:15:36 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 12:42:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:42:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:2625238ea2790921a955c5faa28c236964563da836d30c9c96c612e3cf71b709`  
		Last Modified: Wed, 06 Jun 2018 12:20:48 GMT  
		Size: 36.2 MB (36179459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4343e8ccab32ed14395505cc5de2dc02891bdb3d62279fe3e0989e03eebd1174`  
		Last Modified: Wed, 06 Jun 2018 12:20:36 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7039cc8ca908053f131bcf4f51a5324c4a9c0183ba9997447a9b6508dbc3818d`  
		Last Modified: Wed, 06 Jun 2018 12:20:36 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7277bd148f3db2a9f5ea0d26549934742cdd8fe069842b3f6d0f272cbcf8b51`  
		Last Modified: Wed, 06 Jun 2018 12:20:36 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:706230e6d79540153ceae9e558251125883fe1c3e3749d37cfb1caabf3a141ce`  
		Last Modified: Wed, 06 Jun 2018 12:20:36 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa39dd3fd5b83068a9230d1a24dd8f3ef1735035469ef2766b536327c28feb44`  
		Last Modified: Wed, 06 Jun 2018 12:55:16 GMT  
		Size: 5.1 MB (5109877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:96c5f87e7aeaebd353e0f0c6e978a5cc0ea5190057e986ce12bf05f6a7b90403
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.9 MB (42888761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:393539a3c76dff58f3208a3905d26b3a7bb32b2f796d7f855209cc6866b730f8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:35:28 GMT
ADD file:5d8ebb8e5cf137700cbe3aa15a561d3ecd29771c954a19b9ac8ed18df4f97188 in / 
# Wed, 06 Jun 2018 09:35:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:35:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:35:36 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:35:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:35:38 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:09:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:09:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:0f2da3426de2504346508a957d14f1e51e309d37bf4ce6d88346ed79e94b2499`  
		Last Modified: Mon, 28 May 2018 14:49:41 GMT  
		Size: 37.5 MB (37541116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053f35d1230b5c79c468ad9d5b9a7e8926322de47a0052b26b9b07416bb2b533`  
		Last Modified: Wed, 06 Jun 2018 09:39:04 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b323aa331d9163a64a91ee196928ddf931b161aaa7d91d53da804bffc70e8e`  
		Last Modified: Wed, 06 Jun 2018 09:39:04 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c49a475637d84aa7ba0b46fa62260510674c19a1652caceae9bb95929c0431`  
		Last Modified: Wed, 06 Jun 2018 09:39:04 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891e25a061a6e7e5e5ede6bc616521250369a8bb67e7c103caed0abade4fb3ab`  
		Last Modified: Wed, 06 Jun 2018 09:39:04 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a3b39d0ab1bda151a3768a7093d6ac121e130a1375bf4a4f7f7c5d58bda616`  
		Last Modified: Wed, 06 Jun 2018 10:55:25 GMT  
		Size: 5.3 MB (5345248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:44847f8022416919eca18494993e1c263d8c951a630c5255573dd99aaea9ddd3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47596432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58a0e7a4c063bd765fcea69fd12d4fda88f57cacc5ad98f5fc1badd4d12658ff`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Jun 2018 10:48:04 GMT
ADD file:c1635106a7b98124a7e4560989103ca9c578da3f24d148c45115da366d4ede0e in / 
# Wed, 06 Jun 2018 10:48:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 10:48:05 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:48:06 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 10:48:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 10:48:07 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 11:12:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:12:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:861a87a897101bdb5f2e2b0e4a2866c0515577c5762682eab3e04f0f26afa33d`  
		Last Modified: Mon, 28 May 2018 14:49:27 GMT  
		Size: 41.5 MB (41470547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2eca7490176bcb7a6501b75eecdb686deed934bf1c02426bd7af60abbaafad`  
		Last Modified: Wed, 06 Jun 2018 10:49:47 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285b4e01af490ca51203745a720fe7e88fecb9c19ae74abed0b5b1eb485f4a13`  
		Last Modified: Wed, 06 Jun 2018 10:49:46 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4802179d1d71aadae2d5939da67f52e7095eddf7ea4378a59c9a30047148d3da`  
		Last Modified: Wed, 06 Jun 2018 10:49:47 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21012734c27e662d091b19554dc5c635347248356216fc18b9926ca442673ea`  
		Last Modified: Wed, 06 Jun 2018 10:49:47 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241527849c66f6c659c22ca4fb3defe24e437a27d257f1f7c9ae9832caeedfe3`  
		Last Modified: Wed, 06 Jun 2018 12:04:10 GMT  
		Size: 6.1 MB (6123449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:00658d63bdc76e46da20050225c72877b57f0dd16ecd5e4c30f9ca50afa311d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50058482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:228e8038941c8b690215bcd37d3bb317b2fd147b846b20415d21684e7f8e9246`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:01:54 GMT
ADD file:e13e0cb0391576566ee1078fb9ab3d542dc822657693a805dc7ae43cbefee667 in / 
# Wed, 06 Jun 2018 09:02:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:02:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:02:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:02:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:02:35 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 09:42:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:42:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:7f2ffa666bbb1bb0d7a3912e455a53438c0dffadac3886b841bddd7cf362d493`  
		Last Modified: Wed, 06 Jun 2018 09:07:50 GMT  
		Size: 43.9 MB (43913390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c2616376cef41802d8fa8aa999912787a0a5e0e5d7f7846eba879c7e44a7b6`  
		Last Modified: Wed, 06 Jun 2018 09:07:38 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947c8ae5893648c1753b90c2155cff49033cd6e8bf1ec939c5f6f728b5472e4f`  
		Last Modified: Wed, 06 Jun 2018 09:07:39 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b0d666881965ec9a135efb20b9674ed809eadbec99f16549500440d25479600`  
		Last Modified: Wed, 06 Jun 2018 09:07:38 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b5c535845324b9aa199eb31b3df590ae540a5f52abb0731e52e570cd9e55b71`  
		Last Modified: Wed, 06 Jun 2018 09:07:38 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48353d9bd38cfd9b360b5eac4420c8b156fab3381bb8019e665010f81dd0172d`  
		Last Modified: Wed, 06 Jun 2018 10:40:56 GMT  
		Size: 6.1 MB (6142622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:71a0ee3ac114a0d9dba31b682924c77d7082709d4fd2749961d7e92e686bad2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45057428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30a993bf5620dfefadfd3faae13b611119d6de5cce398aa3010214838b445ae0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Jun 2018 12:06:28 GMT
ADD file:31a16b7477959a10923ccb0a11896a024647a9400ecfc3ee9b6126e64792d20c in / 
# Wed, 06 Jun 2018 12:06:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 12:06:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:06:30 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 12:06:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 12:06:31 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 12:31:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:31:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:486424e7978199463c90712895722a746528159dd8068f9429e0fa43e9d56652`  
		Last Modified: Mon, 28 May 2018 14:51:18 GMT  
		Size: 39.3 MB (39307442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48cfb965451ca4770dc05a898ea37a5b0403f88b8e245bad0fa2baf75d7c367`  
		Last Modified: Wed, 06 Jun 2018 12:07:53 GMT  
		Size: 840.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e3e0066d059c44504e6dcfa62ee55f872cf81ec9811fddb81244722ce1bae38`  
		Last Modified: Wed, 06 Jun 2018 12:07:53 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93128e8f96474b620c8ccdf0cb7ce1861a07e3e658b9bce6c31a0d3fe2fb98d`  
		Last Modified: Wed, 06 Jun 2018 12:07:54 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ac5f408872fa36a8655d393327f66fb22f11848153ae93aa97799abe907b2e6`  
		Last Modified: Wed, 06 Jun 2018 12:07:53 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a459a87f8204c57c4987b872f746b877f3ebd6e769e7c5a28b3fdafc08cbd821`  
		Last Modified: Wed, 06 Jun 2018 12:37:28 GMT  
		Size: 5.7 MB (5747596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
