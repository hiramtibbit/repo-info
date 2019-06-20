## `buildpack-deps:eoan-curl`

```console
$ docker pull buildpack-deps@sha256:f040f1588df0ebfb3a8654fdcb111e326ac149e5cf78c7083ffd8f83f4a03d0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:eoan-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:175796cbbe12d2e3cea545a08a21a6b45bf90a6878c4fe34136c063f575befa9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.9 MB (37867276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d16a9bcf86aa10aead28e97e555e4276847a362c8ac0627be116cd5bb0e7a02`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:53:01 GMT
ADD file:246898d8b8d12e32034b6f6aca04644c5a4a17ba58ab5702bd38691409b9805d in / 
# Tue, 18 Jun 2019 22:53:03 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:53:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:53:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:53:06 GMT
CMD ["/bin/bash"]
# Thu, 20 Jun 2019 01:20:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 20 Jun 2019 01:20:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:7a4ee70a93f16acda872e6732cfc91cf091d84c8816fd4e64ebaf4f702503322`  
		Last Modified: Fri, 14 Jun 2019 14:53:26 GMT  
		Size: 27.9 MB (27866734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fed88c4f3532b04925a9a830c0736c2c578b1f60f57df7ad37fd71f9a3aef7`  
		Last Modified: Tue, 18 Jun 2019 22:54:33 GMT  
		Size: 31.1 KB (31096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742573599d90652bf5c9979a337c9acb06987b9a0e2b3e8f1c8ea1203b31d294`  
		Last Modified: Tue, 18 Jun 2019 22:54:34 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a2294e1dd850340a269438c89a97d6438d79f542d023a9ff50109b58e4a93cb`  
		Last Modified: Tue, 18 Jun 2019 22:54:33 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201deb5b3824928668edff58a22728e21cde84963276fd56d2719253f03bcd6d`  
		Last Modified: Thu, 20 Jun 2019 01:24:05 GMT  
		Size: 6.5 MB (6456608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae6e5fd1cd9566c9bf8d87c2f53611d4b2e4e409207ac095a9afa4de693bd9f`  
		Last Modified: Thu, 20 Jun 2019 01:24:04 GMT  
		Size: 3.5 MB (3511810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:eoan-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:aebed81642b9910fc46c6a56a91e7e7a52f617109bf27a2020485e22dcf0f520
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31800131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edda5ce6e17f53a092647f7d73a2825eacd6df3e76100d2198978f05eac5fe41`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:59:42 GMT
ADD file:13a0a5d5ac5fd9f5e744c3ade1c449714242bfd6e6d4ab5947d2654a4cb0939b in / 
# Tue, 18 Jun 2019 21:59:44 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:59:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:59:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:59:48 GMT
CMD ["/bin/bash"]
# Thu, 20 Jun 2019 00:59:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 20 Jun 2019 00:59:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:093b5a5be11381a9e3e16faf90484a693930952a7e61b0f407053f04572ba866`  
		Last Modified: Fri, 14 Jun 2019 15:17:34 GMT  
		Size: 23.3 MB (23336045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e53e8d9751ae42b9c4bd968302fc0e8acce303f99278c0e9da5f7696cade45`  
		Last Modified: Tue, 18 Jun 2019 22:03:40 GMT  
		Size: 31.1 KB (31065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ced319c4018dd4ecf59fc8dbcd289a8f47ce09cb0825b2cb7ba33cf23a40f9`  
		Last Modified: Tue, 18 Jun 2019 22:03:39 GMT  
		Size: 861.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1bf27384df0a97bbf29d183e55955449c05472587f6ee798440de73fdd6d099`  
		Last Modified: Tue, 18 Jun 2019 22:03:39 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b456e8f1100ad1f0b32d781043f4f0c9b71d967bfddfcb97a56c7a8c40bb79`  
		Last Modified: Thu, 20 Jun 2019 01:04:20 GMT  
		Size: 5.5 MB (5455485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e0f148ca02145dbd1f30dab81fe486b0d4e37e16d0b9d846f6f228f32affb2`  
		Last Modified: Thu, 20 Jun 2019 01:04:20 GMT  
		Size: 3.0 MB (2976486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:eoan-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:ceac9d15f1cc2095b59f8a105beb9720b71e7aa9cda9670ecc763aeeff4ac06b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36532599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:495cf3dfa725e9eb4763bc7e8d84f42060934a45bb89e40234171240a1c94c74`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:41:06 GMT
ADD file:8ab5b89ecde7b7324ae88650ff35da0069c5a726e48d4a5a59ba5dbaa3134c35 in / 
# Tue, 18 Jun 2019 21:41:09 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:41:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:41:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:41:12 GMT
CMD ["/bin/bash"]
# Thu, 20 Jun 2019 00:40:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 20 Jun 2019 00:40:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:001b4d0e4873cd7b807ac669067dd2e419025cd286c1b1b50eaf11e02db74ea3`  
		Last Modified: Fri, 14 Jun 2019 15:19:00 GMT  
		Size: 26.7 MB (26651936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed9b320417a111a68a6d171273094d7056564a106f05e8c974cf48874614086`  
		Last Modified: Tue, 18 Jun 2019 21:42:26 GMT  
		Size: 30.9 KB (30929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c69edd61e86f891e8609bc56b82bec3a0e1aefae701eb18aec645cb2376f2c2`  
		Last Modified: Tue, 18 Jun 2019 21:42:26 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492a94da25f0a11fabb7cb57b281f5033e26bac97aaaead8ba5a09fffe975957`  
		Last Modified: Tue, 18 Jun 2019 21:42:26 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90b18924632823a8903ab253604d9af17de356f9d2c5db4c976f1bd5d5275c42`  
		Last Modified: Thu, 20 Jun 2019 00:45:09 GMT  
		Size: 6.3 MB (6340537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b1b60b72d95f3079483418c1dc760e5998b7d6e32ccd4db0d2d9b5cd28bf84`  
		Last Modified: Thu, 20 Jun 2019 00:45:08 GMT  
		Size: 3.5 MB (3508148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:eoan-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:829fc81709ede977b7760ddb86e88af9a666bbc365c67d3b38d3bbcd4e7d9f75
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39150081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4e0323106d40c095d2a55712dd8d28b0dba67307538ce9dfd3addaafeda8ddc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:00 GMT
ADD file:90b2615aa033cb9d9ad43ac3b49f05303878c6cf4987aa7eeeb2bc6a53acc72c in / 
# Tue, 18 Jun 2019 21:40:01 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:03 GMT
CMD ["/bin/bash"]
# Thu, 20 Jun 2019 00:39:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 20 Jun 2019 00:39:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:57fde61b6beb9a88f462d8121037e47ea180981359b989091c622ce4bdc20941`  
		Last Modified: Fri, 14 Jun 2019 15:01:13 GMT  
		Size: 28.5 MB (28541662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754f1a3e02e13d01a1a2ad9f839da22fa46774c6c64e917430e64760a84e23a8`  
		Last Modified: Tue, 18 Jun 2019 21:41:06 GMT  
		Size: 30.4 KB (30357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a194f726e196d64ae84004ef210797ea38de14bef0f6564ba9efe6b3d5bb5c`  
		Last Modified: Tue, 18 Jun 2019 21:41:06 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:283c6edb846bf0b93c11d8f761ac951f0da1d878bb87ea243a2d56f8129bbf4a`  
		Last Modified: Tue, 18 Jun 2019 21:41:06 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2668d9d6fa5203a4976e3317533fdc95530aec5261d29163df63fad887aca592`  
		Last Modified: Thu, 20 Jun 2019 00:43:18 GMT  
		Size: 6.8 MB (6772409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66a614ca36d4b16d2e1f1cbc64bf0ecf563a024b9ae896965045fe0ec67d056d`  
		Last Modified: Thu, 20 Jun 2019 00:43:17 GMT  
		Size: 3.8 MB (3804627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:eoan-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:40131943cc7530bad0ee84e2d93611adcad94ef0bb571b5b37666058f45f3ca6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45105316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:924ee0a3be49f68c27a4e427b74d4a53bc1f42b4ac652d8a53c8b8c21d53303d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:49:43 GMT
ADD file:ca6fa29d3c731eb0288baac26414c077581fd1744d7382519b534e99b94c7cb1 in / 
# Tue, 18 Jun 2019 22:49:49 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:49:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:50:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:50:03 GMT
CMD ["/bin/bash"]
# Thu, 20 Jun 2019 03:16:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 20 Jun 2019 03:16:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:62b1a931ccd57b210eb4af31f71fb370eb40c649bbc81ba4f706339b1748421a`  
		Last Modified: Tue, 18 Jun 2019 22:52:21 GMT  
		Size: 33.2 MB (33150588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efadea3a433bf0169d704d389f504b18a4e6b3480f41810993db7ac0b2b76f64`  
		Last Modified: Tue, 18 Jun 2019 22:52:12 GMT  
		Size: 30.9 KB (30942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c2f426f01dfcead0362f8071ad350025701b1db1c7e4a2cbded1c7d52f05c7`  
		Last Modified: Tue, 18 Jun 2019 22:52:12 GMT  
		Size: 870.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c01e21eb7820833d8d820472b4d41d2d386cc034ebd96fbbd5693a34e06614`  
		Last Modified: Tue, 18 Jun 2019 22:52:12 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65801fdfbe05542791c9489be0e54f511af25ec11868ed89908ee2e7cd57fd14`  
		Last Modified: Thu, 20 Jun 2019 03:25:06 GMT  
		Size: 7.5 MB (7459831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3752ea1ef8d808c69ae5e03a1dbab3f26e3693ef8ecc52578ccf063e3d8658`  
		Last Modified: Thu, 20 Jun 2019 03:25:05 GMT  
		Size: 4.5 MB (4462899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:eoan-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:6d33e51b267e7fc1dbf0b2824a836dd0480b867825ef21da751612cbc8aa243c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 MB (35932516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ed5f00a175a128a07a3858c58481a1047aea14f1a0320550035953da999c2f0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:43:13 GMT
ADD file:e1545c4c48849b8ce225e08fac0c5320b1f8f85424d54d186b2f75ceeba394fb in / 
# Tue, 18 Jun 2019 21:43:14 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:43:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:43:18 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:43:18 GMT
CMD ["/bin/bash"]
# Thu, 20 Jun 2019 00:42:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 20 Jun 2019 00:42:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:f0eee9a15e04c0e9facf6af79046b48bc1751306a8259a981f5c34e1e4c9ae1f`  
		Last Modified: Tue, 18 Jun 2019 21:44:53 GMT  
		Size: 26.4 MB (26375495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2abc3077a37fa96a7583cfb9c5c9d63f8a08cf97955cef27e5efd1ae26144ed`  
		Last Modified: Tue, 18 Jun 2019 21:44:48 GMT  
		Size: 31.7 KB (31675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225496535545d280240464cfb80daabecdd8717d619d91da24d598d332ff47b0`  
		Last Modified: Tue, 18 Jun 2019 21:44:48 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:267abe397d54fa8b459b1aa5a2685336a0126d5046e5075f16efe432c0ea505b`  
		Last Modified: Tue, 18 Jun 2019 21:44:48 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ebd5e64c308361b641efb07cf5309ae0df7220e50dd9ff63d926643b60724bf`  
		Last Modified: Thu, 20 Jun 2019 00:45:03 GMT  
		Size: 6.1 MB (6095296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43084803b10cdc611d6bc05799ba0eab00c4e4be54432e4b13e74f0897e47a5a`  
		Last Modified: Thu, 20 Jun 2019 00:45:03 GMT  
		Size: 3.4 MB (3429029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
