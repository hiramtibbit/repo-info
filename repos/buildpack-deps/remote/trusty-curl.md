## `buildpack-deps:trusty-curl`

```console
$ docker pull buildpack-deps@sha256:81be3fdbaaec184d5dd59fa40c17e9acfc4928e9c9cc7af1f554f61937c13f1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `buildpack-deps:trusty-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:e26494a9652373043b2e6c2e562ffbf845e5ad0dc7e4f797818af52aa4b1284b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.8 MB (77797172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb10d4c18bb99ca6dde1f1816db6f6da887e85e8b266526997e34e23d3c7cc08`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 12 Apr 2018 18:38:59 GMT
ADD file:6eca4ad395f3f9986f9edf8cc1cc454f7247e63f18bdd8bdb914537ef55b9c88 in / 
# Thu, 12 Apr 2018 18:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:39:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:39:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:39:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:39:03 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 06:43:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 06:43:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:c2c80a08aa8cdf0629269bab360b225d96a511b4c4ccb5f9c1d2abe01ff23d6f`  
		Last Modified: Thu, 12 Apr 2018 19:39:19 GMT  
		Size: 73.1 MB (73064548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace04d7a4a23236b2e4578bc607a21157cfcd3203d0e26a3d1dfcbb2b918db6`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03114bcfb255c8eaa7fe33bbe409e7070993ee96152b9a04a7b6db0c3da5130`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df439878124298f9d5577c286e59d7f012baedb7cf8d69d104f5d87d727c28`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c646cd4d1557832b81ce6e956a18f791bdcce470290be8b23f153811a8d372f`  
		Last Modified: Thu, 12 Apr 2018 19:39:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795da85449f085eda322cd34f08cfa89bebf83f53de9fee3a11c76db079479dc`  
		Last Modified: Fri, 13 Apr 2018 09:07:18 GMT  
		Size: 4.7 MB (4658328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:abcda0dbf02c1bd890f16887c7f8760588f555383fae1b465197f53f37f193a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.9 MB (70866139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b83fa93196f806b37e9035a50f95f23cbf1653f5eb79a603043661a0847d5a7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 11:59:11 GMT
ADD file:7ea61c305052e6dde9bf2e18e32feee757a5b0e0254ad0cd568fe7c354b5b26c in / 
# Fri, 13 Apr 2018 11:59:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 11:59:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 11:59:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 11:59:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 11:59:37 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:25:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:25:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:a22018ed08faf9f657b69ee59a9a8666e8245e7911527353f4fa629711fcdb8e`  
		Last Modified: Fri, 13 Apr 2018 12:02:36 GMT  
		Size: 66.5 MB (66541016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b191f98865025b3e155ebad433268e2cf6d265dbe0b8f63427a54758caaada`  
		Last Modified: Fri, 13 Apr 2018 12:02:18 GMT  
		Size: 76.8 KB (76767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414c31e80c4541923f49554c2ded61a0278fe1da8d2b7dfd953fbdbca889fba7`  
		Last Modified: Fri, 13 Apr 2018 12:02:16 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d4ecd2707fa702b9377ab2394554fc75003b98fb9a3d21af108beec0e1b35b`  
		Last Modified: Fri, 13 Apr 2018 12:02:16 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d3ab462a42d95348a08fedfd349bb63a0035865cc69ce70044fa16edf437d57`  
		Last Modified: Fri, 13 Apr 2018 12:02:16 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f8a45e3ea993500a0197347bd09873b791dfa9a0c50f89471dd601c30c9352`  
		Last Modified: Fri, 13 Apr 2018 12:34:14 GMT  
		Size: 4.2 MB (4246688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:ff894a772f50b78b1efa646913747e57b38917d3c6364457306c21a8b0313055
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.3 MB (72253820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85b041653e6e532349f6fd42038365da734fc1e0a3d1e7bc61f0cac14924175c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 09:03:52 GMT
ADD file:04527b99e81d9c6aca86abd7556460a854ccf5eef4e0229f083c98bf29b17efd in / 
# Fri, 13 Apr 2018 09:03:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 09:03:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:03:58 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 09:04:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 09:04:01 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 09:58:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:58:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:66ec93b270276d2f9d704ead2f0f7147a4e70932c1067338dc39d375b56b4423`  
		Last Modified: Fri, 13 Apr 2018 09:09:38 GMT  
		Size: 67.8 MB (67821392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f1c5052eee6d3413fd8806317254402ccae10842076e33c6d9b60bbcf4ea83`  
		Last Modified: Fri, 13 Apr 2018 09:09:14 GMT  
		Size: 59.1 KB (59097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01fecbff17967332c3a3c418f0ccb6ab96c997c4eb6d63f2e53faa467eec9c8`  
		Last Modified: Fri, 13 Apr 2018 09:09:12 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f5f49fd02b34e8c242b84a4ac20d55a8064b30ace9c66310b84ab0fc20e0498`  
		Last Modified: Fri, 13 Apr 2018 09:09:12 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99dec762b48d10eb0b44d2ae53eff78db258908ffb4661d9860448d8a59dbb08`  
		Last Modified: Fri, 13 Apr 2018 09:09:12 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a25f6092af96f7088b6513240ba98318943cea6c6cb30dd1684363d41b82cad`  
		Last Modified: Fri, 13 Apr 2018 10:33:14 GMT  
		Size: 4.4 MB (4371692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:e8a25c302273edf717d726cfc5620b2a4eead1cfc357057aac382c318b47ca10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.1 MB (75076633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fc8f298c88d5ec7cb3a214e27e30eb78ecd2da436baeab28e1001c1f85172da`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 08 Mar 2018 04:10:51 GMT
ADD file:3e41df3a76651eb3eeecca17c7a69881dc9f616bb0c64023820b5a0caefbce87 in / 
# Thu, 08 Mar 2018 04:10:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 08 Mar 2018 04:10:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 08 Mar 2018 04:10:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 08 Mar 2018 04:10:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 08 Mar 2018 04:10:56 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 22:16:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:16:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:f187f8656eefdccef5fdc08a22c656dfa59a153a6d5176e61b0eed9a8d138fde`  
		Last Modified: Mon, 05 Mar 2018 14:49:06 GMT  
		Size: 70.4 MB (70365088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:911b247f5aa3db359bd0c50c14c8d707d4970e0d16505d75d7cda21dadab0fa0`  
		Last Modified: Thu, 08 Mar 2018 05:13:05 GMT  
		Size: 64.9 KB (64860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbba408755717f3fc2ddc7d643367eb6ab1cc9efb6cea47ffd57cd5f38a6bb9c`  
		Last Modified: Thu, 08 Mar 2018 05:13:04 GMT  
		Size: 596.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c9a2ccd8abb1d0ec748ac08e34a6914b6355045b5888d1b65bdc837549d081`  
		Last Modified: Thu, 08 Mar 2018 05:13:04 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54804e529b4f36dbb7234decb87c4fdfc650f195ffc3d890cc69b505b2a4388c`  
		Last Modified: Thu, 08 Mar 2018 05:13:04 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a9c9b1ef1627c9a61308d3beda72a590326d992d935940c2e407700a116f8f5`  
		Last Modified: Fri, 13 Apr 2018 22:33:59 GMT  
		Size: 4.6 MB (4645076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:07b26d0ff52d392b62e75d5416363bb9dc7216264c9033347d065ee257ba2817
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79208245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12cf2920da49b2256190f2edb0d39a4a0bb67359aef3a8fc8394c94819815774`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 07 Mar 2018 03:41:39 GMT
ADD file:ed88d0c752400c4a22168d7e5e98918dc8773430bca3e3a2f2adf74f75631df9 in / 
# Wed, 07 Mar 2018 03:41:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 03:41:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 03:41:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 03:42:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 03:42:03 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 04:30:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:d29b14acdb342f888afacd21b8e7a73abb822c3daf07a5abcde0bee160e15beb`  
		Last Modified: Wed, 07 Mar 2018 03:44:17 GMT  
		Size: 74.4 MB (74429249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fbad14a039413a6c8b7436e99f8080951edf71b3d3b7eeb5da6ba686986b2ad`  
		Last Modified: Wed, 07 Mar 2018 03:43:59 GMT  
		Size: 63.4 KB (63423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d138135fa147b7c743bb4d6bc4e9b141faab880913cc5653287e5960a283c8c9`  
		Last Modified: Wed, 07 Mar 2018 03:43:59 GMT  
		Size: 661.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043870a70f3f773824d98519995b583e145c0e6aea3c4c04dd858e21721a9ee1`  
		Last Modified: Wed, 07 Mar 2018 03:43:59 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fea455c23509db42d84f402af34afde35c45d373d2d31cc215e2c5a6fa8dd5a`  
		Last Modified: Wed, 07 Mar 2018 03:43:59 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb27f448d6a39309debdefbffdddab111893290df1feb3a146e2bf9419579af7`  
		Last Modified: Wed, 07 Mar 2018 05:02:45 GMT  
		Size: 4.7 MB (4713870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
