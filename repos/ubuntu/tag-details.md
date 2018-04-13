<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ubuntu`

-	[`ubuntu:14.04`](#ubuntu1404)
-	[`ubuntu:16.04`](#ubuntu1604)
-	[`ubuntu:17.10`](#ubuntu1710)
-	[`ubuntu:18.04`](#ubuntu1804)
-	[`ubuntu:artful`](#ubuntuartful)
-	[`ubuntu:artful-20180412`](#ubuntuartful-20180412)
-	[`ubuntu:bionic`](#ubuntubionic)
-	[`ubuntu:bionic-20180410`](#ubuntubionic-20180410)
-	[`ubuntu:devel`](#ubuntudevel)
-	[`ubuntu:latest`](#ubuntulatest)
-	[`ubuntu:rolling`](#ubunturolling)
-	[`ubuntu:trusty`](#ubuntutrusty)
-	[`ubuntu:trusty-20180412`](#ubuntutrusty-20180412)
-	[`ubuntu:xenial`](#ubuntuxenial)
-	[`ubuntu:xenial-20180412`](#ubuntuxenial-20180412)

## `ubuntu:14.04`

```console
$ docker pull ubuntu@sha256:caaee44c5cf99f71a259a7915afd648f8110f4958cd994e8939073bd9477cd58
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
$ docker pull ubuntu@sha256:3341cbf2805c15debc33b8ee5973288e474ae41783c4f648062a44d8ec1b8ef4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.1 MB (73138844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b853789146f1f249f204a7f29573263ef3486571acb72d7fd8f13056450b807`
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

### `ubuntu:14.04` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:394af1957eecba4a36fc8c8d642beab410f57d07d173d0e7986edc4101b1a6c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.6 MB (66619451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7945e780bd58c4ebf109cf8679e7464892c51044cf0e2dd48ec6e2ff9f00f483`
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

### `ubuntu:14.04` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:e85edd18056d881955df53beda372f508171d751abbf6426f06b930433b8e8d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.9 MB (67882128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6678500a1b277bc7fd6922ae7de5ff911d1275368d753a62ed22831855500e0f`
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

### `ubuntu:14.04` - linux; 386

```console
$ docker pull ubuntu@sha256:72e6367942dc06ad138809b770191848e6ba3be976b0a7379c9fe9f4efa49cbe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.4 MB (70431557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b42bcb3a6514820dd29ec9353ade130c61262ba9a92928ad25bd020eb937fa40`
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

### `ubuntu:14.04` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:116443af865081e1a0ce427cb77b13688a24230969987d9bd628df58f85914ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.5 MB (74494375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42f269a6e745697d1e48cf4f034479aa9daa3c9210adea8a50cd30ed18fec6f7`
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

## `ubuntu:16.04`

```console
$ docker pull ubuntu@sha256:9f1909bfd7200f94886fbce5cd62fc324a9b9ae1cff841cdfebe0ae674e6ca32
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
$ docker pull ubuntu@sha256:92c414f2cf966fd4c6d60bc71180737bf878eeca3654cad82991a1e02d885d37
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (43025436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d990395902a9e219684af847a63d793ccf72cf2aadeece1b576566c5662400`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 12 Apr 2018 18:58:24 GMT
ADD file:4c266e490f4101f9726598288c14131a75242836f3eda375923ef1677ea8ab8e in / 
# Thu, 12 Apr 2018 18:58:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:58:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:58:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:58:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:58:27 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d3938036b19cfa369e1081a6776b07b54be9612bc4c8fed7f139370c8142b79f`  
		Last Modified: Thu, 12 Apr 2018 19:49:15 GMT  
		Size: 43.0 MB (43022946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b30c108bda615dc10e402f62d712f413214ea92c7ec4354cd1cc0f3450bc58`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67de21feec183fcd009a5eddc4de8c346ee0f4369a20047f1a302a90716fc741`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817da545be2ba4bac8f6b4da584bca0fb4844938ecc462b9feab1001b5df7405`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d967c497ce230b63996a7b1fc6ec95b741aea9348118d3328c676f13be789fa7`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:16.04` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:bc4278a1b0cf676fa4086508b9a49bcb3c9de62a735674498185155772453379
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38124172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26fb70d5df1d982559915a2c9b55033bacf80c1b68e63ea77a0531ab3178b164`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 12:00:11 GMT
ADD file:fb3893e6a441ccb24c47b6c4d2cf2fb8fa0798a6e02aa157172ea19fc24f2c8e in / 
# Fri, 13 Apr 2018 12:00:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 12:00:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:00:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 12:00:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 12:00:32 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:1f2b2864f608c58061772008a65c6f32da66763d2d17d0f1ba2a9dc01fb093ab`  
		Last Modified: Fri, 13 Apr 2018 12:03:04 GMT  
		Size: 38.1 MB (38121678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2ef4ebd8bc31f5df03710d06668e68b5f4367ba5161f6fd5b58da4158f77b7`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93eeb0733f5ff1845b120ab687f9303820f6791471af0da0ed3d49475fe8b41`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7c460f46dbbeda54f0c0885949f470a0e9544f26c21037af9f869845af364c`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135d2a3779525b1c8143d3506765ff9a7358851a62e7be18d20668db00a88f21`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:16.04` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:602d75d8f533472cd29b1e817d44d9f45c316f09618d02a5c86aa46de11eec50
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39221109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1651a80f92b04a050b7ff08ddd78436138989f47f5e16d31b42952501c95f41`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 09:04:57 GMT
ADD file:81451f665242c8a6b28b2dfe4726bf195a48defeed8a31c73cde9a137c6dbdf6 in / 
# Fri, 13 Apr 2018 09:04:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 09:05:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:05:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 09:05:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 09:05:05 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:cb6b68344db2c1c976785fde1a3db70b465328cb22e3a2c7b2ad5830b48bca10`  
		Last Modified: Fri, 13 Apr 2018 09:11:04 GMT  
		Size: 39.2 MB (39218620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525f6d0463851ac4813635bab2d79581b10cb2ed64fcdf97852bfd619c7d2db5`  
		Last Modified: Fri, 13 Apr 2018 09:10:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae087ad0db3911c0a2ab5b36dfae0eb1f8a92312cf2173aefc600a3ad59d8a52`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eebcaa2457d2587ab93c88f232d0b3fc458732e08d0b1df73f0f5331a6bac780`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9413926d20a900e8b0abcd52734e1027ad5e9e8ecd17469fbb4b7fd174fb523`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:16.04` - linux; 386

```console
$ docker pull ubuntu@sha256:047c0a861b58000dda8f94c1f354c88f1f8d185ff37331ab5cd262b6ee84da5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.3 MB (43281161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adfebeb0ac9194caaa37b52b84e6ff09b858f8daacf19ed46eced547284fc82d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 08 Mar 2018 04:36:38 GMT
ADD file:c67129d7ff70532c6e7bae71276572b8ad33a722f3a99a90f36e16a8f7e2f358 in / 
# Thu, 08 Mar 2018 04:36:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 08 Mar 2018 04:36:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 08 Mar 2018 04:36:41 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 08 Mar 2018 04:36:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 08 Mar 2018 04:36:43 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:43cff9ac2d349e82eb7142b7898ee0e1c500df1e98c86b4c4003dd77e1f08a19`  
		Last Modified: Mon, 05 Mar 2018 14:51:41 GMT  
		Size: 43.3 MB (43278706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25abb78436881fc7240d2683491eafe0dd654b06ff3b0854708c4e9614ee697`  
		Last Modified: Thu, 08 Mar 2018 05:31:52 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7355f8e4aeb7984f4f15617ec5a4f17836a7e32611436e351f45e9378b0a1f2f`  
		Last Modified: Thu, 08 Mar 2018 05:31:52 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea422b11e5e16a8977fc660f3eb8634c1c6f8a11c2852feac0220ab212ca75f7`  
		Last Modified: Thu, 08 Mar 2018 05:31:53 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4f1088e42dc3a044ba5a731e26154828d758ebdb710f4fa79e2a1869f8345b7`  
		Last Modified: Thu, 08 Mar 2018 05:31:52 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:16.04` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:7d5f0c10453a3d33c597dc71a171b7b1f66bf6f463c334b68521d6edd17a5f58
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45372778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10b52ecfd0b38486fb36ce7b0f8b5fe7fe8cdb1cb2bc96f29ec4d48e3fa11b7c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 07 Mar 2018 03:42:20 GMT
ADD file:4ef9de52677adcdeef035215e1a5d7e4be4f21ff43f32e729cbda321b19eb41a in / 
# Wed, 07 Mar 2018 03:42:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 03:42:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 03:42:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 03:42:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 03:42:37 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d2081f6d30078f08bc14fa8f4ecae796f33fc3eef73c3ecb4569c9c72483ceb4`  
		Last Modified: Wed, 07 Mar 2018 03:44:48 GMT  
		Size: 45.4 MB (45370254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e0b7b79b9819de696c49e6a5340a1c6855f63594f0a4ab4f110c1e777b78031`  
		Last Modified: Wed, 07 Mar 2018 03:44:36 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9129e3a4ef8ba31c6c43561a0fc1b0d83da1405bb2ada2970a6dfbb6713f0c24`  
		Last Modified: Wed, 07 Mar 2018 03:44:36 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138a881ad53304753c07c7a5eb3a78432b387c6a79564b58974e62703af2bbf8`  
		Last Modified: Wed, 07 Mar 2018 03:44:40 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2879d728317e4d31ee80537a0a174de5d6ef7c4897a6ae6f4ada0273b1b78d6`  
		Last Modified: Wed, 07 Mar 2018 03:44:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:16.04` - linux; s390x

```console
$ docker pull ubuntu@sha256:305a2be72393dc27e6696164c8a1006afd282ea1ca261fcaa9d258a9c2c8cc20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42089466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d10036a069ef63a656bbb314e2abcb5511b6ca7088d768cee6f68e797ef1fd9d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 12:00:37 GMT
ADD file:267bade06e21f4da617dbdfb7d865d1ae457c377d5c0371a040acfd822e4bf70 in / 
# Fri, 13 Apr 2018 12:00:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 12:00:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:00:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 12:00:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 12:00:40 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:abc96355933bb2323ea723ca02a7cc1e3174ac67c75ee385f625868bf29bf280`  
		Last Modified: Fri, 13 Apr 2018 12:01:59 GMT  
		Size: 42.1 MB (42086981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b922c1085ea26ea9dadf76648fc7eb2e03b89192bb48c16326e615a4f4e347`  
		Last Modified: Fri, 13 Apr 2018 12:01:52 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6864a2c357402126daa233f6cddc3ee7ce99be4831e99dcc3650d87c35216571`  
		Last Modified: Fri, 13 Apr 2018 12:01:52 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da2a28f1966a2d48d23fef2c2b6e1a9ef8bc8b7399d5b033936c39fb7724f7c`  
		Last Modified: Fri, 13 Apr 2018 12:01:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e317a797e9f44610a21b839bcb58b50acb2d427eb7a4a01129089d9db336c4f9`  
		Last Modified: Fri, 13 Apr 2018 12:01:52 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:17.10`

```console
$ docker pull ubuntu@sha256:1a2ccabb893b2b1f43e8cadd1035a50681c83264cffe1c12e3707fffc5644355
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:17.10` - linux; amd64

```console
$ docker pull ubuntu@sha256:98d644100e6c9dc988a9b044f3e88055c6dd855ad4a169f6686f9053eb485fd3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40509078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14107f6d2c97745cdaca15c282a5a8f3ade0cf78aaf707785ae9c3e33d778bb1`
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

### `ubuntu:17.10` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:83f1c103e72c9dbac07e8979dfd26e1425dd50c6f811f9454c4081a336f350c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.1 MB (36063258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc372ef13ea7491f94c1d1f4e2222d6bc296575c90cd3f379557f0b785651790`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 11:58:17 GMT
ADD file:26367a94d8cc4f7fa0e02116faaae9edc886aa9da56c2802f71f48d08ae75e8b in / 
# Fri, 13 Apr 2018 11:58:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 11:58:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 11:58:21 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 11:58:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 11:58:22 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d4054238eed5290c6f57cd471b902eaaf3bd27d19fb0b8a6a8c39cb034ff6a70`  
		Last Modified: Fri, 13 Apr 2018 12:01:00 GMT  
		Size: 36.1 MB (36060770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c5b27bb3651d84dc8e413439d8de989508647ffb94255ec4e354ea9c5cf5dae`  
		Last Modified: Fri, 13 Apr 2018 12:00:50 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44ac846d3efab223e091ca18483622b84c8c032966d3c35737a5e7b32a6577d`  
		Last Modified: Fri, 13 Apr 2018 12:00:50 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf80291c4b9df80e3fdda623f12baebe6740d1ddb1351d712bac17ecd237f13d`  
		Last Modified: Fri, 13 Apr 2018 12:00:49 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85c2d4190a7dbdb234e6f7229504e16b20b7ccf6de1505364a68f92e5522786`  
		Last Modified: Fri, 13 Apr 2018 12:00:50 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:17.10` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:655d9de0d4672ddf997b0d25eb8d9da4c1bfe40cf4b06ea2d30fb63b01e2e44c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37386942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b4b1fe84288df6a43dd0bcf3f647441548046e701632594546f31e19d49490b`
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

### `ubuntu:17.10` - linux; 386

```console
$ docker pull ubuntu@sha256:890e96e274fc1a4f8186b472945e5d60a422a7589330abb971990e186596de6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41146819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1784cfe1125843f6714c3cc115e76c519b5c7ca12a6e65fd63e5b79e586ca67`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 08 Mar 2018 03:37:14 GMT
ADD file:21ae54b42598bdc4e53f9cc31f21c838a3febc013ec82f7fa2bde60715358ed6 in / 
# Thu, 08 Mar 2018 03:37:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 08 Mar 2018 03:37:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 08 Mar 2018 03:37:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 08 Mar 2018 03:37:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 08 Mar 2018 03:37:20 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:6f4f8c7764e3b9bf54c0b80551001c22563ee6c352468283d261aee662ce8507`  
		Last Modified: Wed, 28 Feb 2018 15:20:04 GMT  
		Size: 41.1 MB (41144382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f328fe89f835d015452de62e5952c5463c19b8aec1b32b86a50c9331b2d79256`  
		Last Modified: Thu, 08 Mar 2018 04:50:09 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce90b2869033e50b1e52f3e07387c198342a98b9e2766946037a2d5d46c9985`  
		Last Modified: Thu, 08 Mar 2018 04:50:09 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:564c6fdc53601ac6fc3c81c545e12adb0d3119e204d13351fecba8217713c2ab`  
		Last Modified: Thu, 08 Mar 2018 04:50:09 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cce0c6dcf704eae01c9678d8e09c763b09a4e201b681976f95e05864be67638`  
		Last Modified: Thu, 08 Mar 2018 04:50:09 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:17.10` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:ff23ea968692e3341a26bb4fc075443e8aec3ef0fab5f20413fcfddd7519d152
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43682885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cff2feb090f4933908f706403b7d582fb5946582b68b4c820cc130709092560b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 08:23:13 GMT
ADD file:d29bb9aedf378810e61b9db06424c2272ea4b2a71797d7ceac0e353db87c1971 in / 
# Fri, 13 Apr 2018 08:23:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 08:23:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 08:23:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 08:23:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 08:23:22 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:7dd77484eb4b4e95b70f67c3c90e54b48423f847a2efaad6f8afc2e23922eb99`  
		Last Modified: Fri, 13 Apr 2018 08:27:03 GMT  
		Size: 43.7 MB (43680422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad66166723e2b91ee02a5d33723194b466f5b603754c1e6ff18731e61507727d`  
		Last Modified: Fri, 13 Apr 2018 08:26:51 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7148c12bb6969b81f29e33f67e451a5fae3b600fe7d5ab80185e85df3d694963`  
		Last Modified: Fri, 13 Apr 2018 08:26:52 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725bf6293c5b878de4389501dc8529834e26f2ed0386e94494deef50e29bf996`  
		Last Modified: Fri, 13 Apr 2018 08:26:51 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c8343e1b9da0b6a22212ce7e03821be0a5c7635be07479cee044691a5963b70`  
		Last Modified: Fri, 13 Apr 2018 08:26:51 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:17.10` - linux; s390x

```console
$ docker pull ubuntu@sha256:c59ff0eaa2a46bebb29e08439ca69fbb12c09c8fb884cf66bf0c46100d0bc8f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39149557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bb3298345aef79d842e1d4834762a1175120bc608e69ee85c15889ea1544f72`
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

## `ubuntu:18.04`

```console
$ docker pull ubuntu@sha256:d4521533743ef32a0517d67d78e324c17ae62648da2861cbcad6e0f85963bf93
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
$ docker pull ubuntu@sha256:bb1ed43b34cc59ace7af5f0d92139c72082db33c8a03a6372397338a26a48e1f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30698923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58c12a55082abff62208ae79c6e848e28f4b9be340a6fd9d24aae64787e73f42`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 12 Apr 2018 18:35:22 GMT
ADD file:8ea3d3659b2327b95fc6f8cb229245bcea4b44e77510f165c313659e6f0e6fd5 in / 
# Thu, 12 Apr 2018 18:35:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:35:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:35:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:35:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:35:25 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:c448d9b1e62fac680864f7063fd32e1712e6bb9845df446d8e61243498a1d3b5`  
		Last Modified: Thu, 12 Apr 2018 19:21:09 GMT  
		Size: 30.7 MB (30696655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0277fe36251d91645bc4bc6f0752e6b79f883c3c00d856c3d465a48eeb30f370`  
		Last Modified: Thu, 12 Apr 2018 19:21:02 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6591defe1cd92783337ed7d0f107c61139f5f656c7dbc6084ff1a5cd3a6bad54`  
		Last Modified: Thu, 12 Apr 2018 19:21:02 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c321da2a3ae45deda6730d5adcf7a7fe31db03d3cff5c657ef11ba69cb01f02`  
		Last Modified: Thu, 12 Apr 2018 19:21:03 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d8a7c0ac3cea69a3bf6c23bd2db7f2d1ded30b3736bca4e114630645a74683`  
		Last Modified: Thu, 12 Apr 2018 19:21:02 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:18.04` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:0e3e4a23152a17a173d2f57fa86700239493e7dcc4b9c5e8bc8a93901d9f81bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.3 MB (26265279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c796d6c3d69d49556b336316f9610cc973ff5eac38fd7446dc333be116a3cdb4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 11:58:40 GMT
ADD file:3863878f56ad2a4858369eaa800955aa4284e3fbf5e18ad45275f5acbb995c59 in / 
# Fri, 13 Apr 2018 11:58:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 11:58:43 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 11:58:44 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 11:58:45 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 11:58:45 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:c9723c8fb76b3e5e63d109746699503c82a03745d0db1e1fbcf74487a2af72de`  
		Last Modified: Fri, 13 Apr 2018 12:01:43 GMT  
		Size: 26.3 MB (26262988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fbc1d7c870a6dd5dea7f0dc6cc936db897a788d3ae80f7019cd475e127df580`  
		Last Modified: Fri, 13 Apr 2018 12:01:35 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa148740a3bcd8cafaf42a54bf1e9d1656be6ab700e0875a30f7c778a52f1d1c`  
		Last Modified: Fri, 13 Apr 2018 12:01:35 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859bba15a7ec1ca7c25ff8b0d92dd20db1a831d2cc319175fd187226e1e776f7`  
		Last Modified: Fri, 13 Apr 2018 12:01:35 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794a43972298ed7f825b48ce612532ebaca53b24a4878850cf5961bded591f78`  
		Last Modified: Fri, 13 Apr 2018 12:01:34 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:18.04` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:cd8486a23f215e8fa278391ead5f4a4c69b384e3be5567c9abeba492ca670604
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27665274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82874f891aa0938bf8b7ee6305f1f884552b44ef4cca2e675b45f8568f55b67d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 09:02:44 GMT
ADD file:fb41f052ca697d090b47a5d5611d7295a28bb57888c3dc9ac743bc21f251e8c9 in / 
# Fri, 13 Apr 2018 09:02:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 09:02:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:02:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 09:02:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 09:02:52 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:03699202315231f25cffe272e4754a4b50de722d642d281d204cfa25809d12c1`  
		Last Modified: Fri, 13 Apr 2018 09:07:38 GMT  
		Size: 27.7 MB (27663005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed9a934a098f92ffe03ff865e089382bd3d1a6603a66e1ba614e336c074741f`  
		Last Modified: Fri, 13 Apr 2018 09:07:27 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52aaacd9b9f122018430beb6470ff23f508ccce2e19ca6399f0bf68585402f41`  
		Last Modified: Fri, 13 Apr 2018 09:07:27 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82ed990d6a19db5a4bbfd13160f9657f85affa2eb72c76319211acb3fc0b4df`  
		Last Modified: Fri, 13 Apr 2018 09:07:27 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51e04ccd22359e90d67bde92a59c51b32f5ce4ba2d438efcb69662eda3e6dfd`  
		Last Modified: Fri, 13 Apr 2018 09:07:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:18.04` - linux; 386

```console
$ docker pull ubuntu@sha256:2ed10e1c2bb5c5d1bf3cb16d3062449f0390b9eb52a4f2c8006b8f595869d14e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 MB (35894697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebac4dbcbe601838ac03f0ae61ae7c1f08b6bf4916d4275cfb024ee9cf808956`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 08 Mar 2018 03:55:00 GMT
ADD file:8282136f5dd3d107181527be6243aa0422d1f5797d76b9dc6b4a0535c0bf781f in / 
# Thu, 08 Mar 2018 03:55:01 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 08 Mar 2018 03:55:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 08 Mar 2018 03:55:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 08 Mar 2018 03:55:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 08 Mar 2018 03:55:04 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:68c038c15d304c9e1aaff039d3ca36770d889582108aeae54e4a28e66258d706`  
		Last Modified: Mon, 26 Feb 2018 14:45:52 GMT  
		Size: 35.9 MB (35892425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55613e36b8b6396da57b246baa29f0f9e9bf2f07e7c1558320f952b3e4b7fe68`  
		Last Modified: Thu, 08 Mar 2018 05:04:13 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fac81ee2875abb3fb4761616c54dd4a81962e766fa3ada7786a51d0f7037b1`  
		Last Modified: Thu, 08 Mar 2018 05:04:13 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b24bee7315d3d32b062a05d357e3c01a1bbeb262050af57430236238191c2a`  
		Last Modified: Thu, 08 Mar 2018 05:04:14 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4fb99389d5f276de2b65c753d1a43d771920f78f812561021583c87c860918c`  
		Last Modified: Thu, 08 Mar 2018 05:04:14 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:18.04` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:cbc7466a7835a35d7da46f0941a07e160fffb8d1c0e94d0b440d1d23785de7ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34139930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b0298fb1f4a584aeb8d83aa7baecd2e796b60fab0685963290a9df0fcd7d16e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 08:23:54 GMT
ADD file:9957336e45a98f5788b033e8bea371b339330a23a7f01b0e8fd313619d92294c in / 
# Fri, 13 Apr 2018 08:23:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 08:23:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 08:24:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 08:24:08 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 08:24:08 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:851aa21fba2222dd4cd1f060219dace84790db948168ee070bde21618d410315`  
		Last Modified: Fri, 13 Apr 2018 08:27:51 GMT  
		Size: 34.1 MB (34137641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7647b7cbb93cf05dac64f8346acd6355532167c14535035211c2b459c14de8bc`  
		Last Modified: Fri, 13 Apr 2018 08:27:42 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac5dc1b6c6c60d3b74ed38b15592e515849b2813da14baf101af39e5c838193`  
		Last Modified: Fri, 13 Apr 2018 08:27:42 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27775f31a024796d3acb491a0ab82f0938a0cb2ab2cede896c4b560728a33920`  
		Last Modified: Fri, 13 Apr 2018 08:27:42 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd40ed2808fc6c2ac8927e9a5402187a763d151c09b1e02385cb0859aef60faf`  
		Last Modified: Fri, 13 Apr 2018 08:27:42 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:18.04` - linux; s390x

```console
$ docker pull ubuntu@sha256:40063d04a35c8a08fd54b1cdd7f8bd0eca4cc79d3425112f3756f7b911ce960d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29265296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b5637e60a28158bf2fd002027beb690867887274286bf2ecb1bf9b560b7bb39`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 12:00:21 GMT
ADD file:f597080ba6c19b2233650e5c5c8d4d20604ec0b09cb14033ebb788dc09953c9b in / 
# Fri, 13 Apr 2018 12:00:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 12:00:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:00:23 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 12:00:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 12:00:24 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:bf7b53fabf455e22fa81faf7711b1d58afa9e9ce661e102719bb3dc9f8311220`  
		Last Modified: Fri, 13 Apr 2018 12:01:29 GMT  
		Size: 29.3 MB (29263031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6321a64e05e864b766aa0f746329e35a7e6e86b73d0d2a227c62dda9040ab6b4`  
		Last Modified: Fri, 13 Apr 2018 12:01:24 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7054c84f5de79d7af73e46b613fdc1303ca336e3cde4980e1c3a586bd8861a`  
		Last Modified: Fri, 13 Apr 2018 12:01:24 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37e4145b425874daa0feffa480f5f7051a33577c3f432e04168dee3455c9360`  
		Last Modified: Fri, 13 Apr 2018 12:01:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce6dea188869f9f0775436296f6d46b95ce766fa30c9fe3bcb142fe30961b1fb`  
		Last Modified: Fri, 13 Apr 2018 12:01:24 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:artful`

```console
$ docker pull ubuntu@sha256:1a2ccabb893b2b1f43e8cadd1035a50681c83264cffe1c12e3707fffc5644355
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
$ docker pull ubuntu@sha256:98d644100e6c9dc988a9b044f3e88055c6dd855ad4a169f6686f9053eb485fd3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40509078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14107f6d2c97745cdaca15c282a5a8f3ade0cf78aaf707785ae9c3e33d778bb1`
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

### `ubuntu:artful` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:83f1c103e72c9dbac07e8979dfd26e1425dd50c6f811f9454c4081a336f350c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.1 MB (36063258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc372ef13ea7491f94c1d1f4e2222d6bc296575c90cd3f379557f0b785651790`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 11:58:17 GMT
ADD file:26367a94d8cc4f7fa0e02116faaae9edc886aa9da56c2802f71f48d08ae75e8b in / 
# Fri, 13 Apr 2018 11:58:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 11:58:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 11:58:21 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 11:58:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 11:58:22 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d4054238eed5290c6f57cd471b902eaaf3bd27d19fb0b8a6a8c39cb034ff6a70`  
		Last Modified: Fri, 13 Apr 2018 12:01:00 GMT  
		Size: 36.1 MB (36060770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c5b27bb3651d84dc8e413439d8de989508647ffb94255ec4e354ea9c5cf5dae`  
		Last Modified: Fri, 13 Apr 2018 12:00:50 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44ac846d3efab223e091ca18483622b84c8c032966d3c35737a5e7b32a6577d`  
		Last Modified: Fri, 13 Apr 2018 12:00:50 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf80291c4b9df80e3fdda623f12baebe6740d1ddb1351d712bac17ecd237f13d`  
		Last Modified: Fri, 13 Apr 2018 12:00:49 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85c2d4190a7dbdb234e6f7229504e16b20b7ccf6de1505364a68f92e5522786`  
		Last Modified: Fri, 13 Apr 2018 12:00:50 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:artful` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:655d9de0d4672ddf997b0d25eb8d9da4c1bfe40cf4b06ea2d30fb63b01e2e44c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37386942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b4b1fe84288df6a43dd0bcf3f647441548046e701632594546f31e19d49490b`
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

### `ubuntu:artful` - linux; 386

```console
$ docker pull ubuntu@sha256:890e96e274fc1a4f8186b472945e5d60a422a7589330abb971990e186596de6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41146819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1784cfe1125843f6714c3cc115e76c519b5c7ca12a6e65fd63e5b79e586ca67`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 08 Mar 2018 03:37:14 GMT
ADD file:21ae54b42598bdc4e53f9cc31f21c838a3febc013ec82f7fa2bde60715358ed6 in / 
# Thu, 08 Mar 2018 03:37:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 08 Mar 2018 03:37:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 08 Mar 2018 03:37:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 08 Mar 2018 03:37:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 08 Mar 2018 03:37:20 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:6f4f8c7764e3b9bf54c0b80551001c22563ee6c352468283d261aee662ce8507`  
		Last Modified: Wed, 28 Feb 2018 15:20:04 GMT  
		Size: 41.1 MB (41144382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f328fe89f835d015452de62e5952c5463c19b8aec1b32b86a50c9331b2d79256`  
		Last Modified: Thu, 08 Mar 2018 04:50:09 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce90b2869033e50b1e52f3e07387c198342a98b9e2766946037a2d5d46c9985`  
		Last Modified: Thu, 08 Mar 2018 04:50:09 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:564c6fdc53601ac6fc3c81c545e12adb0d3119e204d13351fecba8217713c2ab`  
		Last Modified: Thu, 08 Mar 2018 04:50:09 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cce0c6dcf704eae01c9678d8e09c763b09a4e201b681976f95e05864be67638`  
		Last Modified: Thu, 08 Mar 2018 04:50:09 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:artful` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:ff23ea968692e3341a26bb4fc075443e8aec3ef0fab5f20413fcfddd7519d152
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43682885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cff2feb090f4933908f706403b7d582fb5946582b68b4c820cc130709092560b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 08:23:13 GMT
ADD file:d29bb9aedf378810e61b9db06424c2272ea4b2a71797d7ceac0e353db87c1971 in / 
# Fri, 13 Apr 2018 08:23:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 08:23:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 08:23:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 08:23:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 08:23:22 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:7dd77484eb4b4e95b70f67c3c90e54b48423f847a2efaad6f8afc2e23922eb99`  
		Last Modified: Fri, 13 Apr 2018 08:27:03 GMT  
		Size: 43.7 MB (43680422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad66166723e2b91ee02a5d33723194b466f5b603754c1e6ff18731e61507727d`  
		Last Modified: Fri, 13 Apr 2018 08:26:51 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7148c12bb6969b81f29e33f67e451a5fae3b600fe7d5ab80185e85df3d694963`  
		Last Modified: Fri, 13 Apr 2018 08:26:52 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725bf6293c5b878de4389501dc8529834e26f2ed0386e94494deef50e29bf996`  
		Last Modified: Fri, 13 Apr 2018 08:26:51 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c8343e1b9da0b6a22212ce7e03821be0a5c7635be07479cee044691a5963b70`  
		Last Modified: Fri, 13 Apr 2018 08:26:51 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:artful` - linux; s390x

```console
$ docker pull ubuntu@sha256:c59ff0eaa2a46bebb29e08439ca69fbb12c09c8fb884cf66bf0c46100d0bc8f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39149557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bb3298345aef79d842e1d4834762a1175120bc608e69ee85c15889ea1544f72`
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

## `ubuntu:artful-20180412`

```console
$ docker pull ubuntu@sha256:1a2ccabb893b2b1f43e8cadd1035a50681c83264cffe1c12e3707fffc5644355
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:artful-20180412` - linux; amd64

```console
$ docker pull ubuntu@sha256:98d644100e6c9dc988a9b044f3e88055c6dd855ad4a169f6686f9053eb485fd3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40509078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14107f6d2c97745cdaca15c282a5a8f3ade0cf78aaf707785ae9c3e33d778bb1`
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

### `ubuntu:artful-20180412` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:83f1c103e72c9dbac07e8979dfd26e1425dd50c6f811f9454c4081a336f350c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.1 MB (36063258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc372ef13ea7491f94c1d1f4e2222d6bc296575c90cd3f379557f0b785651790`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 11:58:17 GMT
ADD file:26367a94d8cc4f7fa0e02116faaae9edc886aa9da56c2802f71f48d08ae75e8b in / 
# Fri, 13 Apr 2018 11:58:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 11:58:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 11:58:21 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 11:58:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 11:58:22 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d4054238eed5290c6f57cd471b902eaaf3bd27d19fb0b8a6a8c39cb034ff6a70`  
		Last Modified: Fri, 13 Apr 2018 12:01:00 GMT  
		Size: 36.1 MB (36060770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c5b27bb3651d84dc8e413439d8de989508647ffb94255ec4e354ea9c5cf5dae`  
		Last Modified: Fri, 13 Apr 2018 12:00:50 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44ac846d3efab223e091ca18483622b84c8c032966d3c35737a5e7b32a6577d`  
		Last Modified: Fri, 13 Apr 2018 12:00:50 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf80291c4b9df80e3fdda623f12baebe6740d1ddb1351d712bac17ecd237f13d`  
		Last Modified: Fri, 13 Apr 2018 12:00:49 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85c2d4190a7dbdb234e6f7229504e16b20b7ccf6de1505364a68f92e5522786`  
		Last Modified: Fri, 13 Apr 2018 12:00:50 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:artful-20180412` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:655d9de0d4672ddf997b0d25eb8d9da4c1bfe40cf4b06ea2d30fb63b01e2e44c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37386942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b4b1fe84288df6a43dd0bcf3f647441548046e701632594546f31e19d49490b`
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

### `ubuntu:artful-20180412` - linux; 386

```console
$ docker pull ubuntu@sha256:890e96e274fc1a4f8186b472945e5d60a422a7589330abb971990e186596de6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41146819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1784cfe1125843f6714c3cc115e76c519b5c7ca12a6e65fd63e5b79e586ca67`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 08 Mar 2018 03:37:14 GMT
ADD file:21ae54b42598bdc4e53f9cc31f21c838a3febc013ec82f7fa2bde60715358ed6 in / 
# Thu, 08 Mar 2018 03:37:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 08 Mar 2018 03:37:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 08 Mar 2018 03:37:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 08 Mar 2018 03:37:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 08 Mar 2018 03:37:20 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:6f4f8c7764e3b9bf54c0b80551001c22563ee6c352468283d261aee662ce8507`  
		Last Modified: Wed, 28 Feb 2018 15:20:04 GMT  
		Size: 41.1 MB (41144382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f328fe89f835d015452de62e5952c5463c19b8aec1b32b86a50c9331b2d79256`  
		Last Modified: Thu, 08 Mar 2018 04:50:09 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce90b2869033e50b1e52f3e07387c198342a98b9e2766946037a2d5d46c9985`  
		Last Modified: Thu, 08 Mar 2018 04:50:09 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:564c6fdc53601ac6fc3c81c545e12adb0d3119e204d13351fecba8217713c2ab`  
		Last Modified: Thu, 08 Mar 2018 04:50:09 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cce0c6dcf704eae01c9678d8e09c763b09a4e201b681976f95e05864be67638`  
		Last Modified: Thu, 08 Mar 2018 04:50:09 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:artful-20180412` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:ff23ea968692e3341a26bb4fc075443e8aec3ef0fab5f20413fcfddd7519d152
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43682885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cff2feb090f4933908f706403b7d582fb5946582b68b4c820cc130709092560b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 08:23:13 GMT
ADD file:d29bb9aedf378810e61b9db06424c2272ea4b2a71797d7ceac0e353db87c1971 in / 
# Fri, 13 Apr 2018 08:23:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 08:23:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 08:23:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 08:23:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 08:23:22 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:7dd77484eb4b4e95b70f67c3c90e54b48423f847a2efaad6f8afc2e23922eb99`  
		Last Modified: Fri, 13 Apr 2018 08:27:03 GMT  
		Size: 43.7 MB (43680422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad66166723e2b91ee02a5d33723194b466f5b603754c1e6ff18731e61507727d`  
		Last Modified: Fri, 13 Apr 2018 08:26:51 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7148c12bb6969b81f29e33f67e451a5fae3b600fe7d5ab80185e85df3d694963`  
		Last Modified: Fri, 13 Apr 2018 08:26:52 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725bf6293c5b878de4389501dc8529834e26f2ed0386e94494deef50e29bf996`  
		Last Modified: Fri, 13 Apr 2018 08:26:51 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c8343e1b9da0b6a22212ce7e03821be0a5c7635be07479cee044691a5963b70`  
		Last Modified: Fri, 13 Apr 2018 08:26:51 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:artful-20180412` - linux; s390x

```console
$ docker pull ubuntu@sha256:c59ff0eaa2a46bebb29e08439ca69fbb12c09c8fb884cf66bf0c46100d0bc8f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39149557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bb3298345aef79d842e1d4834762a1175120bc608e69ee85c15889ea1544f72`
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

## `ubuntu:bionic`

```console
$ docker pull ubuntu@sha256:d4521533743ef32a0517d67d78e324c17ae62648da2861cbcad6e0f85963bf93
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
$ docker pull ubuntu@sha256:bb1ed43b34cc59ace7af5f0d92139c72082db33c8a03a6372397338a26a48e1f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30698923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58c12a55082abff62208ae79c6e848e28f4b9be340a6fd9d24aae64787e73f42`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 12 Apr 2018 18:35:22 GMT
ADD file:8ea3d3659b2327b95fc6f8cb229245bcea4b44e77510f165c313659e6f0e6fd5 in / 
# Thu, 12 Apr 2018 18:35:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:35:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:35:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:35:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:35:25 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:c448d9b1e62fac680864f7063fd32e1712e6bb9845df446d8e61243498a1d3b5`  
		Last Modified: Thu, 12 Apr 2018 19:21:09 GMT  
		Size: 30.7 MB (30696655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0277fe36251d91645bc4bc6f0752e6b79f883c3c00d856c3d465a48eeb30f370`  
		Last Modified: Thu, 12 Apr 2018 19:21:02 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6591defe1cd92783337ed7d0f107c61139f5f656c7dbc6084ff1a5cd3a6bad54`  
		Last Modified: Thu, 12 Apr 2018 19:21:02 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c321da2a3ae45deda6730d5adcf7a7fe31db03d3cff5c657ef11ba69cb01f02`  
		Last Modified: Thu, 12 Apr 2018 19:21:03 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d8a7c0ac3cea69a3bf6c23bd2db7f2d1ded30b3736bca4e114630645a74683`  
		Last Modified: Thu, 12 Apr 2018 19:21:02 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:0e3e4a23152a17a173d2f57fa86700239493e7dcc4b9c5e8bc8a93901d9f81bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.3 MB (26265279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c796d6c3d69d49556b336316f9610cc973ff5eac38fd7446dc333be116a3cdb4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 11:58:40 GMT
ADD file:3863878f56ad2a4858369eaa800955aa4284e3fbf5e18ad45275f5acbb995c59 in / 
# Fri, 13 Apr 2018 11:58:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 11:58:43 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 11:58:44 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 11:58:45 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 11:58:45 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:c9723c8fb76b3e5e63d109746699503c82a03745d0db1e1fbcf74487a2af72de`  
		Last Modified: Fri, 13 Apr 2018 12:01:43 GMT  
		Size: 26.3 MB (26262988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fbc1d7c870a6dd5dea7f0dc6cc936db897a788d3ae80f7019cd475e127df580`  
		Last Modified: Fri, 13 Apr 2018 12:01:35 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa148740a3bcd8cafaf42a54bf1e9d1656be6ab700e0875a30f7c778a52f1d1c`  
		Last Modified: Fri, 13 Apr 2018 12:01:35 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859bba15a7ec1ca7c25ff8b0d92dd20db1a831d2cc319175fd187226e1e776f7`  
		Last Modified: Fri, 13 Apr 2018 12:01:35 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794a43972298ed7f825b48ce612532ebaca53b24a4878850cf5961bded591f78`  
		Last Modified: Fri, 13 Apr 2018 12:01:34 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:cd8486a23f215e8fa278391ead5f4a4c69b384e3be5567c9abeba492ca670604
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27665274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82874f891aa0938bf8b7ee6305f1f884552b44ef4cca2e675b45f8568f55b67d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 09:02:44 GMT
ADD file:fb41f052ca697d090b47a5d5611d7295a28bb57888c3dc9ac743bc21f251e8c9 in / 
# Fri, 13 Apr 2018 09:02:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 09:02:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:02:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 09:02:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 09:02:52 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:03699202315231f25cffe272e4754a4b50de722d642d281d204cfa25809d12c1`  
		Last Modified: Fri, 13 Apr 2018 09:07:38 GMT  
		Size: 27.7 MB (27663005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed9a934a098f92ffe03ff865e089382bd3d1a6603a66e1ba614e336c074741f`  
		Last Modified: Fri, 13 Apr 2018 09:07:27 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52aaacd9b9f122018430beb6470ff23f508ccce2e19ca6399f0bf68585402f41`  
		Last Modified: Fri, 13 Apr 2018 09:07:27 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82ed990d6a19db5a4bbfd13160f9657f85affa2eb72c76319211acb3fc0b4df`  
		Last Modified: Fri, 13 Apr 2018 09:07:27 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51e04ccd22359e90d67bde92a59c51b32f5ce4ba2d438efcb69662eda3e6dfd`  
		Last Modified: Fri, 13 Apr 2018 09:07:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic` - linux; 386

```console
$ docker pull ubuntu@sha256:2ed10e1c2bb5c5d1bf3cb16d3062449f0390b9eb52a4f2c8006b8f595869d14e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 MB (35894697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebac4dbcbe601838ac03f0ae61ae7c1f08b6bf4916d4275cfb024ee9cf808956`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 08 Mar 2018 03:55:00 GMT
ADD file:8282136f5dd3d107181527be6243aa0422d1f5797d76b9dc6b4a0535c0bf781f in / 
# Thu, 08 Mar 2018 03:55:01 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 08 Mar 2018 03:55:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 08 Mar 2018 03:55:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 08 Mar 2018 03:55:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 08 Mar 2018 03:55:04 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:68c038c15d304c9e1aaff039d3ca36770d889582108aeae54e4a28e66258d706`  
		Last Modified: Mon, 26 Feb 2018 14:45:52 GMT  
		Size: 35.9 MB (35892425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55613e36b8b6396da57b246baa29f0f9e9bf2f07e7c1558320f952b3e4b7fe68`  
		Last Modified: Thu, 08 Mar 2018 05:04:13 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fac81ee2875abb3fb4761616c54dd4a81962e766fa3ada7786a51d0f7037b1`  
		Last Modified: Thu, 08 Mar 2018 05:04:13 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b24bee7315d3d32b062a05d357e3c01a1bbeb262050af57430236238191c2a`  
		Last Modified: Thu, 08 Mar 2018 05:04:14 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4fb99389d5f276de2b65c753d1a43d771920f78f812561021583c87c860918c`  
		Last Modified: Thu, 08 Mar 2018 05:04:14 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:cbc7466a7835a35d7da46f0941a07e160fffb8d1c0e94d0b440d1d23785de7ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34139930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b0298fb1f4a584aeb8d83aa7baecd2e796b60fab0685963290a9df0fcd7d16e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 08:23:54 GMT
ADD file:9957336e45a98f5788b033e8bea371b339330a23a7f01b0e8fd313619d92294c in / 
# Fri, 13 Apr 2018 08:23:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 08:23:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 08:24:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 08:24:08 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 08:24:08 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:851aa21fba2222dd4cd1f060219dace84790db948168ee070bde21618d410315`  
		Last Modified: Fri, 13 Apr 2018 08:27:51 GMT  
		Size: 34.1 MB (34137641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7647b7cbb93cf05dac64f8346acd6355532167c14535035211c2b459c14de8bc`  
		Last Modified: Fri, 13 Apr 2018 08:27:42 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac5dc1b6c6c60d3b74ed38b15592e515849b2813da14baf101af39e5c838193`  
		Last Modified: Fri, 13 Apr 2018 08:27:42 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27775f31a024796d3acb491a0ab82f0938a0cb2ab2cede896c4b560728a33920`  
		Last Modified: Fri, 13 Apr 2018 08:27:42 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd40ed2808fc6c2ac8927e9a5402187a763d151c09b1e02385cb0859aef60faf`  
		Last Modified: Fri, 13 Apr 2018 08:27:42 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic` - linux; s390x

```console
$ docker pull ubuntu@sha256:40063d04a35c8a08fd54b1cdd7f8bd0eca4cc79d3425112f3756f7b911ce960d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29265296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b5637e60a28158bf2fd002027beb690867887274286bf2ecb1bf9b560b7bb39`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 12:00:21 GMT
ADD file:f597080ba6c19b2233650e5c5c8d4d20604ec0b09cb14033ebb788dc09953c9b in / 
# Fri, 13 Apr 2018 12:00:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 12:00:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:00:23 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 12:00:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 12:00:24 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:bf7b53fabf455e22fa81faf7711b1d58afa9e9ce661e102719bb3dc9f8311220`  
		Last Modified: Fri, 13 Apr 2018 12:01:29 GMT  
		Size: 29.3 MB (29263031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6321a64e05e864b766aa0f746329e35a7e6e86b73d0d2a227c62dda9040ab6b4`  
		Last Modified: Fri, 13 Apr 2018 12:01:24 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7054c84f5de79d7af73e46b613fdc1303ca336e3cde4980e1c3a586bd8861a`  
		Last Modified: Fri, 13 Apr 2018 12:01:24 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37e4145b425874daa0feffa480f5f7051a33577c3f432e04168dee3455c9360`  
		Last Modified: Fri, 13 Apr 2018 12:01:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce6dea188869f9f0775436296f6d46b95ce766fa30c9fe3bcb142fe30961b1fb`  
		Last Modified: Fri, 13 Apr 2018 12:01:24 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:bionic-20180410`

```console
$ docker pull ubuntu@sha256:d4521533743ef32a0517d67d78e324c17ae62648da2861cbcad6e0f85963bf93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:bionic-20180410` - linux; amd64

```console
$ docker pull ubuntu@sha256:bb1ed43b34cc59ace7af5f0d92139c72082db33c8a03a6372397338a26a48e1f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30698923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58c12a55082abff62208ae79c6e848e28f4b9be340a6fd9d24aae64787e73f42`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 12 Apr 2018 18:35:22 GMT
ADD file:8ea3d3659b2327b95fc6f8cb229245bcea4b44e77510f165c313659e6f0e6fd5 in / 
# Thu, 12 Apr 2018 18:35:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:35:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:35:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:35:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:35:25 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:c448d9b1e62fac680864f7063fd32e1712e6bb9845df446d8e61243498a1d3b5`  
		Last Modified: Thu, 12 Apr 2018 19:21:09 GMT  
		Size: 30.7 MB (30696655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0277fe36251d91645bc4bc6f0752e6b79f883c3c00d856c3d465a48eeb30f370`  
		Last Modified: Thu, 12 Apr 2018 19:21:02 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6591defe1cd92783337ed7d0f107c61139f5f656c7dbc6084ff1a5cd3a6bad54`  
		Last Modified: Thu, 12 Apr 2018 19:21:02 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c321da2a3ae45deda6730d5adcf7a7fe31db03d3cff5c657ef11ba69cb01f02`  
		Last Modified: Thu, 12 Apr 2018 19:21:03 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d8a7c0ac3cea69a3bf6c23bd2db7f2d1ded30b3736bca4e114630645a74683`  
		Last Modified: Thu, 12 Apr 2018 19:21:02 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic-20180410` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:0e3e4a23152a17a173d2f57fa86700239493e7dcc4b9c5e8bc8a93901d9f81bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.3 MB (26265279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c796d6c3d69d49556b336316f9610cc973ff5eac38fd7446dc333be116a3cdb4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 11:58:40 GMT
ADD file:3863878f56ad2a4858369eaa800955aa4284e3fbf5e18ad45275f5acbb995c59 in / 
# Fri, 13 Apr 2018 11:58:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 11:58:43 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 11:58:44 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 11:58:45 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 11:58:45 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:c9723c8fb76b3e5e63d109746699503c82a03745d0db1e1fbcf74487a2af72de`  
		Last Modified: Fri, 13 Apr 2018 12:01:43 GMT  
		Size: 26.3 MB (26262988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fbc1d7c870a6dd5dea7f0dc6cc936db897a788d3ae80f7019cd475e127df580`  
		Last Modified: Fri, 13 Apr 2018 12:01:35 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa148740a3bcd8cafaf42a54bf1e9d1656be6ab700e0875a30f7c778a52f1d1c`  
		Last Modified: Fri, 13 Apr 2018 12:01:35 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859bba15a7ec1ca7c25ff8b0d92dd20db1a831d2cc319175fd187226e1e776f7`  
		Last Modified: Fri, 13 Apr 2018 12:01:35 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794a43972298ed7f825b48ce612532ebaca53b24a4878850cf5961bded591f78`  
		Last Modified: Fri, 13 Apr 2018 12:01:34 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic-20180410` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:cd8486a23f215e8fa278391ead5f4a4c69b384e3be5567c9abeba492ca670604
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27665274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82874f891aa0938bf8b7ee6305f1f884552b44ef4cca2e675b45f8568f55b67d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 09:02:44 GMT
ADD file:fb41f052ca697d090b47a5d5611d7295a28bb57888c3dc9ac743bc21f251e8c9 in / 
# Fri, 13 Apr 2018 09:02:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 09:02:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:02:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 09:02:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 09:02:52 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:03699202315231f25cffe272e4754a4b50de722d642d281d204cfa25809d12c1`  
		Last Modified: Fri, 13 Apr 2018 09:07:38 GMT  
		Size: 27.7 MB (27663005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed9a934a098f92ffe03ff865e089382bd3d1a6603a66e1ba614e336c074741f`  
		Last Modified: Fri, 13 Apr 2018 09:07:27 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52aaacd9b9f122018430beb6470ff23f508ccce2e19ca6399f0bf68585402f41`  
		Last Modified: Fri, 13 Apr 2018 09:07:27 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82ed990d6a19db5a4bbfd13160f9657f85affa2eb72c76319211acb3fc0b4df`  
		Last Modified: Fri, 13 Apr 2018 09:07:27 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51e04ccd22359e90d67bde92a59c51b32f5ce4ba2d438efcb69662eda3e6dfd`  
		Last Modified: Fri, 13 Apr 2018 09:07:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic-20180410` - linux; 386

```console
$ docker pull ubuntu@sha256:2ed10e1c2bb5c5d1bf3cb16d3062449f0390b9eb52a4f2c8006b8f595869d14e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 MB (35894697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebac4dbcbe601838ac03f0ae61ae7c1f08b6bf4916d4275cfb024ee9cf808956`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 08 Mar 2018 03:55:00 GMT
ADD file:8282136f5dd3d107181527be6243aa0422d1f5797d76b9dc6b4a0535c0bf781f in / 
# Thu, 08 Mar 2018 03:55:01 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 08 Mar 2018 03:55:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 08 Mar 2018 03:55:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 08 Mar 2018 03:55:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 08 Mar 2018 03:55:04 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:68c038c15d304c9e1aaff039d3ca36770d889582108aeae54e4a28e66258d706`  
		Last Modified: Mon, 26 Feb 2018 14:45:52 GMT  
		Size: 35.9 MB (35892425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55613e36b8b6396da57b246baa29f0f9e9bf2f07e7c1558320f952b3e4b7fe68`  
		Last Modified: Thu, 08 Mar 2018 05:04:13 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fac81ee2875abb3fb4761616c54dd4a81962e766fa3ada7786a51d0f7037b1`  
		Last Modified: Thu, 08 Mar 2018 05:04:13 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b24bee7315d3d32b062a05d357e3c01a1bbeb262050af57430236238191c2a`  
		Last Modified: Thu, 08 Mar 2018 05:04:14 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4fb99389d5f276de2b65c753d1a43d771920f78f812561021583c87c860918c`  
		Last Modified: Thu, 08 Mar 2018 05:04:14 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic-20180410` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:cbc7466a7835a35d7da46f0941a07e160fffb8d1c0e94d0b440d1d23785de7ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34139930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b0298fb1f4a584aeb8d83aa7baecd2e796b60fab0685963290a9df0fcd7d16e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 08:23:54 GMT
ADD file:9957336e45a98f5788b033e8bea371b339330a23a7f01b0e8fd313619d92294c in / 
# Fri, 13 Apr 2018 08:23:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 08:23:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 08:24:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 08:24:08 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 08:24:08 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:851aa21fba2222dd4cd1f060219dace84790db948168ee070bde21618d410315`  
		Last Modified: Fri, 13 Apr 2018 08:27:51 GMT  
		Size: 34.1 MB (34137641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7647b7cbb93cf05dac64f8346acd6355532167c14535035211c2b459c14de8bc`  
		Last Modified: Fri, 13 Apr 2018 08:27:42 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac5dc1b6c6c60d3b74ed38b15592e515849b2813da14baf101af39e5c838193`  
		Last Modified: Fri, 13 Apr 2018 08:27:42 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27775f31a024796d3acb491a0ab82f0938a0cb2ab2cede896c4b560728a33920`  
		Last Modified: Fri, 13 Apr 2018 08:27:42 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd40ed2808fc6c2ac8927e9a5402187a763d151c09b1e02385cb0859aef60faf`  
		Last Modified: Fri, 13 Apr 2018 08:27:42 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic-20180410` - linux; s390x

```console
$ docker pull ubuntu@sha256:40063d04a35c8a08fd54b1cdd7f8bd0eca4cc79d3425112f3756f7b911ce960d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29265296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b5637e60a28158bf2fd002027beb690867887274286bf2ecb1bf9b560b7bb39`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 12:00:21 GMT
ADD file:f597080ba6c19b2233650e5c5c8d4d20604ec0b09cb14033ebb788dc09953c9b in / 
# Fri, 13 Apr 2018 12:00:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 12:00:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:00:23 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 12:00:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 12:00:24 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:bf7b53fabf455e22fa81faf7711b1d58afa9e9ce661e102719bb3dc9f8311220`  
		Last Modified: Fri, 13 Apr 2018 12:01:29 GMT  
		Size: 29.3 MB (29263031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6321a64e05e864b766aa0f746329e35a7e6e86b73d0d2a227c62dda9040ab6b4`  
		Last Modified: Fri, 13 Apr 2018 12:01:24 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7054c84f5de79d7af73e46b613fdc1303ca336e3cde4980e1c3a586bd8861a`  
		Last Modified: Fri, 13 Apr 2018 12:01:24 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37e4145b425874daa0feffa480f5f7051a33577c3f432e04168dee3455c9360`  
		Last Modified: Fri, 13 Apr 2018 12:01:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce6dea188869f9f0775436296f6d46b95ce766fa30c9fe3bcb142fe30961b1fb`  
		Last Modified: Fri, 13 Apr 2018 12:01:24 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:devel`

```console
$ docker pull ubuntu@sha256:d4521533743ef32a0517d67d78e324c17ae62648da2861cbcad6e0f85963bf93
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
$ docker pull ubuntu@sha256:bb1ed43b34cc59ace7af5f0d92139c72082db33c8a03a6372397338a26a48e1f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30698923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58c12a55082abff62208ae79c6e848e28f4b9be340a6fd9d24aae64787e73f42`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 12 Apr 2018 18:35:22 GMT
ADD file:8ea3d3659b2327b95fc6f8cb229245bcea4b44e77510f165c313659e6f0e6fd5 in / 
# Thu, 12 Apr 2018 18:35:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:35:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:35:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:35:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:35:25 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:c448d9b1e62fac680864f7063fd32e1712e6bb9845df446d8e61243498a1d3b5`  
		Last Modified: Thu, 12 Apr 2018 19:21:09 GMT  
		Size: 30.7 MB (30696655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0277fe36251d91645bc4bc6f0752e6b79f883c3c00d856c3d465a48eeb30f370`  
		Last Modified: Thu, 12 Apr 2018 19:21:02 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6591defe1cd92783337ed7d0f107c61139f5f656c7dbc6084ff1a5cd3a6bad54`  
		Last Modified: Thu, 12 Apr 2018 19:21:02 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c321da2a3ae45deda6730d5adcf7a7fe31db03d3cff5c657ef11ba69cb01f02`  
		Last Modified: Thu, 12 Apr 2018 19:21:03 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d8a7c0ac3cea69a3bf6c23bd2db7f2d1ded30b3736bca4e114630645a74683`  
		Last Modified: Thu, 12 Apr 2018 19:21:02 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:devel` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:0e3e4a23152a17a173d2f57fa86700239493e7dcc4b9c5e8bc8a93901d9f81bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.3 MB (26265279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c796d6c3d69d49556b336316f9610cc973ff5eac38fd7446dc333be116a3cdb4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 11:58:40 GMT
ADD file:3863878f56ad2a4858369eaa800955aa4284e3fbf5e18ad45275f5acbb995c59 in / 
# Fri, 13 Apr 2018 11:58:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 11:58:43 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 11:58:44 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 11:58:45 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 11:58:45 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:c9723c8fb76b3e5e63d109746699503c82a03745d0db1e1fbcf74487a2af72de`  
		Last Modified: Fri, 13 Apr 2018 12:01:43 GMT  
		Size: 26.3 MB (26262988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fbc1d7c870a6dd5dea7f0dc6cc936db897a788d3ae80f7019cd475e127df580`  
		Last Modified: Fri, 13 Apr 2018 12:01:35 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa148740a3bcd8cafaf42a54bf1e9d1656be6ab700e0875a30f7c778a52f1d1c`  
		Last Modified: Fri, 13 Apr 2018 12:01:35 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859bba15a7ec1ca7c25ff8b0d92dd20db1a831d2cc319175fd187226e1e776f7`  
		Last Modified: Fri, 13 Apr 2018 12:01:35 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794a43972298ed7f825b48ce612532ebaca53b24a4878850cf5961bded591f78`  
		Last Modified: Fri, 13 Apr 2018 12:01:34 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:devel` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:cd8486a23f215e8fa278391ead5f4a4c69b384e3be5567c9abeba492ca670604
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27665274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82874f891aa0938bf8b7ee6305f1f884552b44ef4cca2e675b45f8568f55b67d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 09:02:44 GMT
ADD file:fb41f052ca697d090b47a5d5611d7295a28bb57888c3dc9ac743bc21f251e8c9 in / 
# Fri, 13 Apr 2018 09:02:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 09:02:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:02:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 09:02:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 09:02:52 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:03699202315231f25cffe272e4754a4b50de722d642d281d204cfa25809d12c1`  
		Last Modified: Fri, 13 Apr 2018 09:07:38 GMT  
		Size: 27.7 MB (27663005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed9a934a098f92ffe03ff865e089382bd3d1a6603a66e1ba614e336c074741f`  
		Last Modified: Fri, 13 Apr 2018 09:07:27 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52aaacd9b9f122018430beb6470ff23f508ccce2e19ca6399f0bf68585402f41`  
		Last Modified: Fri, 13 Apr 2018 09:07:27 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82ed990d6a19db5a4bbfd13160f9657f85affa2eb72c76319211acb3fc0b4df`  
		Last Modified: Fri, 13 Apr 2018 09:07:27 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51e04ccd22359e90d67bde92a59c51b32f5ce4ba2d438efcb69662eda3e6dfd`  
		Last Modified: Fri, 13 Apr 2018 09:07:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:devel` - linux; 386

```console
$ docker pull ubuntu@sha256:2ed10e1c2bb5c5d1bf3cb16d3062449f0390b9eb52a4f2c8006b8f595869d14e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 MB (35894697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebac4dbcbe601838ac03f0ae61ae7c1f08b6bf4916d4275cfb024ee9cf808956`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 08 Mar 2018 03:55:00 GMT
ADD file:8282136f5dd3d107181527be6243aa0422d1f5797d76b9dc6b4a0535c0bf781f in / 
# Thu, 08 Mar 2018 03:55:01 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 08 Mar 2018 03:55:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 08 Mar 2018 03:55:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 08 Mar 2018 03:55:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 08 Mar 2018 03:55:04 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:68c038c15d304c9e1aaff039d3ca36770d889582108aeae54e4a28e66258d706`  
		Last Modified: Mon, 26 Feb 2018 14:45:52 GMT  
		Size: 35.9 MB (35892425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55613e36b8b6396da57b246baa29f0f9e9bf2f07e7c1558320f952b3e4b7fe68`  
		Last Modified: Thu, 08 Mar 2018 05:04:13 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fac81ee2875abb3fb4761616c54dd4a81962e766fa3ada7786a51d0f7037b1`  
		Last Modified: Thu, 08 Mar 2018 05:04:13 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b24bee7315d3d32b062a05d357e3c01a1bbeb262050af57430236238191c2a`  
		Last Modified: Thu, 08 Mar 2018 05:04:14 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4fb99389d5f276de2b65c753d1a43d771920f78f812561021583c87c860918c`  
		Last Modified: Thu, 08 Mar 2018 05:04:14 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:devel` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:cbc7466a7835a35d7da46f0941a07e160fffb8d1c0e94d0b440d1d23785de7ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34139930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b0298fb1f4a584aeb8d83aa7baecd2e796b60fab0685963290a9df0fcd7d16e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 08:23:54 GMT
ADD file:9957336e45a98f5788b033e8bea371b339330a23a7f01b0e8fd313619d92294c in / 
# Fri, 13 Apr 2018 08:23:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 08:23:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 08:24:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 08:24:08 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 08:24:08 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:851aa21fba2222dd4cd1f060219dace84790db948168ee070bde21618d410315`  
		Last Modified: Fri, 13 Apr 2018 08:27:51 GMT  
		Size: 34.1 MB (34137641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7647b7cbb93cf05dac64f8346acd6355532167c14535035211c2b459c14de8bc`  
		Last Modified: Fri, 13 Apr 2018 08:27:42 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac5dc1b6c6c60d3b74ed38b15592e515849b2813da14baf101af39e5c838193`  
		Last Modified: Fri, 13 Apr 2018 08:27:42 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27775f31a024796d3acb491a0ab82f0938a0cb2ab2cede896c4b560728a33920`  
		Last Modified: Fri, 13 Apr 2018 08:27:42 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd40ed2808fc6c2ac8927e9a5402187a763d151c09b1e02385cb0859aef60faf`  
		Last Modified: Fri, 13 Apr 2018 08:27:42 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:devel` - linux; s390x

```console
$ docker pull ubuntu@sha256:40063d04a35c8a08fd54b1cdd7f8bd0eca4cc79d3425112f3756f7b911ce960d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29265296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b5637e60a28158bf2fd002027beb690867887274286bf2ecb1bf9b560b7bb39`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 12:00:21 GMT
ADD file:f597080ba6c19b2233650e5c5c8d4d20604ec0b09cb14033ebb788dc09953c9b in / 
# Fri, 13 Apr 2018 12:00:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 12:00:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:00:23 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 12:00:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 12:00:24 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:bf7b53fabf455e22fa81faf7711b1d58afa9e9ce661e102719bb3dc9f8311220`  
		Last Modified: Fri, 13 Apr 2018 12:01:29 GMT  
		Size: 29.3 MB (29263031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6321a64e05e864b766aa0f746329e35a7e6e86b73d0d2a227c62dda9040ab6b4`  
		Last Modified: Fri, 13 Apr 2018 12:01:24 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7054c84f5de79d7af73e46b613fdc1303ca336e3cde4980e1c3a586bd8861a`  
		Last Modified: Fri, 13 Apr 2018 12:01:24 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37e4145b425874daa0feffa480f5f7051a33577c3f432e04168dee3455c9360`  
		Last Modified: Fri, 13 Apr 2018 12:01:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce6dea188869f9f0775436296f6d46b95ce766fa30c9fe3bcb142fe30961b1fb`  
		Last Modified: Fri, 13 Apr 2018 12:01:24 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:latest`

```console
$ docker pull ubuntu@sha256:9f1909bfd7200f94886fbce5cd62fc324a9b9ae1cff841cdfebe0ae674e6ca32
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
$ docker pull ubuntu@sha256:92c414f2cf966fd4c6d60bc71180737bf878eeca3654cad82991a1e02d885d37
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (43025436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d990395902a9e219684af847a63d793ccf72cf2aadeece1b576566c5662400`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 12 Apr 2018 18:58:24 GMT
ADD file:4c266e490f4101f9726598288c14131a75242836f3eda375923ef1677ea8ab8e in / 
# Thu, 12 Apr 2018 18:58:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:58:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:58:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:58:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:58:27 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d3938036b19cfa369e1081a6776b07b54be9612bc4c8fed7f139370c8142b79f`  
		Last Modified: Thu, 12 Apr 2018 19:49:15 GMT  
		Size: 43.0 MB (43022946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b30c108bda615dc10e402f62d712f413214ea92c7ec4354cd1cc0f3450bc58`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67de21feec183fcd009a5eddc4de8c346ee0f4369a20047f1a302a90716fc741`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817da545be2ba4bac8f6b4da584bca0fb4844938ecc462b9feab1001b5df7405`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d967c497ce230b63996a7b1fc6ec95b741aea9348118d3328c676f13be789fa7`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:latest` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:bc4278a1b0cf676fa4086508b9a49bcb3c9de62a735674498185155772453379
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38124172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26fb70d5df1d982559915a2c9b55033bacf80c1b68e63ea77a0531ab3178b164`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 12:00:11 GMT
ADD file:fb3893e6a441ccb24c47b6c4d2cf2fb8fa0798a6e02aa157172ea19fc24f2c8e in / 
# Fri, 13 Apr 2018 12:00:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 12:00:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:00:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 12:00:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 12:00:32 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:1f2b2864f608c58061772008a65c6f32da66763d2d17d0f1ba2a9dc01fb093ab`  
		Last Modified: Fri, 13 Apr 2018 12:03:04 GMT  
		Size: 38.1 MB (38121678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2ef4ebd8bc31f5df03710d06668e68b5f4367ba5161f6fd5b58da4158f77b7`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93eeb0733f5ff1845b120ab687f9303820f6791471af0da0ed3d49475fe8b41`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7c460f46dbbeda54f0c0885949f470a0e9544f26c21037af9f869845af364c`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135d2a3779525b1c8143d3506765ff9a7358851a62e7be18d20668db00a88f21`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:latest` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:602d75d8f533472cd29b1e817d44d9f45c316f09618d02a5c86aa46de11eec50
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39221109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1651a80f92b04a050b7ff08ddd78436138989f47f5e16d31b42952501c95f41`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 09:04:57 GMT
ADD file:81451f665242c8a6b28b2dfe4726bf195a48defeed8a31c73cde9a137c6dbdf6 in / 
# Fri, 13 Apr 2018 09:04:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 09:05:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:05:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 09:05:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 09:05:05 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:cb6b68344db2c1c976785fde1a3db70b465328cb22e3a2c7b2ad5830b48bca10`  
		Last Modified: Fri, 13 Apr 2018 09:11:04 GMT  
		Size: 39.2 MB (39218620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525f6d0463851ac4813635bab2d79581b10cb2ed64fcdf97852bfd619c7d2db5`  
		Last Modified: Fri, 13 Apr 2018 09:10:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae087ad0db3911c0a2ab5b36dfae0eb1f8a92312cf2173aefc600a3ad59d8a52`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eebcaa2457d2587ab93c88f232d0b3fc458732e08d0b1df73f0f5331a6bac780`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9413926d20a900e8b0abcd52734e1027ad5e9e8ecd17469fbb4b7fd174fb523`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:latest` - linux; 386

```console
$ docker pull ubuntu@sha256:047c0a861b58000dda8f94c1f354c88f1f8d185ff37331ab5cd262b6ee84da5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.3 MB (43281161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adfebeb0ac9194caaa37b52b84e6ff09b858f8daacf19ed46eced547284fc82d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 08 Mar 2018 04:36:38 GMT
ADD file:c67129d7ff70532c6e7bae71276572b8ad33a722f3a99a90f36e16a8f7e2f358 in / 
# Thu, 08 Mar 2018 04:36:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 08 Mar 2018 04:36:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 08 Mar 2018 04:36:41 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 08 Mar 2018 04:36:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 08 Mar 2018 04:36:43 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:43cff9ac2d349e82eb7142b7898ee0e1c500df1e98c86b4c4003dd77e1f08a19`  
		Last Modified: Mon, 05 Mar 2018 14:51:41 GMT  
		Size: 43.3 MB (43278706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25abb78436881fc7240d2683491eafe0dd654b06ff3b0854708c4e9614ee697`  
		Last Modified: Thu, 08 Mar 2018 05:31:52 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7355f8e4aeb7984f4f15617ec5a4f17836a7e32611436e351f45e9378b0a1f2f`  
		Last Modified: Thu, 08 Mar 2018 05:31:52 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea422b11e5e16a8977fc660f3eb8634c1c6f8a11c2852feac0220ab212ca75f7`  
		Last Modified: Thu, 08 Mar 2018 05:31:53 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4f1088e42dc3a044ba5a731e26154828d758ebdb710f4fa79e2a1869f8345b7`  
		Last Modified: Thu, 08 Mar 2018 05:31:52 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:latest` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:7d5f0c10453a3d33c597dc71a171b7b1f66bf6f463c334b68521d6edd17a5f58
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45372778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10b52ecfd0b38486fb36ce7b0f8b5fe7fe8cdb1cb2bc96f29ec4d48e3fa11b7c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 07 Mar 2018 03:42:20 GMT
ADD file:4ef9de52677adcdeef035215e1a5d7e4be4f21ff43f32e729cbda321b19eb41a in / 
# Wed, 07 Mar 2018 03:42:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 03:42:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 03:42:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 03:42:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 03:42:37 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d2081f6d30078f08bc14fa8f4ecae796f33fc3eef73c3ecb4569c9c72483ceb4`  
		Last Modified: Wed, 07 Mar 2018 03:44:48 GMT  
		Size: 45.4 MB (45370254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e0b7b79b9819de696c49e6a5340a1c6855f63594f0a4ab4f110c1e777b78031`  
		Last Modified: Wed, 07 Mar 2018 03:44:36 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9129e3a4ef8ba31c6c43561a0fc1b0d83da1405bb2ada2970a6dfbb6713f0c24`  
		Last Modified: Wed, 07 Mar 2018 03:44:36 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138a881ad53304753c07c7a5eb3a78432b387c6a79564b58974e62703af2bbf8`  
		Last Modified: Wed, 07 Mar 2018 03:44:40 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2879d728317e4d31ee80537a0a174de5d6ef7c4897a6ae6f4ada0273b1b78d6`  
		Last Modified: Wed, 07 Mar 2018 03:44:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:latest` - linux; s390x

```console
$ docker pull ubuntu@sha256:305a2be72393dc27e6696164c8a1006afd282ea1ca261fcaa9d258a9c2c8cc20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42089466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d10036a069ef63a656bbb314e2abcb5511b6ca7088d768cee6f68e797ef1fd9d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 12:00:37 GMT
ADD file:267bade06e21f4da617dbdfb7d865d1ae457c377d5c0371a040acfd822e4bf70 in / 
# Fri, 13 Apr 2018 12:00:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 12:00:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:00:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 12:00:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 12:00:40 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:abc96355933bb2323ea723ca02a7cc1e3174ac67c75ee385f625868bf29bf280`  
		Last Modified: Fri, 13 Apr 2018 12:01:59 GMT  
		Size: 42.1 MB (42086981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b922c1085ea26ea9dadf76648fc7eb2e03b89192bb48c16326e615a4f4e347`  
		Last Modified: Fri, 13 Apr 2018 12:01:52 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6864a2c357402126daa233f6cddc3ee7ce99be4831e99dcc3650d87c35216571`  
		Last Modified: Fri, 13 Apr 2018 12:01:52 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da2a28f1966a2d48d23fef2c2b6e1a9ef8bc8b7399d5b033936c39fb7724f7c`  
		Last Modified: Fri, 13 Apr 2018 12:01:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e317a797e9f44610a21b839bcb58b50acb2d427eb7a4a01129089d9db336c4f9`  
		Last Modified: Fri, 13 Apr 2018 12:01:52 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:rolling`

```console
$ docker pull ubuntu@sha256:1a2ccabb893b2b1f43e8cadd1035a50681c83264cffe1c12e3707fffc5644355
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
$ docker pull ubuntu@sha256:98d644100e6c9dc988a9b044f3e88055c6dd855ad4a169f6686f9053eb485fd3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40509078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14107f6d2c97745cdaca15c282a5a8f3ade0cf78aaf707785ae9c3e33d778bb1`
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

### `ubuntu:rolling` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:83f1c103e72c9dbac07e8979dfd26e1425dd50c6f811f9454c4081a336f350c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.1 MB (36063258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc372ef13ea7491f94c1d1f4e2222d6bc296575c90cd3f379557f0b785651790`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 11:58:17 GMT
ADD file:26367a94d8cc4f7fa0e02116faaae9edc886aa9da56c2802f71f48d08ae75e8b in / 
# Fri, 13 Apr 2018 11:58:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 11:58:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 11:58:21 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 11:58:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 11:58:22 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d4054238eed5290c6f57cd471b902eaaf3bd27d19fb0b8a6a8c39cb034ff6a70`  
		Last Modified: Fri, 13 Apr 2018 12:01:00 GMT  
		Size: 36.1 MB (36060770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c5b27bb3651d84dc8e413439d8de989508647ffb94255ec4e354ea9c5cf5dae`  
		Last Modified: Fri, 13 Apr 2018 12:00:50 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44ac846d3efab223e091ca18483622b84c8c032966d3c35737a5e7b32a6577d`  
		Last Modified: Fri, 13 Apr 2018 12:00:50 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf80291c4b9df80e3fdda623f12baebe6740d1ddb1351d712bac17ecd237f13d`  
		Last Modified: Fri, 13 Apr 2018 12:00:49 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85c2d4190a7dbdb234e6f7229504e16b20b7ccf6de1505364a68f92e5522786`  
		Last Modified: Fri, 13 Apr 2018 12:00:50 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:rolling` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:655d9de0d4672ddf997b0d25eb8d9da4c1bfe40cf4b06ea2d30fb63b01e2e44c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37386942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b4b1fe84288df6a43dd0bcf3f647441548046e701632594546f31e19d49490b`
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

### `ubuntu:rolling` - linux; 386

```console
$ docker pull ubuntu@sha256:890e96e274fc1a4f8186b472945e5d60a422a7589330abb971990e186596de6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41146819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1784cfe1125843f6714c3cc115e76c519b5c7ca12a6e65fd63e5b79e586ca67`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 08 Mar 2018 03:37:14 GMT
ADD file:21ae54b42598bdc4e53f9cc31f21c838a3febc013ec82f7fa2bde60715358ed6 in / 
# Thu, 08 Mar 2018 03:37:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 08 Mar 2018 03:37:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 08 Mar 2018 03:37:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 08 Mar 2018 03:37:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 08 Mar 2018 03:37:20 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:6f4f8c7764e3b9bf54c0b80551001c22563ee6c352468283d261aee662ce8507`  
		Last Modified: Wed, 28 Feb 2018 15:20:04 GMT  
		Size: 41.1 MB (41144382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f328fe89f835d015452de62e5952c5463c19b8aec1b32b86a50c9331b2d79256`  
		Last Modified: Thu, 08 Mar 2018 04:50:09 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce90b2869033e50b1e52f3e07387c198342a98b9e2766946037a2d5d46c9985`  
		Last Modified: Thu, 08 Mar 2018 04:50:09 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:564c6fdc53601ac6fc3c81c545e12adb0d3119e204d13351fecba8217713c2ab`  
		Last Modified: Thu, 08 Mar 2018 04:50:09 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cce0c6dcf704eae01c9678d8e09c763b09a4e201b681976f95e05864be67638`  
		Last Modified: Thu, 08 Mar 2018 04:50:09 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:rolling` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:ff23ea968692e3341a26bb4fc075443e8aec3ef0fab5f20413fcfddd7519d152
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43682885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cff2feb090f4933908f706403b7d582fb5946582b68b4c820cc130709092560b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 08:23:13 GMT
ADD file:d29bb9aedf378810e61b9db06424c2272ea4b2a71797d7ceac0e353db87c1971 in / 
# Fri, 13 Apr 2018 08:23:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 08:23:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 08:23:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 08:23:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 08:23:22 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:7dd77484eb4b4e95b70f67c3c90e54b48423f847a2efaad6f8afc2e23922eb99`  
		Last Modified: Fri, 13 Apr 2018 08:27:03 GMT  
		Size: 43.7 MB (43680422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad66166723e2b91ee02a5d33723194b466f5b603754c1e6ff18731e61507727d`  
		Last Modified: Fri, 13 Apr 2018 08:26:51 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7148c12bb6969b81f29e33f67e451a5fae3b600fe7d5ab80185e85df3d694963`  
		Last Modified: Fri, 13 Apr 2018 08:26:52 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725bf6293c5b878de4389501dc8529834e26f2ed0386e94494deef50e29bf996`  
		Last Modified: Fri, 13 Apr 2018 08:26:51 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c8343e1b9da0b6a22212ce7e03821be0a5c7635be07479cee044691a5963b70`  
		Last Modified: Fri, 13 Apr 2018 08:26:51 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:rolling` - linux; s390x

```console
$ docker pull ubuntu@sha256:c59ff0eaa2a46bebb29e08439ca69fbb12c09c8fb884cf66bf0c46100d0bc8f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39149557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bb3298345aef79d842e1d4834762a1175120bc608e69ee85c15889ea1544f72`
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

## `ubuntu:trusty`

```console
$ docker pull ubuntu@sha256:caaee44c5cf99f71a259a7915afd648f8110f4958cd994e8939073bd9477cd58
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
$ docker pull ubuntu@sha256:3341cbf2805c15debc33b8ee5973288e474ae41783c4f648062a44d8ec1b8ef4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.1 MB (73138844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b853789146f1f249f204a7f29573263ef3486571acb72d7fd8f13056450b807`
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

### `ubuntu:trusty` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:394af1957eecba4a36fc8c8d642beab410f57d07d173d0e7986edc4101b1a6c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.6 MB (66619451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7945e780bd58c4ebf109cf8679e7464892c51044cf0e2dd48ec6e2ff9f00f483`
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

### `ubuntu:trusty` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:e85edd18056d881955df53beda372f508171d751abbf6426f06b930433b8e8d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.9 MB (67882128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6678500a1b277bc7fd6922ae7de5ff911d1275368d753a62ed22831855500e0f`
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

### `ubuntu:trusty` - linux; 386

```console
$ docker pull ubuntu@sha256:72e6367942dc06ad138809b770191848e6ba3be976b0a7379c9fe9f4efa49cbe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.4 MB (70431557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b42bcb3a6514820dd29ec9353ade130c61262ba9a92928ad25bd020eb937fa40`
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

### `ubuntu:trusty` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:116443af865081e1a0ce427cb77b13688a24230969987d9bd628df58f85914ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.5 MB (74494375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42f269a6e745697d1e48cf4f034479aa9daa3c9210adea8a50cd30ed18fec6f7`
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

## `ubuntu:trusty-20180412`

```console
$ docker pull ubuntu@sha256:caaee44c5cf99f71a259a7915afd648f8110f4958cd994e8939073bd9477cd58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `ubuntu:trusty-20180412` - linux; amd64

```console
$ docker pull ubuntu@sha256:3341cbf2805c15debc33b8ee5973288e474ae41783c4f648062a44d8ec1b8ef4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.1 MB (73138844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b853789146f1f249f204a7f29573263ef3486571acb72d7fd8f13056450b807`
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

### `ubuntu:trusty-20180412` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:394af1957eecba4a36fc8c8d642beab410f57d07d173d0e7986edc4101b1a6c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.6 MB (66619451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7945e780bd58c4ebf109cf8679e7464892c51044cf0e2dd48ec6e2ff9f00f483`
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

### `ubuntu:trusty-20180412` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:e85edd18056d881955df53beda372f508171d751abbf6426f06b930433b8e8d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.9 MB (67882128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6678500a1b277bc7fd6922ae7de5ff911d1275368d753a62ed22831855500e0f`
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

### `ubuntu:trusty-20180412` - linux; 386

```console
$ docker pull ubuntu@sha256:72e6367942dc06ad138809b770191848e6ba3be976b0a7379c9fe9f4efa49cbe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.4 MB (70431557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b42bcb3a6514820dd29ec9353ade130c61262ba9a92928ad25bd020eb937fa40`
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

### `ubuntu:trusty-20180412` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:116443af865081e1a0ce427cb77b13688a24230969987d9bd628df58f85914ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.5 MB (74494375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42f269a6e745697d1e48cf4f034479aa9daa3c9210adea8a50cd30ed18fec6f7`
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

## `ubuntu:xenial`

```console
$ docker pull ubuntu@sha256:9f1909bfd7200f94886fbce5cd62fc324a9b9ae1cff841cdfebe0ae674e6ca32
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
$ docker pull ubuntu@sha256:92c414f2cf966fd4c6d60bc71180737bf878eeca3654cad82991a1e02d885d37
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (43025436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d990395902a9e219684af847a63d793ccf72cf2aadeece1b576566c5662400`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 12 Apr 2018 18:58:24 GMT
ADD file:4c266e490f4101f9726598288c14131a75242836f3eda375923ef1677ea8ab8e in / 
# Thu, 12 Apr 2018 18:58:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:58:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:58:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:58:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:58:27 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d3938036b19cfa369e1081a6776b07b54be9612bc4c8fed7f139370c8142b79f`  
		Last Modified: Thu, 12 Apr 2018 19:49:15 GMT  
		Size: 43.0 MB (43022946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b30c108bda615dc10e402f62d712f413214ea92c7ec4354cd1cc0f3450bc58`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67de21feec183fcd009a5eddc4de8c346ee0f4369a20047f1a302a90716fc741`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817da545be2ba4bac8f6b4da584bca0fb4844938ecc462b9feab1001b5df7405`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d967c497ce230b63996a7b1fc6ec95b741aea9348118d3328c676f13be789fa7`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:bc4278a1b0cf676fa4086508b9a49bcb3c9de62a735674498185155772453379
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38124172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26fb70d5df1d982559915a2c9b55033bacf80c1b68e63ea77a0531ab3178b164`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 12:00:11 GMT
ADD file:fb3893e6a441ccb24c47b6c4d2cf2fb8fa0798a6e02aa157172ea19fc24f2c8e in / 
# Fri, 13 Apr 2018 12:00:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 12:00:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:00:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 12:00:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 12:00:32 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:1f2b2864f608c58061772008a65c6f32da66763d2d17d0f1ba2a9dc01fb093ab`  
		Last Modified: Fri, 13 Apr 2018 12:03:04 GMT  
		Size: 38.1 MB (38121678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2ef4ebd8bc31f5df03710d06668e68b5f4367ba5161f6fd5b58da4158f77b7`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93eeb0733f5ff1845b120ab687f9303820f6791471af0da0ed3d49475fe8b41`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7c460f46dbbeda54f0c0885949f470a0e9544f26c21037af9f869845af364c`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135d2a3779525b1c8143d3506765ff9a7358851a62e7be18d20668db00a88f21`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:602d75d8f533472cd29b1e817d44d9f45c316f09618d02a5c86aa46de11eec50
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39221109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1651a80f92b04a050b7ff08ddd78436138989f47f5e16d31b42952501c95f41`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 09:04:57 GMT
ADD file:81451f665242c8a6b28b2dfe4726bf195a48defeed8a31c73cde9a137c6dbdf6 in / 
# Fri, 13 Apr 2018 09:04:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 09:05:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:05:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 09:05:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 09:05:05 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:cb6b68344db2c1c976785fde1a3db70b465328cb22e3a2c7b2ad5830b48bca10`  
		Last Modified: Fri, 13 Apr 2018 09:11:04 GMT  
		Size: 39.2 MB (39218620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525f6d0463851ac4813635bab2d79581b10cb2ed64fcdf97852bfd619c7d2db5`  
		Last Modified: Fri, 13 Apr 2018 09:10:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae087ad0db3911c0a2ab5b36dfae0eb1f8a92312cf2173aefc600a3ad59d8a52`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eebcaa2457d2587ab93c88f232d0b3fc458732e08d0b1df73f0f5331a6bac780`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9413926d20a900e8b0abcd52734e1027ad5e9e8ecd17469fbb4b7fd174fb523`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial` - linux; 386

```console
$ docker pull ubuntu@sha256:047c0a861b58000dda8f94c1f354c88f1f8d185ff37331ab5cd262b6ee84da5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.3 MB (43281161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adfebeb0ac9194caaa37b52b84e6ff09b858f8daacf19ed46eced547284fc82d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 08 Mar 2018 04:36:38 GMT
ADD file:c67129d7ff70532c6e7bae71276572b8ad33a722f3a99a90f36e16a8f7e2f358 in / 
# Thu, 08 Mar 2018 04:36:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 08 Mar 2018 04:36:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 08 Mar 2018 04:36:41 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 08 Mar 2018 04:36:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 08 Mar 2018 04:36:43 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:43cff9ac2d349e82eb7142b7898ee0e1c500df1e98c86b4c4003dd77e1f08a19`  
		Last Modified: Mon, 05 Mar 2018 14:51:41 GMT  
		Size: 43.3 MB (43278706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25abb78436881fc7240d2683491eafe0dd654b06ff3b0854708c4e9614ee697`  
		Last Modified: Thu, 08 Mar 2018 05:31:52 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7355f8e4aeb7984f4f15617ec5a4f17836a7e32611436e351f45e9378b0a1f2f`  
		Last Modified: Thu, 08 Mar 2018 05:31:52 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea422b11e5e16a8977fc660f3eb8634c1c6f8a11c2852feac0220ab212ca75f7`  
		Last Modified: Thu, 08 Mar 2018 05:31:53 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4f1088e42dc3a044ba5a731e26154828d758ebdb710f4fa79e2a1869f8345b7`  
		Last Modified: Thu, 08 Mar 2018 05:31:52 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:7d5f0c10453a3d33c597dc71a171b7b1f66bf6f463c334b68521d6edd17a5f58
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45372778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10b52ecfd0b38486fb36ce7b0f8b5fe7fe8cdb1cb2bc96f29ec4d48e3fa11b7c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 07 Mar 2018 03:42:20 GMT
ADD file:4ef9de52677adcdeef035215e1a5d7e4be4f21ff43f32e729cbda321b19eb41a in / 
# Wed, 07 Mar 2018 03:42:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 03:42:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 03:42:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 03:42:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 03:42:37 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d2081f6d30078f08bc14fa8f4ecae796f33fc3eef73c3ecb4569c9c72483ceb4`  
		Last Modified: Wed, 07 Mar 2018 03:44:48 GMT  
		Size: 45.4 MB (45370254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e0b7b79b9819de696c49e6a5340a1c6855f63594f0a4ab4f110c1e777b78031`  
		Last Modified: Wed, 07 Mar 2018 03:44:36 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9129e3a4ef8ba31c6c43561a0fc1b0d83da1405bb2ada2970a6dfbb6713f0c24`  
		Last Modified: Wed, 07 Mar 2018 03:44:36 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138a881ad53304753c07c7a5eb3a78432b387c6a79564b58974e62703af2bbf8`  
		Last Modified: Wed, 07 Mar 2018 03:44:40 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2879d728317e4d31ee80537a0a174de5d6ef7c4897a6ae6f4ada0273b1b78d6`  
		Last Modified: Wed, 07 Mar 2018 03:44:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial` - linux; s390x

```console
$ docker pull ubuntu@sha256:305a2be72393dc27e6696164c8a1006afd282ea1ca261fcaa9d258a9c2c8cc20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42089466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d10036a069ef63a656bbb314e2abcb5511b6ca7088d768cee6f68e797ef1fd9d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 12:00:37 GMT
ADD file:267bade06e21f4da617dbdfb7d865d1ae457c377d5c0371a040acfd822e4bf70 in / 
# Fri, 13 Apr 2018 12:00:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 12:00:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:00:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 12:00:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 12:00:40 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:abc96355933bb2323ea723ca02a7cc1e3174ac67c75ee385f625868bf29bf280`  
		Last Modified: Fri, 13 Apr 2018 12:01:59 GMT  
		Size: 42.1 MB (42086981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b922c1085ea26ea9dadf76648fc7eb2e03b89192bb48c16326e615a4f4e347`  
		Last Modified: Fri, 13 Apr 2018 12:01:52 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6864a2c357402126daa233f6cddc3ee7ce99be4831e99dcc3650d87c35216571`  
		Last Modified: Fri, 13 Apr 2018 12:01:52 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da2a28f1966a2d48d23fef2c2b6e1a9ef8bc8b7399d5b033936c39fb7724f7c`  
		Last Modified: Fri, 13 Apr 2018 12:01:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e317a797e9f44610a21b839bcb58b50acb2d427eb7a4a01129089d9db336c4f9`  
		Last Modified: Fri, 13 Apr 2018 12:01:52 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:xenial-20180412`

```console
$ docker pull ubuntu@sha256:9f1909bfd7200f94886fbce5cd62fc324a9b9ae1cff841cdfebe0ae674e6ca32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:xenial-20180412` - linux; amd64

```console
$ docker pull ubuntu@sha256:92c414f2cf966fd4c6d60bc71180737bf878eeca3654cad82991a1e02d885d37
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (43025436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d990395902a9e219684af847a63d793ccf72cf2aadeece1b576566c5662400`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 12 Apr 2018 18:58:24 GMT
ADD file:4c266e490f4101f9726598288c14131a75242836f3eda375923ef1677ea8ab8e in / 
# Thu, 12 Apr 2018 18:58:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:58:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:58:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:58:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:58:27 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d3938036b19cfa369e1081a6776b07b54be9612bc4c8fed7f139370c8142b79f`  
		Last Modified: Thu, 12 Apr 2018 19:49:15 GMT  
		Size: 43.0 MB (43022946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b30c108bda615dc10e402f62d712f413214ea92c7ec4354cd1cc0f3450bc58`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67de21feec183fcd009a5eddc4de8c346ee0f4369a20047f1a302a90716fc741`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817da545be2ba4bac8f6b4da584bca0fb4844938ecc462b9feab1001b5df7405`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d967c497ce230b63996a7b1fc6ec95b741aea9348118d3328c676f13be789fa7`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial-20180412` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:bc4278a1b0cf676fa4086508b9a49bcb3c9de62a735674498185155772453379
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38124172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26fb70d5df1d982559915a2c9b55033bacf80c1b68e63ea77a0531ab3178b164`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 12:00:11 GMT
ADD file:fb3893e6a441ccb24c47b6c4d2cf2fb8fa0798a6e02aa157172ea19fc24f2c8e in / 
# Fri, 13 Apr 2018 12:00:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 12:00:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:00:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 12:00:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 12:00:32 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:1f2b2864f608c58061772008a65c6f32da66763d2d17d0f1ba2a9dc01fb093ab`  
		Last Modified: Fri, 13 Apr 2018 12:03:04 GMT  
		Size: 38.1 MB (38121678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2ef4ebd8bc31f5df03710d06668e68b5f4367ba5161f6fd5b58da4158f77b7`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93eeb0733f5ff1845b120ab687f9303820f6791471af0da0ed3d49475fe8b41`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7c460f46dbbeda54f0c0885949f470a0e9544f26c21037af9f869845af364c`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135d2a3779525b1c8143d3506765ff9a7358851a62e7be18d20668db00a88f21`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial-20180412` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:602d75d8f533472cd29b1e817d44d9f45c316f09618d02a5c86aa46de11eec50
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39221109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1651a80f92b04a050b7ff08ddd78436138989f47f5e16d31b42952501c95f41`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 09:04:57 GMT
ADD file:81451f665242c8a6b28b2dfe4726bf195a48defeed8a31c73cde9a137c6dbdf6 in / 
# Fri, 13 Apr 2018 09:04:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 09:05:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:05:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 09:05:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 09:05:05 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:cb6b68344db2c1c976785fde1a3db70b465328cb22e3a2c7b2ad5830b48bca10`  
		Last Modified: Fri, 13 Apr 2018 09:11:04 GMT  
		Size: 39.2 MB (39218620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525f6d0463851ac4813635bab2d79581b10cb2ed64fcdf97852bfd619c7d2db5`  
		Last Modified: Fri, 13 Apr 2018 09:10:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae087ad0db3911c0a2ab5b36dfae0eb1f8a92312cf2173aefc600a3ad59d8a52`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eebcaa2457d2587ab93c88f232d0b3fc458732e08d0b1df73f0f5331a6bac780`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9413926d20a900e8b0abcd52734e1027ad5e9e8ecd17469fbb4b7fd174fb523`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial-20180412` - linux; 386

```console
$ docker pull ubuntu@sha256:047c0a861b58000dda8f94c1f354c88f1f8d185ff37331ab5cd262b6ee84da5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.3 MB (43281161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adfebeb0ac9194caaa37b52b84e6ff09b858f8daacf19ed46eced547284fc82d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 08 Mar 2018 04:36:38 GMT
ADD file:c67129d7ff70532c6e7bae71276572b8ad33a722f3a99a90f36e16a8f7e2f358 in / 
# Thu, 08 Mar 2018 04:36:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 08 Mar 2018 04:36:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 08 Mar 2018 04:36:41 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 08 Mar 2018 04:36:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 08 Mar 2018 04:36:43 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:43cff9ac2d349e82eb7142b7898ee0e1c500df1e98c86b4c4003dd77e1f08a19`  
		Last Modified: Mon, 05 Mar 2018 14:51:41 GMT  
		Size: 43.3 MB (43278706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25abb78436881fc7240d2683491eafe0dd654b06ff3b0854708c4e9614ee697`  
		Last Modified: Thu, 08 Mar 2018 05:31:52 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7355f8e4aeb7984f4f15617ec5a4f17836a7e32611436e351f45e9378b0a1f2f`  
		Last Modified: Thu, 08 Mar 2018 05:31:52 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea422b11e5e16a8977fc660f3eb8634c1c6f8a11c2852feac0220ab212ca75f7`  
		Last Modified: Thu, 08 Mar 2018 05:31:53 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4f1088e42dc3a044ba5a731e26154828d758ebdb710f4fa79e2a1869f8345b7`  
		Last Modified: Thu, 08 Mar 2018 05:31:52 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial-20180412` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:7d5f0c10453a3d33c597dc71a171b7b1f66bf6f463c334b68521d6edd17a5f58
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45372778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10b52ecfd0b38486fb36ce7b0f8b5fe7fe8cdb1cb2bc96f29ec4d48e3fa11b7c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 07 Mar 2018 03:42:20 GMT
ADD file:4ef9de52677adcdeef035215e1a5d7e4be4f21ff43f32e729cbda321b19eb41a in / 
# Wed, 07 Mar 2018 03:42:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 03:42:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 03:42:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 03:42:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 03:42:37 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d2081f6d30078f08bc14fa8f4ecae796f33fc3eef73c3ecb4569c9c72483ceb4`  
		Last Modified: Wed, 07 Mar 2018 03:44:48 GMT  
		Size: 45.4 MB (45370254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e0b7b79b9819de696c49e6a5340a1c6855f63594f0a4ab4f110c1e777b78031`  
		Last Modified: Wed, 07 Mar 2018 03:44:36 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9129e3a4ef8ba31c6c43561a0fc1b0d83da1405bb2ada2970a6dfbb6713f0c24`  
		Last Modified: Wed, 07 Mar 2018 03:44:36 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138a881ad53304753c07c7a5eb3a78432b387c6a79564b58974e62703af2bbf8`  
		Last Modified: Wed, 07 Mar 2018 03:44:40 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2879d728317e4d31ee80537a0a174de5d6ef7c4897a6ae6f4ada0273b1b78d6`  
		Last Modified: Wed, 07 Mar 2018 03:44:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial-20180412` - linux; s390x

```console
$ docker pull ubuntu@sha256:305a2be72393dc27e6696164c8a1006afd282ea1ca261fcaa9d258a9c2c8cc20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42089466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d10036a069ef63a656bbb314e2abcb5511b6ca7088d768cee6f68e797ef1fd9d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 12:00:37 GMT
ADD file:267bade06e21f4da617dbdfb7d865d1ae457c377d5c0371a040acfd822e4bf70 in / 
# Fri, 13 Apr 2018 12:00:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 12:00:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:00:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 12:00:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 12:00:40 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:abc96355933bb2323ea723ca02a7cc1e3174ac67c75ee385f625868bf29bf280`  
		Last Modified: Fri, 13 Apr 2018 12:01:59 GMT  
		Size: 42.1 MB (42086981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b922c1085ea26ea9dadf76648fc7eb2e03b89192bb48c16326e615a4f4e347`  
		Last Modified: Fri, 13 Apr 2018 12:01:52 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6864a2c357402126daa233f6cddc3ee7ce99be4831e99dcc3650d87c35216571`  
		Last Modified: Fri, 13 Apr 2018 12:01:52 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da2a28f1966a2d48d23fef2c2b6e1a9ef8bc8b7399d5b033936c39fb7724f7c`  
		Last Modified: Fri, 13 Apr 2018 12:01:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e317a797e9f44610a21b839bcb58b50acb2d427eb7a4a01129089d9db336c4f9`  
		Last Modified: Fri, 13 Apr 2018 12:01:52 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
