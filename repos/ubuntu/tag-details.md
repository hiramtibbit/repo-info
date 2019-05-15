<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ubuntu`

-	[`ubuntu:14.04`](#ubuntu1404)
-	[`ubuntu:16.04`](#ubuntu1604)
-	[`ubuntu:18.04`](#ubuntu1804)
-	[`ubuntu:18.10`](#ubuntu1810)
-	[`ubuntu:19.04`](#ubuntu1904)
-	[`ubuntu:19.10`](#ubuntu1910)
-	[`ubuntu:bionic`](#ubuntubionic)
-	[`ubuntu:bionic-20190515`](#ubuntubionic-20190515)
-	[`ubuntu:cosmic`](#ubuntucosmic)
-	[`ubuntu:cosmic-20190515`](#ubuntucosmic-20190515)
-	[`ubuntu:devel`](#ubuntudevel)
-	[`ubuntu:disco`](#ubuntudisco)
-	[`ubuntu:disco-20190515`](#ubuntudisco-20190515)
-	[`ubuntu:eoan`](#ubuntueoan)
-	[`ubuntu:eoan-20190508`](#ubuntueoan-20190508)
-	[`ubuntu:latest`](#ubuntulatest)
-	[`ubuntu:rolling`](#ubunturolling)
-	[`ubuntu:trusty`](#ubuntutrusty)
-	[`ubuntu:trusty-20190515`](#ubuntutrusty-20190515)
-	[`ubuntu:xenial`](#ubuntuxenial)
-	[`ubuntu:xenial-20190515`](#ubuntuxenial-20190515)

## `ubuntu:14.04`

```console
$ docker pull ubuntu@sha256:0f4217eeb91f7946f0f30cbde0f68faecd248460e33e6f131eb10ebc725f457a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `ubuntu:14.04` - linux; amd64

