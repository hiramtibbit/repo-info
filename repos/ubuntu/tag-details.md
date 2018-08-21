<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ubuntu`

-	[`ubuntu:14.04`](#ubuntu1404)
-	[`ubuntu:16.04`](#ubuntu1604)
-	[`ubuntu:18.04`](#ubuntu1804)
-	[`ubuntu:18.10`](#ubuntu1810)
-	[`ubuntu:bionic`](#ubuntubionic)
-	[`ubuntu:bionic-20180724.1`](#ubuntubionic-201807241)
-	[`ubuntu:cosmic`](#ubuntucosmic)
-	[`ubuntu:cosmic-20180725`](#ubuntucosmic-20180725)
-	[`ubuntu:devel`](#ubuntudevel)
-	[`ubuntu:latest`](#ubuntulatest)
-	[`ubuntu:rolling`](#ubunturolling)
-	[`ubuntu:trusty`](#ubuntutrusty)
-	[`ubuntu:trusty-20180712`](#ubuntutrusty-20180712)
-	[`ubuntu:xenial`](#ubuntuxenial)
-	[`ubuntu:xenial-20180726`](#ubuntuxenial-20180726)

## `ubuntu:14.04`

```console
$ docker pull ubuntu@sha256:71529e96591eb36a4100cd0cc5353ff1a2f4ee7a85011e3d3dd07cb5eb524a3e
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
$ docker pull ubuntu@sha256:f5cab117215a64e3490910041f20c418870653de5b6edabdfd2bb990f5fcd1e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.2 MB (67201122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:971bb384a50ae93856362f9c40ea471e66a97cfd4023b9cc9b8e4196e99da2c7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:53:22 GMT
ADD file:2b307231ea5854129fb2b708dc49d44d30c66023186d861778defb768aa3a8a8 in / 
# Tue, 17 Jul 2018 00:53:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:53:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:53:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:53:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:53:26 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:8284e13a281d55cc734a66ada0b6cabef2447ce16e91ce96317eca132253f734`  
		Last Modified: Tue, 17 Jul 2018 00:58:36 GMT  
		Size: 67.1 MB (67127095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e1916a92974ed667a04ce36771ef2599e58e2e3b118375e19a8af98c6fa3b2`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4102fc66d4abcb83d0739b402e2fd6e9a884d75ad9cbada70bc9286d58d97abf`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf2b01777b2f9a1c015cc2b7c39b9916de816806c3eee2d1b6cd63757868451`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7a2d5e04ed4e9237521229a3e7837dc552b4e1157b79c02c2fecbc14003032`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:14.04` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:11eb6b8dffabc8ae8e5bd8f8feb8d5c7820e6add328afcfc88020fa2f40c53d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61546876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3c593689903a3827240da777ec512abb26add4151325a813de865d85213f262`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 13:23:05 GMT
ADD file:7bbac98bb65c84c77ea4e287e758111798edcdc61c0d78672c1623bdf729ac11 in / 
# Tue, 17 Jul 2018 13:23:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 13:23:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 13:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 13:23:12 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:9c2a082512cf3a8830b91d42bb98b629740d5fd24b80d72fcb6c02420898b67e`  
		Last Modified: Tue, 17 Jul 2018 13:26:24 GMT  
		Size: 61.5 MB (61468702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b41e83acf679b5d2b57b403be2a7fdf6356f920904951de07f61716c83bbee`  
		Last Modified: Tue, 17 Jul 2018 13:26:07 GMT  
		Size: 76.8 KB (76769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922a277efdf4041c4ff20411bf58600b676449a65a799fd39c199aefb9040b13`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6618850e175b633967a0128ec1cc0f3bf4a3271fb8e6411d574048a9ed6428`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5ef7a8d6ef97dbddd26f5c20d0b650717aca5f798f1b286dc6ed527eb06965`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:14.04` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:21c1ba1572c6bd23329866ab364265b96986e13c4ac53a98016fce750e4300c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63263369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7880fe0753cfea09e1a94beb0e95aeae0949d563c9db0b37a471be27ce56fff`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 14:19:05 GMT
ADD file:9c932e4c93c73c414a550c0c23de27e5593be2eedfe574355fc8f8c7abac6900 in / 
# Tue, 17 Jul 2018 14:19:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 14:19:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:19:32 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 14:19:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 14:19:44 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:9c6438e6646ea44d58b24e5c91091916f32fae2a242554df327fc162c8cc25e4`  
		Last Modified: Tue, 17 Jul 2018 14:25:00 GMT  
		Size: 63.2 MB (63202896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43b6b12085fd93e3a38a59d2814c1c653d3db09ff2862bac7c094ae0e618096e`  
		Last Modified: Tue, 17 Jul 2018 14:24:37 GMT  
		Size: 59.1 KB (59097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42799cc9a444aef808e6fa811c3ce173f06a7e1841ebe5ecaa577562315db2d0`  
		Last Modified: Tue, 17 Jul 2018 14:24:38 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b874b3160ecd01640aca9f6c4648974f7f11c0abaff16201a6139cbb2f656c`  
		Last Modified: Tue, 17 Jul 2018 14:24:37 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1968d34fab26e4a84c0ab5621d408360d84a32677a1fda4e32e1a3c28664f39`  
		Last Modified: Tue, 17 Jul 2018 14:24:37 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:14.04` - linux; 386

```console
$ docker pull ubuntu@sha256:25d5feb1b9bd53a2451e7c40f49da0cbd507e5fb8264f129bdce0813713689de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.9 MB (64895096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09e0391faa1f00dee535c1515c41a9f9299b54ca6b03a64f219ac88af635f38f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:34:00 GMT
ADD file:9e5275a290e6d296c12bec1fbb5895f27e2cd30fa99f943a7bd054cc1ab13c41 in / 
# Tue, 17 Jul 2018 12:34:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 12:34:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:34:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 12:34:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 12:34:07 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ab33d6fb6a425f8565d20c8200775a8253affa499434e807e82d34ff75f993ef`  
		Last Modified: Tue, 17 Jul 2018 12:38:23 GMT  
		Size: 64.8 MB (64828853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e304388779e89c355fa454e92f0bfdbc9a51f805c7c3261f824a24501a1d5f27`  
		Last Modified: Tue, 17 Jul 2018 12:38:00 GMT  
		Size: 64.9 KB (64863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c934b8e4a552e5f9ef1b7023de78294f4437519e843b9c38411e186b647cb785`  
		Last Modified: Tue, 17 Jul 2018 12:38:01 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4dab88b2846e6ae8a9690b22ae571e3df003de93cfc0f766c55c652b0ae5c05`  
		Last Modified: Tue, 17 Jul 2018 12:38:00 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85dcdf1805efe897e563a731a0275c87b37216222f6cea534279de891e66d554`  
		Last Modified: Tue, 17 Jul 2018 12:38:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:14.04` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:9c568ad212f82799f1bcfd929cc3eea2aa3728f5d33d2ee5405862eb90846291
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.7 MB (74679073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a35febfde1a8dc27f6f252d5e706623afc6c3ea96025d8b365b3cfe843a8f21`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 11:23:12 GMT
ADD file:a3622ab54a3ec0e60ecdbe651d828e486be7eda95666739a694b2b5fb2098dd7 in / 
# Tue, 17 Jul 2018 11:23:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:23:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:23:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:23:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:24:00 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:3d5124b458d37613f04a7e8f2a5cd712d7a65fd7dcdc5ff59c0bc360c28a7082`  
		Last Modified: Tue, 17 Jul 2018 11:28:20 GMT  
		Size: 74.6 MB (74613945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f01fb764dc8ee608beb1d157d5bab1b93ec33a1642cdb5b23d4fb14788b51d`  
		Last Modified: Tue, 17 Jul 2018 11:28:00 GMT  
		Size: 63.4 KB (63425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288e7db04aabb4119934665db3e91e47977c805a1c7b3f36257d9b1e551c2ea0`  
		Last Modified: Tue, 17 Jul 2018 11:28:00 GMT  
		Size: 659.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45f75935631971e625972a833f02569bc9fe8ba336073ea27f0746bfa04e2e9`  
		Last Modified: Tue, 17 Jul 2018 11:28:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7c6aa1e92081ecdc264d9e6dc08b2e8747bbf02234c453b2e498a278ea10b7`  
		Last Modified: Tue, 17 Jul 2018 11:28:01 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:16.04`

```console
$ docker pull ubuntu@sha256:248a460e85e4b5de685891ca11abaebdae6478277304e8fe3056222767ebff51
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
$ docker pull ubuntu@sha256:da6fba872ef36657a66384ffb2c2b5b5dc1672ec5f3b310a613c0ceb6f9b299a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.2 MB (43231132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aa3602ab41ea3384904197455e66f6435cb0261bd62a06db1d8e76cb8960c42`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 26 Jul 2018 22:23:08 GMT
ADD file:204fb7ccb19ff7e863331131138621ff4d22720b3718e8f296902cc7d4f635b5 in / 
# Thu, 26 Jul 2018 22:23:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:23:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:23:11 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:8ee29e426c26c79e7ba03ccc8bbc7fe99db00ffcbccb679d9c643b5546d8dc8a`  
		Last Modified: Thu, 26 Jul 2018 22:27:22 GMT  
		Size: 43.2 MB (43228646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e83b260b73b908ebabde46b72fc5790bf4f029b53acbbfe35da8ff8fba795ac`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26b65fd1143ee4f9b7b6b958aeafdb996172d10b723f0bba24335a8f7ae692c`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dca07f8222e24aab97f026444d66a7604e4ae2b708cf079ff67a90c42efa60`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b420ae9e10b3f6a74f527914bc3c766b128435a62eca1061f41167205d5b0230`  
		Last Modified: Thu, 26 Jul 2018 22:26:54 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:16.04` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:216fc503c96215b3e4ef9a61c37d2a6684d996494a89efc78cba4a286200a083
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 MB (38277795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a3d476a03eb6883b419b04c7da12b1fe0ff1dce67c3ade71fd4d4e41ea2c07b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:44:24 GMT
ADD file:2728f0f83bda6845711501bf943fd13abc969494272cc51fa4ba6e69566757bb in / 
# Fri, 27 Jul 2018 12:44:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:44:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:44:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:44:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:44:28 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:1b28ec1b6678c71341db2f0f49c3fccf15e9079d9ab9234f2583c3c0110e7ca9`  
		Last Modified: Fri, 27 Jul 2018 12:47:00 GMT  
		Size: 38.3 MB (38275310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5095796e5a6b7817666d2524a2c0abf8dbd0e6eaf5e5a3aa385eb4a9f08e97`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306de1710aa21ecbbc76516ef6692fb083801280201add6e6ccf10b8567836f`  
		Last Modified: Fri, 27 Jul 2018 12:46:51 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059dfcd40e5d1e53f24d4b5579ce38b8a55c04af701184cd58908ded80a41e9e`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5a3028a6551957fd8d85f610ff3ce10a84e29e90f73aedc4a9600369e19b3c`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:16.04` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:5e72a08643764d9fcf6632d6083926d6a5372d7f2ad91aec1e25000ef99c0718
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39363659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45a9f9bb2581e221184bd092324752553934af38e87d953b8f46da4677d847b4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:11:25 GMT
ADD file:245f919fbf2f9e8e80f0cf22884a2095e9f3ff0685bea98f2e8c5937553d2858 in / 
# Fri, 27 Jul 2018 12:11:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:11:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:11:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:11:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:11:33 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:1d84661bedcf328ca33c60337b0167cd51a34acd8ac083d03be2658e778e4a33`  
		Last Modified: Fri, 27 Jul 2018 12:15:26 GMT  
		Size: 39.4 MB (39361254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7952229f0c51008f9d2c699538f73c19313ff6adb1c7e774ff249ad90967e1b4`  
		Last Modified: Fri, 27 Jul 2018 12:15:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7c753d28831afc8b8b323117624887a02f818a6f7f76323b8573fa546e967f`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc39f7627e7eaa49ca5d50a7007d2e4f3187c797ac91e13e6560179ca5146d4d`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91ed830a826b5e867059f29069b2bf3f420c65fa8b0ded96ff077238b4f5810`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:16.04` - linux; 386

```console
$ docker pull ubuntu@sha256:306fe5244084b105753c64923e24a7f76f544d189637a348c103287b883da1bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.5 MB (43500530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82e7d638f68dd23d587d7712a47ccf26bd4bae2e23e6f98387e43a90ca659e45`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 11:04:12 GMT
ADD file:bf213ed5365ee4c9a7f64ec5c337df6779168f609a0fb0ddd2cdf558df419aca in / 
# Fri, 27 Jul 2018 11:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 11:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 11:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 11:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 11:04:16 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:79c3321cd1db5170b2b17e4e7904e999afc88c5ba9168e6632c722f0ced80f2b`  
		Last Modified: Fri, 27 Jul 2018 11:08:03 GMT  
		Size: 43.5 MB (43498084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc08ce9a961adeec10d1eadfa16bc1cb9d2f8994e5d43432500a75cfaa09c6c`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d8c15b299b1de7aa1b6fb37d83b146c59e520ce7bfc25254544262ca705b48`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a97a3925b890b18279fac470160ce2e973a10ef456dce7d174780d4e24550f3`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c844083148ae3343326e2b07dc524e55fee4f261a1637e68ac86a32b97c4ce16`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:16.04` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:849079cc3f1418fe64527225d105ec6ace8bdc657dbf9e5faebe04ec8d1ef232
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45576852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cb69a56db0a3c307f6a62c3cea6c961ae6bd428ac5a6901be827c10baeeb09e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Aug 2018 18:05:28 GMT
ADD file:9b4fe2a37936425ff1c2483bfa0ff02ada7e549481bd7d0377a94850e5152510 in / 
# Tue, 21 Aug 2018 18:05:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 21 Aug 2018 18:05:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:06:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 21 Aug 2018 18:06:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 21 Aug 2018 18:06:12 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:c49a7289cd353210d298ff1a94ed78172275dc2b56d017327da7ff28811d329c`  
		Last Modified: Tue, 21 Aug 2018 18:08:49 GMT  
		Size: 45.6 MB (45574399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b7d965d16a8d691cee58762e03a8c962c909fb1d0d5e9a119c4090682496a7`  
		Last Modified: Tue, 21 Aug 2018 18:08:30 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0c0736f8ab57b9c4640b9c7d527e33d818bedc6810943802c7e2d9519ef48f`  
		Last Modified: Tue, 21 Aug 2018 18:08:31 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1139f0572be9041270b915e4d26c2bacce14cbf6170aed13fdc2576eb3a375`  
		Last Modified: Tue, 21 Aug 2018 18:08:31 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6e36fdb9e0e77331c1077fc18ac38bbe372020753346fe4bb763e36cb51aec`  
		Last Modified: Tue, 21 Aug 2018 18:08:30 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:16.04` - linux; s390x

```console
$ docker pull ubuntu@sha256:7c66959556b9ab4987164c178585e5709ad38a8899022609c22abd7a004b985a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42235584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ee1cb8787c4364e1db429e3dd3924abbef4c70b9e449ca1b038410e40f24da9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:59:42 GMT
ADD file:3370b396b7b93b08d1f609f06e321c05d930dc00cb6ae8f0f65d4ed39166245b in / 
# Fri, 27 Jul 2018 12:59:42 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:59:43 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:59:44 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:59:45 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:59:45 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:3c676c78c45c4416ba6a9c1bcadd5156f03d0bca9e31f85fc01fca458930cfd5`  
		Last Modified: Fri, 27 Jul 2018 13:01:00 GMT  
		Size: 42.2 MB (42233178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a735e77c595422e7ecd0ca0e6359ba21a9769b86c1b6231aebfe8feacd95dcc7`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccb796144ba65e756e8cdfdf093072cbe9255706f96d95aad84fa242f1afb41`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe28213b67e6813cbc89ec0b7034fb71c4896077f9cbfab52de63f4c0201fc1e`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aefcb4b684bed9db0f7491ecade1c76f4268b4216658445ffa9942809ea5299d`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:18.04`

```console
$ docker pull ubuntu@sha256:aade50db36e1ed96716662cfe748789e154c213a711931c66746c42ce34aa296
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
$ docker pull ubuntu@sha256:958eaeb7e33e6c4f68f7fef69b35ca178c7f5fb0dd40db7b44a8b9eb692b9bc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.7 MB (31661203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:735f80812f90aca43213934fd321a75ef20b2e30948dbbdd2c240e8abaab8a28`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 26 Jul 2018 22:20:44 GMT
ADD file:4bb62bb05874068552efeb626f8b31b4a29f26d6cc8c7d7fc7ab4c1fdece957a in / 
# Thu, 26 Jul 2018 22:20:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:20:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:20:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:20:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:20:48 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:c64513b741452f95d8a147b69c30f403f6289542dd7b2b51dd8ba0cb35d0e08b`  
		Last Modified: Thu, 26 Jul 2018 22:23:51 GMT  
		Size: 31.7 MB (31658876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b8b12bad90b51d9f15dd4b63103ea6221b339ac3b3e75807c963e678f28624`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d85cf7a05fec99bb829db84dc5a21cc0aca569253f45d1ea10ca9e8a03fa9a`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b268720157210d21bbe49f6112f815774e6d2a6144b14911749fadfdb034f0`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12192999ff18f01315563c63333d7c1059cd8e64dffe75fffe504b95eeb093c`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:18.04` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:adcbd252e74c0d768e3bdaa0a374c02e8a9c8a3da1caba178ebcc6e8a238a9ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27090212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:538d198057abb0c1ff2b9ce3960a2e33173c2762ee23892f51e1fbf2f0c4e046`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:42:36 GMT
ADD file:47f7e3f1a2e59db306e3a56e780d3f8ba5fd3d932b794b75c7498e841f28a2a2 in / 
# Fri, 27 Jul 2018 12:42:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:42:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:42:45 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:42:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:42:46 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:4471275a8ba0e3fdf4738cff2fc5894401657de21516e93f545073f400d5f8ad`  
		Last Modified: Fri, 27 Jul 2018 12:44:58 GMT  
		Size: 27.1 MB (27087873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5237e132a11f8263c1488f3e7c927f5270ab3190e8019493894b8be0b90e2894`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130e9bf920a8414b61ce20da108ad36cb1464d951e7ad7e6fc9e22543e66d0fe`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec82554e9e76401898045ce08ffa65adba92889a38fd1ed0e0aa1138c86aad8`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014902bb4456149ea7f8848c1e2af2562f399e6150abf1ae8f965a9696fe6f5c`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:18.04` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:2dc32a4601c06ecc87695998e4f08369f82c688696fe3b68bf9b44c2061f668a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28544116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04375af0bacdddbc6e342ab0f3d61955215020412992102c4de9c4159672d163`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:09:10 GMT
ADD file:357c9357857d5a92f29880fc8ca791773848b7b88fef7134a7720cb2331b12f7 in / 
# Fri, 27 Jul 2018 12:09:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:09:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:09:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:09:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:09:18 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:2b60dc99953c9841f53eb3da368719b4b170ed5630d29a18061f8ae06d665a10`  
		Last Modified: Fri, 27 Jul 2018 12:12:10 GMT  
		Size: 28.5 MB (28541790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc279db4d54bcdc39ea181a2f68d8d3ede18fdc923632d061b2a88e66ffd8c0`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e84340d84f7fb6fc187176d6fc1c9d00351dc7829382824792ecaafe8597e80`  
		Last Modified: Fri, 27 Jul 2018 12:12:01 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb10d180ec0590b9379ca983c39fb16d8b306f71a82d1343a751351dea3c743`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eade289cb481422f326b3de72e76582225e7c565add08d4068a7494bb36cff33`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:18.04` - linux; 386

```console
$ docker pull ubuntu@sha256:551336334524b9766158008502f4852c9ea6645b3175e087b681e28129207df1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (32015865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f3c425f8454077f38f45f4bf926e52f8c74f2b7db865b03717a82ad150e20cb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 11:02:20 GMT
ADD file:5bfd7485d807945e5474773b293d968db37db49179d50e6e69bf707911ac17e3 in / 
# Fri, 27 Jul 2018 11:02:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 11:02:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 11:02:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 11:02:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 11:02:36 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:82a30ac77cd24304648497982cdbda51fb58d722e785db3bbd2ca928bae1ba6d`  
		Last Modified: Fri, 27 Jul 2018 11:04:53 GMT  
		Size: 32.0 MB (32013543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc6a4f2e44ef60c2d5d571f98e466c8a75def5ea9747b21d427cbd3cb58cfdb`  
		Last Modified: Fri, 27 Jul 2018 11:04:39 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a580f737bc267149286e1bc4fb67e78249def991553b403166eb056cde8abc9`  
		Last Modified: Fri, 27 Jul 2018 11:04:39 GMT  
		Size: 467.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724cd373c469dc7612575ae17e15a55d15e73e99410000d7842e8b4dc7d0c52f`  
		Last Modified: Fri, 27 Jul 2018 11:04:39 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2aac7fcda7961a2a59f7915466c980456ccfb7cb74ad73c536ad8c43ee1d488`  
		Last Modified: Fri, 27 Jul 2018 11:04:39 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:18.04` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:9cc167741c8fd4d255a55cc40e4c30fe9c76e209235cd05edcdb319d97efd810
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35178088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e25cead252cf90d844b96a8c7e69e12e2e549d35f8505aaa19c45c7216b8a28d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Aug 2018 18:03:28 GMT
ADD file:82798c491407745c1154b41d58fb93a94096f3ad5b01d5f48d3ee361b16e0ad7 in / 
# Tue, 21 Aug 2018 18:03:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 21 Aug 2018 18:03:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:03:38 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 21 Aug 2018 18:03:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 21 Aug 2018 18:03:43 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:7620e02a76798695f19060289126fa57f6ed25d3969a85fd020d7c0499be71ad`  
		Last Modified: Tue, 21 Aug 2018 18:06:53 GMT  
		Size: 35.2 MB (35175653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ad0b56b89650cc1f709a4359f2bc1bdfaabce401a09485316a8dac16fc64b0`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555bfe36ad129f1bef944f8bd1582e2db361633745fb5eace0e779f7ff7e0df`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8acd8c350f3bed5dc6f7bdcdf709152663a55d16738493b40b6d6a315f80481`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f16a59cef3be61cd1c9b513e1b4cb7d455d4c302cb3cae3d9a45ebcfa81ac5`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:18.04` - linux; s390x

```console
$ docker pull ubuntu@sha256:6f409a884252a89bd59236feb933cb09ba7bab9de005e71a55c8d1d429c18c5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30103960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14fce7c7f0d804cee050ef20c6f48667b83061d6cc3aa6d060eba6d8a62426ea`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:59:11 GMT
ADD file:6d50dd4193369f5a542ac2c0ccb2292395cf1ee56b793d1dfbdb557ab44d81f1 in / 
# Fri, 27 Jul 2018 12:59:11 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:59:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:59:12 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:59:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:59:13 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:4719065ed0d5645c246dcdd4ca158a6c1e92e04e20dbab853e3f3758b2f8f846`  
		Last Modified: Fri, 27 Jul 2018 13:00:03 GMT  
		Size: 30.1 MB (30101637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b18308a238dde51de62f4272ca2b77fb8b72d621e9e346ab11bdac75bd3519`  
		Last Modified: Fri, 27 Jul 2018 12:59:58 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf3572b08303eb66dc9a2e18293f508279d696883a1cdeb08fb6bc8c3da237e`  
		Last Modified: Fri, 27 Jul 2018 12:59:58 GMT  
		Size: 462.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e708eaaf88d53872a1e0ad4273788ba4f41443fd4626c6a8bb5ec56fd5251d0c`  
		Last Modified: Fri, 27 Jul 2018 12:59:58 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c864c3cec259104391ff3bd13d0b7824c1e785596b24987ebb59afcfde01cedf`  
		Last Modified: Fri, 27 Jul 2018 12:59:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:18.10`

```console
$ docker pull ubuntu@sha256:e27913f0141e3d2ac5c4f806606d02c9eb6520bbe75925e732fad8417d1770b0
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
$ docker pull ubuntu@sha256:a71973b68fb20bb859eea71e999f75b33c0c8020426052246c0c279afa5a8129
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.0 MB (29016642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f17aca1e0aaaf957d19cfbfd00be35dd4c51d60b7627790f970a66bd41ea95e9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 26 Jul 2018 22:21:41 GMT
ADD file:9f51aeb71bf83f4ceaa8d08d531b543eb69f30598f238c91f039bcf7e4849cf4 in / 
# Thu, 26 Jul 2018 22:21:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:21:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:21:43 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:21:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:21:44 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:94bc1be7d76593319fde8d41d8d93f08273fd256d6ff90659454f6c43febf6d3`  
		Last Modified: Thu, 26 Jul 2018 22:25:34 GMT  
		Size: 29.0 MB (29014770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3047be2c09afb87b05bfd89770ad0d1399b1d5be52caec4ce668f38b9a317abe`  
		Last Modified: Thu, 26 Jul 2018 22:25:29 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28eb6bec125e419dbc7b2e152e49003baad411abda8f4add65007609ac9f95f`  
		Last Modified: Thu, 26 Jul 2018 22:25:29 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9f08583bc24164bcb79d3a21f42e934bc8afb8ba968badb2fbf491fc0dfc35`  
		Last Modified: Thu, 26 Jul 2018 22:25:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:18.10` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:70e4541724e685975006c7af309538f70ad7c7da082797e887311ed3add5f5cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.6 MB (24575347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33e6b5f51901618c3538c97d7c5aba9b242193156b3b6091b0b14b180afa45c2`
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

### `ubuntu:18.10` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:727a247158515ffe5d8fb808d0cc2926036eb66bb1080885131e3de8893410a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.1 MB (26075065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5ec9984207cedbeb19d3e3411a05399f3ab5f9246dafcca3a2f3af7594d8fca`
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

### `ubuntu:18.10` - linux; 386

```console
$ docker pull ubuntu@sha256:15711827ebb25b265890f14c7ce9cd30c7cf6ec84959f754695a689763796da2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.4 MB (29427679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:057c12362bd2caa489adac24ce0e76529ecee68b47302f6057b1a069d7ff936c`
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

### `ubuntu:18.10` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:5b3f8f7c6da0a74cf3024cf9d1229cd57f58cbef0bb419f0212ad977194342e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 MB (32728819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2390a045d02c122739acd33bb52efe614819bbbbab0c8349c1773d490f6bd1a4`
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

### `ubuntu:18.10` - linux; s390x

```console
$ docker pull ubuntu@sha256:b400ad68835b1fb395181efb6fb9a8651d42bedd4daa5bc059844760082adf6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27662628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7abb698a1a5e212eeffa6362a211d5b4259726e26a130b3ae1c9f498d8fad913`
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

## `ubuntu:bionic`

```console
$ docker pull ubuntu@sha256:aade50db36e1ed96716662cfe748789e154c213a711931c66746c42ce34aa296
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
$ docker pull ubuntu@sha256:958eaeb7e33e6c4f68f7fef69b35ca178c7f5fb0dd40db7b44a8b9eb692b9bc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.7 MB (31661203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:735f80812f90aca43213934fd321a75ef20b2e30948dbbdd2c240e8abaab8a28`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 26 Jul 2018 22:20:44 GMT
ADD file:4bb62bb05874068552efeb626f8b31b4a29f26d6cc8c7d7fc7ab4c1fdece957a in / 
# Thu, 26 Jul 2018 22:20:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:20:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:20:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:20:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:20:48 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:c64513b741452f95d8a147b69c30f403f6289542dd7b2b51dd8ba0cb35d0e08b`  
		Last Modified: Thu, 26 Jul 2018 22:23:51 GMT  
		Size: 31.7 MB (31658876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b8b12bad90b51d9f15dd4b63103ea6221b339ac3b3e75807c963e678f28624`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d85cf7a05fec99bb829db84dc5a21cc0aca569253f45d1ea10ca9e8a03fa9a`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b268720157210d21bbe49f6112f815774e6d2a6144b14911749fadfdb034f0`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12192999ff18f01315563c63333d7c1059cd8e64dffe75fffe504b95eeb093c`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:adcbd252e74c0d768e3bdaa0a374c02e8a9c8a3da1caba178ebcc6e8a238a9ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27090212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:538d198057abb0c1ff2b9ce3960a2e33173c2762ee23892f51e1fbf2f0c4e046`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:42:36 GMT
ADD file:47f7e3f1a2e59db306e3a56e780d3f8ba5fd3d932b794b75c7498e841f28a2a2 in / 
# Fri, 27 Jul 2018 12:42:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:42:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:42:45 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:42:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:42:46 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:4471275a8ba0e3fdf4738cff2fc5894401657de21516e93f545073f400d5f8ad`  
		Last Modified: Fri, 27 Jul 2018 12:44:58 GMT  
		Size: 27.1 MB (27087873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5237e132a11f8263c1488f3e7c927f5270ab3190e8019493894b8be0b90e2894`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130e9bf920a8414b61ce20da108ad36cb1464d951e7ad7e6fc9e22543e66d0fe`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec82554e9e76401898045ce08ffa65adba92889a38fd1ed0e0aa1138c86aad8`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014902bb4456149ea7f8848c1e2af2562f399e6150abf1ae8f965a9696fe6f5c`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:2dc32a4601c06ecc87695998e4f08369f82c688696fe3b68bf9b44c2061f668a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28544116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04375af0bacdddbc6e342ab0f3d61955215020412992102c4de9c4159672d163`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:09:10 GMT
ADD file:357c9357857d5a92f29880fc8ca791773848b7b88fef7134a7720cb2331b12f7 in / 
# Fri, 27 Jul 2018 12:09:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:09:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:09:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:09:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:09:18 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:2b60dc99953c9841f53eb3da368719b4b170ed5630d29a18061f8ae06d665a10`  
		Last Modified: Fri, 27 Jul 2018 12:12:10 GMT  
		Size: 28.5 MB (28541790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc279db4d54bcdc39ea181a2f68d8d3ede18fdc923632d061b2a88e66ffd8c0`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e84340d84f7fb6fc187176d6fc1c9d00351dc7829382824792ecaafe8597e80`  
		Last Modified: Fri, 27 Jul 2018 12:12:01 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb10d180ec0590b9379ca983c39fb16d8b306f71a82d1343a751351dea3c743`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eade289cb481422f326b3de72e76582225e7c565add08d4068a7494bb36cff33`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic` - linux; 386

```console
$ docker pull ubuntu@sha256:551336334524b9766158008502f4852c9ea6645b3175e087b681e28129207df1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (32015865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f3c425f8454077f38f45f4bf926e52f8c74f2b7db865b03717a82ad150e20cb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 11:02:20 GMT
ADD file:5bfd7485d807945e5474773b293d968db37db49179d50e6e69bf707911ac17e3 in / 
# Fri, 27 Jul 2018 11:02:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 11:02:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 11:02:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 11:02:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 11:02:36 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:82a30ac77cd24304648497982cdbda51fb58d722e785db3bbd2ca928bae1ba6d`  
		Last Modified: Fri, 27 Jul 2018 11:04:53 GMT  
		Size: 32.0 MB (32013543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc6a4f2e44ef60c2d5d571f98e466c8a75def5ea9747b21d427cbd3cb58cfdb`  
		Last Modified: Fri, 27 Jul 2018 11:04:39 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a580f737bc267149286e1bc4fb67e78249def991553b403166eb056cde8abc9`  
		Last Modified: Fri, 27 Jul 2018 11:04:39 GMT  
		Size: 467.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724cd373c469dc7612575ae17e15a55d15e73e99410000d7842e8b4dc7d0c52f`  
		Last Modified: Fri, 27 Jul 2018 11:04:39 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2aac7fcda7961a2a59f7915466c980456ccfb7cb74ad73c536ad8c43ee1d488`  
		Last Modified: Fri, 27 Jul 2018 11:04:39 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:9cc167741c8fd4d255a55cc40e4c30fe9c76e209235cd05edcdb319d97efd810
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35178088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e25cead252cf90d844b96a8c7e69e12e2e549d35f8505aaa19c45c7216b8a28d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Aug 2018 18:03:28 GMT
ADD file:82798c491407745c1154b41d58fb93a94096f3ad5b01d5f48d3ee361b16e0ad7 in / 
# Tue, 21 Aug 2018 18:03:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 21 Aug 2018 18:03:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:03:38 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 21 Aug 2018 18:03:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 21 Aug 2018 18:03:43 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:7620e02a76798695f19060289126fa57f6ed25d3969a85fd020d7c0499be71ad`  
		Last Modified: Tue, 21 Aug 2018 18:06:53 GMT  
		Size: 35.2 MB (35175653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ad0b56b89650cc1f709a4359f2bc1bdfaabce401a09485316a8dac16fc64b0`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555bfe36ad129f1bef944f8bd1582e2db361633745fb5eace0e779f7ff7e0df`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8acd8c350f3bed5dc6f7bdcdf709152663a55d16738493b40b6d6a315f80481`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f16a59cef3be61cd1c9b513e1b4cb7d455d4c302cb3cae3d9a45ebcfa81ac5`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic` - linux; s390x

```console
$ docker pull ubuntu@sha256:6f409a884252a89bd59236feb933cb09ba7bab9de005e71a55c8d1d429c18c5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30103960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14fce7c7f0d804cee050ef20c6f48667b83061d6cc3aa6d060eba6d8a62426ea`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:59:11 GMT
ADD file:6d50dd4193369f5a542ac2c0ccb2292395cf1ee56b793d1dfbdb557ab44d81f1 in / 
# Fri, 27 Jul 2018 12:59:11 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:59:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:59:12 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:59:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:59:13 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:4719065ed0d5645c246dcdd4ca158a6c1e92e04e20dbab853e3f3758b2f8f846`  
		Last Modified: Fri, 27 Jul 2018 13:00:03 GMT  
		Size: 30.1 MB (30101637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b18308a238dde51de62f4272ca2b77fb8b72d621e9e346ab11bdac75bd3519`  
		Last Modified: Fri, 27 Jul 2018 12:59:58 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf3572b08303eb66dc9a2e18293f508279d696883a1cdeb08fb6bc8c3da237e`  
		Last Modified: Fri, 27 Jul 2018 12:59:58 GMT  
		Size: 462.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e708eaaf88d53872a1e0ad4273788ba4f41443fd4626c6a8bb5ec56fd5251d0c`  
		Last Modified: Fri, 27 Jul 2018 12:59:58 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c864c3cec259104391ff3bd13d0b7824c1e785596b24987ebb59afcfde01cedf`  
		Last Modified: Fri, 27 Jul 2018 12:59:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:bionic-20180724.1`

```console
$ docker pull ubuntu@sha256:aade50db36e1ed96716662cfe748789e154c213a711931c66746c42ce34aa296
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:bionic-20180724.1` - linux; amd64

```console
$ docker pull ubuntu@sha256:958eaeb7e33e6c4f68f7fef69b35ca178c7f5fb0dd40db7b44a8b9eb692b9bc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.7 MB (31661203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:735f80812f90aca43213934fd321a75ef20b2e30948dbbdd2c240e8abaab8a28`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 26 Jul 2018 22:20:44 GMT
ADD file:4bb62bb05874068552efeb626f8b31b4a29f26d6cc8c7d7fc7ab4c1fdece957a in / 
# Thu, 26 Jul 2018 22:20:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:20:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:20:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:20:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:20:48 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:c64513b741452f95d8a147b69c30f403f6289542dd7b2b51dd8ba0cb35d0e08b`  
		Last Modified: Thu, 26 Jul 2018 22:23:51 GMT  
		Size: 31.7 MB (31658876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b8b12bad90b51d9f15dd4b63103ea6221b339ac3b3e75807c963e678f28624`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d85cf7a05fec99bb829db84dc5a21cc0aca569253f45d1ea10ca9e8a03fa9a`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b268720157210d21bbe49f6112f815774e6d2a6144b14911749fadfdb034f0`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12192999ff18f01315563c63333d7c1059cd8e64dffe75fffe504b95eeb093c`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic-20180724.1` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:adcbd252e74c0d768e3bdaa0a374c02e8a9c8a3da1caba178ebcc6e8a238a9ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27090212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:538d198057abb0c1ff2b9ce3960a2e33173c2762ee23892f51e1fbf2f0c4e046`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:42:36 GMT
ADD file:47f7e3f1a2e59db306e3a56e780d3f8ba5fd3d932b794b75c7498e841f28a2a2 in / 
# Fri, 27 Jul 2018 12:42:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:42:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:42:45 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:42:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:42:46 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:4471275a8ba0e3fdf4738cff2fc5894401657de21516e93f545073f400d5f8ad`  
		Last Modified: Fri, 27 Jul 2018 12:44:58 GMT  
		Size: 27.1 MB (27087873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5237e132a11f8263c1488f3e7c927f5270ab3190e8019493894b8be0b90e2894`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130e9bf920a8414b61ce20da108ad36cb1464d951e7ad7e6fc9e22543e66d0fe`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec82554e9e76401898045ce08ffa65adba92889a38fd1ed0e0aa1138c86aad8`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014902bb4456149ea7f8848c1e2af2562f399e6150abf1ae8f965a9696fe6f5c`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic-20180724.1` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:2dc32a4601c06ecc87695998e4f08369f82c688696fe3b68bf9b44c2061f668a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28544116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04375af0bacdddbc6e342ab0f3d61955215020412992102c4de9c4159672d163`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:09:10 GMT
ADD file:357c9357857d5a92f29880fc8ca791773848b7b88fef7134a7720cb2331b12f7 in / 
# Fri, 27 Jul 2018 12:09:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:09:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:09:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:09:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:09:18 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:2b60dc99953c9841f53eb3da368719b4b170ed5630d29a18061f8ae06d665a10`  
		Last Modified: Fri, 27 Jul 2018 12:12:10 GMT  
		Size: 28.5 MB (28541790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc279db4d54bcdc39ea181a2f68d8d3ede18fdc923632d061b2a88e66ffd8c0`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e84340d84f7fb6fc187176d6fc1c9d00351dc7829382824792ecaafe8597e80`  
		Last Modified: Fri, 27 Jul 2018 12:12:01 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb10d180ec0590b9379ca983c39fb16d8b306f71a82d1343a751351dea3c743`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eade289cb481422f326b3de72e76582225e7c565add08d4068a7494bb36cff33`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic-20180724.1` - linux; 386

```console
$ docker pull ubuntu@sha256:551336334524b9766158008502f4852c9ea6645b3175e087b681e28129207df1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (32015865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f3c425f8454077f38f45f4bf926e52f8c74f2b7db865b03717a82ad150e20cb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 11:02:20 GMT
ADD file:5bfd7485d807945e5474773b293d968db37db49179d50e6e69bf707911ac17e3 in / 
# Fri, 27 Jul 2018 11:02:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 11:02:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 11:02:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 11:02:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 11:02:36 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:82a30ac77cd24304648497982cdbda51fb58d722e785db3bbd2ca928bae1ba6d`  
		Last Modified: Fri, 27 Jul 2018 11:04:53 GMT  
		Size: 32.0 MB (32013543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc6a4f2e44ef60c2d5d571f98e466c8a75def5ea9747b21d427cbd3cb58cfdb`  
		Last Modified: Fri, 27 Jul 2018 11:04:39 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a580f737bc267149286e1bc4fb67e78249def991553b403166eb056cde8abc9`  
		Last Modified: Fri, 27 Jul 2018 11:04:39 GMT  
		Size: 467.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724cd373c469dc7612575ae17e15a55d15e73e99410000d7842e8b4dc7d0c52f`  
		Last Modified: Fri, 27 Jul 2018 11:04:39 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2aac7fcda7961a2a59f7915466c980456ccfb7cb74ad73c536ad8c43ee1d488`  
		Last Modified: Fri, 27 Jul 2018 11:04:39 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic-20180724.1` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:9cc167741c8fd4d255a55cc40e4c30fe9c76e209235cd05edcdb319d97efd810
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35178088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e25cead252cf90d844b96a8c7e69e12e2e549d35f8505aaa19c45c7216b8a28d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Aug 2018 18:03:28 GMT
ADD file:82798c491407745c1154b41d58fb93a94096f3ad5b01d5f48d3ee361b16e0ad7 in / 
# Tue, 21 Aug 2018 18:03:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 21 Aug 2018 18:03:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:03:38 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 21 Aug 2018 18:03:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 21 Aug 2018 18:03:43 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:7620e02a76798695f19060289126fa57f6ed25d3969a85fd020d7c0499be71ad`  
		Last Modified: Tue, 21 Aug 2018 18:06:53 GMT  
		Size: 35.2 MB (35175653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ad0b56b89650cc1f709a4359f2bc1bdfaabce401a09485316a8dac16fc64b0`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555bfe36ad129f1bef944f8bd1582e2db361633745fb5eace0e779f7ff7e0df`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8acd8c350f3bed5dc6f7bdcdf709152663a55d16738493b40b6d6a315f80481`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f16a59cef3be61cd1c9b513e1b4cb7d455d4c302cb3cae3d9a45ebcfa81ac5`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic-20180724.1` - linux; s390x

```console
$ docker pull ubuntu@sha256:6f409a884252a89bd59236feb933cb09ba7bab9de005e71a55c8d1d429c18c5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30103960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14fce7c7f0d804cee050ef20c6f48667b83061d6cc3aa6d060eba6d8a62426ea`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:59:11 GMT
ADD file:6d50dd4193369f5a542ac2c0ccb2292395cf1ee56b793d1dfbdb557ab44d81f1 in / 
# Fri, 27 Jul 2018 12:59:11 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:59:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:59:12 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:59:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:59:13 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:4719065ed0d5645c246dcdd4ca158a6c1e92e04e20dbab853e3f3758b2f8f846`  
		Last Modified: Fri, 27 Jul 2018 13:00:03 GMT  
		Size: 30.1 MB (30101637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b18308a238dde51de62f4272ca2b77fb8b72d621e9e346ab11bdac75bd3519`  
		Last Modified: Fri, 27 Jul 2018 12:59:58 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf3572b08303eb66dc9a2e18293f508279d696883a1cdeb08fb6bc8c3da237e`  
		Last Modified: Fri, 27 Jul 2018 12:59:58 GMT  
		Size: 462.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e708eaaf88d53872a1e0ad4273788ba4f41443fd4626c6a8bb5ec56fd5251d0c`  
		Last Modified: Fri, 27 Jul 2018 12:59:58 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c864c3cec259104391ff3bd13d0b7824c1e785596b24987ebb59afcfde01cedf`  
		Last Modified: Fri, 27 Jul 2018 12:59:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:cosmic`

```console
$ docker pull ubuntu@sha256:e27913f0141e3d2ac5c4f806606d02c9eb6520bbe75925e732fad8417d1770b0
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
$ docker pull ubuntu@sha256:a71973b68fb20bb859eea71e999f75b33c0c8020426052246c0c279afa5a8129
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.0 MB (29016642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f17aca1e0aaaf957d19cfbfd00be35dd4c51d60b7627790f970a66bd41ea95e9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 26 Jul 2018 22:21:41 GMT
ADD file:9f51aeb71bf83f4ceaa8d08d531b543eb69f30598f238c91f039bcf7e4849cf4 in / 
# Thu, 26 Jul 2018 22:21:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:21:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:21:43 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:21:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:21:44 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:94bc1be7d76593319fde8d41d8d93f08273fd256d6ff90659454f6c43febf6d3`  
		Last Modified: Thu, 26 Jul 2018 22:25:34 GMT  
		Size: 29.0 MB (29014770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3047be2c09afb87b05bfd89770ad0d1399b1d5be52caec4ce668f38b9a317abe`  
		Last Modified: Thu, 26 Jul 2018 22:25:29 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28eb6bec125e419dbc7b2e152e49003baad411abda8f4add65007609ac9f95f`  
		Last Modified: Thu, 26 Jul 2018 22:25:29 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9f08583bc24164bcb79d3a21f42e934bc8afb8ba968badb2fbf491fc0dfc35`  
		Last Modified: Thu, 26 Jul 2018 22:25:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:cosmic` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:70e4541724e685975006c7af309538f70ad7c7da082797e887311ed3add5f5cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.6 MB (24575347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33e6b5f51901618c3538c97d7c5aba9b242193156b3b6091b0b14b180afa45c2`
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

### `ubuntu:cosmic` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:727a247158515ffe5d8fb808d0cc2926036eb66bb1080885131e3de8893410a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.1 MB (26075065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5ec9984207cedbeb19d3e3411a05399f3ab5f9246dafcca3a2f3af7594d8fca`
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

### `ubuntu:cosmic` - linux; 386

```console
$ docker pull ubuntu@sha256:15711827ebb25b265890f14c7ce9cd30c7cf6ec84959f754695a689763796da2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.4 MB (29427679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:057c12362bd2caa489adac24ce0e76529ecee68b47302f6057b1a069d7ff936c`
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

### `ubuntu:cosmic` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:5b3f8f7c6da0a74cf3024cf9d1229cd57f58cbef0bb419f0212ad977194342e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 MB (32728819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2390a045d02c122739acd33bb52efe614819bbbbab0c8349c1773d490f6bd1a4`
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

### `ubuntu:cosmic` - linux; s390x

```console
$ docker pull ubuntu@sha256:b400ad68835b1fb395181efb6fb9a8651d42bedd4daa5bc059844760082adf6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27662628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7abb698a1a5e212eeffa6362a211d5b4259726e26a130b3ae1c9f498d8fad913`
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

## `ubuntu:cosmic-20180725`

```console
$ docker pull ubuntu@sha256:e27913f0141e3d2ac5c4f806606d02c9eb6520bbe75925e732fad8417d1770b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:cosmic-20180725` - linux; amd64

```console
$ docker pull ubuntu@sha256:a71973b68fb20bb859eea71e999f75b33c0c8020426052246c0c279afa5a8129
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.0 MB (29016642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f17aca1e0aaaf957d19cfbfd00be35dd4c51d60b7627790f970a66bd41ea95e9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 26 Jul 2018 22:21:41 GMT
ADD file:9f51aeb71bf83f4ceaa8d08d531b543eb69f30598f238c91f039bcf7e4849cf4 in / 
# Thu, 26 Jul 2018 22:21:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:21:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:21:43 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:21:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:21:44 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:94bc1be7d76593319fde8d41d8d93f08273fd256d6ff90659454f6c43febf6d3`  
		Last Modified: Thu, 26 Jul 2018 22:25:34 GMT  
		Size: 29.0 MB (29014770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3047be2c09afb87b05bfd89770ad0d1399b1d5be52caec4ce668f38b9a317abe`  
		Last Modified: Thu, 26 Jul 2018 22:25:29 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28eb6bec125e419dbc7b2e152e49003baad411abda8f4add65007609ac9f95f`  
		Last Modified: Thu, 26 Jul 2018 22:25:29 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9f08583bc24164bcb79d3a21f42e934bc8afb8ba968badb2fbf491fc0dfc35`  
		Last Modified: Thu, 26 Jul 2018 22:25:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:cosmic-20180725` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:70e4541724e685975006c7af309538f70ad7c7da082797e887311ed3add5f5cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.6 MB (24575347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33e6b5f51901618c3538c97d7c5aba9b242193156b3b6091b0b14b180afa45c2`
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

### `ubuntu:cosmic-20180725` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:727a247158515ffe5d8fb808d0cc2926036eb66bb1080885131e3de8893410a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.1 MB (26075065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5ec9984207cedbeb19d3e3411a05399f3ab5f9246dafcca3a2f3af7594d8fca`
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

### `ubuntu:cosmic-20180725` - linux; 386

```console
$ docker pull ubuntu@sha256:15711827ebb25b265890f14c7ce9cd30c7cf6ec84959f754695a689763796da2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.4 MB (29427679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:057c12362bd2caa489adac24ce0e76529ecee68b47302f6057b1a069d7ff936c`
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

### `ubuntu:cosmic-20180725` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:5b3f8f7c6da0a74cf3024cf9d1229cd57f58cbef0bb419f0212ad977194342e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 MB (32728819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2390a045d02c122739acd33bb52efe614819bbbbab0c8349c1773d490f6bd1a4`
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

### `ubuntu:cosmic-20180725` - linux; s390x

```console
$ docker pull ubuntu@sha256:b400ad68835b1fb395181efb6fb9a8651d42bedd4daa5bc059844760082adf6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27662628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7abb698a1a5e212eeffa6362a211d5b4259726e26a130b3ae1c9f498d8fad913`
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

## `ubuntu:devel`

```console
$ docker pull ubuntu@sha256:e27913f0141e3d2ac5c4f806606d02c9eb6520bbe75925e732fad8417d1770b0
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
$ docker pull ubuntu@sha256:a71973b68fb20bb859eea71e999f75b33c0c8020426052246c0c279afa5a8129
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.0 MB (29016642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f17aca1e0aaaf957d19cfbfd00be35dd4c51d60b7627790f970a66bd41ea95e9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 26 Jul 2018 22:21:41 GMT
ADD file:9f51aeb71bf83f4ceaa8d08d531b543eb69f30598f238c91f039bcf7e4849cf4 in / 
# Thu, 26 Jul 2018 22:21:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:21:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:21:43 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:21:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:21:44 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:94bc1be7d76593319fde8d41d8d93f08273fd256d6ff90659454f6c43febf6d3`  
		Last Modified: Thu, 26 Jul 2018 22:25:34 GMT  
		Size: 29.0 MB (29014770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3047be2c09afb87b05bfd89770ad0d1399b1d5be52caec4ce668f38b9a317abe`  
		Last Modified: Thu, 26 Jul 2018 22:25:29 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28eb6bec125e419dbc7b2e152e49003baad411abda8f4add65007609ac9f95f`  
		Last Modified: Thu, 26 Jul 2018 22:25:29 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9f08583bc24164bcb79d3a21f42e934bc8afb8ba968badb2fbf491fc0dfc35`  
		Last Modified: Thu, 26 Jul 2018 22:25:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:devel` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:70e4541724e685975006c7af309538f70ad7c7da082797e887311ed3add5f5cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.6 MB (24575347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33e6b5f51901618c3538c97d7c5aba9b242193156b3b6091b0b14b180afa45c2`
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

### `ubuntu:devel` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:727a247158515ffe5d8fb808d0cc2926036eb66bb1080885131e3de8893410a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.1 MB (26075065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5ec9984207cedbeb19d3e3411a05399f3ab5f9246dafcca3a2f3af7594d8fca`
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

### `ubuntu:devel` - linux; 386

```console
$ docker pull ubuntu@sha256:15711827ebb25b265890f14c7ce9cd30c7cf6ec84959f754695a689763796da2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.4 MB (29427679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:057c12362bd2caa489adac24ce0e76529ecee68b47302f6057b1a069d7ff936c`
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

### `ubuntu:devel` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:5b3f8f7c6da0a74cf3024cf9d1229cd57f58cbef0bb419f0212ad977194342e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 MB (32728819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2390a045d02c122739acd33bb52efe614819bbbbab0c8349c1773d490f6bd1a4`
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

### `ubuntu:devel` - linux; s390x

```console
$ docker pull ubuntu@sha256:b400ad68835b1fb395181efb6fb9a8651d42bedd4daa5bc059844760082adf6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27662628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7abb698a1a5e212eeffa6362a211d5b4259726e26a130b3ae1c9f498d8fad913`
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

## `ubuntu:latest`

```console
$ docker pull ubuntu@sha256:3f119dc0737f57f704ebecac8a6d8477b0f6ca1ca0332c7ee1395ed2c6a82be7
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
$ docker pull ubuntu@sha256:958eaeb7e33e6c4f68f7fef69b35ca178c7f5fb0dd40db7b44a8b9eb692b9bc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.7 MB (31661203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:735f80812f90aca43213934fd321a75ef20b2e30948dbbdd2c240e8abaab8a28`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 26 Jul 2018 22:20:44 GMT
ADD file:4bb62bb05874068552efeb626f8b31b4a29f26d6cc8c7d7fc7ab4c1fdece957a in / 
# Thu, 26 Jul 2018 22:20:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:20:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:20:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:20:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:20:48 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:c64513b741452f95d8a147b69c30f403f6289542dd7b2b51dd8ba0cb35d0e08b`  
		Last Modified: Thu, 26 Jul 2018 22:23:51 GMT  
		Size: 31.7 MB (31658876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b8b12bad90b51d9f15dd4b63103ea6221b339ac3b3e75807c963e678f28624`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d85cf7a05fec99bb829db84dc5a21cc0aca569253f45d1ea10ca9e8a03fa9a`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b268720157210d21bbe49f6112f815774e6d2a6144b14911749fadfdb034f0`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12192999ff18f01315563c63333d7c1059cd8e64dffe75fffe504b95eeb093c`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:latest` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:adcbd252e74c0d768e3bdaa0a374c02e8a9c8a3da1caba178ebcc6e8a238a9ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27090212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:538d198057abb0c1ff2b9ce3960a2e33173c2762ee23892f51e1fbf2f0c4e046`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:42:36 GMT
ADD file:47f7e3f1a2e59db306e3a56e780d3f8ba5fd3d932b794b75c7498e841f28a2a2 in / 
# Fri, 27 Jul 2018 12:42:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:42:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:42:45 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:42:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:42:46 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:4471275a8ba0e3fdf4738cff2fc5894401657de21516e93f545073f400d5f8ad`  
		Last Modified: Fri, 27 Jul 2018 12:44:58 GMT  
		Size: 27.1 MB (27087873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5237e132a11f8263c1488f3e7c927f5270ab3190e8019493894b8be0b90e2894`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130e9bf920a8414b61ce20da108ad36cb1464d951e7ad7e6fc9e22543e66d0fe`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec82554e9e76401898045ce08ffa65adba92889a38fd1ed0e0aa1138c86aad8`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014902bb4456149ea7f8848c1e2af2562f399e6150abf1ae8f965a9696fe6f5c`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:latest` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:2dc32a4601c06ecc87695998e4f08369f82c688696fe3b68bf9b44c2061f668a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28544116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04375af0bacdddbc6e342ab0f3d61955215020412992102c4de9c4159672d163`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:09:10 GMT
ADD file:357c9357857d5a92f29880fc8ca791773848b7b88fef7134a7720cb2331b12f7 in / 
# Fri, 27 Jul 2018 12:09:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:09:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:09:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:09:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:09:18 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:2b60dc99953c9841f53eb3da368719b4b170ed5630d29a18061f8ae06d665a10`  
		Last Modified: Fri, 27 Jul 2018 12:12:10 GMT  
		Size: 28.5 MB (28541790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc279db4d54bcdc39ea181a2f68d8d3ede18fdc923632d061b2a88e66ffd8c0`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e84340d84f7fb6fc187176d6fc1c9d00351dc7829382824792ecaafe8597e80`  
		Last Modified: Fri, 27 Jul 2018 12:12:01 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb10d180ec0590b9379ca983c39fb16d8b306f71a82d1343a751351dea3c743`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eade289cb481422f326b3de72e76582225e7c565add08d4068a7494bb36cff33`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:latest` - linux; 386

```console
$ docker pull ubuntu@sha256:551336334524b9766158008502f4852c9ea6645b3175e087b681e28129207df1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (32015865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f3c425f8454077f38f45f4bf926e52f8c74f2b7db865b03717a82ad150e20cb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 11:02:20 GMT
ADD file:5bfd7485d807945e5474773b293d968db37db49179d50e6e69bf707911ac17e3 in / 
# Fri, 27 Jul 2018 11:02:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 11:02:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 11:02:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 11:02:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 11:02:36 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:82a30ac77cd24304648497982cdbda51fb58d722e785db3bbd2ca928bae1ba6d`  
		Last Modified: Fri, 27 Jul 2018 11:04:53 GMT  
		Size: 32.0 MB (32013543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc6a4f2e44ef60c2d5d571f98e466c8a75def5ea9747b21d427cbd3cb58cfdb`  
		Last Modified: Fri, 27 Jul 2018 11:04:39 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a580f737bc267149286e1bc4fb67e78249def991553b403166eb056cde8abc9`  
		Last Modified: Fri, 27 Jul 2018 11:04:39 GMT  
		Size: 467.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724cd373c469dc7612575ae17e15a55d15e73e99410000d7842e8b4dc7d0c52f`  
		Last Modified: Fri, 27 Jul 2018 11:04:39 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2aac7fcda7961a2a59f7915466c980456ccfb7cb74ad73c536ad8c43ee1d488`  
		Last Modified: Fri, 27 Jul 2018 11:04:39 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:latest` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:53b3ab5163b15b6e27d729738d3ab98dd40aa2154b50ad4321b01dbccea278bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35029752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b82389bf3e5117309b9407fedd331d79960da70186455faebdf39c4e3afeeae8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 11:21:44 GMT
ADD file:760e84797c21d62195e5690c1ac346e0e012c83d721b1d57365c8531c5aeef19 in / 
# Tue, 17 Jul 2018 11:21:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:21:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:21:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:21:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:22:00 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b9db97d251a21578f4739c155135fdef255851bf71e1d236ff50b36395f3bea6`  
		Last Modified: Tue, 17 Jul 2018 11:26:41 GMT  
		Size: 35.0 MB (35027327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958de27a231af36a292b67ccfc87cb18744f2c595e56bc130648e9a75fa398d7`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1dfbb3bcf01c584e01e3930c499e3495a1e246e5c28920885ee817a8ac18dfe`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914ba5689e73232ad03c695c45009a0bdb6bf16a1cfaeb6be99090a6a3eedc9f`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4d7ce343a96e76f3439c99dbd68ec93effecba6635e0577e140c0fa36580cc`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:latest` - linux; s390x

```console
$ docker pull ubuntu@sha256:6f409a884252a89bd59236feb933cb09ba7bab9de005e71a55c8d1d429c18c5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30103960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14fce7c7f0d804cee050ef20c6f48667b83061d6cc3aa6d060eba6d8a62426ea`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:59:11 GMT
ADD file:6d50dd4193369f5a542ac2c0ccb2292395cf1ee56b793d1dfbdb557ab44d81f1 in / 
# Fri, 27 Jul 2018 12:59:11 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:59:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:59:12 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:59:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:59:13 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:4719065ed0d5645c246dcdd4ca158a6c1e92e04e20dbab853e3f3758b2f8f846`  
		Last Modified: Fri, 27 Jul 2018 13:00:03 GMT  
		Size: 30.1 MB (30101637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b18308a238dde51de62f4272ca2b77fb8b72d621e9e346ab11bdac75bd3519`  
		Last Modified: Fri, 27 Jul 2018 12:59:58 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf3572b08303eb66dc9a2e18293f508279d696883a1cdeb08fb6bc8c3da237e`  
		Last Modified: Fri, 27 Jul 2018 12:59:58 GMT  
		Size: 462.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e708eaaf88d53872a1e0ad4273788ba4f41443fd4626c6a8bb5ec56fd5251d0c`  
		Last Modified: Fri, 27 Jul 2018 12:59:58 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c864c3cec259104391ff3bd13d0b7824c1e785596b24987ebb59afcfde01cedf`  
		Last Modified: Fri, 27 Jul 2018 12:59:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:rolling`

```console
$ docker pull ubuntu@sha256:aade50db36e1ed96716662cfe748789e154c213a711931c66746c42ce34aa296
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
$ docker pull ubuntu@sha256:958eaeb7e33e6c4f68f7fef69b35ca178c7f5fb0dd40db7b44a8b9eb692b9bc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.7 MB (31661203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:735f80812f90aca43213934fd321a75ef20b2e30948dbbdd2c240e8abaab8a28`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 26 Jul 2018 22:20:44 GMT
ADD file:4bb62bb05874068552efeb626f8b31b4a29f26d6cc8c7d7fc7ab4c1fdece957a in / 
# Thu, 26 Jul 2018 22:20:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:20:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:20:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:20:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:20:48 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:c64513b741452f95d8a147b69c30f403f6289542dd7b2b51dd8ba0cb35d0e08b`  
		Last Modified: Thu, 26 Jul 2018 22:23:51 GMT  
		Size: 31.7 MB (31658876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b8b12bad90b51d9f15dd4b63103ea6221b339ac3b3e75807c963e678f28624`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d85cf7a05fec99bb829db84dc5a21cc0aca569253f45d1ea10ca9e8a03fa9a`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b268720157210d21bbe49f6112f815774e6d2a6144b14911749fadfdb034f0`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12192999ff18f01315563c63333d7c1059cd8e64dffe75fffe504b95eeb093c`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:rolling` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:adcbd252e74c0d768e3bdaa0a374c02e8a9c8a3da1caba178ebcc6e8a238a9ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27090212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:538d198057abb0c1ff2b9ce3960a2e33173c2762ee23892f51e1fbf2f0c4e046`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:42:36 GMT
ADD file:47f7e3f1a2e59db306e3a56e780d3f8ba5fd3d932b794b75c7498e841f28a2a2 in / 
# Fri, 27 Jul 2018 12:42:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:42:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:42:45 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:42:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:42:46 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:4471275a8ba0e3fdf4738cff2fc5894401657de21516e93f545073f400d5f8ad`  
		Last Modified: Fri, 27 Jul 2018 12:44:58 GMT  
		Size: 27.1 MB (27087873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5237e132a11f8263c1488f3e7c927f5270ab3190e8019493894b8be0b90e2894`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130e9bf920a8414b61ce20da108ad36cb1464d951e7ad7e6fc9e22543e66d0fe`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec82554e9e76401898045ce08ffa65adba92889a38fd1ed0e0aa1138c86aad8`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014902bb4456149ea7f8848c1e2af2562f399e6150abf1ae8f965a9696fe6f5c`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:rolling` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:2dc32a4601c06ecc87695998e4f08369f82c688696fe3b68bf9b44c2061f668a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28544116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04375af0bacdddbc6e342ab0f3d61955215020412992102c4de9c4159672d163`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:09:10 GMT
ADD file:357c9357857d5a92f29880fc8ca791773848b7b88fef7134a7720cb2331b12f7 in / 
# Fri, 27 Jul 2018 12:09:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:09:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:09:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:09:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:09:18 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:2b60dc99953c9841f53eb3da368719b4b170ed5630d29a18061f8ae06d665a10`  
		Last Modified: Fri, 27 Jul 2018 12:12:10 GMT  
		Size: 28.5 MB (28541790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc279db4d54bcdc39ea181a2f68d8d3ede18fdc923632d061b2a88e66ffd8c0`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e84340d84f7fb6fc187176d6fc1c9d00351dc7829382824792ecaafe8597e80`  
		Last Modified: Fri, 27 Jul 2018 12:12:01 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb10d180ec0590b9379ca983c39fb16d8b306f71a82d1343a751351dea3c743`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eade289cb481422f326b3de72e76582225e7c565add08d4068a7494bb36cff33`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:rolling` - linux; 386

```console
$ docker pull ubuntu@sha256:551336334524b9766158008502f4852c9ea6645b3175e087b681e28129207df1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (32015865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f3c425f8454077f38f45f4bf926e52f8c74f2b7db865b03717a82ad150e20cb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 11:02:20 GMT
ADD file:5bfd7485d807945e5474773b293d968db37db49179d50e6e69bf707911ac17e3 in / 
# Fri, 27 Jul 2018 11:02:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 11:02:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 11:02:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 11:02:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 11:02:36 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:82a30ac77cd24304648497982cdbda51fb58d722e785db3bbd2ca928bae1ba6d`  
		Last Modified: Fri, 27 Jul 2018 11:04:53 GMT  
		Size: 32.0 MB (32013543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc6a4f2e44ef60c2d5d571f98e466c8a75def5ea9747b21d427cbd3cb58cfdb`  
		Last Modified: Fri, 27 Jul 2018 11:04:39 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a580f737bc267149286e1bc4fb67e78249def991553b403166eb056cde8abc9`  
		Last Modified: Fri, 27 Jul 2018 11:04:39 GMT  
		Size: 467.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724cd373c469dc7612575ae17e15a55d15e73e99410000d7842e8b4dc7d0c52f`  
		Last Modified: Fri, 27 Jul 2018 11:04:39 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2aac7fcda7961a2a59f7915466c980456ccfb7cb74ad73c536ad8c43ee1d488`  
		Last Modified: Fri, 27 Jul 2018 11:04:39 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:rolling` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:9cc167741c8fd4d255a55cc40e4c30fe9c76e209235cd05edcdb319d97efd810
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35178088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e25cead252cf90d844b96a8c7e69e12e2e549d35f8505aaa19c45c7216b8a28d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Aug 2018 18:03:28 GMT
ADD file:82798c491407745c1154b41d58fb93a94096f3ad5b01d5f48d3ee361b16e0ad7 in / 
# Tue, 21 Aug 2018 18:03:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 21 Aug 2018 18:03:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:03:38 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 21 Aug 2018 18:03:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 21 Aug 2018 18:03:43 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:7620e02a76798695f19060289126fa57f6ed25d3969a85fd020d7c0499be71ad`  
		Last Modified: Tue, 21 Aug 2018 18:06:53 GMT  
		Size: 35.2 MB (35175653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ad0b56b89650cc1f709a4359f2bc1bdfaabce401a09485316a8dac16fc64b0`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555bfe36ad129f1bef944f8bd1582e2db361633745fb5eace0e779f7ff7e0df`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8acd8c350f3bed5dc6f7bdcdf709152663a55d16738493b40b6d6a315f80481`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f16a59cef3be61cd1c9b513e1b4cb7d455d4c302cb3cae3d9a45ebcfa81ac5`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:rolling` - linux; s390x

```console
$ docker pull ubuntu@sha256:6f409a884252a89bd59236feb933cb09ba7bab9de005e71a55c8d1d429c18c5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30103960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14fce7c7f0d804cee050ef20c6f48667b83061d6cc3aa6d060eba6d8a62426ea`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:59:11 GMT
ADD file:6d50dd4193369f5a542ac2c0ccb2292395cf1ee56b793d1dfbdb557ab44d81f1 in / 
# Fri, 27 Jul 2018 12:59:11 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:59:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:59:12 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:59:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:59:13 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:4719065ed0d5645c246dcdd4ca158a6c1e92e04e20dbab853e3f3758b2f8f846`  
		Last Modified: Fri, 27 Jul 2018 13:00:03 GMT  
		Size: 30.1 MB (30101637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b18308a238dde51de62f4272ca2b77fb8b72d621e9e346ab11bdac75bd3519`  
		Last Modified: Fri, 27 Jul 2018 12:59:58 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf3572b08303eb66dc9a2e18293f508279d696883a1cdeb08fb6bc8c3da237e`  
		Last Modified: Fri, 27 Jul 2018 12:59:58 GMT  
		Size: 462.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e708eaaf88d53872a1e0ad4273788ba4f41443fd4626c6a8bb5ec56fd5251d0c`  
		Last Modified: Fri, 27 Jul 2018 12:59:58 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c864c3cec259104391ff3bd13d0b7824c1e785596b24987ebb59afcfde01cedf`  
		Last Modified: Fri, 27 Jul 2018 12:59:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:trusty`

```console
$ docker pull ubuntu@sha256:71529e96591eb36a4100cd0cc5353ff1a2f4ee7a85011e3d3dd07cb5eb524a3e
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
$ docker pull ubuntu@sha256:f5cab117215a64e3490910041f20c418870653de5b6edabdfd2bb990f5fcd1e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.2 MB (67201122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:971bb384a50ae93856362f9c40ea471e66a97cfd4023b9cc9b8e4196e99da2c7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:53:22 GMT
ADD file:2b307231ea5854129fb2b708dc49d44d30c66023186d861778defb768aa3a8a8 in / 
# Tue, 17 Jul 2018 00:53:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:53:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:53:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:53:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:53:26 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:8284e13a281d55cc734a66ada0b6cabef2447ce16e91ce96317eca132253f734`  
		Last Modified: Tue, 17 Jul 2018 00:58:36 GMT  
		Size: 67.1 MB (67127095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e1916a92974ed667a04ce36771ef2599e58e2e3b118375e19a8af98c6fa3b2`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4102fc66d4abcb83d0739b402e2fd6e9a884d75ad9cbada70bc9286d58d97abf`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf2b01777b2f9a1c015cc2b7c39b9916de816806c3eee2d1b6cd63757868451`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7a2d5e04ed4e9237521229a3e7837dc552b4e1157b79c02c2fecbc14003032`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:trusty` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:11eb6b8dffabc8ae8e5bd8f8feb8d5c7820e6add328afcfc88020fa2f40c53d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61546876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3c593689903a3827240da777ec512abb26add4151325a813de865d85213f262`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 13:23:05 GMT
ADD file:7bbac98bb65c84c77ea4e287e758111798edcdc61c0d78672c1623bdf729ac11 in / 
# Tue, 17 Jul 2018 13:23:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 13:23:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 13:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 13:23:12 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:9c2a082512cf3a8830b91d42bb98b629740d5fd24b80d72fcb6c02420898b67e`  
		Last Modified: Tue, 17 Jul 2018 13:26:24 GMT  
		Size: 61.5 MB (61468702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b41e83acf679b5d2b57b403be2a7fdf6356f920904951de07f61716c83bbee`  
		Last Modified: Tue, 17 Jul 2018 13:26:07 GMT  
		Size: 76.8 KB (76769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922a277efdf4041c4ff20411bf58600b676449a65a799fd39c199aefb9040b13`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6618850e175b633967a0128ec1cc0f3bf4a3271fb8e6411d574048a9ed6428`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5ef7a8d6ef97dbddd26f5c20d0b650717aca5f798f1b286dc6ed527eb06965`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:trusty` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:21c1ba1572c6bd23329866ab364265b96986e13c4ac53a98016fce750e4300c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63263369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7880fe0753cfea09e1a94beb0e95aeae0949d563c9db0b37a471be27ce56fff`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 14:19:05 GMT
ADD file:9c932e4c93c73c414a550c0c23de27e5593be2eedfe574355fc8f8c7abac6900 in / 
# Tue, 17 Jul 2018 14:19:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 14:19:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:19:32 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 14:19:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 14:19:44 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:9c6438e6646ea44d58b24e5c91091916f32fae2a242554df327fc162c8cc25e4`  
		Last Modified: Tue, 17 Jul 2018 14:25:00 GMT  
		Size: 63.2 MB (63202896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43b6b12085fd93e3a38a59d2814c1c653d3db09ff2862bac7c094ae0e618096e`  
		Last Modified: Tue, 17 Jul 2018 14:24:37 GMT  
		Size: 59.1 KB (59097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42799cc9a444aef808e6fa811c3ce173f06a7e1841ebe5ecaa577562315db2d0`  
		Last Modified: Tue, 17 Jul 2018 14:24:38 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b874b3160ecd01640aca9f6c4648974f7f11c0abaff16201a6139cbb2f656c`  
		Last Modified: Tue, 17 Jul 2018 14:24:37 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1968d34fab26e4a84c0ab5621d408360d84a32677a1fda4e32e1a3c28664f39`  
		Last Modified: Tue, 17 Jul 2018 14:24:37 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:trusty` - linux; 386

```console
$ docker pull ubuntu@sha256:25d5feb1b9bd53a2451e7c40f49da0cbd507e5fb8264f129bdce0813713689de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.9 MB (64895096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09e0391faa1f00dee535c1515c41a9f9299b54ca6b03a64f219ac88af635f38f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:34:00 GMT
ADD file:9e5275a290e6d296c12bec1fbb5895f27e2cd30fa99f943a7bd054cc1ab13c41 in / 
# Tue, 17 Jul 2018 12:34:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 12:34:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:34:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 12:34:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 12:34:07 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ab33d6fb6a425f8565d20c8200775a8253affa499434e807e82d34ff75f993ef`  
		Last Modified: Tue, 17 Jul 2018 12:38:23 GMT  
		Size: 64.8 MB (64828853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e304388779e89c355fa454e92f0bfdbc9a51f805c7c3261f824a24501a1d5f27`  
		Last Modified: Tue, 17 Jul 2018 12:38:00 GMT  
		Size: 64.9 KB (64863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c934b8e4a552e5f9ef1b7023de78294f4437519e843b9c38411e186b647cb785`  
		Last Modified: Tue, 17 Jul 2018 12:38:01 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4dab88b2846e6ae8a9690b22ae571e3df003de93cfc0f766c55c652b0ae5c05`  
		Last Modified: Tue, 17 Jul 2018 12:38:00 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85dcdf1805efe897e563a731a0275c87b37216222f6cea534279de891e66d554`  
		Last Modified: Tue, 17 Jul 2018 12:38:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:trusty` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:9c568ad212f82799f1bcfd929cc3eea2aa3728f5d33d2ee5405862eb90846291
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.7 MB (74679073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a35febfde1a8dc27f6f252d5e706623afc6c3ea96025d8b365b3cfe843a8f21`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 11:23:12 GMT
ADD file:a3622ab54a3ec0e60ecdbe651d828e486be7eda95666739a694b2b5fb2098dd7 in / 
# Tue, 17 Jul 2018 11:23:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:23:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:23:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:23:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:24:00 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:3d5124b458d37613f04a7e8f2a5cd712d7a65fd7dcdc5ff59c0bc360c28a7082`  
		Last Modified: Tue, 17 Jul 2018 11:28:20 GMT  
		Size: 74.6 MB (74613945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f01fb764dc8ee608beb1d157d5bab1b93ec33a1642cdb5b23d4fb14788b51d`  
		Last Modified: Tue, 17 Jul 2018 11:28:00 GMT  
		Size: 63.4 KB (63425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288e7db04aabb4119934665db3e91e47977c805a1c7b3f36257d9b1e551c2ea0`  
		Last Modified: Tue, 17 Jul 2018 11:28:00 GMT  
		Size: 659.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45f75935631971e625972a833f02569bc9fe8ba336073ea27f0746bfa04e2e9`  
		Last Modified: Tue, 17 Jul 2018 11:28:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7c6aa1e92081ecdc264d9e6dc08b2e8747bbf02234c453b2e498a278ea10b7`  
		Last Modified: Tue, 17 Jul 2018 11:28:01 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:trusty-20180712`

```console
$ docker pull ubuntu@sha256:71529e96591eb36a4100cd0cc5353ff1a2f4ee7a85011e3d3dd07cb5eb524a3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `ubuntu:trusty-20180712` - linux; amd64

```console
$ docker pull ubuntu@sha256:f5cab117215a64e3490910041f20c418870653de5b6edabdfd2bb990f5fcd1e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.2 MB (67201122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:971bb384a50ae93856362f9c40ea471e66a97cfd4023b9cc9b8e4196e99da2c7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:53:22 GMT
ADD file:2b307231ea5854129fb2b708dc49d44d30c66023186d861778defb768aa3a8a8 in / 
# Tue, 17 Jul 2018 00:53:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:53:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:53:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:53:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:53:26 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:8284e13a281d55cc734a66ada0b6cabef2447ce16e91ce96317eca132253f734`  
		Last Modified: Tue, 17 Jul 2018 00:58:36 GMT  
		Size: 67.1 MB (67127095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e1916a92974ed667a04ce36771ef2599e58e2e3b118375e19a8af98c6fa3b2`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4102fc66d4abcb83d0739b402e2fd6e9a884d75ad9cbada70bc9286d58d97abf`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf2b01777b2f9a1c015cc2b7c39b9916de816806c3eee2d1b6cd63757868451`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7a2d5e04ed4e9237521229a3e7837dc552b4e1157b79c02c2fecbc14003032`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:trusty-20180712` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:11eb6b8dffabc8ae8e5bd8f8feb8d5c7820e6add328afcfc88020fa2f40c53d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61546876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3c593689903a3827240da777ec512abb26add4151325a813de865d85213f262`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 13:23:05 GMT
ADD file:7bbac98bb65c84c77ea4e287e758111798edcdc61c0d78672c1623bdf729ac11 in / 
# Tue, 17 Jul 2018 13:23:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 13:23:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 13:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 13:23:12 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:9c2a082512cf3a8830b91d42bb98b629740d5fd24b80d72fcb6c02420898b67e`  
		Last Modified: Tue, 17 Jul 2018 13:26:24 GMT  
		Size: 61.5 MB (61468702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b41e83acf679b5d2b57b403be2a7fdf6356f920904951de07f61716c83bbee`  
		Last Modified: Tue, 17 Jul 2018 13:26:07 GMT  
		Size: 76.8 KB (76769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922a277efdf4041c4ff20411bf58600b676449a65a799fd39c199aefb9040b13`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6618850e175b633967a0128ec1cc0f3bf4a3271fb8e6411d574048a9ed6428`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5ef7a8d6ef97dbddd26f5c20d0b650717aca5f798f1b286dc6ed527eb06965`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:trusty-20180712` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:21c1ba1572c6bd23329866ab364265b96986e13c4ac53a98016fce750e4300c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63263369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7880fe0753cfea09e1a94beb0e95aeae0949d563c9db0b37a471be27ce56fff`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 14:19:05 GMT
ADD file:9c932e4c93c73c414a550c0c23de27e5593be2eedfe574355fc8f8c7abac6900 in / 
# Tue, 17 Jul 2018 14:19:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 14:19:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:19:32 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 14:19:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 14:19:44 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:9c6438e6646ea44d58b24e5c91091916f32fae2a242554df327fc162c8cc25e4`  
		Last Modified: Tue, 17 Jul 2018 14:25:00 GMT  
		Size: 63.2 MB (63202896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43b6b12085fd93e3a38a59d2814c1c653d3db09ff2862bac7c094ae0e618096e`  
		Last Modified: Tue, 17 Jul 2018 14:24:37 GMT  
		Size: 59.1 KB (59097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42799cc9a444aef808e6fa811c3ce173f06a7e1841ebe5ecaa577562315db2d0`  
		Last Modified: Tue, 17 Jul 2018 14:24:38 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b874b3160ecd01640aca9f6c4648974f7f11c0abaff16201a6139cbb2f656c`  
		Last Modified: Tue, 17 Jul 2018 14:24:37 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1968d34fab26e4a84c0ab5621d408360d84a32677a1fda4e32e1a3c28664f39`  
		Last Modified: Tue, 17 Jul 2018 14:24:37 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:trusty-20180712` - linux; 386

```console
$ docker pull ubuntu@sha256:25d5feb1b9bd53a2451e7c40f49da0cbd507e5fb8264f129bdce0813713689de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.9 MB (64895096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09e0391faa1f00dee535c1515c41a9f9299b54ca6b03a64f219ac88af635f38f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:34:00 GMT
ADD file:9e5275a290e6d296c12bec1fbb5895f27e2cd30fa99f943a7bd054cc1ab13c41 in / 
# Tue, 17 Jul 2018 12:34:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 12:34:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:34:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 12:34:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 12:34:07 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ab33d6fb6a425f8565d20c8200775a8253affa499434e807e82d34ff75f993ef`  
		Last Modified: Tue, 17 Jul 2018 12:38:23 GMT  
		Size: 64.8 MB (64828853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e304388779e89c355fa454e92f0bfdbc9a51f805c7c3261f824a24501a1d5f27`  
		Last Modified: Tue, 17 Jul 2018 12:38:00 GMT  
		Size: 64.9 KB (64863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c934b8e4a552e5f9ef1b7023de78294f4437519e843b9c38411e186b647cb785`  
		Last Modified: Tue, 17 Jul 2018 12:38:01 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4dab88b2846e6ae8a9690b22ae571e3df003de93cfc0f766c55c652b0ae5c05`  
		Last Modified: Tue, 17 Jul 2018 12:38:00 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85dcdf1805efe897e563a731a0275c87b37216222f6cea534279de891e66d554`  
		Last Modified: Tue, 17 Jul 2018 12:38:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:trusty-20180712` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:9c568ad212f82799f1bcfd929cc3eea2aa3728f5d33d2ee5405862eb90846291
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.7 MB (74679073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a35febfde1a8dc27f6f252d5e706623afc6c3ea96025d8b365b3cfe843a8f21`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 11:23:12 GMT
ADD file:a3622ab54a3ec0e60ecdbe651d828e486be7eda95666739a694b2b5fb2098dd7 in / 
# Tue, 17 Jul 2018 11:23:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:23:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:23:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:23:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:24:00 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:3d5124b458d37613f04a7e8f2a5cd712d7a65fd7dcdc5ff59c0bc360c28a7082`  
		Last Modified: Tue, 17 Jul 2018 11:28:20 GMT  
		Size: 74.6 MB (74613945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f01fb764dc8ee608beb1d157d5bab1b93ec33a1642cdb5b23d4fb14788b51d`  
		Last Modified: Tue, 17 Jul 2018 11:28:00 GMT  
		Size: 63.4 KB (63425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288e7db04aabb4119934665db3e91e47977c805a1c7b3f36257d9b1e551c2ea0`  
		Last Modified: Tue, 17 Jul 2018 11:28:00 GMT  
		Size: 659.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45f75935631971e625972a833f02569bc9fe8ba336073ea27f0746bfa04e2e9`  
		Last Modified: Tue, 17 Jul 2018 11:28:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7c6aa1e92081ecdc264d9e6dc08b2e8747bbf02234c453b2e498a278ea10b7`  
		Last Modified: Tue, 17 Jul 2018 11:28:01 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:xenial`

```console
$ docker pull ubuntu@sha256:248a460e85e4b5de685891ca11abaebdae6478277304e8fe3056222767ebff51
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
$ docker pull ubuntu@sha256:da6fba872ef36657a66384ffb2c2b5b5dc1672ec5f3b310a613c0ceb6f9b299a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.2 MB (43231132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aa3602ab41ea3384904197455e66f6435cb0261bd62a06db1d8e76cb8960c42`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 26 Jul 2018 22:23:08 GMT
ADD file:204fb7ccb19ff7e863331131138621ff4d22720b3718e8f296902cc7d4f635b5 in / 
# Thu, 26 Jul 2018 22:23:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:23:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:23:11 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:8ee29e426c26c79e7ba03ccc8bbc7fe99db00ffcbccb679d9c643b5546d8dc8a`  
		Last Modified: Thu, 26 Jul 2018 22:27:22 GMT  
		Size: 43.2 MB (43228646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e83b260b73b908ebabde46b72fc5790bf4f029b53acbbfe35da8ff8fba795ac`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26b65fd1143ee4f9b7b6b958aeafdb996172d10b723f0bba24335a8f7ae692c`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dca07f8222e24aab97f026444d66a7604e4ae2b708cf079ff67a90c42efa60`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b420ae9e10b3f6a74f527914bc3c766b128435a62eca1061f41167205d5b0230`  
		Last Modified: Thu, 26 Jul 2018 22:26:54 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:216fc503c96215b3e4ef9a61c37d2a6684d996494a89efc78cba4a286200a083
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 MB (38277795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a3d476a03eb6883b419b04c7da12b1fe0ff1dce67c3ade71fd4d4e41ea2c07b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:44:24 GMT
ADD file:2728f0f83bda6845711501bf943fd13abc969494272cc51fa4ba6e69566757bb in / 
# Fri, 27 Jul 2018 12:44:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:44:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:44:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:44:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:44:28 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:1b28ec1b6678c71341db2f0f49c3fccf15e9079d9ab9234f2583c3c0110e7ca9`  
		Last Modified: Fri, 27 Jul 2018 12:47:00 GMT  
		Size: 38.3 MB (38275310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5095796e5a6b7817666d2524a2c0abf8dbd0e6eaf5e5a3aa385eb4a9f08e97`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306de1710aa21ecbbc76516ef6692fb083801280201add6e6ccf10b8567836f`  
		Last Modified: Fri, 27 Jul 2018 12:46:51 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059dfcd40e5d1e53f24d4b5579ce38b8a55c04af701184cd58908ded80a41e9e`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5a3028a6551957fd8d85f610ff3ce10a84e29e90f73aedc4a9600369e19b3c`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:5e72a08643764d9fcf6632d6083926d6a5372d7f2ad91aec1e25000ef99c0718
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39363659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45a9f9bb2581e221184bd092324752553934af38e87d953b8f46da4677d847b4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:11:25 GMT
ADD file:245f919fbf2f9e8e80f0cf22884a2095e9f3ff0685bea98f2e8c5937553d2858 in / 
# Fri, 27 Jul 2018 12:11:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:11:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:11:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:11:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:11:33 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:1d84661bedcf328ca33c60337b0167cd51a34acd8ac083d03be2658e778e4a33`  
		Last Modified: Fri, 27 Jul 2018 12:15:26 GMT  
		Size: 39.4 MB (39361254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7952229f0c51008f9d2c699538f73c19313ff6adb1c7e774ff249ad90967e1b4`  
		Last Modified: Fri, 27 Jul 2018 12:15:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7c753d28831afc8b8b323117624887a02f818a6f7f76323b8573fa546e967f`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc39f7627e7eaa49ca5d50a7007d2e4f3187c797ac91e13e6560179ca5146d4d`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91ed830a826b5e867059f29069b2bf3f420c65fa8b0ded96ff077238b4f5810`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial` - linux; 386

```console
$ docker pull ubuntu@sha256:306fe5244084b105753c64923e24a7f76f544d189637a348c103287b883da1bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.5 MB (43500530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82e7d638f68dd23d587d7712a47ccf26bd4bae2e23e6f98387e43a90ca659e45`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 11:04:12 GMT
ADD file:bf213ed5365ee4c9a7f64ec5c337df6779168f609a0fb0ddd2cdf558df419aca in / 
# Fri, 27 Jul 2018 11:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 11:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 11:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 11:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 11:04:16 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:79c3321cd1db5170b2b17e4e7904e999afc88c5ba9168e6632c722f0ced80f2b`  
		Last Modified: Fri, 27 Jul 2018 11:08:03 GMT  
		Size: 43.5 MB (43498084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc08ce9a961adeec10d1eadfa16bc1cb9d2f8994e5d43432500a75cfaa09c6c`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d8c15b299b1de7aa1b6fb37d83b146c59e520ce7bfc25254544262ca705b48`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a97a3925b890b18279fac470160ce2e973a10ef456dce7d174780d4e24550f3`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c844083148ae3343326e2b07dc524e55fee4f261a1637e68ac86a32b97c4ce16`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:849079cc3f1418fe64527225d105ec6ace8bdc657dbf9e5faebe04ec8d1ef232
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45576852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cb69a56db0a3c307f6a62c3cea6c961ae6bd428ac5a6901be827c10baeeb09e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Aug 2018 18:05:28 GMT
ADD file:9b4fe2a37936425ff1c2483bfa0ff02ada7e549481bd7d0377a94850e5152510 in / 
# Tue, 21 Aug 2018 18:05:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 21 Aug 2018 18:05:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:06:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 21 Aug 2018 18:06:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 21 Aug 2018 18:06:12 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:c49a7289cd353210d298ff1a94ed78172275dc2b56d017327da7ff28811d329c`  
		Last Modified: Tue, 21 Aug 2018 18:08:49 GMT  
		Size: 45.6 MB (45574399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b7d965d16a8d691cee58762e03a8c962c909fb1d0d5e9a119c4090682496a7`  
		Last Modified: Tue, 21 Aug 2018 18:08:30 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0c0736f8ab57b9c4640b9c7d527e33d818bedc6810943802c7e2d9519ef48f`  
		Last Modified: Tue, 21 Aug 2018 18:08:31 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1139f0572be9041270b915e4d26c2bacce14cbf6170aed13fdc2576eb3a375`  
		Last Modified: Tue, 21 Aug 2018 18:08:31 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6e36fdb9e0e77331c1077fc18ac38bbe372020753346fe4bb763e36cb51aec`  
		Last Modified: Tue, 21 Aug 2018 18:08:30 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial` - linux; s390x

```console
$ docker pull ubuntu@sha256:7c66959556b9ab4987164c178585e5709ad38a8899022609c22abd7a004b985a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42235584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ee1cb8787c4364e1db429e3dd3924abbef4c70b9e449ca1b038410e40f24da9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:59:42 GMT
ADD file:3370b396b7b93b08d1f609f06e321c05d930dc00cb6ae8f0f65d4ed39166245b in / 
# Fri, 27 Jul 2018 12:59:42 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:59:43 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:59:44 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:59:45 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:59:45 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:3c676c78c45c4416ba6a9c1bcadd5156f03d0bca9e31f85fc01fca458930cfd5`  
		Last Modified: Fri, 27 Jul 2018 13:01:00 GMT  
		Size: 42.2 MB (42233178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a735e77c595422e7ecd0ca0e6359ba21a9769b86c1b6231aebfe8feacd95dcc7`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccb796144ba65e756e8cdfdf093072cbe9255706f96d95aad84fa242f1afb41`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe28213b67e6813cbc89ec0b7034fb71c4896077f9cbfab52de63f4c0201fc1e`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aefcb4b684bed9db0f7491ecade1c76f4268b4216658445ffa9942809ea5299d`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:xenial-20180726`

```console
$ docker pull ubuntu@sha256:248a460e85e4b5de685891ca11abaebdae6478277304e8fe3056222767ebff51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:xenial-20180726` - linux; amd64

```console
$ docker pull ubuntu@sha256:da6fba872ef36657a66384ffb2c2b5b5dc1672ec5f3b310a613c0ceb6f9b299a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.2 MB (43231132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aa3602ab41ea3384904197455e66f6435cb0261bd62a06db1d8e76cb8960c42`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 26 Jul 2018 22:23:08 GMT
ADD file:204fb7ccb19ff7e863331131138621ff4d22720b3718e8f296902cc7d4f635b5 in / 
# Thu, 26 Jul 2018 22:23:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:23:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:23:11 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:8ee29e426c26c79e7ba03ccc8bbc7fe99db00ffcbccb679d9c643b5546d8dc8a`  
		Last Modified: Thu, 26 Jul 2018 22:27:22 GMT  
		Size: 43.2 MB (43228646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e83b260b73b908ebabde46b72fc5790bf4f029b53acbbfe35da8ff8fba795ac`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26b65fd1143ee4f9b7b6b958aeafdb996172d10b723f0bba24335a8f7ae692c`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dca07f8222e24aab97f026444d66a7604e4ae2b708cf079ff67a90c42efa60`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b420ae9e10b3f6a74f527914bc3c766b128435a62eca1061f41167205d5b0230`  
		Last Modified: Thu, 26 Jul 2018 22:26:54 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial-20180726` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:216fc503c96215b3e4ef9a61c37d2a6684d996494a89efc78cba4a286200a083
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 MB (38277795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a3d476a03eb6883b419b04c7da12b1fe0ff1dce67c3ade71fd4d4e41ea2c07b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:44:24 GMT
ADD file:2728f0f83bda6845711501bf943fd13abc969494272cc51fa4ba6e69566757bb in / 
# Fri, 27 Jul 2018 12:44:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:44:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:44:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:44:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:44:28 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:1b28ec1b6678c71341db2f0f49c3fccf15e9079d9ab9234f2583c3c0110e7ca9`  
		Last Modified: Fri, 27 Jul 2018 12:47:00 GMT  
		Size: 38.3 MB (38275310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5095796e5a6b7817666d2524a2c0abf8dbd0e6eaf5e5a3aa385eb4a9f08e97`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306de1710aa21ecbbc76516ef6692fb083801280201add6e6ccf10b8567836f`  
		Last Modified: Fri, 27 Jul 2018 12:46:51 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059dfcd40e5d1e53f24d4b5579ce38b8a55c04af701184cd58908ded80a41e9e`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5a3028a6551957fd8d85f610ff3ce10a84e29e90f73aedc4a9600369e19b3c`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial-20180726` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:5e72a08643764d9fcf6632d6083926d6a5372d7f2ad91aec1e25000ef99c0718
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39363659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45a9f9bb2581e221184bd092324752553934af38e87d953b8f46da4677d847b4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:11:25 GMT
ADD file:245f919fbf2f9e8e80f0cf22884a2095e9f3ff0685bea98f2e8c5937553d2858 in / 
# Fri, 27 Jul 2018 12:11:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:11:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:11:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:11:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:11:33 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:1d84661bedcf328ca33c60337b0167cd51a34acd8ac083d03be2658e778e4a33`  
		Last Modified: Fri, 27 Jul 2018 12:15:26 GMT  
		Size: 39.4 MB (39361254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7952229f0c51008f9d2c699538f73c19313ff6adb1c7e774ff249ad90967e1b4`  
		Last Modified: Fri, 27 Jul 2018 12:15:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7c753d28831afc8b8b323117624887a02f818a6f7f76323b8573fa546e967f`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc39f7627e7eaa49ca5d50a7007d2e4f3187c797ac91e13e6560179ca5146d4d`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91ed830a826b5e867059f29069b2bf3f420c65fa8b0ded96ff077238b4f5810`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial-20180726` - linux; 386

```console
$ docker pull ubuntu@sha256:306fe5244084b105753c64923e24a7f76f544d189637a348c103287b883da1bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.5 MB (43500530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82e7d638f68dd23d587d7712a47ccf26bd4bae2e23e6f98387e43a90ca659e45`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 11:04:12 GMT
ADD file:bf213ed5365ee4c9a7f64ec5c337df6779168f609a0fb0ddd2cdf558df419aca in / 
# Fri, 27 Jul 2018 11:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 11:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 11:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 11:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 11:04:16 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:79c3321cd1db5170b2b17e4e7904e999afc88c5ba9168e6632c722f0ced80f2b`  
		Last Modified: Fri, 27 Jul 2018 11:08:03 GMT  
		Size: 43.5 MB (43498084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc08ce9a961adeec10d1eadfa16bc1cb9d2f8994e5d43432500a75cfaa09c6c`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d8c15b299b1de7aa1b6fb37d83b146c59e520ce7bfc25254544262ca705b48`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a97a3925b890b18279fac470160ce2e973a10ef456dce7d174780d4e24550f3`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c844083148ae3343326e2b07dc524e55fee4f261a1637e68ac86a32b97c4ce16`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial-20180726` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:849079cc3f1418fe64527225d105ec6ace8bdc657dbf9e5faebe04ec8d1ef232
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45576852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cb69a56db0a3c307f6a62c3cea6c961ae6bd428ac5a6901be827c10baeeb09e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Aug 2018 18:05:28 GMT
ADD file:9b4fe2a37936425ff1c2483bfa0ff02ada7e549481bd7d0377a94850e5152510 in / 
# Tue, 21 Aug 2018 18:05:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 21 Aug 2018 18:05:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:06:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 21 Aug 2018 18:06:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 21 Aug 2018 18:06:12 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:c49a7289cd353210d298ff1a94ed78172275dc2b56d017327da7ff28811d329c`  
		Last Modified: Tue, 21 Aug 2018 18:08:49 GMT  
		Size: 45.6 MB (45574399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b7d965d16a8d691cee58762e03a8c962c909fb1d0d5e9a119c4090682496a7`  
		Last Modified: Tue, 21 Aug 2018 18:08:30 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0c0736f8ab57b9c4640b9c7d527e33d818bedc6810943802c7e2d9519ef48f`  
		Last Modified: Tue, 21 Aug 2018 18:08:31 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1139f0572be9041270b915e4d26c2bacce14cbf6170aed13fdc2576eb3a375`  
		Last Modified: Tue, 21 Aug 2018 18:08:31 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6e36fdb9e0e77331c1077fc18ac38bbe372020753346fe4bb763e36cb51aec`  
		Last Modified: Tue, 21 Aug 2018 18:08:30 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial-20180726` - linux; s390x

```console
$ docker pull ubuntu@sha256:7c66959556b9ab4987164c178585e5709ad38a8899022609c22abd7a004b985a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42235584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ee1cb8787c4364e1db429e3dd3924abbef4c70b9e449ca1b038410e40f24da9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:59:42 GMT
ADD file:3370b396b7b93b08d1f609f06e321c05d930dc00cb6ae8f0f65d4ed39166245b in / 
# Fri, 27 Jul 2018 12:59:42 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:59:43 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:59:44 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:59:45 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:59:45 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:3c676c78c45c4416ba6a9c1bcadd5156f03d0bca9e31f85fc01fca458930cfd5`  
		Last Modified: Fri, 27 Jul 2018 13:01:00 GMT  
		Size: 42.2 MB (42233178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a735e77c595422e7ecd0ca0e6359ba21a9769b86c1b6231aebfe8feacd95dcc7`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccb796144ba65e756e8cdfdf093072cbe9255706f96d95aad84fa242f1afb41`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe28213b67e6813cbc89ec0b7034fb71c4896077f9cbfab52de63f4c0201fc1e`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aefcb4b684bed9db0f7491ecade1c76f4268b4216658445ffa9942809ea5299d`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
