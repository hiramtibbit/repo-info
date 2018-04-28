## `buildpack-deps:artful-curl`

```console
$ docker pull buildpack-deps@sha256:7e8dd70d84c79ca891d47c993da72aabe4ae93e9b75b1ae88bde627da93a6fdb
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
$ docker pull buildpack-deps@sha256:a5ab79b139c94c74f2bdc2617c67e5a27aed17e6228f355934c7726b1c2e1cbd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46567152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a45d2395928c6fe2a4d6dc3286dcd2840d2b82401cd4dcfba0415efbaed16877`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 12 Apr 2018 18:34:38 GMT
ADD file:468408277a83dbd0949d04a6bd3fe61c1fda31fb15df76257c1f1502c6b2889b in / 
# Thu, 12 Apr 2018 18:34:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:34:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:34:40 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:34:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:34:41 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 05:42:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 05:42:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:f56c16792d1e2514d57f86a120f7bff06c8f7ad0f3c26c47f54e8d96f57b1ca7`  
		Last Modified: Thu, 12 Apr 2018 19:14:52 GMT  
		Size: 40.5 MB (40506608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f3fcbcaacdbf8bf99fc9e2cecfae0ca6b637325023b34140d9b328b7cea39a`  
		Last Modified: Thu, 12 Apr 2018 19:14:44 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f1503c00f86eee2f931903a7038268867b9952347e7ae66c8e0bee8a1aff51`  
		Last Modified: Thu, 12 Apr 2018 19:14:41 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5ce6675ff396e9b2cffca66df5660189168e4e29a301dbae503425b5bc7095b`  
		Last Modified: Thu, 12 Apr 2018 19:14:41 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29a9bdc981f94e39efbc0aff3f33cffcde04a8fcb08fb1c28d43395451829d6`  
		Last Modified: Thu, 12 Apr 2018 19:14:43 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653f0ed7b83110353af83d208a422c8d5ad63f7333cd852a15ee5874c71e5b42`  
		Last Modified: Fri, 13 Apr 2018 07:39:08 GMT  
		Size: 6.1 MB (6058074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:4cfd9ff5114602e392418f176ea4dcc7ed64a62d975ee26e6bffa2389949138f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41194996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a2b3655c46c16e7c5a356f1e1ca12f64f674606132575ee8917323ec4d48f79`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:03:14 GMT
ADD file:a333e18e1717a1b7a9d4595ac663cebae53e262e9ada3b000c6dbda4c078a2be in / 
# Sat, 28 Apr 2018 12:03:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:03:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:03:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:03:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:03:26 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 12:26:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:26:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:6d9fb8e5706c9e84d87c41776e65b245a29a54bd580aba8b6829415ddf511093`  
		Last Modified: Sat, 28 Apr 2018 12:06:16 GMT  
		Size: 36.1 MB (36094951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e55c7c1ad2064c99e7bbe5f1b8cbf0ded890015f2a4ae620e492a0efb99234`  
		Last Modified: Sat, 28 Apr 2018 12:06:08 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4401b2302372bd5dde97dd509dd12d4c458249c2f109318fa2009ff5fa06321a`  
		Last Modified: Sat, 28 Apr 2018 12:06:06 GMT  
		Size: 610.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b86bd15ca9cc5ce102c8933200611f51ab428c021147e5703126c0116ce25124`  
		Last Modified: Sat, 28 Apr 2018 12:06:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7aadd8fcbc4237677a2a7b40fd22d3cc7384ce852856d50ee36f055dadeb032`  
		Last Modified: Sat, 28 Apr 2018 12:06:06 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c1640c47a99436814b677e12d96c4bbacfa3d539cb8a4b00a1b2d2527405d9`  
		Last Modified: Sat, 28 Apr 2018 12:57:04 GMT  
		Size: 5.1 MB (5097547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:82587c5d0a868f0f543827dd9173fe5c5f8f414742ec196ba5fb4794b1bacafd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.7 MB (42725025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99984525817e205644f65741da513bf522e92ada8bb567a4fc53fda3153a6954`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 09:00:41 GMT
ADD file:5dabd9134066531a408285904be465bf1e5142f628da743285a0be5630cb1154 in / 
# Fri, 13 Apr 2018 09:01:01 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 09:01:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:01:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 09:01:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 09:01:47 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 09:29:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:29:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:2b1f6ea78d7ef0fc778cc4c9efe2aa767eef81d18ed06c22a875175bd5c774a7`  
		Last Modified: Fri, 13 Apr 2018 09:05:55 GMT  
		Size: 37.4 MB (37384539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2a41ee280eec625e740bf2fad7daadce056da8d442fc204b6672383f5c46cc`  
		Last Modified: Fri, 13 Apr 2018 09:05:42 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f5655d0e2914712c51c81b543c8bb44942c2a1adc800189cef12e79f1b1d52`  
		Last Modified: Fri, 13 Apr 2018 09:05:42 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1722db19a03faf76336de112e234f9ab466407d61f59abc166fb4e8adc47bc66`  
		Last Modified: Fri, 13 Apr 2018 09:05:42 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f525e55347dacd941c576525ea9306a9a6461ace88a428df68c318b5bec92f3`  
		Last Modified: Fri, 13 Apr 2018 09:05:42 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570ce18a9d4455185cfe57e24eeb9ddce6e0ffcc72b8b5dd40e29c3209c5e2b4`  
		Last Modified: Fri, 13 Apr 2018 10:24:20 GMT  
		Size: 5.3 MB (5338083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:2d00bbfd2f790e607a7affec64078feda98c7ca43290c009e4c9fba5873f49c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.5 MB (47453903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a111cfed3a543e656e3e5c0d8cd70da7d5c8c2080eb45e1ac0e84013516a0396`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:17:38 GMT
ADD file:669d953dcffd48718fa9552ac17fa437c4f7808c809d4dca3a985fbd92e44d9d in / 
# Sat, 28 Apr 2018 11:17:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:17:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:17:40 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:17:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:17:41 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 11:48:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:48:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:b38f2cab2cd1e5a5828e843f9949b681b1d0c7fb6067f45e0bd32ce5b2a0271a`  
		Last Modified: Mon, 23 Apr 2018 14:47:49 GMT  
		Size: 41.3 MB (41342461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164a6406f7a5ac124c49d20db841afe41c9168abeb5f46130898381ca955ad67`  
		Last Modified: Sat, 28 Apr 2018 11:18:39 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4327f33595f48e0c323bf66942a812fff4ccedbb316aa2d499819b1edd3fb8ad`  
		Last Modified: Sat, 28 Apr 2018 11:18:39 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12f041d77d086bf7a1ae9c1fe78de3f4da87ff376f3ce89328c50a4604552c4`  
		Last Modified: Sat, 28 Apr 2018 11:18:39 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10dce514c02c5a0db8bc64fe9ae603660dc482ea4300cb075875946d048713e2`  
		Last Modified: Sat, 28 Apr 2018 11:18:39 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca5979ab452604aca47a725ed14d7d565235f573078c395ba61587543a8ef1f`  
		Last Modified: Sat, 28 Apr 2018 12:30:54 GMT  
		Size: 6.1 MB (6109011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:2a82aeb71d306b90f844e9c7830dc266ed85bd00c2d40f1f8c6afe84e2fa705c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49916890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb480ec74b90dec67dfcaad43ca2aca859f0f140c1b1e45919cd7764b410c651`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:34:17 GMT
ADD file:fbd8bf2e9e4258327659b9bf92ea09881deba085dfc47bcd6c9c0e3ab6f5e055 in / 
# Sat, 28 Apr 2018 08:34:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 08:34:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 08:34:23 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 08:34:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 08:34:25 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 09:31:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:31:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:b4f561f7b9d5dc7d90dfe9f3035cfac27da95f9d7f6cb4c66f6d3c2a20b51300`  
		Last Modified: Sat, 28 Apr 2018 08:36:18 GMT  
		Size: 43.8 MB (43778479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4e67575e5620e4a2469081b3c31793774c12197d559beccb2096c8b4008c84`  
		Last Modified: Sat, 28 Apr 2018 08:36:07 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:962df9b88884a533546e0bc02f9da5630142a6da1ec82ddc8e99b58b4c1f0be0`  
		Last Modified: Sat, 28 Apr 2018 08:36:07 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9274c171c2d6db20f9d1b41920f2a635886769f472fb1b02f75d7f3245f30336`  
		Last Modified: Sat, 28 Apr 2018 08:36:07 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d5e18a9f5a85a15746868e34cad0a15b63a3087883b198471a151a5feb69f3`  
		Last Modified: Sat, 28 Apr 2018 08:36:07 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7ecfa2fef6b03c03e41a875a2f497e3e2d7a9d3ee93cd1486aeb81569e6b9b`  
		Last Modified: Sat, 28 Apr 2018 10:31:46 GMT  
		Size: 6.1 MB (6135944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:a5ea4d204d427ec8010f9751d5f6d29a099aef34ba2069d268a37136a0e826ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.9 MB (44892904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eabcbb775c066911d6ee70c2e7b1dcd888fe5b93d4776077df65519b49fe35d3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 12:00:06 GMT
ADD file:ffb5e4a73c278c11cbbbfe7fe0a629665a3d9845cb0db78f25bdd7671f141719 in / 
# Fri, 13 Apr 2018 12:00:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 12:00:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:00:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 12:00:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 12:00:09 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 13:35:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 13:35:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:36f23915609dd556741dde440d72061be7ab5faf7ee73b5a315cc90185eeca9c`  
		Last Modified: Fri, 13 Apr 2018 12:01:01 GMT  
		Size: 39.1 MB (39147163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a3df0e69edea74d5d2ac8bc07c17e8b25530cfab85664012bc7df0adb7b9c5`  
		Last Modified: Fri, 13 Apr 2018 12:00:54 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73506fffebcb9901fd776afad6ec0e0555c693bc97377a827a1ab8ec9f4287f4`  
		Last Modified: Fri, 13 Apr 2018 12:00:54 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2499bc9824ce3218ea6fe11f9f4e06c19a93fb8e7307124af412aaa05fe0de`  
		Last Modified: Fri, 13 Apr 2018 12:00:55 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdfe5206799f0b4cd2b1ee0745697f2808236dd958d9af00174a49853f719beb`  
		Last Modified: Fri, 13 Apr 2018 12:00:54 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e62b4b04dc9017a035e8e9877cdcef41d15b0a1f76aa713cd581d4974d537193`  
		Last Modified: Fri, 13 Apr 2018 13:42:29 GMT  
		Size: 5.7 MB (5743347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