```console
$ docker pull ubuntu@sha256:2feffff9eeca4e736f9f8e57813a97fe930554f474f7795ffa5a9261adeaaf44
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.3 MB (67264776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c5e00d77a67934d5e39493477f262b878f127b9c01b491f06d8f06f78819578`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:21:11 GMT
ADD file:1e01ab604c0cc308430848d15d75fa9c09a2c53f156a6a2dbdee4ac618c8c8aa in / 
# Wed, 15 May 2019 21:21:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:13 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:a7344f52cb744a28edb7b2c806f4227d07219709d2365c32a42b580165d261c1`  
		Last Modified: Wed, 15 May 2019 12:22:08 GMT  
		Size: 67.2 MB (67191601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515c9bb515362c9d26b0c6acaa3ad0a79c20cf421d56a8c5bb4ddc60a336239b`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1eabe0537eb2d3647100f04687474cc1c232b4e512e70fd0a09b93d55da8f69`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4701f1215c13b72f8e1fbd292558fc4cb49655209db1b450cbb5c068be64956c`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:14.04` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:adae05f26f57835f47b091df3d3510fc275c07572a6827fa2e87595829b284ad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61611102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8d54fd2ff56ff7dd444ec1808f36ab4870de6c28f91e8c3d773e37e8aa03463`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:09:11 GMT
ADD file:1619cbcf63643ad1d5e8e3f021402dd0ca31abdd41852cee6a6fbbeec2fa5de8 in / 
# Sat, 27 Apr 2019 12:09:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:09:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:09:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:09:20 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:c5362603fe6be7d5876ef41ffb08b355892494dd4a50696ea8076ae7dd17ebbb`  
		Last Modified: Sat, 27 Apr 2019 12:11:24 GMT  
		Size: 61.5 MB (61533787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba380cc82188c4efebfcfbbcfceb13f9e312ef48b621cc241b11e159e161dd0a`  
		Last Modified: Sat, 27 Apr 2019 12:11:05 GMT  
		Size: 76.8 KB (76767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab98c98275cf92acaac3db468b6a8458aa10b3fccdc303aee6882cf6e29ee6db`  
		Last Modified: Sat, 27 Apr 2019 12:11:05 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4683afb56c106058227f2417f484198fd14d94b7f1d07c41fe42d595562ab6f8`  
		Last Modified: Sat, 27 Apr 2019 12:11:05 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:14.04` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:83d0505d25ef6f5cfa23e4f1c6524e4a58bc948e477836229ad2206eeee4825f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63305879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe186540bbbee171cbf473d26f6418b414b4fc56695472d0e80cb66988d6e9f8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:37:46 GMT
ADD file:b7712277488ca5feca49e84f24daf6ff1c099901e2da74e441a745d48d480001 in / 
# Sat, 27 Apr 2019 09:37:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:37:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:37:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:37:57 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:e46ac618d4e0cb1e6551fd0f4cfa29cc3eff5914890afe801c91820c1449c2bf`  
		Last Modified: Sat, 27 Apr 2019 09:41:03 GMT  
		Size: 63.2 MB (63246265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd21d82a86a4094a01e4222157b4eceb2e137d60928d46a9af40c1c1e76412b`  
		Last Modified: Sat, 27 Apr 2019 09:40:39 GMT  
		Size: 59.1 KB (59094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c19489b78574361031a2bef05fd44706fb4dd54abc9bebfb083ed168e588cc1`  
		Last Modified: Sat, 27 Apr 2019 09:40:39 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d772c8eda5a1bbcde9462db9ebb43561b0635923b8cde579c330d964a9d45e9`  
		Last Modified: Sat, 27 Apr 2019 09:40:38 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:14.04` - linux; 386

```console
$ docker pull ubuntu@sha256:b550bd33f873b7dfa41e33a7b53e7a35d5d11a3b7cb20cc582dd02c4dc7c7333
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64968735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:822956e6c5eb46e2fc0c548223dad6a19998225d13bcf6be09ccae860b032d0c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:40:18 GMT
ADD file:81812c7536d5965bef84e83c0948a955ee1f094914ef85f9d971538b79ea3455 in / 
# Wed, 15 May 2019 21:40:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:21 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ef7df603d30353e1a64bb1d79bfd65f18b60539ad5f52c07086dab8867b15802`  
		Last Modified: Wed, 15 May 2019 21:42:22 GMT  
		Size: 64.9 MB (64903354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12b7484c6bd233505b677db9b58563f8b825b9602a3695c8817813a4302871b`  
		Last Modified: Wed, 15 May 2019 21:42:00 GMT  
		Size: 64.9 KB (64860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ff0576ae04853d73bc8ee3897e46dfed937b8b35fbc309f3adcc6e443e1ffe`  
		Last Modified: Wed, 15 May 2019 21:42:00 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6a79d1bb0b0b00253d099d5e40c41f0cb5abab26768a48bd98e8c0461101dd`  
		Last Modified: Wed, 15 May 2019 21:42:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:14.04` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:cad23b2c64eb839ccb3ba60a4559ad17f037425728ad33443ad603881d145277
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.9 MB (69918555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:947b9bb216de43a8a0056ac9233fdb188015b2bd8d5c294aa0a8e1255395e61d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:26:17 GMT
ADD file:e018e98231d39ca8bef7e56dbb0687f83a2a39d6140571ed73e7c4a96ffe79c5 in / 
# Sat, 27 Apr 2019 09:26:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:26:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:26:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:26:37 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:21e2c51dc921cff8e3d821254ff7cea5dca04fe8bc70a9f35b6f4aaccfbb3137`  
		Last Modified: Sat, 27 Apr 2019 09:32:33 GMT  
		Size: 69.9 MB (69854590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadcb4f1379bb8eaa4ab324ab11552f7c2d8176578149c437f97b95e84f02f3e`  
		Last Modified: Sat, 27 Apr 2019 09:31:35 GMT  
		Size: 63.4 KB (63418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78abe4347f0f3d6c51deae815ff7a2986d4b1783cdcdcc73487f025e9c41e00`  
		Last Modified: Sat, 27 Apr 2019 09:31:35 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d271af6e174f309e31a22d58cc08c9066236f5982dd090cb0af618bba847e9`  
		Last Modified: Sat, 27 Apr 2019 09:31:35 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:16.04`

```console
$ docker pull ubuntu@sha256:6f608bdc8617b9301767d9042320334ddbd31c8f1846681a83636c7aa4e050c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:16.04` - linux; amd64

```console
$ docker pull ubuntu@sha256:08f4295167241c59fc4a24f18816618ff8f959756fb4b236e880a3b7f45f0ba0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43769529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a697363a8709093834e852b26bedb1d85b316c613120720fea9524f0e98e4a2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:16.04` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:f287486b5100f954d5230b8bce7791074938834558a8945b09f8ad62d6c4ec0d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38655362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f04c91acb43bc3450747e921ed20b261d26d22d48beda4d2f83bf8b4c215b034`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:09:45 GMT
ADD file:6abeb1922711ba983099d4c04a11287c89004f297455bb4fc41451cc27218177 in / 
# Sat, 27 Apr 2019 12:09:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:09:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:09:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:09:54 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:0e049e8c377f00a9384d53b245eca77dab63d499bc4df0d8058ef0bf4928c47e`  
		Last Modified: Fri, 26 Apr 2019 22:26:56 GMT  
		Size: 38.7 MB (38653833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae07c2e262a27612d57f5f68331e68ca9da1d2c0b4749b4013140867a54c276`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccb522494abe8ce55f46b024715305dcaa596581bcc8d60ea20cdb1c9e3fe16`  
		Last Modified: Sat, 27 Apr 2019 12:11:48 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb96c8e04ae9d0fa50d52c33842137046920f3414e45cbcb86c642e5997a567`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:16.04` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:d2fa47c0c22a356bf633bb03bac23d870ef0e3d91225d6d5899b21156c7543bc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.7 MB (39730887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:149b98a0932ee75a23bbc68de361e71961d6bfea65652145ebf6255f9e6ceedc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:16.04` - linux; 386

```console
$ docker pull ubuntu@sha256:475428eb75573612affbe0c22ba991a34d3ecff4c7340934cc85fb52a43527ee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43926030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71fb4f2ea257d308f9fab91768ec281d503bdf07a0478ed0ecb97f04e2bfa7da`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:40:36 GMT
ADD file:5d74a053a0ad56b64841a77df9f90db692d915a4fabc63801978cb859609f04a in / 
# Wed, 15 May 2019 21:40:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:39 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:fb5d673f940c89b7f361f32fed8d4cfd614fc9ea9f4b97bcd32b0b71bfe2a7b1`  
		Last Modified: Wed, 15 May 2019 21:42:42 GMT  
		Size: 43.9 MB (43924500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b70ce3711c6f532b489a432e5bdb47030e7a4885023de73a2f5ef9e2c5a6450`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efa4ef849b45754041d226a2b65e40b5316e8d62c025ee96e66cedb057e77a1`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4845034610f1952bc72a60f257235c6f86a5d31e628e4f0370cc326ebc9b27f1`  
		Last Modified: Wed, 15 May 2019 21:42:27 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:16.04` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:b82a121ed878a5704ee662794d7da17bf20e6bd5951543daa32d280e91d9c864
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.9 MB (45930132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dd8620862e6562d893b760ea7f2ad94dca6f8d2ee8c57abb3281106e04dab97`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:28:21 GMT
ADD file:3e448359ea1b7f0a4f4b69f4542cd08e7bface0c7e835f38b7cb9aff4351346d in / 
# Sat, 27 Apr 2019 09:28:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:28:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:28:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:28:43 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:abd5c019819de70ac57ed3f6553b5cb918700ea013051f9b5c34647068e1f358`  
		Last Modified: Sat, 27 Apr 2019 09:33:19 GMT  
		Size: 45.9 MB (45928636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb1e9f7f3b1c7c2b3164a88da4d80c35edd5e9c958d483ef7a5d3f1760bc574`  
		Last Modified: Sat, 27 Apr 2019 09:32:45 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19320290aeb9b108bf4f79b24b0ec8f8d136510f1d37e51c972a5cd0276e8a0`  
		Last Modified: Sat, 27 Apr 2019 09:32:46 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354d5ed794e921901f7c634ba79e69add39da2a185fcf0defbdf90418b77a394`  
		Last Modified: Sat, 27 Apr 2019 09:32:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:16.04` - linux; s390x

```console
$ docker pull ubuntu@sha256:cff6d66d31f63effe796a5fdac7a623bdf592167573a845f1b338ec782e84783
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.6 MB (42611152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:946025ba843aa7fc8551adfdf37c0c935b3a123b3b47e55e8b056f0503017f51`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:45:33 GMT
ADD file:d7a233874816671d3297c11fa1530f1f10d6dbdaf60bf5feb414ff98ef1beae0 in / 
# Wed, 15 May 2019 21:45:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:45:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:45:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:45:44 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:a39cfce7a60d9d727586a3e6453c7c96ac717c01bc191465c06b93d8998be0f1`  
		Last Modified: Wed, 15 May 2019 21:48:36 GMT  
		Size: 42.6 MB (42609666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e699efbddb6397d0d4104adc13a9ebe0f50f3dff99fab55f119c9bd390004ee`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3ffeac441227351387321f7ca872e95bf4a67c57ff6331ed441114fcbee117`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c5a080fd6dd58e471f678450dfdb9501e014e4a451138b17794d6b01b57da0`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:18.04`

```console
$ docker pull ubuntu@sha256:eeaa6e1e0d3d9f7f499806f8a5d8943696997b98a3584475c315698aff06d85a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:18.04` - linux; amd64

```console
$ docker pull ubuntu@sha256:b36667c98cf8f68d4b7f1fb8e01f742c2ed26b5f0c965a788e98dfe589a4b3e4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.9 MB (28856076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7698f282e5242af2b9d2291458d4e425c75b25b0008c1e058d66b717b4c06fa9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:18.04` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:433b30fe593e521802138a4e51814d3f873a4a77244018d048ad2e6357318b34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31836108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:701f9d42ae2e7b201cd802ae6103ab769c3b5a51c5ec2c8cee3814c7f9d02d67`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:07:41 GMT
ADD file:91508eaa9a6ca65f915c4c00be38f2a22643d2260f00f045a24ac8b60e6d8a37 in / 
# Sat, 27 Apr 2019 12:07:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:07:45 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:07:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:07:48 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:3447b717941c494b64a85e7ecccee1d14c35bf5ea462ff4d41b19fd4e52b14d3`  
		Last Modified: Sat, 27 Apr 2019 12:10:26 GMT  
		Size: 31.8 MB (31834541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a139bc00a591c79c7e0680c016ac154be3c94f5865a5fdb6a80b3c13b25512c`  
		Last Modified: Sat, 27 Apr 2019 12:10:16 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a88e45a0742cc3bc6d8942ffd7c58de9eed96d6c69501ff3eb3a1141039e17`  
		Last Modified: Sat, 27 Apr 2019 12:10:16 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc408458c70328a71f67544fa9f11ab0f7c03eb1e3a0b657480a6cc85724f3d8`  
		Last Modified: Sat, 27 Apr 2019 12:10:16 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:18.04` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:de263810f197bad68d1b3e77ec31bc6bcca05d490b93d446dd5a07dc3eaae744
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 MB (33344945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e76720cc7bfddc9c2e98f52f886453e472c4afdcf9536305bd668cd280abe94a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:35:52 GMT
ADD file:f046142405da23f452b26e01729a6fdc5a92b0fa85ec8456a1fee249160217bb in / 
# Sat, 27 Apr 2019 09:35:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:35:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:35:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:36:00 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:bf7c45c81bd70f13db7f1612a4596418f2c15b48384d2c1d5597b7534e60b3f3`  
		Last Modified: Sat, 27 Apr 2019 09:39:34 GMT  
		Size: 33.3 MB (33343401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5396f07cded369e173bde57fa17c337db371930ea1b2e925d3c04cb407794d5c`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ceb566582d63624b9d3a22ead5cbf0836b8c5bca41b4b7bb777c9c11923ede`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb3982847b2f6cb9353dc95b2dbd7092a92764a1946b9901adf59d886849542`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:18.04` - linux; 386

```console
$ docker pull ubuntu@sha256:ec8be1067edb1c8d87da9a9ad94b9ce11a0b01f4913d3d305a2cc4cfefc92b40
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29267884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92e46f6fc2acc229673f79819ad4221f4e5ce1c3a4a72e4ee61fb96fd01f1194`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:39:17 GMT
ADD file:f842b2940a14cba8471389ebac2a1dbee8f736dc270dc6ca35c0fa6017032873 in / 
# Wed, 15 May 2019 21:39:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:39:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:39:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:39:19 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:13d592dcddc564565b96139277c35f06b708f92750b65584615e633b44ce946f`  
		Last Modified: Wed, 15 May 2019 21:41:03 GMT  
		Size: 29.3 MB (29266878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5311ad4c5dbad149b277499323dd6a79c193d5abe08c938384d82036be61dce`  
		Last Modified: Wed, 15 May 2019 21:40:54 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:683c78130c3fcc117311e7f89a1413be158927ccd9a294ec0803978c78bc754c`  
		Last Modified: Wed, 15 May 2019 21:40:54 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:18.04` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:1a3a00c47723eab7033ab45bd38662f8b387122d9fd385625e6cc3df7d768145
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.9 MB (39946442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edf1f91056b961e352b9ae0d72294aac592d7768386e1a6d87fddb3454666e30`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:15:37 GMT
ADD file:f84af4a2bfeabb29759492bc1fcee90da44b5088e561155cd4c4fa69ec03c939 in / 
# Sat, 27 Apr 2019 09:15:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:16:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:16:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:16:14 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:05afd6335a2fc38939add8f98ac929a68b140fc6e14a89f99688d334f1cb40d5`  
		Last Modified: Sat, 27 Apr 2019 09:29:49 GMT  
		Size: 39.9 MB (39944868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd52c18e7316709788a8ac0c7bfc70726c6c98a10685f8eb6e0cf2663ea3bf11`  
		Last Modified: Sat, 27 Apr 2019 09:29:18 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d43c0889ab8534b4f1762afc266e4da05e8d2a9751b469a98650943dc658ac0`  
		Last Modified: Sat, 27 Apr 2019 09:29:18 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d262c134c8e6db6fe2f46ebce5a86da0b7466032b6496665161825e36afffdc`  
		Last Modified: Sat, 27 Apr 2019 09:29:18 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:18.04` - linux; s390x

```console
$ docker pull ubuntu@sha256:bea8081af283455d22776ee07fe569039d33a2acf7fe4e1293e99568334d627e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27533647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f09c80bc8db29c5da64e3c680d78e7aa0b77d4ba0b4eb46be24c03f5bac0b98d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:42:57 GMT
ADD file:099f81542cb8e3e3e4fc2556d8067214392b39f0958e3452312495c98ae25e76 in / 
# Wed, 15 May 2019 21:43:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:43:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:43:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:43:14 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:a3ef07dd1fb74710cbd05c9bed2158fa7e005b766ac22ee052c37bc04215d25d`  
		Last Modified: Wed, 15 May 2019 21:46:43 GMT  
		Size: 27.5 MB (27532637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3f8f7d030578ebc1c4656ad55d61c81d712b0b43add1862837acf9d7365d67`  
		Last Modified: Wed, 15 May 2019 21:46:29 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4fa8d15db8edc923fd948fd13c76765471952cf1ac5df39c26f98250ab7944`  
		Last Modified: Wed, 15 May 2019 21:46:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:18.10`

```console
$ docker pull ubuntu@sha256:3fe599bbfb0d71b509fa51e0f90380f6f83890f31f07ce9694569280a4f49473
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:18.10` - linux; amd64

```console
$ docker pull ubuntu@sha256:baab811dfb0a4aad25f3b081f5540594758c4a8412aad036cfbb7057752126c2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29245933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d23255d3a3b2c0a728990e13ef26a8630c2d836d0f76b845dfa280df6960e871`
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

### `ubuntu:18.10` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:6f0cf9581f0c4ff1feedd38d55387fd165eb123dea09c832afc43516555457c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.7 MB (24708799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f1e33e665b8cc364369961f25deae1a58e9cfc78d98e171689340c59379d00d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:08:06 GMT
ADD file:6c264b876173452b1fc85b16265d0ee105523113d79da2e850f4bf79bc240c4d in / 
# Sat, 27 Apr 2019 12:08:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:08:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:08:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:08:12 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:2e3ee0de3763aa9d379c5911f59f2b56a15395fd758e294668af2db8141fd20a`  
		Last Modified: Mon, 22 Apr 2019 15:16:19 GMT  
		Size: 24.7 MB (24707529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6630577ca8c36fb48fa9bd917ab8a2953ca727aa591590adc6e9442ed92ae572`  
		Last Modified: Sat, 27 Apr 2019 12:10:36 GMT  
		Size: 871.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc1498af13d49746446dc70e37e5d675cbae7d3432f613c1d0dc887c21c6dd43`  
		Last Modified: Sat, 27 Apr 2019 12:10:36 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286cfd197550bdd226c51a802c9a5316ece868756f997a120375238368d934cb`  
		Last Modified: Sat, 27 Apr 2019 12:10:36 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:18.10` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:fad078b9d4f4d8659abe15d7cd03170d6d4b8fd880819e2c11360ea0a68d5e81
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 MB (27580443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3631a6f66cace5695286aa19d81055563e1402042fe2c3cacbeba192d47a423`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:36:20 GMT
ADD file:553fca2155f2b626dbc844a86d150a795f7596945a028911e9e65b52a75fab62 in / 
# Sat, 27 Apr 2019 09:36:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:36:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:36:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:36:29 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:c894f8296d41be2ffaca8f8ef57181f09265114d21ab969299e8616eab1e5dc0`  
		Last Modified: Mon, 22 Apr 2019 15:16:14 GMT  
		Size: 27.6 MB (27579200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1827f8d6d7d5322a3e5de6f09f63edaff2d90dd69a64a52646e5ec7f6e437bab`  
		Last Modified: Sat, 27 Apr 2019 09:39:48 GMT  
		Size: 866.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd1f0c92a0a7f7dbfe035edc2df6b5cd3d5e22d8c554ebcf3c496911f6cbd23`  
		Last Modified: Sat, 27 Apr 2019 09:39:48 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f5293ca941f33109b4f3d981f6783a90c18688058e9426bab434b086639f10`  
		Last Modified: Sat, 27 Apr 2019 09:39:48 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:18.10` - linux; 386

```console
$ docker pull ubuntu@sha256:8ed37807c6a57ccfc276a1884a2bac466f61c2a289a2ea676ee089c8f93a2e03
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29665748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5d773a42b5ed774049eb363e548d531d75a31e345e4c9de718e0196b62bc58c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:39:31 GMT
ADD file:2908f49c0c0cd08d5f856aed19cfd106c63311e2fda435e5c2909f987f3e4936 in / 
# Wed, 15 May 2019 21:39:32 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:39:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:39:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:39:34 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:a59ffb90ee986168abf66951a15f6991ddc2f8b04b6ec5d7ad7651089c989b9f`  
		Last Modified: Wed, 15 May 2019 21:41:25 GMT  
		Size: 29.7 MB (29664722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5170948ead4b6cb56c48d459f54e58afade703beb25e018a2883cee23bfae7c2`  
		Last Modified: Wed, 15 May 2019 21:41:16 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3897d9cf459730608af200d7c2d1e0dfdbe0ec1ed3097cc6b86baa610b26a621`  
		Last Modified: Wed, 15 May 2019 21:41:16 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:18.10` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:85afa5b68e7268eded43bfd49f1ffefc142b282a5b112a786c3a59ce97047624
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34125081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4164b233777170dd83317b8d212f6cc45436d9ff22b970794a57ee406bb6c63`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:20:38 GMT
ADD file:44c88b73d704bd032f51ed3607964b5709cbea6ae4b07e6ee0a6bf2fe5acfc3f in / 
# Sat, 27 Apr 2019 09:20:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:20:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:21:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:21:02 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:6e719ad17430745f564beae472b51ff771ce7f912280e9adfcc17fdc856e77fc`  
		Last Modified: Mon, 22 Apr 2019 15:17:33 GMT  
		Size: 34.1 MB (34123812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02ffb7f2fdc5b239bc7f5afc1f21b73ab3c5d172cf15c0952ced65394ec1de6`  
		Last Modified: Sat, 27 Apr 2019 09:30:06 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4de7c4e0b5db5a901196d9cecb096664601404e6ed044b9d5b6b6910ad4118d`  
		Last Modified: Sat, 27 Apr 2019 09:30:06 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5717908812f9d703aa401bd4f7c395c20a16140ad33e65d725a8ba0c0fa6d82`  
		Last Modified: Sat, 27 Apr 2019 09:30:06 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:18.10` - linux; s390x

```console
$ docker pull ubuntu@sha256:53db2a812e052a897059d9c78e2319df2088708fcf090cc11fdee6de786f0900
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27650560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:015f3b348bef370dec62296b216b0c49ac1106fee3c175a61c6f8a114fc1e7fc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:43:37 GMT
ADD file:c45f823aab7855a0d1da0027ba7ce7776e4d955be25bb4678d8e579eaf6e9cb5 in / 
# Wed, 15 May 2019 21:43:42 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:43:45 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:43:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:43:49 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:dfb897a2208dd2121b423a5cc18cb2248856452d49cb1a9fcc5c8a40b853d6c3`  
		Last Modified: Wed, 15 May 2019 21:47:13 GMT  
		Size: 27.6 MB (27649536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52e3592471efe379f5f86a7d493f94b9840697f8433f3ea51e8f8853bbb5aa1`  
		Last Modified: Wed, 15 May 2019 21:46:59 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:353dc4c12099befe5afeee5f141c84d2863c43ed6b952b9e2b4baf7b2d001ac5`  
		Last Modified: Wed, 15 May 2019 21:46:59 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:19.04`

```console
$ docker pull ubuntu@sha256:fb8b7d0794146e6bd87f0f51befc33de9c93c2f7bfde6804938d4284c795f608
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:19.04` - linux; amd64

```console
$ docker pull ubuntu@sha256:887a7c706e88e4569494c9f470a53217a2705c9ddb3f8f75dc9062ece9e0bd36
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29730775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b17fc7d68486409b6adf12e02fbf19b509714e5e7e2993e38d05ef47a29bfcc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:46 GMT
ADD file:b82101f178f1bebe33d5ac8f661a31ef8671c27500cba74a448dcb6544a6fd57 in / 
# Wed, 15 May 2019 21:20:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:49 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:4417cd7c3ebb45585a393a0c01ef74414c31104c874b4252d7034cd416796faa`  
		Last Modified: Wed, 15 May 2019 21:22:03 GMT  
		Size: 29.7 MB (29729754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4b01c082df6617a4ec1bf6043f0e270e774c843f7e974e2243090b86d5f929`  
		Last Modified: Wed, 15 May 2019 21:21:58 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08458b88081614d856d6db8cbe030d86b31ac276e3d439b280e633cb0a9c8d6b`  
		Last Modified: Wed, 15 May 2019 21:21:58 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:19.04` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:5ff58f1e41250e080d011aa31b3a210c8cd8fb20f4ddfdf681ee6effd42596fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.3 MB (25258304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6edf9857e1f658ea9320f7affb2bf0f44ce7c39e7ee71c1a0d256053cefe882a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:08:28 GMT
ADD file:bcca04af0d36d0354bfb4a46dad49d1280bc0e2704b6968568b6edcc4deab6a1 in / 
# Sat, 27 Apr 2019 12:08:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:08:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:08:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:08:35 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b1fe240e4003ec1271825b46f7f1e43da4ba58394bcef835042c33768914dc9c`  
		Last Modified: Sat, 27 Apr 2019 12:10:57 GMT  
		Size: 25.3 MB (25257056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4126a91a351568fba2a92beb6235cae02a3978ca00eb3a29a11f640c26909b`  
		Last Modified: Sat, 27 Apr 2019 12:10:50 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12143ea0542941ecd71aa302dd7afef3ebc2f0eb810f307095d4e5106a35fdcc`  
		Last Modified: Sat, 27 Apr 2019 12:10:50 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629ff63959669f2ce7218bde428a29a0f3992f5098d1937fb8513ba279a09f38`  
		Last Modified: Sat, 27 Apr 2019 12:10:50 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:19.04` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:67db735055fa62cc15f7716d8f6323fe6973c5ff73eb958660a5ddcc4656cb14
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28524606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c31d770b64aa5332870f322ac09e5d0e5262c06832d7f5f234228f810ef277f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:36:54 GMT
ADD file:46d0c7536c7b2b2f997639dceb16911ce53a4c1443fe8cb284761b357e060370 in / 
# Sat, 27 Apr 2019 09:36:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:36:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:37:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:37:03 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b6f4ef9b288b3aff27ce5cfc89c07fa63622e5f9745260281096961d866c6f88`  
		Last Modified: Sat, 27 Apr 2019 09:40:26 GMT  
		Size: 28.5 MB (28523391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305214ff3f3f45f33e3dafa1a62b682ceef5757eedbc71a63f6519fbe74dfaea`  
		Last Modified: Sat, 27 Apr 2019 09:40:12 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bafc8e4e87f1adaf5e5c1dd74d0d48172ee80fc4fd5613d7e8bf2baec1c342fd`  
		Last Modified: Sat, 27 Apr 2019 09:40:12 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61986756c9f477d13733af507c3a31953f49008e9343f25a5448c0bb144283b1`  
		Last Modified: Sat, 27 Apr 2019 09:40:12 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:19.04` - linux; 386

```console
$ docker pull ubuntu@sha256:8a8f5c5a4b5dd95c803b030bd43a564cd02d646581d573ff29c09dfa101e538a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30390171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be141019da208fad25ad6e88590356fc66524eab3fa0112187f0ae0a72474149`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:39:43 GMT
ADD file:09ed0f944187a7b29d6dc700b86113b61fc64a9d691d547a404769bdf866c507 in / 
# Wed, 15 May 2019 21:39:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:39:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:39:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:39:47 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:83b2f827047542b904878696f3dff892c94b5980f50a214b0e41f3fe132da74f`  
		Last Modified: Wed, 15 May 2019 21:41:40 GMT  
		Size: 30.4 MB (30389145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbdc11d90da438d954fdb311a52256a205b0ef2b219e98292f89e47aa832cb0`  
		Last Modified: Wed, 15 May 2019 21:41:30 GMT  
		Size: 864.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4800b2d794cc89645815cef5131c291f8297cbdfc622589a6a6651e080bbee`  
		Last Modified: Wed, 15 May 2019 21:41:30 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:19.04` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:c21fb0a9d90458584a0c3be59b6a7f1dacead30546e4f3eb3b3047bb451fed88
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35026201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7735a5bf361d40a27bcd1f3fe987122b9fec45a2f4ca880290f2110c220471f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:24:32 GMT
ADD file:58bb3a0119a14002fa97781ba0f47f14a78ec4a1b0ccdb3d6709f91cd330b340 in / 
# Sat, 27 Apr 2019 09:24:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:24:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:24:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:24:53 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:a999c107c313f741c65c3a8769432eb37516e9d8d70d880e8c422bdaf0a585fc`  
		Last Modified: Sat, 27 Apr 2019 09:31:20 GMT  
		Size: 35.0 MB (35024949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aa2b0476ee53b4f0e8d4a8b579933f32271ac9bf8bc59b5db23ceaa5a4b1688`  
		Last Modified: Sat, 27 Apr 2019 09:30:50 GMT  
		Size: 872.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7377a54be74859898e331f16ce38ed25707db0fc01a825977654155e9118026`  
		Last Modified: Sat, 27 Apr 2019 09:30:50 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a57350737985b161b838f05ab6e216fc9a1b04899afbe9371a4005d977109c`  
		Last Modified: Sat, 27 Apr 2019 09:30:50 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:19.04` - linux; s390x

```console
$ docker pull ubuntu@sha256:3d677c1182dc73fdadd3ba42333dff4817ebfed09d65da09c2ef05a4d9eaea20
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28314907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2d88cd56ac18cd0976f12f395996b5652bd7c058582cbc465b7e89c8b0dcc17`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:44:12 GMT
ADD file:55482d426d6b01f5a30fad09c850530580a4c3f89ba6e461cf280caff2e66c21 in / 
# Wed, 15 May 2019 21:44:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:44:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:44:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:44:21 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:cc71e1965cf9eb4e5add3a8c4eb00a886a7509b99535fbd04e5d609055baabd0`  
		Last Modified: Wed, 15 May 2019 21:47:39 GMT  
		Size: 28.3 MB (28313883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fb4d5561e0031d400b2369e45ce416e91f4822620526688556cfb27fddfbd6`  
		Last Modified: Wed, 15 May 2019 21:47:25 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddbf9545181b93ecde9425c765dfb20a94915bd58d2ef564030864927ccc13`  
		Last Modified: Wed, 15 May 2019 21:47:25 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:19.10`

```console
$ docker pull ubuntu@sha256:a5c5c6928945c8f102b7e34d9590db4fb17ef50b926ae3d5e244addc8a9c9ef5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; s390x

### `ubuntu:19.10` - linux; amd64

```console
$ docker pull ubuntu@sha256:a2805f133be3af5aea8836ea5a896a340ad60312f574964fd51622296111f968
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.0 MB (29991642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f269de19be19f9b0725c31e0b6fb6d6b9181facd1ec30be5ac5e280d50ad41b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:57 GMT
ADD file:f6a81ff001cd67096a4d4dc6b742ced2ef44c533e62a23942d9387437419bf40 in / 
# Wed, 15 May 2019 21:20:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:58 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:59 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:1eadb10a1d64b0fb9cde836b3c5924ae3406675fd006e71c6b87b6366907e241`  
		Last Modified: Wed, 15 May 2019 21:22:13 GMT  
		Size: 30.0 MB (29990619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5aa2e2e787fc707205aaeb73d4c530fcfcf00b8b83b254a07ed111738bb2c41`  
		Last Modified: Wed, 15 May 2019 21:22:08 GMT  
		Size: 861.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b703aee28b805ebedbb5c38a516803f4021d9bf2e5ea8e669425e5db9fd0708`  
		Last Modified: Wed, 15 May 2019 21:22:08 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:19.10` - linux; 386

```console
$ docker pull ubuntu@sha256:fa4fee53a45f714877dac30a3f472ad5c3f01abfa747469de1aaa79847bf3853
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30659448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df3dd4c89235aff29d81f6efe9cec29b8a515ca15baca053c4127c650daf9fee`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:39:58 GMT
ADD file:a734f089de3c1127f2a68bd150813975d1ef3ded1a964c196c9984123ff5012a in / 
# Wed, 15 May 2019 21:39:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:01 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b885d520e19993b7e85e874b4f6de20dfecb6d7e355bae068cde80384b4e345e`  
		Last Modified: Wed, 15 May 2019 21:41:55 GMT  
		Size: 30.7 MB (30658424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a48d426d2824a1824aa3127dfddf60a54a2b900900f5d25872139a43d98fbd`  
		Last Modified: Wed, 15 May 2019 21:41:46 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05df0525b906661defa4ea8ac50eb40da2b8f083b670f2fb72956d7477143073`  
		Last Modified: Wed, 15 May 2019 21:41:46 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:19.10` - linux; s390x

```console
$ docker pull ubuntu@sha256:7573b69d5f335484467ab2a8ae94347f209304f3fbcb8ec62732883daf3b5f6b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28499156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b4eaca5db76cbf8d99295ec30f9e791ccecc3bdd12c26d350d295d6e97810cd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:44:50 GMT
ADD file:9c8e749f204301e1ab12bbbb42a5a3f3a7c188f7385131f82aae9871fbc7fce1 in / 
# Wed, 15 May 2019 21:44:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:44:58 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:45:03 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:35e827af39a1da0bb6a3d6fbc8ef4c193295c103c736910db12e751741d7ad35`  
		Last Modified: Wed, 15 May 2019 21:48:04 GMT  
		Size: 28.5 MB (28498127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf9945ef878914c8c5ffffdab0b31d805d056322c0d00d415c615e993c02842`  
		Last Modified: Wed, 15 May 2019 21:47:52 GMT  
		Size: 866.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4e8e2adf91f20c7bf0c2450abf2ec7145db7933b7e1f55b4c77949f957e8598`  
		Last Modified: Wed, 15 May 2019 21:47:52 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:bionic`

```console
$ docker pull ubuntu@sha256:eeaa6e1e0d3d9f7f499806f8a5d8943696997b98a3584475c315698aff06d85a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:bionic` - linux; amd64

```console
$ docker pull ubuntu@sha256:b36667c98cf8f68d4b7f1fb8e01f742c2ed26b5f0c965a788e98dfe589a4b3e4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.9 MB (28856076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7698f282e5242af2b9d2291458d4e425c75b25b0008c1e058d66b717b4c06fa9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:433b30fe593e521802138a4e51814d3f873a4a77244018d048ad2e6357318b34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31836108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:701f9d42ae2e7b201cd802ae6103ab769c3b5a51c5ec2c8cee3814c7f9d02d67`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:07:41 GMT
ADD file:91508eaa9a6ca65f915c4c00be38f2a22643d2260f00f045a24ac8b60e6d8a37 in / 
# Sat, 27 Apr 2019 12:07:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:07:45 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:07:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:07:48 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:3447b717941c494b64a85e7ecccee1d14c35bf5ea462ff4d41b19fd4e52b14d3`  
		Last Modified: Sat, 27 Apr 2019 12:10:26 GMT  
		Size: 31.8 MB (31834541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a139bc00a591c79c7e0680c016ac154be3c94f5865a5fdb6a80b3c13b25512c`  
		Last Modified: Sat, 27 Apr 2019 12:10:16 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a88e45a0742cc3bc6d8942ffd7c58de9eed96d6c69501ff3eb3a1141039e17`  
		Last Modified: Sat, 27 Apr 2019 12:10:16 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc408458c70328a71f67544fa9f11ab0f7c03eb1e3a0b657480a6cc85724f3d8`  
		Last Modified: Sat, 27 Apr 2019 12:10:16 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:de263810f197bad68d1b3e77ec31bc6bcca05d490b93d446dd5a07dc3eaae744
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 MB (33344945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e76720cc7bfddc9c2e98f52f886453e472c4afdcf9536305bd668cd280abe94a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:35:52 GMT
ADD file:f046142405da23f452b26e01729a6fdc5a92b0fa85ec8456a1fee249160217bb in / 
# Sat, 27 Apr 2019 09:35:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:35:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:35:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:36:00 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:bf7c45c81bd70f13db7f1612a4596418f2c15b48384d2c1d5597b7534e60b3f3`  
		Last Modified: Sat, 27 Apr 2019 09:39:34 GMT  
		Size: 33.3 MB (33343401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5396f07cded369e173bde57fa17c337db371930ea1b2e925d3c04cb407794d5c`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ceb566582d63624b9d3a22ead5cbf0836b8c5bca41b4b7bb777c9c11923ede`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb3982847b2f6cb9353dc95b2dbd7092a92764a1946b9901adf59d886849542`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic` - linux; 386

```console
$ docker pull ubuntu@sha256:ec8be1067edb1c8d87da9a9ad94b9ce11a0b01f4913d3d305a2cc4cfefc92b40
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29267884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92e46f6fc2acc229673f79819ad4221f4e5ce1c3a4a72e4ee61fb96fd01f1194`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:39:17 GMT
ADD file:f842b2940a14cba8471389ebac2a1dbee8f736dc270dc6ca35c0fa6017032873 in / 
# Wed, 15 May 2019 21:39:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:39:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:39:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:39:19 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:13d592dcddc564565b96139277c35f06b708f92750b65584615e633b44ce946f`  
		Last Modified: Wed, 15 May 2019 21:41:03 GMT  
		Size: 29.3 MB (29266878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5311ad4c5dbad149b277499323dd6a79c193d5abe08c938384d82036be61dce`  
		Last Modified: Wed, 15 May 2019 21:40:54 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:683c78130c3fcc117311e7f89a1413be158927ccd9a294ec0803978c78bc754c`  
		Last Modified: Wed, 15 May 2019 21:40:54 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:1a3a00c47723eab7033ab45bd38662f8b387122d9fd385625e6cc3df7d768145
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.9 MB (39946442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edf1f91056b961e352b9ae0d72294aac592d7768386e1a6d87fddb3454666e30`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:15:37 GMT
ADD file:f84af4a2bfeabb29759492bc1fcee90da44b5088e561155cd4c4fa69ec03c939 in / 
# Sat, 27 Apr 2019 09:15:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:16:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:16:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:16:14 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:05afd6335a2fc38939add8f98ac929a68b140fc6e14a89f99688d334f1cb40d5`  
		Last Modified: Sat, 27 Apr 2019 09:29:49 GMT  
		Size: 39.9 MB (39944868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd52c18e7316709788a8ac0c7bfc70726c6c98a10685f8eb6e0cf2663ea3bf11`  
		Last Modified: Sat, 27 Apr 2019 09:29:18 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d43c0889ab8534b4f1762afc266e4da05e8d2a9751b469a98650943dc658ac0`  
		Last Modified: Sat, 27 Apr 2019 09:29:18 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d262c134c8e6db6fe2f46ebce5a86da0b7466032b6496665161825e36afffdc`  
		Last Modified: Sat, 27 Apr 2019 09:29:18 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic` - linux; s390x

```console
$ docker pull ubuntu@sha256:bea8081af283455d22776ee07fe569039d33a2acf7fe4e1293e99568334d627e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27533647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f09c80bc8db29c5da64e3c680d78e7aa0b77d4ba0b4eb46be24c03f5bac0b98d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:42:57 GMT
ADD file:099f81542cb8e3e3e4fc2556d8067214392b39f0958e3452312495c98ae25e76 in / 
# Wed, 15 May 2019 21:43:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:43:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:43:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:43:14 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:a3ef07dd1fb74710cbd05c9bed2158fa7e005b766ac22ee052c37bc04215d25d`  
		Last Modified: Wed, 15 May 2019 21:46:43 GMT  
		Size: 27.5 MB (27532637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3f8f7d030578ebc1c4656ad55d61c81d712b0b43add1862837acf9d7365d67`  
		Last Modified: Wed, 15 May 2019 21:46:29 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4fa8d15db8edc923fd948fd13c76765471952cf1ac5df39c26f98250ab7944`  
		Last Modified: Wed, 15 May 2019 21:46:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:bionic-20190515`

```console
$ docker pull ubuntu@sha256:8a332ba1e57ecb605ba3c5b02845ab789328f0f0917bf36926239c2c3d5e08d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; s390x

### `ubuntu:bionic-20190515` - linux; amd64

```console
$ docker pull ubuntu@sha256:b36667c98cf8f68d4b7f1fb8e01f742c2ed26b5f0c965a788e98dfe589a4b3e4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.9 MB (28856076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7698f282e5242af2b9d2291458d4e425c75b25b0008c1e058d66b717b4c06fa9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic-20190515` - linux; 386

```console
$ docker pull ubuntu@sha256:ec8be1067edb1c8d87da9a9ad94b9ce11a0b01f4913d3d305a2cc4cfefc92b40
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29267884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92e46f6fc2acc229673f79819ad4221f4e5ce1c3a4a72e4ee61fb96fd01f1194`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:39:17 GMT
ADD file:f842b2940a14cba8471389ebac2a1dbee8f736dc270dc6ca35c0fa6017032873 in / 
# Wed, 15 May 2019 21:39:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:39:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:39:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:39:19 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:13d592dcddc564565b96139277c35f06b708f92750b65584615e633b44ce946f`  
		Last Modified: Wed, 15 May 2019 21:41:03 GMT  
		Size: 29.3 MB (29266878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5311ad4c5dbad149b277499323dd6a79c193d5abe08c938384d82036be61dce`  
		Last Modified: Wed, 15 May 2019 21:40:54 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:683c78130c3fcc117311e7f89a1413be158927ccd9a294ec0803978c78bc754c`  
		Last Modified: Wed, 15 May 2019 21:40:54 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic-20190515` - linux; s390x

```console
$ docker pull ubuntu@sha256:bea8081af283455d22776ee07fe569039d33a2acf7fe4e1293e99568334d627e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27533647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f09c80bc8db29c5da64e3c680d78e7aa0b77d4ba0b4eb46be24c03f5bac0b98d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:42:57 GMT
ADD file:099f81542cb8e3e3e4fc2556d8067214392b39f0958e3452312495c98ae25e76 in / 
# Wed, 15 May 2019 21:43:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:43:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:43:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:43:14 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:a3ef07dd1fb74710cbd05c9bed2158fa7e005b766ac22ee052c37bc04215d25d`  
		Last Modified: Wed, 15 May 2019 21:46:43 GMT  
		Size: 27.5 MB (27532637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3f8f7d030578ebc1c4656ad55d61c81d712b0b43add1862837acf9d7365d67`  
		Last Modified: Wed, 15 May 2019 21:46:29 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4fa8d15db8edc923fd948fd13c76765471952cf1ac5df39c26f98250ab7944`  
		Last Modified: Wed, 15 May 2019 21:46:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:cosmic`

```console
$ docker pull ubuntu@sha256:3fe599bbfb0d71b509fa51e0f90380f6f83890f31f07ce9694569280a4f49473
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:cosmic` - linux; amd64

```console
$ docker pull ubuntu@sha256:baab811dfb0a4aad25f3b081f5540594758c4a8412aad036cfbb7057752126c2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29245933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d23255d3a3b2c0a728990e13ef26a8630c2d836d0f76b845dfa280df6960e871`
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

### `ubuntu:cosmic` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:6f0cf9581f0c4ff1feedd38d55387fd165eb123dea09c832afc43516555457c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.7 MB (24708799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f1e33e665b8cc364369961f25deae1a58e9cfc78d98e171689340c59379d00d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:08:06 GMT
ADD file:6c264b876173452b1fc85b16265d0ee105523113d79da2e850f4bf79bc240c4d in / 
# Sat, 27 Apr 2019 12:08:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:08:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:08:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:08:12 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:2e3ee0de3763aa9d379c5911f59f2b56a15395fd758e294668af2db8141fd20a`  
		Last Modified: Mon, 22 Apr 2019 15:16:19 GMT  
		Size: 24.7 MB (24707529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6630577ca8c36fb48fa9bd917ab8a2953ca727aa591590adc6e9442ed92ae572`  
		Last Modified: Sat, 27 Apr 2019 12:10:36 GMT  
		Size: 871.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc1498af13d49746446dc70e37e5d675cbae7d3432f613c1d0dc887c21c6dd43`  
		Last Modified: Sat, 27 Apr 2019 12:10:36 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286cfd197550bdd226c51a802c9a5316ece868756f997a120375238368d934cb`  
		Last Modified: Sat, 27 Apr 2019 12:10:36 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:cosmic` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:fad078b9d4f4d8659abe15d7cd03170d6d4b8fd880819e2c11360ea0a68d5e81
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 MB (27580443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3631a6f66cace5695286aa19d81055563e1402042fe2c3cacbeba192d47a423`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:36:20 GMT
ADD file:553fca2155f2b626dbc844a86d150a795f7596945a028911e9e65b52a75fab62 in / 
# Sat, 27 Apr 2019 09:36:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:36:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:36:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:36:29 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:c894f8296d41be2ffaca8f8ef57181f09265114d21ab969299e8616eab1e5dc0`  
		Last Modified: Mon, 22 Apr 2019 15:16:14 GMT  
		Size: 27.6 MB (27579200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1827f8d6d7d5322a3e5de6f09f63edaff2d90dd69a64a52646e5ec7f6e437bab`  
		Last Modified: Sat, 27 Apr 2019 09:39:48 GMT  
		Size: 866.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd1f0c92a0a7f7dbfe035edc2df6b5cd3d5e22d8c554ebcf3c496911f6cbd23`  
		Last Modified: Sat, 27 Apr 2019 09:39:48 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f5293ca941f33109b4f3d981f6783a90c18688058e9426bab434b086639f10`  
		Last Modified: Sat, 27 Apr 2019 09:39:48 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:cosmic` - linux; 386

```console
$ docker pull ubuntu@sha256:8ed37807c6a57ccfc276a1884a2bac466f61c2a289a2ea676ee089c8f93a2e03
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29665748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5d773a42b5ed774049eb363e548d531d75a31e345e4c9de718e0196b62bc58c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:39:31 GMT
ADD file:2908f49c0c0cd08d5f856aed19cfd106c63311e2fda435e5c2909f987f3e4936 in / 
# Wed, 15 May 2019 21:39:32 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:39:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:39:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:39:34 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:a59ffb90ee986168abf66951a15f6991ddc2f8b04b6ec5d7ad7651089c989b9f`  
		Last Modified: Wed, 15 May 2019 21:41:25 GMT  
		Size: 29.7 MB (29664722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5170948ead4b6cb56c48d459f54e58afade703beb25e018a2883cee23bfae7c2`  
		Last Modified: Wed, 15 May 2019 21:41:16 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3897d9cf459730608af200d7c2d1e0dfdbe0ec1ed3097cc6b86baa610b26a621`  
		Last Modified: Wed, 15 May 2019 21:41:16 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:cosmic` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:85afa5b68e7268eded43bfd49f1ffefc142b282a5b112a786c3a59ce97047624
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34125081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4164b233777170dd83317b8d212f6cc45436d9ff22b970794a57ee406bb6c63`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:20:38 GMT
ADD file:44c88b73d704bd032f51ed3607964b5709cbea6ae4b07e6ee0a6bf2fe5acfc3f in / 
# Sat, 27 Apr 2019 09:20:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:20:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:21:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:21:02 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:6e719ad17430745f564beae472b51ff771ce7f912280e9adfcc17fdc856e77fc`  
		Last Modified: Mon, 22 Apr 2019 15:17:33 GMT  
		Size: 34.1 MB (34123812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02ffb7f2fdc5b239bc7f5afc1f21b73ab3c5d172cf15c0952ced65394ec1de6`  
		Last Modified: Sat, 27 Apr 2019 09:30:06 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4de7c4e0b5db5a901196d9cecb096664601404e6ed044b9d5b6b6910ad4118d`  
		Last Modified: Sat, 27 Apr 2019 09:30:06 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5717908812f9d703aa401bd4f7c395c20a16140ad33e65d725a8ba0c0fa6d82`  
		Last Modified: Sat, 27 Apr 2019 09:30:06 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:cosmic` - linux; s390x

```console
$ docker pull ubuntu@sha256:53db2a812e052a897059d9c78e2319df2088708fcf090cc11fdee6de786f0900
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27650560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:015f3b348bef370dec62296b216b0c49ac1106fee3c175a61c6f8a114fc1e7fc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:43:37 GMT
ADD file:c45f823aab7855a0d1da0027ba7ce7776e4d955be25bb4678d8e579eaf6e9cb5 in / 
# Wed, 15 May 2019 21:43:42 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:43:45 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:43:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:43:49 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:dfb897a2208dd2121b423a5cc18cb2248856452d49cb1a9fcc5c8a40b853d6c3`  
		Last Modified: Wed, 15 May 2019 21:47:13 GMT  
		Size: 27.6 MB (27649536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52e3592471efe379f5f86a7d493f94b9840697f8433f3ea51e8f8853bbb5aa1`  
		Last Modified: Wed, 15 May 2019 21:46:59 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:353dc4c12099befe5afeee5f141c84d2863c43ed6b952b9e2b4baf7b2d001ac5`  
		Last Modified: Wed, 15 May 2019 21:46:59 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:cosmic-20190515`

```console
$ docker pull ubuntu@sha256:4a5bd6c5754c319583598e92fa5777097993ddb000b08b1ed853a6a904e9df01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; s390x

### `ubuntu:cosmic-20190515` - linux; amd64

```console
$ docker pull ubuntu@sha256:baab811dfb0a4aad25f3b081f5540594758c4a8412aad036cfbb7057752126c2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29245933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d23255d3a3b2c0a728990e13ef26a8630c2d836d0f76b845dfa280df6960e871`
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

### `ubuntu:cosmic-20190515` - linux; 386

```console
$ docker pull ubuntu@sha256:8ed37807c6a57ccfc276a1884a2bac466f61c2a289a2ea676ee089c8f93a2e03
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29665748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5d773a42b5ed774049eb363e548d531d75a31e345e4c9de718e0196b62bc58c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:39:31 GMT
ADD file:2908f49c0c0cd08d5f856aed19cfd106c63311e2fda435e5c2909f987f3e4936 in / 
# Wed, 15 May 2019 21:39:32 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:39:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:39:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:39:34 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:a59ffb90ee986168abf66951a15f6991ddc2f8b04b6ec5d7ad7651089c989b9f`  
		Last Modified: Wed, 15 May 2019 21:41:25 GMT  
		Size: 29.7 MB (29664722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5170948ead4b6cb56c48d459f54e58afade703beb25e018a2883cee23bfae7c2`  
		Last Modified: Wed, 15 May 2019 21:41:16 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3897d9cf459730608af200d7c2d1e0dfdbe0ec1ed3097cc6b86baa610b26a621`  
		Last Modified: Wed, 15 May 2019 21:41:16 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:cosmic-20190515` - linux; s390x

```console
$ docker pull ubuntu@sha256:53db2a812e052a897059d9c78e2319df2088708fcf090cc11fdee6de786f0900
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27650560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:015f3b348bef370dec62296b216b0c49ac1106fee3c175a61c6f8a114fc1e7fc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:43:37 GMT
ADD file:c45f823aab7855a0d1da0027ba7ce7776e4d955be25bb4678d8e579eaf6e9cb5 in / 
# Wed, 15 May 2019 21:43:42 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:43:45 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:43:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:43:49 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:dfb897a2208dd2121b423a5cc18cb2248856452d49cb1a9fcc5c8a40b853d6c3`  
		Last Modified: Wed, 15 May 2019 21:47:13 GMT  
		Size: 27.6 MB (27649536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52e3592471efe379f5f86a7d493f94b9840697f8433f3ea51e8f8853bbb5aa1`  
		Last Modified: Wed, 15 May 2019 21:46:59 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:353dc4c12099befe5afeee5f141c84d2863c43ed6b952b9e2b4baf7b2d001ac5`  
		Last Modified: Wed, 15 May 2019 21:46:59 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:devel`

```console
$ docker pull ubuntu@sha256:3e421ee7a7e8fdcbc04a608f046b013ed9e26316254efb1cca4bfd756fdec3f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:devel` - linux; amd64

```console
$ docker pull ubuntu@sha256:a2805f133be3af5aea8836ea5a896a340ad60312f574964fd51622296111f968
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.0 MB (29991642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f269de19be19f9b0725c31e0b6fb6d6b9181facd1ec30be5ac5e280d50ad41b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:57 GMT
ADD file:f6a81ff001cd67096a4d4dc6b742ced2ef44c533e62a23942d9387437419bf40 in / 
# Wed, 15 May 2019 21:20:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:58 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:59 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:1eadb10a1d64b0fb9cde836b3c5924ae3406675fd006e71c6b87b6366907e241`  
		Last Modified: Wed, 15 May 2019 21:22:13 GMT  
		Size: 30.0 MB (29990619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5aa2e2e787fc707205aaeb73d4c530fcfcf00b8b83b254a07ed111738bb2c41`  
		Last Modified: Wed, 15 May 2019 21:22:08 GMT  
		Size: 861.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b703aee28b805ebedbb5c38a516803f4021d9bf2e5ea8e669425e5db9fd0708`  
		Last Modified: Wed, 15 May 2019 21:22:08 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:devel` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:d49e9121d996e066875ac78549973f47c1bb723976116dab740c6104088132d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.3 MB (25296754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:901bbea4682645200702b8826e95c2873b8a7542e252b30e0ab682ffc922d83a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:43:40 GMT
ADD file:cbff62336756d13fd1c5230182c38f861fefb994b4c70286730b4f191ee0a3e8 in / 
# Tue, 12 Mar 2019 12:43:42 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:43:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:43:45 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:43:46 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:748e6e0aa3d7bf1aea7780a2a52097eb014ce7091710e564bc3ac414fd6502b5`  
		Last Modified: Mon, 11 Mar 2019 15:16:41 GMT  
		Size: 25.3 MB (25295502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4453e71d375509f3298bdb09233408843f29707d0bcf50ee437b17b04dd0cc03`  
		Last Modified: Tue, 12 Mar 2019 12:45:42 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ef41e7b4da71ba954261d67faca11c14a9349165133c31d99a2e02d3746afa`  
		Last Modified: Tue, 12 Mar 2019 12:45:42 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9df704909aa394bc95dd9cf59147e532fa41af6b8bfd8cec0978c6b2e1e6066e`  
		Last Modified: Tue, 12 Mar 2019 12:45:42 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:devel` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:84ea6bce906e2c052a9d4a36b1f4594cdcb582b1ae1e054b5326d27ea49b18eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28566126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a83202ea51c11e9e7f148dc95a1167f46d12b49700dd7aab2b4b7e81eb7de4a5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:36:04 GMT
ADD file:5e18ef3eaf8210502b612e56077c33baef533723c2017d205b516a8dec9c9023 in / 
# Thu, 14 Mar 2019 09:36:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:36:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:36:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:36:12 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:f3a20987ba9217a7a73974b8935c60d400be00cc290682a6afce8ed5eef6eb1c`  
		Last Modified: Mon, 11 Mar 2019 15:16:02 GMT  
		Size: 28.6 MB (28564892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6faa60d339af6971077e3d900e43b10810ecf337070262cd43fd13b0e26e718`  
		Last Modified: Thu, 14 Mar 2019 09:38:36 GMT  
		Size: 861.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f17b4c63f71d33824fd9e175418ead0edd59cdfd1df0849de3fe7a5322b5bdad`  
		Last Modified: Thu, 14 Mar 2019 09:38:36 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a470f0f21c7144c2834fdcc9dea1169d78d7cd9350b249e421bf6da7b25378`  
		Last Modified: Thu, 14 Mar 2019 09:38:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:devel` - linux; 386

```console
$ docker pull ubuntu@sha256:fa4fee53a45f714877dac30a3f472ad5c3f01abfa747469de1aaa79847bf3853
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30659448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df3dd4c89235aff29d81f6efe9cec29b8a515ca15baca053c4127c650daf9fee`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:39:58 GMT
ADD file:a734f089de3c1127f2a68bd150813975d1ef3ded1a964c196c9984123ff5012a in / 
# Wed, 15 May 2019 21:39:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:01 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b885d520e19993b7e85e874b4f6de20dfecb6d7e355bae068cde80384b4e345e`  
		Last Modified: Wed, 15 May 2019 21:41:55 GMT  
		Size: 30.7 MB (30658424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a48d426d2824a1824aa3127dfddf60a54a2b900900f5d25872139a43d98fbd`  
		Last Modified: Wed, 15 May 2019 21:41:46 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05df0525b906661defa4ea8ac50eb40da2b8f083b670f2fb72956d7477143073`  
		Last Modified: Wed, 15 May 2019 21:41:46 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:devel` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:d015916f99a49493ac15463b9e29daf0e6652fd0d540d2b25452d40b1281c049
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35072883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd9919d89f0fb2e8fead3237e40a0b8e99cd07a5f3ab0eee129dcdab41bb8285`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 12 Mar 2019 08:37:26 GMT
ADD file:99c5084356aaf3f0d14875c162b7d21310db0f53d229a6f62b4e47d75afff17a in / 
# Tue, 12 Mar 2019 08:37:34 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 08:37:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 08:37:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 08:37:53 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:9eb2d03a20b5e2d58bf30cc7f1081b6f6cf5d5a1e456c4b84da563bf97ed4d3b`  
		Last Modified: Mon, 11 Mar 2019 15:20:12 GMT  
		Size: 35.1 MB (35071623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def68938cff29e439715d73601d88c1e8150f132680727c69ce4b4de00f82b56`  
		Last Modified: Tue, 12 Mar 2019 08:40:28 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec0c417a094c366af0ddacdea6b1dfd772863da2d9c5cb14d42a993202191b5f`  
		Last Modified: Tue, 12 Mar 2019 08:40:28 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cd2045aed7a64d1412d65135e4d405309b0af654ba9e03d6b19d34c50a54d3`  
		Last Modified: Tue, 12 Mar 2019 08:40:28 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:devel` - linux; s390x

```console
$ docker pull ubuntu@sha256:7573b69d5f335484467ab2a8ae94347f209304f3fbcb8ec62732883daf3b5f6b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28499156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b4eaca5db76cbf8d99295ec30f9e791ccecc3bdd12c26d350d295d6e97810cd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:44:50 GMT
ADD file:9c8e749f204301e1ab12bbbb42a5a3f3a7c188f7385131f82aae9871fbc7fce1 in / 
# Wed, 15 May 2019 21:44:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:44:58 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:45:03 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:35e827af39a1da0bb6a3d6fbc8ef4c193295c103c736910db12e751741d7ad35`  
		Last Modified: Wed, 15 May 2019 21:48:04 GMT  
		Size: 28.5 MB (28498127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf9945ef878914c8c5ffffdab0b31d805d056322c0d00d415c615e993c02842`  
		Last Modified: Wed, 15 May 2019 21:47:52 GMT  
		Size: 866.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4e8e2adf91f20c7bf0c2450abf2ec7145db7933b7e1f55b4c77949f957e8598`  
		Last Modified: Wed, 15 May 2019 21:47:52 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:disco`

```console
$ docker pull ubuntu@sha256:fb8b7d0794146e6bd87f0f51befc33de9c93c2f7bfde6804938d4284c795f608
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:disco` - linux; amd64

```console
$ docker pull ubuntu@sha256:887a7c706e88e4569494c9f470a53217a2705c9ddb3f8f75dc9062ece9e0bd36
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29730775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b17fc7d68486409b6adf12e02fbf19b509714e5e7e2993e38d05ef47a29bfcc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:46 GMT
ADD file:b82101f178f1bebe33d5ac8f661a31ef8671c27500cba74a448dcb6544a6fd57 in / 
# Wed, 15 May 2019 21:20:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:49 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:4417cd7c3ebb45585a393a0c01ef74414c31104c874b4252d7034cd416796faa`  
		Last Modified: Wed, 15 May 2019 21:22:03 GMT  
		Size: 29.7 MB (29729754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4b01c082df6617a4ec1bf6043f0e270e774c843f7e974e2243090b86d5f929`  
		Last Modified: Wed, 15 May 2019 21:21:58 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08458b88081614d856d6db8cbe030d86b31ac276e3d439b280e633cb0a9c8d6b`  
		Last Modified: Wed, 15 May 2019 21:21:58 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:disco` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:5ff58f1e41250e080d011aa31b3a210c8cd8fb20f4ddfdf681ee6effd42596fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.3 MB (25258304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6edf9857e1f658ea9320f7affb2bf0f44ce7c39e7ee71c1a0d256053cefe882a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:08:28 GMT
ADD file:bcca04af0d36d0354bfb4a46dad49d1280bc0e2704b6968568b6edcc4deab6a1 in / 
# Sat, 27 Apr 2019 12:08:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:08:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:08:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:08:35 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b1fe240e4003ec1271825b46f7f1e43da4ba58394bcef835042c33768914dc9c`  
		Last Modified: Sat, 27 Apr 2019 12:10:57 GMT  
		Size: 25.3 MB (25257056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4126a91a351568fba2a92beb6235cae02a3978ca00eb3a29a11f640c26909b`  
		Last Modified: Sat, 27 Apr 2019 12:10:50 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12143ea0542941ecd71aa302dd7afef3ebc2f0eb810f307095d4e5106a35fdcc`  
		Last Modified: Sat, 27 Apr 2019 12:10:50 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629ff63959669f2ce7218bde428a29a0f3992f5098d1937fb8513ba279a09f38`  
		Last Modified: Sat, 27 Apr 2019 12:10:50 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:disco` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:67db735055fa62cc15f7716d8f6323fe6973c5ff73eb958660a5ddcc4656cb14
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28524606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c31d770b64aa5332870f322ac09e5d0e5262c06832d7f5f234228f810ef277f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:36:54 GMT
ADD file:46d0c7536c7b2b2f997639dceb16911ce53a4c1443fe8cb284761b357e060370 in / 
# Sat, 27 Apr 2019 09:36:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:36:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:37:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:37:03 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b6f4ef9b288b3aff27ce5cfc89c07fa63622e5f9745260281096961d866c6f88`  
		Last Modified: Sat, 27 Apr 2019 09:40:26 GMT  
		Size: 28.5 MB (28523391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305214ff3f3f45f33e3dafa1a62b682ceef5757eedbc71a63f6519fbe74dfaea`  
		Last Modified: Sat, 27 Apr 2019 09:40:12 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bafc8e4e87f1adaf5e5c1dd74d0d48172ee80fc4fd5613d7e8bf2baec1c342fd`  
		Last Modified: Sat, 27 Apr 2019 09:40:12 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61986756c9f477d13733af507c3a31953f49008e9343f25a5448c0bb144283b1`  
		Last Modified: Sat, 27 Apr 2019 09:40:12 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:disco` - linux; 386

```console
$ docker pull ubuntu@sha256:8a8f5c5a4b5dd95c803b030bd43a564cd02d646581d573ff29c09dfa101e538a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30390171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be141019da208fad25ad6e88590356fc66524eab3fa0112187f0ae0a72474149`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:39:43 GMT
ADD file:09ed0f944187a7b29d6dc700b86113b61fc64a9d691d547a404769bdf866c507 in / 
# Wed, 15 May 2019 21:39:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:39:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:39:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:39:47 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:83b2f827047542b904878696f3dff892c94b5980f50a214b0e41f3fe132da74f`  
		Last Modified: Wed, 15 May 2019 21:41:40 GMT  
		Size: 30.4 MB (30389145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbdc11d90da438d954fdb311a52256a205b0ef2b219e98292f89e47aa832cb0`  
		Last Modified: Wed, 15 May 2019 21:41:30 GMT  
		Size: 864.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4800b2d794cc89645815cef5131c291f8297cbdfc622589a6a6651e080bbee`  
		Last Modified: Wed, 15 May 2019 21:41:30 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:disco` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:c21fb0a9d90458584a0c3be59b6a7f1dacead30546e4f3eb3b3047bb451fed88
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35026201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7735a5bf361d40a27bcd1f3fe987122b9fec45a2f4ca880290f2110c220471f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:24:32 GMT
ADD file:58bb3a0119a14002fa97781ba0f47f14a78ec4a1b0ccdb3d6709f91cd330b340 in / 
# Sat, 27 Apr 2019 09:24:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:24:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:24:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:24:53 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:a999c107c313f741c65c3a8769432eb37516e9d8d70d880e8c422bdaf0a585fc`  
		Last Modified: Sat, 27 Apr 2019 09:31:20 GMT  
		Size: 35.0 MB (35024949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aa2b0476ee53b4f0e8d4a8b579933f32271ac9bf8bc59b5db23ceaa5a4b1688`  
		Last Modified: Sat, 27 Apr 2019 09:30:50 GMT  
		Size: 872.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7377a54be74859898e331f16ce38ed25707db0fc01a825977654155e9118026`  
		Last Modified: Sat, 27 Apr 2019 09:30:50 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a57350737985b161b838f05ab6e216fc9a1b04899afbe9371a4005d977109c`  
		Last Modified: Sat, 27 Apr 2019 09:30:50 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:disco` - linux; s390x

```console
$ docker pull ubuntu@sha256:3d677c1182dc73fdadd3ba42333dff4817ebfed09d65da09c2ef05a4d9eaea20
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28314907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2d88cd56ac18cd0976f12f395996b5652bd7c058582cbc465b7e89c8b0dcc17`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:44:12 GMT
ADD file:55482d426d6b01f5a30fad09c850530580a4c3f89ba6e461cf280caff2e66c21 in / 
# Wed, 15 May 2019 21:44:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:44:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:44:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:44:21 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:cc71e1965cf9eb4e5add3a8c4eb00a886a7509b99535fbd04e5d609055baabd0`  
		Last Modified: Wed, 15 May 2019 21:47:39 GMT  
		Size: 28.3 MB (28313883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fb4d5561e0031d400b2369e45ce416e91f4822620526688556cfb27fddfbd6`  
		Last Modified: Wed, 15 May 2019 21:47:25 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddbf9545181b93ecde9425c765dfb20a94915bd58d2ef564030864927ccc13`  
		Last Modified: Wed, 15 May 2019 21:47:25 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:disco-20190515`

```console
$ docker pull ubuntu@sha256:ad5681bfcf3e54236ab4d2e07ff4e854458f26ebd7c1906a22d2373cb41a8651
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; s390x

### `ubuntu:disco-20190515` - linux; amd64

```console
$ docker pull ubuntu@sha256:887a7c706e88e4569494c9f470a53217a2705c9ddb3f8f75dc9062ece9e0bd36
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29730775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b17fc7d68486409b6adf12e02fbf19b509714e5e7e2993e38d05ef47a29bfcc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:46 GMT
ADD file:b82101f178f1bebe33d5ac8f661a31ef8671c27500cba74a448dcb6544a6fd57 in / 
# Wed, 15 May 2019 21:20:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:49 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:4417cd7c3ebb45585a393a0c01ef74414c31104c874b4252d7034cd416796faa`  
		Last Modified: Wed, 15 May 2019 21:22:03 GMT  
		Size: 29.7 MB (29729754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4b01c082df6617a4ec1bf6043f0e270e774c843f7e974e2243090b86d5f929`  
		Last Modified: Wed, 15 May 2019 21:21:58 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08458b88081614d856d6db8cbe030d86b31ac276e3d439b280e633cb0a9c8d6b`  
		Last Modified: Wed, 15 May 2019 21:21:58 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:disco-20190515` - linux; 386

```console
$ docker pull ubuntu@sha256:8a8f5c5a4b5dd95c803b030bd43a564cd02d646581d573ff29c09dfa101e538a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30390171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be141019da208fad25ad6e88590356fc66524eab3fa0112187f0ae0a72474149`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:39:43 GMT
ADD file:09ed0f944187a7b29d6dc700b86113b61fc64a9d691d547a404769bdf866c507 in / 
# Wed, 15 May 2019 21:39:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:39:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:39:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:39:47 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:83b2f827047542b904878696f3dff892c94b5980f50a214b0e41f3fe132da74f`  
		Last Modified: Wed, 15 May 2019 21:41:40 GMT  
		Size: 30.4 MB (30389145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbdc11d90da438d954fdb311a52256a205b0ef2b219e98292f89e47aa832cb0`  
		Last Modified: Wed, 15 May 2019 21:41:30 GMT  
		Size: 864.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4800b2d794cc89645815cef5131c291f8297cbdfc622589a6a6651e080bbee`  
		Last Modified: Wed, 15 May 2019 21:41:30 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:disco-20190515` - linux; s390x

```console
$ docker pull ubuntu@sha256:3d677c1182dc73fdadd3ba42333dff4817ebfed09d65da09c2ef05a4d9eaea20
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28314907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2d88cd56ac18cd0976f12f395996b5652bd7c058582cbc465b7e89c8b0dcc17`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:44:12 GMT
ADD file:55482d426d6b01f5a30fad09c850530580a4c3f89ba6e461cf280caff2e66c21 in / 
# Wed, 15 May 2019 21:44:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:44:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:44:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:44:21 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:cc71e1965cf9eb4e5add3a8c4eb00a886a7509b99535fbd04e5d609055baabd0`  
		Last Modified: Wed, 15 May 2019 21:47:39 GMT  
		Size: 28.3 MB (28313883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fb4d5561e0031d400b2369e45ce416e91f4822620526688556cfb27fddfbd6`  
		Last Modified: Wed, 15 May 2019 21:47:25 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddbf9545181b93ecde9425c765dfb20a94915bd58d2ef564030864927ccc13`  
		Last Modified: Wed, 15 May 2019 21:47:25 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:eoan`

```console
$ docker pull ubuntu@sha256:a5c5c6928945c8f102b7e34d9590db4fb17ef50b926ae3d5e244addc8a9c9ef5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; s390x

### `ubuntu:eoan` - linux; amd64

```console
$ docker pull ubuntu@sha256:a2805f133be3af5aea8836ea5a896a340ad60312f574964fd51622296111f968
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.0 MB (29991642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f269de19be19f9b0725c31e0b6fb6d6b9181facd1ec30be5ac5e280d50ad41b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:57 GMT
ADD file:f6a81ff001cd67096a4d4dc6b742ced2ef44c533e62a23942d9387437419bf40 in / 
# Wed, 15 May 2019 21:20:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:58 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:59 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:1eadb10a1d64b0fb9cde836b3c5924ae3406675fd006e71c6b87b6366907e241`  
		Last Modified: Wed, 15 May 2019 21:22:13 GMT  
		Size: 30.0 MB (29990619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5aa2e2e787fc707205aaeb73d4c530fcfcf00b8b83b254a07ed111738bb2c41`  
		Last Modified: Wed, 15 May 2019 21:22:08 GMT  
		Size: 861.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b703aee28b805ebedbb5c38a516803f4021d9bf2e5ea8e669425e5db9fd0708`  
		Last Modified: Wed, 15 May 2019 21:22:08 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:eoan` - linux; 386

```console
$ docker pull ubuntu@sha256:fa4fee53a45f714877dac30a3f472ad5c3f01abfa747469de1aaa79847bf3853
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30659448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df3dd4c89235aff29d81f6efe9cec29b8a515ca15baca053c4127c650daf9fee`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:39:58 GMT
ADD file:a734f089de3c1127f2a68bd150813975d1ef3ded1a964c196c9984123ff5012a in / 
# Wed, 15 May 2019 21:39:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:01 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b885d520e19993b7e85e874b4f6de20dfecb6d7e355bae068cde80384b4e345e`  
		Last Modified: Wed, 15 May 2019 21:41:55 GMT  
		Size: 30.7 MB (30658424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a48d426d2824a1824aa3127dfddf60a54a2b900900f5d25872139a43d98fbd`  
		Last Modified: Wed, 15 May 2019 21:41:46 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05df0525b906661defa4ea8ac50eb40da2b8f083b670f2fb72956d7477143073`  
		Last Modified: Wed, 15 May 2019 21:41:46 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:eoan` - linux; s390x

```console
$ docker pull ubuntu@sha256:7573b69d5f335484467ab2a8ae94347f209304f3fbcb8ec62732883daf3b5f6b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28499156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b4eaca5db76cbf8d99295ec30f9e791ccecc3bdd12c26d350d295d6e97810cd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:44:50 GMT
ADD file:9c8e749f204301e1ab12bbbb42a5a3f3a7c188f7385131f82aae9871fbc7fce1 in / 
# Wed, 15 May 2019 21:44:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:44:58 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:45:03 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:35e827af39a1da0bb6a3d6fbc8ef4c193295c103c736910db12e751741d7ad35`  
		Last Modified: Wed, 15 May 2019 21:48:04 GMT  
		Size: 28.5 MB (28498127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf9945ef878914c8c5ffffdab0b31d805d056322c0d00d415c615e993c02842`  
		Last Modified: Wed, 15 May 2019 21:47:52 GMT  
		Size: 866.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4e8e2adf91f20c7bf0c2450abf2ec7145db7933b7e1f55b4c77949f957e8598`  
		Last Modified: Wed, 15 May 2019 21:47:52 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:eoan-20190508`

```console
$ docker pull ubuntu@sha256:a5c5c6928945c8f102b7e34d9590db4fb17ef50b926ae3d5e244addc8a9c9ef5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; s390x

### `ubuntu:eoan-20190508` - linux; amd64

```console
$ docker pull ubuntu@sha256:a2805f133be3af5aea8836ea5a896a340ad60312f574964fd51622296111f968
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.0 MB (29991642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f269de19be19f9b0725c31e0b6fb6d6b9181facd1ec30be5ac5e280d50ad41b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:57 GMT
ADD file:f6a81ff001cd67096a4d4dc6b742ced2ef44c533e62a23942d9387437419bf40 in / 
# Wed, 15 May 2019 21:20:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:58 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:59 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:1eadb10a1d64b0fb9cde836b3c5924ae3406675fd006e71c6b87b6366907e241`  
		Last Modified: Wed, 15 May 2019 21:22:13 GMT  
		Size: 30.0 MB (29990619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5aa2e2e787fc707205aaeb73d4c530fcfcf00b8b83b254a07ed111738bb2c41`  
		Last Modified: Wed, 15 May 2019 21:22:08 GMT  
		Size: 861.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b703aee28b805ebedbb5c38a516803f4021d9bf2e5ea8e669425e5db9fd0708`  
		Last Modified: Wed, 15 May 2019 21:22:08 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:eoan-20190508` - linux; 386

```console
$ docker pull ubuntu@sha256:fa4fee53a45f714877dac30a3f472ad5c3f01abfa747469de1aaa79847bf3853
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30659448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df3dd4c89235aff29d81f6efe9cec29b8a515ca15baca053c4127c650daf9fee`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:39:58 GMT
ADD file:a734f089de3c1127f2a68bd150813975d1ef3ded1a964c196c9984123ff5012a in / 
# Wed, 15 May 2019 21:39:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:01 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b885d520e19993b7e85e874b4f6de20dfecb6d7e355bae068cde80384b4e345e`  
		Last Modified: Wed, 15 May 2019 21:41:55 GMT  
		Size: 30.7 MB (30658424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a48d426d2824a1824aa3127dfddf60a54a2b900900f5d25872139a43d98fbd`  
		Last Modified: Wed, 15 May 2019 21:41:46 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05df0525b906661defa4ea8ac50eb40da2b8f083b670f2fb72956d7477143073`  
		Last Modified: Wed, 15 May 2019 21:41:46 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:eoan-20190508` - linux; s390x

```console
$ docker pull ubuntu@sha256:7573b69d5f335484467ab2a8ae94347f209304f3fbcb8ec62732883daf3b5f6b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28499156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b4eaca5db76cbf8d99295ec30f9e791ccecc3bdd12c26d350d295d6e97810cd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:44:50 GMT
ADD file:9c8e749f204301e1ab12bbbb42a5a3f3a7c188f7385131f82aae9871fbc7fce1 in / 
# Wed, 15 May 2019 21:44:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:44:58 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:45:03 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:35e827af39a1da0bb6a3d6fbc8ef4c193295c103c736910db12e751741d7ad35`  
		Last Modified: Wed, 15 May 2019 21:48:04 GMT  
		Size: 28.5 MB (28498127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf9945ef878914c8c5ffffdab0b31d805d056322c0d00d415c615e993c02842`  
		Last Modified: Wed, 15 May 2019 21:47:52 GMT  
		Size: 866.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4e8e2adf91f20c7bf0c2450abf2ec7145db7933b7e1f55b4c77949f957e8598`  
		Last Modified: Wed, 15 May 2019 21:47:52 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:latest`

```console
$ docker pull ubuntu@sha256:eeaa6e1e0d3d9f7f499806f8a5d8943696997b98a3584475c315698aff06d85a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:latest` - linux; amd64

```console
$ docker pull ubuntu@sha256:b36667c98cf8f68d4b7f1fb8e01f742c2ed26b5f0c965a788e98dfe589a4b3e4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.9 MB (28856076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7698f282e5242af2b9d2291458d4e425c75b25b0008c1e058d66b717b4c06fa9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:latest` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:433b30fe593e521802138a4e51814d3f873a4a77244018d048ad2e6357318b34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31836108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:701f9d42ae2e7b201cd802ae6103ab769c3b5a51c5ec2c8cee3814c7f9d02d67`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:07:41 GMT
ADD file:91508eaa9a6ca65f915c4c00be38f2a22643d2260f00f045a24ac8b60e6d8a37 in / 
# Sat, 27 Apr 2019 12:07:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:07:45 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:07:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:07:48 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:3447b717941c494b64a85e7ecccee1d14c35bf5ea462ff4d41b19fd4e52b14d3`  
		Last Modified: Sat, 27 Apr 2019 12:10:26 GMT  
		Size: 31.8 MB (31834541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a139bc00a591c79c7e0680c016ac154be3c94f5865a5fdb6a80b3c13b25512c`  
		Last Modified: Sat, 27 Apr 2019 12:10:16 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a88e45a0742cc3bc6d8942ffd7c58de9eed96d6c69501ff3eb3a1141039e17`  
		Last Modified: Sat, 27 Apr 2019 12:10:16 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc408458c70328a71f67544fa9f11ab0f7c03eb1e3a0b657480a6cc85724f3d8`  
		Last Modified: Sat, 27 Apr 2019 12:10:16 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:latest` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:de263810f197bad68d1b3e77ec31bc6bcca05d490b93d446dd5a07dc3eaae744
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 MB (33344945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e76720cc7bfddc9c2e98f52f886453e472c4afdcf9536305bd668cd280abe94a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:35:52 GMT
ADD file:f046142405da23f452b26e01729a6fdc5a92b0fa85ec8456a1fee249160217bb in / 
# Sat, 27 Apr 2019 09:35:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:35:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:35:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:36:00 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:bf7c45c81bd70f13db7f1612a4596418f2c15b48384d2c1d5597b7534e60b3f3`  
		Last Modified: Sat, 27 Apr 2019 09:39:34 GMT  
		Size: 33.3 MB (33343401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5396f07cded369e173bde57fa17c337db371930ea1b2e925d3c04cb407794d5c`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ceb566582d63624b9d3a22ead5cbf0836b8c5bca41b4b7bb777c9c11923ede`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb3982847b2f6cb9353dc95b2dbd7092a92764a1946b9901adf59d886849542`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:latest` - linux; 386

```console
$ docker pull ubuntu@sha256:ec8be1067edb1c8d87da9a9ad94b9ce11a0b01f4913d3d305a2cc4cfefc92b40
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29267884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92e46f6fc2acc229673f79819ad4221f4e5ce1c3a4a72e4ee61fb96fd01f1194`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:39:17 GMT
ADD file:f842b2940a14cba8471389ebac2a1dbee8f736dc270dc6ca35c0fa6017032873 in / 
# Wed, 15 May 2019 21:39:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:39:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:39:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:39:19 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:13d592dcddc564565b96139277c35f06b708f92750b65584615e633b44ce946f`  
		Last Modified: Wed, 15 May 2019 21:41:03 GMT  
		Size: 29.3 MB (29266878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5311ad4c5dbad149b277499323dd6a79c193d5abe08c938384d82036be61dce`  
		Last Modified: Wed, 15 May 2019 21:40:54 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:683c78130c3fcc117311e7f89a1413be158927ccd9a294ec0803978c78bc754c`  
		Last Modified: Wed, 15 May 2019 21:40:54 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:latest` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:1a3a00c47723eab7033ab45bd38662f8b387122d9fd385625e6cc3df7d768145
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.9 MB (39946442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edf1f91056b961e352b9ae0d72294aac592d7768386e1a6d87fddb3454666e30`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:15:37 GMT
ADD file:f84af4a2bfeabb29759492bc1fcee90da44b5088e561155cd4c4fa69ec03c939 in / 
# Sat, 27 Apr 2019 09:15:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:16:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:16:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:16:14 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:05afd6335a2fc38939add8f98ac929a68b140fc6e14a89f99688d334f1cb40d5`  
		Last Modified: Sat, 27 Apr 2019 09:29:49 GMT  
		Size: 39.9 MB (39944868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd52c18e7316709788a8ac0c7bfc70726c6c98a10685f8eb6e0cf2663ea3bf11`  
		Last Modified: Sat, 27 Apr 2019 09:29:18 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d43c0889ab8534b4f1762afc266e4da05e8d2a9751b469a98650943dc658ac0`  
		Last Modified: Sat, 27 Apr 2019 09:29:18 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d262c134c8e6db6fe2f46ebce5a86da0b7466032b6496665161825e36afffdc`  
		Last Modified: Sat, 27 Apr 2019 09:29:18 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:latest` - linux; s390x

```console
$ docker pull ubuntu@sha256:bea8081af283455d22776ee07fe569039d33a2acf7fe4e1293e99568334d627e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27533647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f09c80bc8db29c5da64e3c680d78e7aa0b77d4ba0b4eb46be24c03f5bac0b98d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:42:57 GMT
ADD file:099f81542cb8e3e3e4fc2556d8067214392b39f0958e3452312495c98ae25e76 in / 
# Wed, 15 May 2019 21:43:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:43:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:43:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:43:14 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:a3ef07dd1fb74710cbd05c9bed2158fa7e005b766ac22ee052c37bc04215d25d`  
		Last Modified: Wed, 15 May 2019 21:46:43 GMT  
		Size: 27.5 MB (27532637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3f8f7d030578ebc1c4656ad55d61c81d712b0b43add1862837acf9d7365d67`  
		Last Modified: Wed, 15 May 2019 21:46:29 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4fa8d15db8edc923fd948fd13c76765471952cf1ac5df39c26f98250ab7944`  
		Last Modified: Wed, 15 May 2019 21:46:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:rolling`

```console
$ docker pull ubuntu@sha256:fb8b7d0794146e6bd87f0f51befc33de9c93c2f7bfde6804938d4284c795f608
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:rolling` - linux; amd64

```console
$ docker pull ubuntu@sha256:887a7c706e88e4569494c9f470a53217a2705c9ddb3f8f75dc9062ece9e0bd36
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29730775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b17fc7d68486409b6adf12e02fbf19b509714e5e7e2993e38d05ef47a29bfcc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:46 GMT
ADD file:b82101f178f1bebe33d5ac8f661a31ef8671c27500cba74a448dcb6544a6fd57 in / 
# Wed, 15 May 2019 21:20:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:49 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:4417cd7c3ebb45585a393a0c01ef74414c31104c874b4252d7034cd416796faa`  
		Last Modified: Wed, 15 May 2019 21:22:03 GMT  
		Size: 29.7 MB (29729754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4b01c082df6617a4ec1bf6043f0e270e774c843f7e974e2243090b86d5f929`  
		Last Modified: Wed, 15 May 2019 21:21:58 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08458b88081614d856d6db8cbe030d86b31ac276e3d439b280e633cb0a9c8d6b`  
		Last Modified: Wed, 15 May 2019 21:21:58 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:rolling` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:5ff58f1e41250e080d011aa31b3a210c8cd8fb20f4ddfdf681ee6effd42596fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.3 MB (25258304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6edf9857e1f658ea9320f7affb2bf0f44ce7c39e7ee71c1a0d256053cefe882a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:08:28 GMT
ADD file:bcca04af0d36d0354bfb4a46dad49d1280bc0e2704b6968568b6edcc4deab6a1 in / 
# Sat, 27 Apr 2019 12:08:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:08:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:08:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:08:35 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b1fe240e4003ec1271825b46f7f1e43da4ba58394bcef835042c33768914dc9c`  
		Last Modified: Sat, 27 Apr 2019 12:10:57 GMT  
		Size: 25.3 MB (25257056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4126a91a351568fba2a92beb6235cae02a3978ca00eb3a29a11f640c26909b`  
		Last Modified: Sat, 27 Apr 2019 12:10:50 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12143ea0542941ecd71aa302dd7afef3ebc2f0eb810f307095d4e5106a35fdcc`  
		Last Modified: Sat, 27 Apr 2019 12:10:50 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629ff63959669f2ce7218bde428a29a0f3992f5098d1937fb8513ba279a09f38`  
		Last Modified: Sat, 27 Apr 2019 12:10:50 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:rolling` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:67db735055fa62cc15f7716d8f6323fe6973c5ff73eb958660a5ddcc4656cb14
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28524606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c31d770b64aa5332870f322ac09e5d0e5262c06832d7f5f234228f810ef277f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:36:54 GMT
ADD file:46d0c7536c7b2b2f997639dceb16911ce53a4c1443fe8cb284761b357e060370 in / 
# Sat, 27 Apr 2019 09:36:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:36:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:37:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:37:03 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b6f4ef9b288b3aff27ce5cfc89c07fa63622e5f9745260281096961d866c6f88`  
		Last Modified: Sat, 27 Apr 2019 09:40:26 GMT  
		Size: 28.5 MB (28523391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305214ff3f3f45f33e3dafa1a62b682ceef5757eedbc71a63f6519fbe74dfaea`  
		Last Modified: Sat, 27 Apr 2019 09:40:12 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bafc8e4e87f1adaf5e5c1dd74d0d48172ee80fc4fd5613d7e8bf2baec1c342fd`  
		Last Modified: Sat, 27 Apr 2019 09:40:12 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61986756c9f477d13733af507c3a31953f49008e9343f25a5448c0bb144283b1`  
		Last Modified: Sat, 27 Apr 2019 09:40:12 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:rolling` - linux; 386

```console
$ docker pull ubuntu@sha256:8a8f5c5a4b5dd95c803b030bd43a564cd02d646581d573ff29c09dfa101e538a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30390171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be141019da208fad25ad6e88590356fc66524eab3fa0112187f0ae0a72474149`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:39:43 GMT
ADD file:09ed0f944187a7b29d6dc700b86113b61fc64a9d691d547a404769bdf866c507 in / 
# Wed, 15 May 2019 21:39:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:39:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:39:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:39:47 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:83b2f827047542b904878696f3dff892c94b5980f50a214b0e41f3fe132da74f`  
		Last Modified: Wed, 15 May 2019 21:41:40 GMT  
		Size: 30.4 MB (30389145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbdc11d90da438d954fdb311a52256a205b0ef2b219e98292f89e47aa832cb0`  
		Last Modified: Wed, 15 May 2019 21:41:30 GMT  
		Size: 864.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4800b2d794cc89645815cef5131c291f8297cbdfc622589a6a6651e080bbee`  
		Last Modified: Wed, 15 May 2019 21:41:30 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:rolling` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:c21fb0a9d90458584a0c3be59b6a7f1dacead30546e4f3eb3b3047bb451fed88
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35026201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7735a5bf361d40a27bcd1f3fe987122b9fec45a2f4ca880290f2110c220471f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:24:32 GMT
ADD file:58bb3a0119a14002fa97781ba0f47f14a78ec4a1b0ccdb3d6709f91cd330b340 in / 
# Sat, 27 Apr 2019 09:24:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:24:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:24:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:24:53 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:a999c107c313f741c65c3a8769432eb37516e9d8d70d880e8c422bdaf0a585fc`  
		Last Modified: Sat, 27 Apr 2019 09:31:20 GMT  
		Size: 35.0 MB (35024949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aa2b0476ee53b4f0e8d4a8b579933f32271ac9bf8bc59b5db23ceaa5a4b1688`  
		Last Modified: Sat, 27 Apr 2019 09:30:50 GMT  
		Size: 872.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7377a54be74859898e331f16ce38ed25707db0fc01a825977654155e9118026`  
		Last Modified: Sat, 27 Apr 2019 09:30:50 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a57350737985b161b838f05ab6e216fc9a1b04899afbe9371a4005d977109c`  
		Last Modified: Sat, 27 Apr 2019 09:30:50 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:rolling` - linux; s390x

```console
$ docker pull ubuntu@sha256:3d677c1182dc73fdadd3ba42333dff4817ebfed09d65da09c2ef05a4d9eaea20
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28314907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2d88cd56ac18cd0976f12f395996b5652bd7c058582cbc465b7e89c8b0dcc17`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:44:12 GMT
ADD file:55482d426d6b01f5a30fad09c850530580a4c3f89ba6e461cf280caff2e66c21 in / 
# Wed, 15 May 2019 21:44:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:44:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:44:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:44:21 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:cc71e1965cf9eb4e5add3a8c4eb00a886a7509b99535fbd04e5d609055baabd0`  
		Last Modified: Wed, 15 May 2019 21:47:39 GMT  
		Size: 28.3 MB (28313883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fb4d5561e0031d400b2369e45ce416e91f4822620526688556cfb27fddfbd6`  
		Last Modified: Wed, 15 May 2019 21:47:25 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddbf9545181b93ecde9425c765dfb20a94915bd58d2ef564030864927ccc13`  
		Last Modified: Wed, 15 May 2019 21:47:25 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:trusty`

```console
$ docker pull ubuntu@sha256:0f4217eeb91f7946f0f30cbde0f68faecd248460e33e6f131eb10ebc725f457a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `ubuntu:trusty` - linux; amd64

```console
$ docker pull ubuntu@sha256:2feffff9eeca4e736f9f8e57813a97fe930554f474f7795ffa5a9261adeaaf44
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.3 MB (67264776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c5e00d77a67934d5e39493477f262b878f127b9c01b491f06d8f06f78819578`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:21:11 GMT
ADD file:1e01ab604c0cc308430848d15d75fa9c09a2c53f156a6a2dbdee4ac618c8c8aa in / 
# Wed, 15 May 2019 21:21:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:13 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:a7344f52cb744a28edb7b2c806f4227d07219709d2365c32a42b580165d261c1`  
		Last Modified: Wed, 15 May 2019 12:22:08 GMT  
		Size: 67.2 MB (67191601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515c9bb515362c9d26b0c6acaa3ad0a79c20cf421d56a8c5bb4ddc60a336239b`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1eabe0537eb2d3647100f04687474cc1c232b4e512e70fd0a09b93d55da8f69`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4701f1215c13b72f8e1fbd292558fc4cb49655209db1b450cbb5c068be64956c`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:trusty` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:adae05f26f57835f47b091df3d3510fc275c07572a6827fa2e87595829b284ad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61611102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8d54fd2ff56ff7dd444ec1808f36ab4870de6c28f91e8c3d773e37e8aa03463`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:09:11 GMT
ADD file:1619cbcf63643ad1d5e8e3f021402dd0ca31abdd41852cee6a6fbbeec2fa5de8 in / 
# Sat, 27 Apr 2019 12:09:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:09:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:09:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:09:20 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:c5362603fe6be7d5876ef41ffb08b355892494dd4a50696ea8076ae7dd17ebbb`  
		Last Modified: Sat, 27 Apr 2019 12:11:24 GMT  
		Size: 61.5 MB (61533787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba380cc82188c4efebfcfbbcfceb13f9e312ef48b621cc241b11e159e161dd0a`  
		Last Modified: Sat, 27 Apr 2019 12:11:05 GMT  
		Size: 76.8 KB (76767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab98c98275cf92acaac3db468b6a8458aa10b3fccdc303aee6882cf6e29ee6db`  
		Last Modified: Sat, 27 Apr 2019 12:11:05 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4683afb56c106058227f2417f484198fd14d94b7f1d07c41fe42d595562ab6f8`  
		Last Modified: Sat, 27 Apr 2019 12:11:05 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:trusty` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:83d0505d25ef6f5cfa23e4f1c6524e4a58bc948e477836229ad2206eeee4825f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63305879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe186540bbbee171cbf473d26f6418b414b4fc56695472d0e80cb66988d6e9f8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:37:46 GMT
ADD file:b7712277488ca5feca49e84f24daf6ff1c099901e2da74e441a745d48d480001 in / 
# Sat, 27 Apr 2019 09:37:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:37:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:37:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:37:57 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:e46ac618d4e0cb1e6551fd0f4cfa29cc3eff5914890afe801c91820c1449c2bf`  
		Last Modified: Sat, 27 Apr 2019 09:41:03 GMT  
		Size: 63.2 MB (63246265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd21d82a86a4094a01e4222157b4eceb2e137d60928d46a9af40c1c1e76412b`  
		Last Modified: Sat, 27 Apr 2019 09:40:39 GMT  
		Size: 59.1 KB (59094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c19489b78574361031a2bef05fd44706fb4dd54abc9bebfb083ed168e588cc1`  
		Last Modified: Sat, 27 Apr 2019 09:40:39 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d772c8eda5a1bbcde9462db9ebb43561b0635923b8cde579c330d964a9d45e9`  
		Last Modified: Sat, 27 Apr 2019 09:40:38 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:trusty` - linux; 386

```console
$ docker pull ubuntu@sha256:b550bd33f873b7dfa41e33a7b53e7a35d5d11a3b7cb20cc582dd02c4dc7c7333
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64968735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:822956e6c5eb46e2fc0c548223dad6a19998225d13bcf6be09ccae860b032d0c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:40:18 GMT
ADD file:81812c7536d5965bef84e83c0948a955ee1f094914ef85f9d971538b79ea3455 in / 
# Wed, 15 May 2019 21:40:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:21 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ef7df603d30353e1a64bb1d79bfd65f18b60539ad5f52c07086dab8867b15802`  
		Last Modified: Wed, 15 May 2019 21:42:22 GMT  
		Size: 64.9 MB (64903354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12b7484c6bd233505b677db9b58563f8b825b9602a3695c8817813a4302871b`  
		Last Modified: Wed, 15 May 2019 21:42:00 GMT  
		Size: 64.9 KB (64860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ff0576ae04853d73bc8ee3897e46dfed937b8b35fbc309f3adcc6e443e1ffe`  
		Last Modified: Wed, 15 May 2019 21:42:00 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6a79d1bb0b0b00253d099d5e40c41f0cb5abab26768a48bd98e8c0461101dd`  
		Last Modified: Wed, 15 May 2019 21:42:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:trusty` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:cad23b2c64eb839ccb3ba60a4559ad17f037425728ad33443ad603881d145277
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.9 MB (69918555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:947b9bb216de43a8a0056ac9233fdb188015b2bd8d5c294aa0a8e1255395e61d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:26:17 GMT
ADD file:e018e98231d39ca8bef7e56dbb0687f83a2a39d6140571ed73e7c4a96ffe79c5 in / 
# Sat, 27 Apr 2019 09:26:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:26:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:26:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:26:37 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:21e2c51dc921cff8e3d821254ff7cea5dca04fe8bc70a9f35b6f4aaccfbb3137`  
		Last Modified: Sat, 27 Apr 2019 09:32:33 GMT  
		Size: 69.9 MB (69854590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadcb4f1379bb8eaa4ab324ab11552f7c2d8176578149c437f97b95e84f02f3e`  
		Last Modified: Sat, 27 Apr 2019 09:31:35 GMT  
		Size: 63.4 KB (63418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78abe4347f0f3d6c51deae815ff7a2986d4b1783cdcdcc73487f025e9c41e00`  
		Last Modified: Sat, 27 Apr 2019 09:31:35 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d271af6e174f309e31a22d58cc08c9066236f5982dd090cb0af618bba847e9`  
		Last Modified: Sat, 27 Apr 2019 09:31:35 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:trusty-20190515`

```console
$ docker pull ubuntu@sha256:258ce5e8e110220e3e8a8bf2ffbd3f1735a9fc7b61c5c1b9b41da9a189b9b1c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `ubuntu:trusty-20190515` - linux; amd64

```console
$ docker pull ubuntu@sha256:2feffff9eeca4e736f9f8e57813a97fe930554f474f7795ffa5a9261adeaaf44
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.3 MB (67264776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c5e00d77a67934d5e39493477f262b878f127b9c01b491f06d8f06f78819578`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:21:11 GMT
ADD file:1e01ab604c0cc308430848d15d75fa9c09a2c53f156a6a2dbdee4ac618c8c8aa in / 
# Wed, 15 May 2019 21:21:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:13 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:a7344f52cb744a28edb7b2c806f4227d07219709d2365c32a42b580165d261c1`  
		Last Modified: Wed, 15 May 2019 12:22:08 GMT  
		Size: 67.2 MB (67191601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515c9bb515362c9d26b0c6acaa3ad0a79c20cf421d56a8c5bb4ddc60a336239b`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1eabe0537eb2d3647100f04687474cc1c232b4e512e70fd0a09b93d55da8f69`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4701f1215c13b72f8e1fbd292558fc4cb49655209db1b450cbb5c068be64956c`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:trusty-20190515` - linux; 386

```console
$ docker pull ubuntu@sha256:b550bd33f873b7dfa41e33a7b53e7a35d5d11a3b7cb20cc582dd02c4dc7c7333
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64968735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:822956e6c5eb46e2fc0c548223dad6a19998225d13bcf6be09ccae860b032d0c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:40:18 GMT
ADD file:81812c7536d5965bef84e83c0948a955ee1f094914ef85f9d971538b79ea3455 in / 
# Wed, 15 May 2019 21:40:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:21 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ef7df603d30353e1a64bb1d79bfd65f18b60539ad5f52c07086dab8867b15802`  
		Last Modified: Wed, 15 May 2019 21:42:22 GMT  
		Size: 64.9 MB (64903354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12b7484c6bd233505b677db9b58563f8b825b9602a3695c8817813a4302871b`  
		Last Modified: Wed, 15 May 2019 21:42:00 GMT  
		Size: 64.9 KB (64860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ff0576ae04853d73bc8ee3897e46dfed937b8b35fbc309f3adcc6e443e1ffe`  
		Last Modified: Wed, 15 May 2019 21:42:00 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6a79d1bb0b0b00253d099d5e40c41f0cb5abab26768a48bd98e8c0461101dd`  
		Last Modified: Wed, 15 May 2019 21:42:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:xenial`

```console
$ docker pull ubuntu@sha256:6f608bdc8617b9301767d9042320334ddbd31c8f1846681a83636c7aa4e050c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:xenial` - linux; amd64

```console
$ docker pull ubuntu@sha256:08f4295167241c59fc4a24f18816618ff8f959756fb4b236e880a3b7f45f0ba0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43769529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a697363a8709093834e852b26bedb1d85b316c613120720fea9524f0e98e4a2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:f287486b5100f954d5230b8bce7791074938834558a8945b09f8ad62d6c4ec0d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38655362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f04c91acb43bc3450747e921ed20b261d26d22d48beda4d2f83bf8b4c215b034`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:09:45 GMT
ADD file:6abeb1922711ba983099d4c04a11287c89004f297455bb4fc41451cc27218177 in / 
# Sat, 27 Apr 2019 12:09:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:09:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:09:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:09:54 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:0e049e8c377f00a9384d53b245eca77dab63d499bc4df0d8058ef0bf4928c47e`  
		Last Modified: Fri, 26 Apr 2019 22:26:56 GMT  
		Size: 38.7 MB (38653833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae07c2e262a27612d57f5f68331e68ca9da1d2c0b4749b4013140867a54c276`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccb522494abe8ce55f46b024715305dcaa596581bcc8d60ea20cdb1c9e3fe16`  
		Last Modified: Sat, 27 Apr 2019 12:11:48 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb96c8e04ae9d0fa50d52c33842137046920f3414e45cbcb86c642e5997a567`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:d2fa47c0c22a356bf633bb03bac23d870ef0e3d91225d6d5899b21156c7543bc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.7 MB (39730887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:149b98a0932ee75a23bbc68de361e71961d6bfea65652145ebf6255f9e6ceedc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial` - linux; 386

```console
$ docker pull ubuntu@sha256:475428eb75573612affbe0c22ba991a34d3ecff4c7340934cc85fb52a43527ee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43926030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71fb4f2ea257d308f9fab91768ec281d503bdf07a0478ed0ecb97f04e2bfa7da`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:40:36 GMT
ADD file:5d74a053a0ad56b64841a77df9f90db692d915a4fabc63801978cb859609f04a in / 
# Wed, 15 May 2019 21:40:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:39 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:fb5d673f940c89b7f361f32fed8d4cfd614fc9ea9f4b97bcd32b0b71bfe2a7b1`  
		Last Modified: Wed, 15 May 2019 21:42:42 GMT  
		Size: 43.9 MB (43924500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b70ce3711c6f532b489a432e5bdb47030e7a4885023de73a2f5ef9e2c5a6450`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efa4ef849b45754041d226a2b65e40b5316e8d62c025ee96e66cedb057e77a1`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4845034610f1952bc72a60f257235c6f86a5d31e628e4f0370cc326ebc9b27f1`  
		Last Modified: Wed, 15 May 2019 21:42:27 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:b82a121ed878a5704ee662794d7da17bf20e6bd5951543daa32d280e91d9c864
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.9 MB (45930132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dd8620862e6562d893b760ea7f2ad94dca6f8d2ee8c57abb3281106e04dab97`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:28:21 GMT
ADD file:3e448359ea1b7f0a4f4b69f4542cd08e7bface0c7e835f38b7cb9aff4351346d in / 
# Sat, 27 Apr 2019 09:28:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:28:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:28:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:28:43 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:abd5c019819de70ac57ed3f6553b5cb918700ea013051f9b5c34647068e1f358`  
		Last Modified: Sat, 27 Apr 2019 09:33:19 GMT  
		Size: 45.9 MB (45928636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb1e9f7f3b1c7c2b3164a88da4d80c35edd5e9c958d483ef7a5d3f1760bc574`  
		Last Modified: Sat, 27 Apr 2019 09:32:45 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19320290aeb9b108bf4f79b24b0ec8f8d136510f1d37e51c972a5cd0276e8a0`  
		Last Modified: Sat, 27 Apr 2019 09:32:46 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354d5ed794e921901f7c634ba79e69add39da2a185fcf0defbdf90418b77a394`  
		Last Modified: Sat, 27 Apr 2019 09:32:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial` - linux; s390x

```console
$ docker pull ubuntu@sha256:cff6d66d31f63effe796a5fdac7a623bdf592167573a845f1b338ec782e84783
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.6 MB (42611152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:946025ba843aa7fc8551adfdf37c0c935b3a123b3b47e55e8b056f0503017f51`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:45:33 GMT
ADD file:d7a233874816671d3297c11fa1530f1f10d6dbdaf60bf5feb414ff98ef1beae0 in / 
# Wed, 15 May 2019 21:45:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:45:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:45:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:45:44 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:a39cfce7a60d9d727586a3e6453c7c96ac717c01bc191465c06b93d8998be0f1`  
		Last Modified: Wed, 15 May 2019 21:48:36 GMT  
		Size: 42.6 MB (42609666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e699efbddb6397d0d4104adc13a9ebe0f50f3dff99fab55f119c9bd390004ee`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3ffeac441227351387321f7ca872e95bf4a67c57ff6331ed441114fcbee117`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c5a080fd6dd58e471f678450dfdb9501e014e4a451138b17794d6b01b57da0`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:xenial-20190515`

```console
$ docker pull ubuntu@sha256:0bb793c9582c087aece3135dcef92a1698ceadf64ecf41a9c949a329d93f42b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; s390x

### `ubuntu:xenial-20190515` - linux; amd64

```console
$ docker pull ubuntu@sha256:08f4295167241c59fc4a24f18816618ff8f959756fb4b236e880a3b7f45f0ba0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43769529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a697363a8709093834e852b26bedb1d85b316c613120720fea9524f0e98e4a2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial-20190515` - linux; 386

```console
$ docker pull ubuntu@sha256:475428eb75573612affbe0c22ba991a34d3ecff4c7340934cc85fb52a43527ee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43926030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71fb4f2ea257d308f9fab91768ec281d503bdf07a0478ed0ecb97f04e2bfa7da`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:40:36 GMT
ADD file:5d74a053a0ad56b64841a77df9f90db692d915a4fabc63801978cb859609f04a in / 
# Wed, 15 May 2019 21:40:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:39 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:fb5d673f940c89b7f361f32fed8d4cfd614fc9ea9f4b97bcd32b0b71bfe2a7b1`  
		Last Modified: Wed, 15 May 2019 21:42:42 GMT  
		Size: 43.9 MB (43924500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b70ce3711c6f532b489a432e5bdb47030e7a4885023de73a2f5ef9e2c5a6450`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efa4ef849b45754041d226a2b65e40b5316e8d62c025ee96e66cedb057e77a1`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4845034610f1952bc72a60f257235c6f86a5d31e628e4f0370cc326ebc9b27f1`  
		Last Modified: Wed, 15 May 2019 21:42:27 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial-20190515` - linux; s390x

```console
$ docker pull ubuntu@sha256:cff6d66d31f63effe796a5fdac7a623bdf592167573a845f1b338ec782e84783
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.6 MB (42611152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:946025ba843aa7fc8551adfdf37c0c935b3a123b3b47e55e8b056f0503017f51`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:45:33 GMT
ADD file:d7a233874816671d3297c11fa1530f1f10d6dbdaf60bf5feb414ff98ef1beae0 in / 
# Wed, 15 May 2019 21:45:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:45:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:45:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:45:44 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:a39cfce7a60d9d727586a3e6453c7c96ac717c01bc191465c06b93d8998be0f1`  
		Last Modified: Wed, 15 May 2019 21:48:36 GMT  
		Size: 42.6 MB (42609666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e699efbddb6397d0d4104adc13a9ebe0f50f3dff99fab55f119c9bd390004ee`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3ffeac441227351387321f7ca872e95bf4a67c57ff6331ed441114fcbee117`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c5a080fd6dd58e471f678450dfdb9501e014e4a451138b17794d6b01b57da0`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
