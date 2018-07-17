## `ubuntu:artful`

```console
$ docker pull ubuntu@sha256:afc3c95aac77b646638aa9643831dba22adc496951aab26a1ad80ad449d4ab96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:artful` - linux; amd64

```console
$ docker pull ubuntu@sha256:9c4bf7dbb981591d4a1169138471afe4bf5ff5418841d00e30a7ba372e38d6c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40791951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e211a66937c610743566e2f0ac7d7e7652e2641d224af1c8c95f5402e59b0cc9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:51:43 GMT
ADD file:d3d5130b8f7f795c053d60902a67257290e689a661581dd3e63e52931b2d835e in / 
# Tue, 17 Jul 2018 00:51:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:51:45 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:51:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:51:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:51:47 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:4ccdce43d1e00fd03ac5438d39e731c16db3dfcf03c68390884b8e8c814221ca`  
		Last Modified: Mon, 09 Jul 2018 14:53:17 GMT  
		Size: 40.8 MB (40789477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95f13c88d926e6181e0594f76953a14ab80ce002fc6dbc968084a7e18aaafe9`  
		Last Modified: Tue, 17 Jul 2018 00:54:34 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82656eee95ad054e0aa75486e7c55b7666c26abbd9bf19373dd349f6e172ce9d`  
		Last Modified: Tue, 17 Jul 2018 00:54:37 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ff727be57a68299558bb40b737669ca5cb9a8db948411d852ec809c14e7a1f`  
		Last Modified: Tue, 17 Jul 2018 00:54:34 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448bb314afa553bfb1578121328bbe92d2b5ca0f411967e7a0a200f672ade92f`  
		Last Modified: Tue, 17 Jul 2018 00:54:35 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:artful` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:32a5e7cd56d5001b466793087ac2aac22e2b237c7ef5eccfccc8592f3bf8b048
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36181954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fc9584ef11880393c6ed17a9578233027ff3fffb22a972b2538835cb4fd2cbb`
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

### `ubuntu:artful` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:9b537306086eba8276398154596c30a8cce553b89c0cc2f046c7626eec1ee55f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.5 MB (37543513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df8534d2f017f475eddd183768eabacf6113ccc6ba8c888c1ef12fe41cc5eea2`
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

### `ubuntu:artful` - linux; 386

```console
$ docker pull ubuntu@sha256:4909a81a538fd414918979d0ba8b5fa85b9c7ed3b9ce17f0211be16ea031551c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.5 MB (41472983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bae20eb85b54297a5c039dcfbb20d9e9b48d23d9b20523fa060594015fe8d529`
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

### `ubuntu:artful` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:ccfe51d675a93f64908f598623cd7ee472feea3e802824a6d81d242f922c0583
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43915860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0c22291af22d55ca2f9f24dff2d6952946f989db0b5bd788232e6e76e72a3e1`
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

### `ubuntu:artful` - linux; s390x

```console
$ docker pull ubuntu@sha256:31c2af73f9151a7a86d58b132f87853f85d42d5bce07748a8c0a847e31b8da35
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39309832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4bd5b98e08eb700f32bd5e57827aa3a881ad0653abaf75a29a0ee1171cf1390`
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
