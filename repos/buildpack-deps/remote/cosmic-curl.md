## `buildpack-deps:cosmic-curl`

```console
$ docker pull buildpack-deps@sha256:0df879e112cc3c48032dbd97b61635920ef8d1b38e4da710633800367d6b03d8
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
$ docker pull buildpack-deps@sha256:1ae614d482ba139ae173e2f265918078a22ecc1c215ddc5d2b3dfae65f90ffbb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 MB (38324874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:911d996d6d539829d2c76541fa280add38a2f7aaeeef855aa5ce107535c2c0e9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:35 GMT
ADD file:648119e1829ef2c84efd62a492630de5a13ddaeb9735f798db942bec0f0e2426 in / 
# Wed, 15 May 2019 21:20:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:38 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:44:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:45:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:89074f19944ee6c68e5da6dea5004e1339e4e8e9c54ea39641ad6e0bc0e4223b`  
		Last Modified: Wed, 15 May 2019 21:21:54 GMT  
		Size: 29.2 MB (29244906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd3a42e50dfbbe2b8a505f7d3203c07e72aa23ce1bdc94c67221f7e72f9af6c`  
		Last Modified: Wed, 15 May 2019 21:21:48 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26b902a7bf04aa8d7c02fd742898dab4b6c791b8e363fddc06298191167d5fac`  
		Last Modified: Wed, 15 May 2019 21:21:49 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef34db2bc722bbe107ee6df6992093fb9b8b92d57de9bcecfc3b13dfce6d87d`  
		Last Modified: Wed, 15 May 2019 21:57:16 GMT  
		Size: 6.1 MB (6103576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ad72ddfe24bc6e270dfb576c72000cd150d85915239933d9f65ce71755935d`  
		Last Modified: Wed, 15 May 2019 21:57:14 GMT  
		Size: 3.0 MB (2975365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:76ac4fbd623f859f0edd3498c6e0f23840d8feed9255e5a7ae3416786d8991e4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30230744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4ce8a3474740e190296aa34b57fba5c72320bf9ddf887ad12c57db6df52d159`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:58:45 GMT
ADD file:26a10954e9fb7fb1be75d71a0930e39a068a50f1dbbe18b18814b9ad4b204046 in / 
# Tue, 18 Jun 2019 21:58:47 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:58:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:58:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:58:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:28:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:29:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:fbb440657b67a2162689b3704d9540bf030dec1ba95dfc6bb32cfa67b1dcd9fe`  
		Last Modified: Fri, 14 Jun 2019 14:47:40 GMT  
		Size: 22.5 MB (22507450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ff2400740abe795a398806e38d8365b28e34de80d7013bcd83f5aa1b8f1506e`  
		Last Modified: Tue, 18 Jun 2019 22:01:43 GMT  
		Size: 35.1 KB (35144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f1bd261c3cafc1ed1d1d33117fea21e4b08f9123ac2c1ce30fb15f88fe681bd`  
		Last Modified: Tue, 18 Jun 2019 22:01:43 GMT  
		Size: 869.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5802773ac244aeac02f44131459b16795a62b98efb6226a190fa10fe5dd7b62b`  
		Last Modified: Tue, 18 Jun 2019 22:02:04 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57bbb5fd542dfacdc3b99b4b18416cb84a120eb7f1299885c30af8e24de4ca6f`  
		Last Modified: Tue, 18 Jun 2019 22:43:18 GMT  
		Size: 5.2 MB (5150612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf790b148a83e4ca6bc898251c73214699025e878ff6ccc03b554d18925e2639`  
		Last Modified: Tue, 18 Jun 2019 22:43:17 GMT  
		Size: 2.5 MB (2536480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:2588d0f182d141d9bf0ae37b8f54bdf77b4dda00d73345f966566ab1a460f320
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34191746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f137154b6850b72adfd0cc6b7ff22dd7cc7b19a50fef265d389bf8d415679df`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:36 GMT
ADD file:0020fa1e281181514519fbfe7b0148f03e2580796705b66c861492fc393890ab in / 
# Tue, 18 Jun 2019 21:40:38 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:41 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:02:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:02:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:1e6c2c56aa4dd75f1402849cc8e89eb7d6e89d2ae75445b34b95a5a604e5594c`  
		Last Modified: Fri, 14 Jun 2019 14:42:57 GMT  
		Size: 25.4 MB (25380909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5fe4d6e086e95f292b07503fb8788732c09241b40cf6fce85aa28fd89b2697`  
		Last Modified: Tue, 18 Jun 2019 21:41:59 GMT  
		Size: 35.0 KB (34983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152b803036a5eff7e9294bad06cd80ed154266e2b2a302a9ffb22b858623c17b`  
		Last Modified: Tue, 18 Jun 2019 21:41:59 GMT  
		Size: 866.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a51fd4b7b66ec7acd2a32381199fe47196465878d7565d6b7aa844b32b7597`  
		Last Modified: Tue, 18 Jun 2019 21:41:59 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:294b2b1cac8ee27470791ab8c7c395fff288d48cee266c877f6f92f80c08503f`  
		Last Modified: Tue, 18 Jun 2019 22:16:09 GMT  
		Size: 5.8 MB (5830248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90ce76302589a3f80fb86c5edf1952a697315da3ee0384cf61f6eab209dd2bf`  
		Last Modified: Tue, 18 Jun 2019 22:16:05 GMT  
		Size: 2.9 MB (2944551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:a1c8dc2014c3c1c1f06d4592f52e705b249f92231202c3fdfd095b649922ab2a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37119386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffcad796e847dc5bf967014e526ce0e4ebdb0657f5874e8126205e2ac55f124c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:39:32 GMT
ADD file:a444b1ab00b6be9d9505da986087c2edeada22a24c20a3073d702d4f1da86c2d in / 
# Tue, 18 Jun 2019 21:39:33 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:39:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:39:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:39:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:12:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:12:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:abda390b5281b52ea6f9487dae547d04bf62c7fbf6a15731d86316ac8f502f1e`  
		Last Modified: Fri, 14 Jun 2019 14:44:25 GMT  
		Size: 27.5 MB (27500647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b2e3af3edef2944cde6a57910143569e8331817bd5f2b56b37a8f350f58a4d`  
		Last Modified: Tue, 18 Jun 2019 21:40:42 GMT  
		Size: 34.3 KB (34308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:522bc7736e5bad17d18e17b0ead0df27a23741044a7c993c5932c39fb705e17d`  
		Last Modified: Tue, 18 Jun 2019 21:40:42 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67c9a6269a617729612f3eb57dca97d4171150a953d5671813fb7a70bdc7074`  
		Last Modified: Tue, 18 Jun 2019 21:40:42 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33be82178679b5b92ef7df5164b9fc6394a4c5f52f7442a4269b87b79a3dcaf5`  
		Last Modified: Tue, 18 Jun 2019 22:27:38 GMT  
		Size: 6.4 MB (6377011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f705759b6cf9e4b5651676678a63bfce42bcdb64c5bdd83442d7066f0d0c67f4`  
		Last Modified: Tue, 18 Jun 2019 22:27:37 GMT  
		Size: 3.2 MB (3206395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:735394ed3bb8de18ca1c77278f7e0431b461bb59675945ee596f1e71b78ae6ca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.7 MB (44678672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eec1ee898750253a2d89083c6adf3dd26e06fb1a93919a6ec7da5886dda13d15`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 22:23:32 GMT
ADD file:31fce97e53581e956ec426538802118093f8b3da30fa2f23e8bfaaec9b3599aa in / 
# Wed, 15 May 2019 22:23:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:23:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:23:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:23:57 GMT
CMD ["/bin/bash"]
# Tue, 11 Jun 2019 01:28:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:29:37 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:0919d121d5151d39c41144259383b480cc7c2f0f043b2c277185762723efd693`  
		Last Modified: Wed, 15 May 2019 22:29:25 GMT  
		Size: 34.1 MB (34086537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1467538418f0efbfde2851faa098926014f30b561619d85a235e04d1a7777559`  
		Last Modified: Wed, 15 May 2019 22:28:56 GMT  
		Size: 869.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c99d85c17034f281fb9de3f5766d75c514fde158cb1b64976337338651b073`  
		Last Modified: Wed, 15 May 2019 22:28:56 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65be33c7a46bd2affbfbfb29e20a0549d66c1406798485681690bb824c571075`  
		Last Modified: Tue, 11 Jun 2019 02:48:34 GMT  
		Size: 6.8 MB (6832142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b0da17a1edb0cbc12855c77b3794e4768dca145c37de7b115434815ae6cdca`  
		Last Modified: Tue, 11 Jun 2019 02:48:31 GMT  
		Size: 3.8 MB (3758936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:2d8b103d1a85b63282af046c934fcf0fc13a219758b28bb8ecd0502e1aa0503e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34209716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:446894e656049513096f08024bc4363efdbd8f9ae928abbd6f9962ffb7cacbeb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:42:39 GMT
ADD file:4098393b6604faa3652771745e267440818f206d126415d60096c213015143e3 in / 
# Tue, 18 Jun 2019 21:42:41 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:42:42 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:42:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:42:43 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:05:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:05:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:88128f020bd1d79b354d35a92e494ca712ff8cf30b7226a68c0337cf63c9350a`  
		Last Modified: Tue, 18 Jun 2019 21:44:28 GMT  
		Size: 25.5 MB (25486122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c348f62ba06c02cca3be3d79e6509f09fb4b4449d6b444271c32a7d3f8f545a3`  
		Last Modified: Tue, 18 Jun 2019 21:44:23 GMT  
		Size: 36.0 KB (35971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56952aa3af778f19ea57c2c7a17a31a86bf9296c682c2bc2dc363deac9105c20`  
		Last Modified: Tue, 18 Jun 2019 21:44:23 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb140f1e786a70ee5b6d4a1c29fd0fbf8f6a1c750dab102f60e697aea887fa7b`  
		Last Modified: Tue, 18 Jun 2019 21:44:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f512101c9e9b92f1df39c5a98d52f3b7766559b7e53255d522d4939683c65ff`  
		Last Modified: Tue, 18 Jun 2019 22:16:27 GMT  
		Size: 5.8 MB (5770097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749aff40e7da18519c830ae0bf3f4271469f3daba167bb96c66e6322257aa9f2`  
		Last Modified: Tue, 18 Jun 2019 22:16:18 GMT  
		Size: 2.9 MB (2916501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
