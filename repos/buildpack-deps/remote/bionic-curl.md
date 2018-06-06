## `buildpack-deps:bionic-curl`

```console
$ docker pull buildpack-deps@sha256:14963e87e4934ca9e1e95b4e30ee90516ec3d1d09399d51f9c9ba5bce62996cb
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
$ docker pull buildpack-deps@sha256:86c517ad71886f03004f2e2b70e26b8cb93755b6ed6fc0aaf10050b66f022145
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.0 MB (40045996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bce156c6bdb723bbac96d36578f79ff5165f72cb2bec1b87eb6cfb07144694d6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:20:51 GMT
ADD file:28c0771e44ff530dba3f237024acc38e8ec9293d60f0e44c8c78536c12f13a0b in / 
# Tue, 05 Jun 2018 21:20:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:20:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:20:53 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:20:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:20:54 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 22:57:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 22:57:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:6b98dfc1607190243b0938e62c5ba2b7daedf2c56d7825dfb835208344705641`  
		Last Modified: Mon, 28 May 2018 14:49:47 GMT  
		Size: 31.3 MB (31262546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4001a1209541c37465e524db0b9bb20744ceb319e8303ebec3259fc8317e2dec`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6319fc68c576d6bd3e469b0ae31e9a010bc9b71ed286cf4e632424d82dca70d8`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24603670dc3e91d00439b5d56701884e4fc313877ef3940183a7e8e25fa5f1b`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f170c87c6f10548068b35cbe9bd00da1278b92f700a5e66c6a16ec04ba456b`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:881f647b990e7b51dcc7f2a6a5fb1c10548c1304dde567b0667a8babe1e3daad`  
		Last Modified: Tue, 05 Jun 2018 23:33:44 GMT  
		Size: 5.8 MB (5824353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f24f6a3d69eaf5b40b5738d638601347dfb2ce769bf14e62c9a08321bd3eaf`  
		Last Modified: Tue, 05 Jun 2018 23:33:42 GMT  
		Size: 3.0 MB (2956770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:ca09e52fd6ba6ccb06bdd3f49a907ec3af834b0028cd69701e8c687ee2ee86f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33928675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14ace87a1fee7db4e1f5cb412999d1b7bb49853d6a6ac444988c8f76c6a94565`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:03:57 GMT
ADD file:5b2d516c09b4419925efe09e1b5c861cbd3a2d48ed47d6b2c7e571ec6d9ead64 in / 
# Sat, 28 Apr 2018 12:03:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:03:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:04:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:04:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:04:18 GMT
CMD ["/bin/bash"]
# Sat, 05 May 2018 12:00:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:00:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:c68b3181adc7da3b2a5c9be4e228fe5b958ebee478e094e17cf4a61c60a75190`  
		Last Modified: Sat, 28 Apr 2018 12:06:55 GMT  
		Size: 26.5 MB (26487045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91be1119609b1847ebcb9f2621129540bc1fb01ca2c914cc9d03985f48513d24`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605e73e7288ab8c0b45ebed929576b45d7e024077e0f2ae8b1bfabc549e22b0f`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843bab014c7a7d380f7e5c7b7c205da6050bb6e3411217ebae052fae49a97708`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebf53478b460975ab3dc0b245e93b5121d21e03232fcef2d94cd838e034c3af`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dff6b65ceed9e01ac2520786e02e434b6f46e8cdd82c842bbe183c4b0a94519`  
		Last Modified: Sat, 05 May 2018 12:27:38 GMT  
		Size: 4.9 MB (4919091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a860e2e0dce7cd6e64811020f0834b3addce748bdbd085854cbfdca375dd94a3`  
		Last Modified: Sat, 05 May 2018 12:27:38 GMT  
		Size: 2.5 MB (2520256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:482481016b5e0cbec95819f302bc981a864666b54533e48f8aee139ff08d0e8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36189172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8f9382f13d8dfde21f909abcf13ad979daf0d03e32d282443a13272fe1dad68`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:36:07 GMT
ADD file:e621379575a99de6e4ba37f4ae8dcc55df1c97a6400433124a2f19acb114dbd6 in / 
# Wed, 06 Jun 2018 09:36:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:36:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:36:13 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:36:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:36:16 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:21:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:21:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:7832065b5d3446538e5ba50643be10e4c34b9e75f5a8b8df1358f999c7cd8424`  
		Last Modified: Mon, 28 May 2018 14:51:36 GMT  
		Size: 28.2 MB (28183155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e785b4ce40b0aea87739098d0012769178d94f1719637b68f9933a4f933c5d0c`  
		Last Modified: Wed, 06 Jun 2018 09:39:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1dddf51db09b762e68bab7662fa89879e6824075d6da9703eef3455e70a7f2`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66d20b2cdc45a149d7a54e6e605aabb6214e4811b6b0973649b36bc6e670621`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029aeb777c3f3fd5e77c8685eab4ce0f485d581b8359bcd0ada43b8eb8239453`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f081bee1c57849840ce0c8e23f9c624c491be3e2db34900a1f3c887dfef8651d`  
		Last Modified: Wed, 06 Jun 2018 10:58:09 GMT  
		Size: 5.3 MB (5285582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df74182c9423c94503d6d0f624d6f9ff382e20b45aa8114ceb3ff08e00d8594`  
		Last Modified: Wed, 06 Jun 2018 10:58:08 GMT  
		Size: 2.7 MB (2718116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:39dcd58466cd39aca8ec8f8beb07d703fb84457b412032a20569ad7b1b6f1036
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 MB (40652587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:936d1b560d2723d2f1caa468c75036e77af5383d5d3267e9986a20db5447cd88`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:17:51 GMT
ADD file:705b98193a254b56c6c3cdf55a3d95968938a567420d2c793fb2712550fcf1f9 in / 
# Sat, 28 Apr 2018 11:17:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:17:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:17:53 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:17:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:17:54 GMT
CMD ["/bin/bash"]
# Sat, 05 May 2018 10:47:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 10:47:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:7762c5f33a1862a5e90424e5ebf015f0e8e61f7a22381727f6154c0a95f4d236`  
		Last Modified: Sat, 28 Apr 2018 11:19:09 GMT  
		Size: 31.4 MB (31364535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a1b4b8779c4e9bc2de5762cf1e0999345a7702a0f8628e8723a2dba8d35a461`  
		Last Modified: Sat, 28 Apr 2018 11:19:03 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8704c5b1dd806648129ec4397a0a9eaf5ad294d5b1e5f1a85770e0ea6439a30e`  
		Last Modified: Sat, 28 Apr 2018 11:19:02 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:316360b7b9ad8019d535c7e3e4c386499654961760addaa509fafcc58e3d0d41`  
		Last Modified: Sat, 28 Apr 2018 11:19:03 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0905b9d232d2b672df8b2317950fb9b0e6bd9f8c679d877247a085388b268018`  
		Last Modified: Sat, 28 Apr 2018 11:19:03 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:497dcd3bf4c67e5b0d2a4dfd73cf81e611c13f1a0eb3eec666db83d4a05011ee`  
		Last Modified: Sat, 05 May 2018 11:30:06 GMT  
		Size: 6.1 MB (6099095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecc1d1f861702ae32836b49569c8d9079e79e58f52e3f6a5305e77fa9659634`  
		Last Modified: Sat, 05 May 2018 11:30:06 GMT  
		Size: 3.2 MB (3186686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:570b41f97068d559d0a0ffbfd1669fc18734521c22ca119144d65ba50a57cf7c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.5 MB (44493507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a87bb4aff4efe484237277016c169e79cecf259a982b42c56d3ffd3c8df1ab7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:03:03 GMT
ADD file:8240656fd9a63dc46bfe0ada84ed1f742f569793c4918f67ae8a51d43238ea58 in / 
# Wed, 06 Jun 2018 09:03:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:03:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:03:33 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:03:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:03:44 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:00:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:01:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:9cf53dcd57904571b94bd3ec5f74983167261c7a47078222eeaf076edaf8f023`  
		Last Modified: Wed, 06 Jun 2018 09:08:28 GMT  
		Size: 34.8 MB (34820871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1daf6ab1478d4955371a55432e31f41562a6e076e9ff89432ecd7c64b04c5e`  
		Last Modified: Wed, 06 Jun 2018 09:08:18 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d7518929bff4f5520d362e5539a3742b0426033d8a8155ae2e762782f93995`  
		Last Modified: Wed, 06 Jun 2018 09:08:18 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969b61434032013bf2879e121822b7fffebb7d2718894a509b6d379fd490754c`  
		Last Modified: Wed, 06 Jun 2018 09:08:18 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d959b589bf7b29502e29fb54b1d22eb3e12c6a8911502d234a62304924baf6`  
		Last Modified: Wed, 06 Jun 2018 09:08:18 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039daebe6571c243eb06cf39b12708797a0d032db23b3fec54a5b8b8bd026f9c`  
		Last Modified: Wed, 06 Jun 2018 10:45:21 GMT  
		Size: 6.0 MB (6014367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c633fffe1adec435caf8102610e2148cb50585c4f25d764c20225f1888bf1b`  
		Last Modified: Wed, 06 Jun 2018 10:45:09 GMT  
		Size: 3.7 MB (3655836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:c4fe87cb04ec604abe3156532ed0fa6cdc71071ee83da563311465da6dcb978d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.9 MB (37945264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:605210b12fa5cbd5ba8f110bcd971b4a9e50e0aa0453adeb682128628aa1bf68`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:54:42 GMT
ADD file:4f6dca59b25a5a6caceaa6835f6c0a0885403c8df01a47efcfb4ed49ebeec86a in / 
# Sat, 28 Apr 2018 11:54:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:54:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:54:44 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:54:45 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:54:45 GMT
CMD ["/bin/bash"]
# Sat, 05 May 2018 12:24:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:25:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:186c76a814d4261fa85311c151a332dc0a41691ef827d9b3459a3fd514c46c16`  
		Last Modified: Sat, 28 Apr 2018 11:55:51 GMT  
		Size: 29.5 MB (29523178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f8387d2972a2ad3afa30d169b71dbee33e0a868c808914c5fede67073ae1df`  
		Last Modified: Sat, 28 Apr 2018 11:55:45 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:614f830b61318a2f78041221cc552dcfb1775b9589f4991ee0166e04b30cc414`  
		Last Modified: Sat, 28 Apr 2018 11:55:45 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8a9cce180fa5e9829b101ae05202245673d0fcb5c80c107bce31545727b471`  
		Last Modified: Sat, 28 Apr 2018 11:55:45 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a1a11edf8755adf02a2599751bb2f70fda664d9375f0bc1669921d5d67c2e1`  
		Last Modified: Sat, 28 Apr 2018 11:55:45 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac483063d2be6e5abb7f7fb0e50e5e90a71a0305c01691acda9df75ffe2aba2`  
		Last Modified: Sat, 05 May 2018 12:42:43 GMT  
		Size: 5.5 MB (5509713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e733a28d34a3685736863d08041a204ee7bf93ebbab248617011cef5e378a0`  
		Last Modified: Sat, 05 May 2018 12:42:42 GMT  
		Size: 2.9 MB (2910109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
