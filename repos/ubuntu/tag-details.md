<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ubuntu`

-	[`ubuntu:16.04`](#ubuntu1604)
-	[`ubuntu:18.04`](#ubuntu1804)
-	[`ubuntu:18.10`](#ubuntu1810)
-	[`ubuntu:19.04`](#ubuntu1904)
-	[`ubuntu:19.10`](#ubuntu1910)
-	[`ubuntu:bionic`](#ubuntubionic)
-	[`ubuntu:bionic-20190612`](#ubuntubionic-20190612)
-	[`ubuntu:cosmic`](#ubuntucosmic)
-	[`ubuntu:cosmic-20190614`](#ubuntucosmic-20190614)
-	[`ubuntu:devel`](#ubuntudevel)
-	[`ubuntu:disco`](#ubuntudisco)
-	[`ubuntu:disco-20190613`](#ubuntudisco-20190613)
-	[`ubuntu:eoan`](#ubuntueoan)
-	[`ubuntu:eoan-20190614`](#ubuntueoan-20190614)
-	[`ubuntu:latest`](#ubuntulatest)
-	[`ubuntu:rolling`](#ubunturolling)
-	[`ubuntu:xenial`](#ubuntuxenial)
-	[`ubuntu:xenial-20190610`](#ubuntuxenial-20190610)

## `ubuntu:16.04`

```console
$ docker pull ubuntu@sha256:a4d8e674ee993e5ec88823391de828a5e9286a1597b731eaecaaf9066cfdf539
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
$ docker pull ubuntu@sha256:3288f31c6b3760981b5a9ad8fc13735d236cb1f5bae79b2d0750bcadfb00fed5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43839306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13c9f1285025c03cfd56a2809973bfec93a6468953c4d0ed70afb1f492f50489`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:53:31 GMT
ADD file:24352f4a071cb97b3f111253f3db695ba473c5e7985544889af3e34408ce32ff in / 
# Tue, 18 Jun 2019 22:53:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:53:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:53:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:53:37 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:35b42117c431dd1e13679a09c3c68bb983578a1cbe0a8d8980f507567ebce76c`  
		Last Modified: Tue, 11 Jun 2019 13:20:32 GMT  
		Size: 43.8 MB (43837758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9c569a8d989555892683a932df468cfe294859186790d3f2fb704c3a022e96`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293b44f451623251bf75ce5a72d3cee63706972c88980232217a81026987f63e`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c175077525d1ddec01cb7cf003c2d8b4b6650ae15b504a64914f5eed8d28e50`  
		Last Modified: Tue, 18 Jun 2019 22:54:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:16.04` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:c661e92c759c378d3954c5a0b44994ce9e4e5d19b9327d11b7a3e86c9520de3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38712079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee8f230ddd55bcf4ff7c680c70db9f45f6880d72b6b2a4fe9deba8a7427b65e1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:00:10 GMT
ADD file:fec39c1129e6533db9c615a06b157d086097dad71bbf9646d94fda33ea3b9e55 in / 
# Tue, 18 Jun 2019 22:00:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:00:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:00:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:00:16 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:2a522207f17dad6487398e666217b842511b6d0aef5d5d3b8a6c92e28581d60e`  
		Last Modified: Fri, 14 Jun 2019 22:21:08 GMT  
		Size: 38.7 MB (38710547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e59c2ace1d7baaf22d49477f12e41743f37497fbdeed7092b5b847be1d05e9`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23423fd3acc94a25767511b76b252e7fc469334e588905cf449583baab12fcf5`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fb32d384c9241b858083119d34b653c651bda61a0a79679511a3e3ee22ad90`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:16.04` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:23c723a61e5c98c635cc68972589f51921e76fe2164375f915fb086b3033c8cf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.8 MB (39792468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:106bbeca2517c24e6aaee7106a3da14ff478d485f1764edf4b437fbd3a337fea`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:41:24 GMT
ADD file:395b290afad707e76c379d6d1f14f12f1afc596f54a93e6c7b2a9fd7933e67a5 in / 
# Tue, 18 Jun 2019 21:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:41:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:41:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:41:30 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:6d4d0d1f37de0d4417055235ff4a4ce52439ec078835b8d6c91cecd64d192029`  
		Last Modified: Fri, 14 Jun 2019 14:30:02 GMT  
		Size: 39.8 MB (39790979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b10db5fd500822d1d74c2d604ce345b50cbea31db8f3813f5b166633b8042d`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45503012c89a34b797c44068bce23b360a1212b5582d4483553249eba85ce075`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078966f8f5cec9611dad9af01d4b52e898763e22fd0facf8a5dd72d48cbe568f`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:16.04` - linux; 386

```console
$ docker pull ubuntu@sha256:5ebbd4e1fc12f800ec64a5da98984237e52dffdc111e66593f9ea0736434365c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43980954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c7f4a351101b28019e0a6384133e9048f7e86d14c4014a088289fa29bea38f8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:16 GMT
ADD file:385cfb43ebfe35c607f88d3e6a5a4fe2259261b83a0aee3674781b056e114ff7 in / 
# Tue, 18 Jun 2019 21:40:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:40:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:19 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:856ae43f63ed6657b450c1d9c8e4cb587d875421e485fe008070949c85478d95`  
		Last Modified: Fri, 14 Jun 2019 14:26:09 GMT  
		Size: 44.0 MB (43979421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb11583701fe0ca24f56e54f018637031575222c3e805aef8d79d17d47d26386`  
		Last Modified: Tue, 18 Jun 2019 21:41:16 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15f4b605d91eafa00b250a75f7557fdec29c3f0435c255edb984caee21cabb6`  
		Last Modified: Tue, 18 Jun 2019 21:41:16 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f07c26ededbd5bb64a792e097f441fb697d2ffe42776a621885522339045517`  
		Last Modified: Tue, 18 Jun 2019 21:41:17 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:16.04` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:1ce5cea5199f5be43428274390a8bb82e4453bef017c2847a774472233f75421
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (45977899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5719ee441d089b4745754e79071696ec5bbd0e93d771d6ebf499c99cb9fff6f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:50:20 GMT
ADD file:bb7fa17cc95ca89abe7a1b93077479764f75ee18108ec44141aaff4d2a1c6e7d in / 
# Tue, 18 Jun 2019 22:50:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:50:32 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:50:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:50:38 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:1b0f236ed1ddec38971bf51256ce70e6672ebc41b9d7544e3f278adf3bda5373`  
		Last Modified: Tue, 18 Jun 2019 22:52:50 GMT  
		Size: 46.0 MB (45976401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d122a84ecd3a18e9b734692549cc4536a3bd6c4ef8ea05527403a57c1232d1cc`  
		Last Modified: Tue, 18 Jun 2019 22:52:37 GMT  
		Size: 472.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf57bfa9cc2bbbd897299e6df30a2374ffcbd35a3bbde6ab9130c888321c4663`  
		Last Modified: Tue, 18 Jun 2019 22:52:36 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb32e0af70bba6cc9b0b95d580545ed84bebf7dcdae99d34ca6a0cd9acc41f5f`  
		Last Modified: Tue, 18 Jun 2019 22:52:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:16.04` - linux; s390x

```console
$ docker pull ubuntu@sha256:2a6b3b155f3c5347e8975d40da64bee47d29c307f06c3baff94606e641c2d06c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.7 MB (42665410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c37fb7d9b3a24a4aebc8991f6b159351b7b7c2a88ddf82907895d073d5ead027`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:43:36 GMT
ADD file:82c5b9a2558f1996eed4cedc4672226b9be3f29de5e4929faea93ebb0c4a4425 in / 
# Tue, 18 Jun 2019 21:43:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:43:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:43:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:43:41 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:13164bfcbd4c81a114d0c20e22b11bbc14d1e6c6c1406525bd49ea9b80196704`  
		Last Modified: Tue, 18 Jun 2019 21:45:09 GMT  
		Size: 42.7 MB (42663919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca6e9f3028d16f9753abf51f7e631b78cbdffb436a2288a6365615e21fdd19b`  
		Last Modified: Tue, 18 Jun 2019 21:45:00 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b454fecd10a241beb8ca744cdd20dca457837201c9078fec4a4ea4ec85f56b`  
		Last Modified: Tue, 18 Jun 2019 21:45:00 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6915070f22f8931076f003becb0eeef15eb5c5b52d6539abb9e2d37afd6cd7a7`  
		Last Modified: Tue, 18 Jun 2019 21:45:00 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:18.04`

```console
$ docker pull ubuntu@sha256:9b1702dcfe32c873a770a32cfd306dd7fc1c4fd134adfb783db68defc8894b3c
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
$ docker pull ubuntu@sha256:eb70667a801686f914408558660da753cde27192cd036148e58258819b927395
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 MB (26720871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c108a37151f54439950335c409802e948883e00c93fdb751d206c9a9674c1f6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:51:33 GMT
ADD file:4e6b5d9ca371eb881c581574b8dc4f5391eff2872db364af0f8d9804e4890098 in / 
# Tue, 18 Jun 2019 22:51:35 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:51:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:51:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:51:38 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:5b7339215d1d5f8e68622d584a224f60339f5bef41dbd74330d081e912f0cddd`  
		Last Modified: Thu, 13 Jun 2019 00:24:57 GMT  
		Size: 26.7 MB (26684508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ca88e9f6723ce82bc14b241cda8634f6d19677184691d086662641ab96fe68`  
		Last Modified: Tue, 18 Jun 2019 22:53:58 GMT  
		Size: 35.4 KB (35352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31c3b1caad473a474d574283741f880e37c708cc06ee620d3e93fa602125ee0`  
		Last Modified: Tue, 18 Jun 2019 22:53:57 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b054a26005b7f3b032577f811421fab5ec3b42ce45a4012dfa00cf6ed6191b0f`  
		Last Modified: Tue, 18 Jun 2019 22:53:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:18.04` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:09a066942d6dc6b5d9f88c707f1197748cb620bd0b322484ed327253cab2ac1a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.3 MB (22315997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e37fc27e0a1c7033d1d6725b271b9fd6de1286028cab7c0e3bdbf4411aa8b1e7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:58:19 GMT
ADD file:f97088f30dc73833af9b7e84a77cc26a7d489c3b106250bc1c67ca78ecf34401 in / 
# Tue, 18 Jun 2019 21:58:21 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:58:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:58:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:58:25 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:890bdf70a444971b59240478f3073e23d165e3ba40106d3d4e94a57e52f9f715`  
		Last Modified: Fri, 14 Jun 2019 14:40:30 GMT  
		Size: 22.3 MB (22279501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7984ec58db25dba3b1eb769446c440c608e2a35869a13b6a57ba069134f28e1`  
		Last Modified: Tue, 18 Jun 2019 22:00:38 GMT  
		Size: 35.5 KB (35452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69dd89700a6c256d7ddae21c28adf3ded21abb73838795b0a1a5c3b12556da0b`  
		Last Modified: Tue, 18 Jun 2019 22:00:38 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af11110095b961ce4addaca6fbf8afe199d233b510f48cdd196b4c0b4029576`  
		Last Modified: Tue, 18 Jun 2019 22:00:41 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:18.04` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:fcf80b2fae669da66e29b272d768451f7d2b1641c26a250b7adf83bf0dafb452
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23740561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c1de3d39dd66d71ef688133f7ffc8b4757ed9f8383adf7dc0c84b547ef7bd85`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:20 GMT
ADD file:5a85b2cf366cbf793b3cd89f16906c1221128e020868bf7593cf85df20370c31 in / 
# Tue, 18 Jun 2019 21:40:22 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:26 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:85df13e07ac866f0749412605b4d04aef859d2d116979e1dad9da5093585ce3c`  
		Last Modified: Fri, 14 Jun 2019 14:38:29 GMT  
		Size: 23.7 MB (23704318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627bf1c6512dd26e72f564465b94d24232e3221dc649211b6c2169cd9bae0f7`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 35.2 KB (35201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99ec04f469874c69bd01d057f54593e5346d90cfba712152008d76624217ddb`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc2e75663b5f54850089251d728dea5cb0b29b1e95e1bc0785c801bd2dc3092`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:18.04` - linux; 386

```console
$ docker pull ubuntu@sha256:30fe694bccc16b8d61c21f92ebc24065ef3ff7e87a8891eb9a7d3657fe1f3d94
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27143816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf5ff47c2b80aec3ebd29b66a23fe67c95ef99fa1e6371f7044638b61e3dac83`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:39:16 GMT
ADD file:fbc9f64de576e5c6264e95b9bb0c43eda9cecf9836b3331c91c148402f192352 in / 
# Tue, 18 Jun 2019 21:39:17 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:39:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:39:18 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:39:18 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:3245b5a2a588d6e4eef6ef141d6a38071aa4d1617100cc2feace80b721e75274`  
		Last Modified: Fri, 14 Jun 2019 14:32:18 GMT  
		Size: 27.1 MB (27108206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d75e9a49d317af603cf3ed3fd0ac05c131074504b43af468073d51021f9bcd`  
		Last Modified: Tue, 18 Jun 2019 21:40:31 GMT  
		Size: 34.6 KB (34601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f40a38fc4ff69c71a6542dfb6acbdf6e5e3be25f0f94659ee85f2e120e37d82`  
		Last Modified: Tue, 18 Jun 2019 21:40:31 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0423e7d050e37d4651190300ea074bd25a8ac7977ab897205fd1df44889605`  
		Last Modified: Tue, 18 Jun 2019 21:40:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:18.04` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:b11b1467edefe08a02b4eb3799cb7df8f19a25f0b2da2ef837b993ad2c750c3c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30425927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dc4a19dc1271abc8daffce96513470c1cb3a909784bdc92f838bd4ffb6f92ac`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:48:01 GMT
ADD file:fffa2939fb9dcbb708086aef7eaeec85560e44db64ec7228205cc0dffdfde2b3 in / 
# Tue, 18 Jun 2019 22:48:08 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:48:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:48:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:48:22 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ef5b5b197566d2f3081c54f8e5ce315ef1bb409a622708e21f26f8a316324dc9`  
		Last Modified: Tue, 18 Jun 2019 22:51:11 GMT  
		Size: 30.4 MB (30389695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb5943989879ea71f39058451b18a9cfe7c8d63d5e98bea0f8ce8398b662cfd`  
		Last Modified: Tue, 18 Jun 2019 22:51:00 GMT  
		Size: 35.2 KB (35187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03367c790f847a4fb9da497ba924c531b08ed840ced5ddebd576b1e617fdeabc`  
		Last Modified: Tue, 18 Jun 2019 22:51:00 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0dfc04432356cee71730dc1476c35948bcaa233371a0bee11cf8be333b28da`  
		Last Modified: Tue, 18 Jun 2019 22:50:59 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:18.04` - linux; s390x

```console
$ docker pull ubuntu@sha256:2250c49a818ed4162862b23d6c7e470e64d6a83d68a38615c1666126bd42993c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.4 MB (25402108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ebc7802c8d928c19cc7c3ea9a2f1e3e582ae8100aa515c74ec5dbe432ab3ad0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:42:25 GMT
ADD file:a2279da3a6bb25fe163ff2f525a032d1d3b872475150261b48a46805a1b871d9 in / 
# Tue, 18 Jun 2019 21:42:26 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:42:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:42:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:42:29 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:3e0ab3b7390d02875ba6655704ba528f120405db6e19a6c8014bacd27a2a2b07`  
		Last Modified: Tue, 18 Jun 2019 21:44:15 GMT  
		Size: 25.4 MB (25364931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8641916778260cb4957d491680516450d36f7590247405e9657afbd7ab582a71`  
		Last Modified: Tue, 18 Jun 2019 21:44:07 GMT  
		Size: 36.2 KB (36171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9dae6e8c4d6bcdbd01ec8e9e91d209bc0d0fb0e392fdb4ef5075d1e322fd3ac`  
		Last Modified: Tue, 18 Jun 2019 21:44:07 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756f46ae05c783e37b80e6d459322ed9643102a8da1ca620233c21a601cce8e4`  
		Last Modified: Tue, 18 Jun 2019 21:44:07 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:18.10`

```console
$ docker pull ubuntu@sha256:99620cf8975764d3189177ff85d355a51abf902d14d2185ec987880c80d05ff3
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
$ docker pull ubuntu@sha256:5bd0315e9b85ae78f9d7eaf2d69097f93fe7e1465f35d602a9495330f584e368
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27114230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f73120de66c958c6bcd1ee745d25f5a509d1ad09edf62fecd94f91777756726`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:52:07 GMT
ADD file:57710235acd445085df388290be388b9b8a2edf8d7ddce2441dee90a64f2e606 in / 
# Tue, 18 Jun 2019 22:52:08 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:52:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:52:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:52:11 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:7ec6d2912f0a2b3b591d5231ebfa4c5f0729414df42cb550942eea07fee552e6`  
		Last Modified: Fri, 14 Jun 2019 14:34:29 GMT  
		Size: 27.1 MB (27078061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fae9a0cb8ab2b4f17affd557ab971e49b32aeadb040316e7d73b5a92a2785c`  
		Last Modified: Tue, 18 Jun 2019 22:54:10 GMT  
		Size: 35.1 KB (35145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c3e823150a973b487c60711aaa4ac2a2b67d4216dc4360a72e7ef88519eddd`  
		Last Modified: Tue, 18 Jun 2019 22:54:10 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b1b19bb4500839e8d81d4a2a09b3c8eba8d5963218769bf2422cb4adb45ff6`  
		Last Modified: Tue, 18 Jun 2019 22:54:10 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:18.10` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:3406adaee29309451e642df03f4882bfc92e325bbe83a61ea720ed7f7f1e5e1a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.5 MB (22543652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:973838334554463515958e72036cd8c7e5f347582db62fdb3c6a21cdb30cb6b0`
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

### `ubuntu:18.10` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:4b01037ea45e2511d491e3f416fcf821ca70451a16f3186d55d870a74e4b2765
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.4 MB (25416947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45abfb193f9bc3aa64a000188dcc8acb2878c7dddc74ac6cc2828507d88dae94`
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

### `ubuntu:18.10` - linux; 386

```console
$ docker pull ubuntu@sha256:eb7789fff5a0fd56b13301e708e0c854f97f5af7f8c31abba38a69f0f9f68e7e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27535980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d229ab9d517aa94ebf6e759e1973c1dbb4edf0d6d765e0b9f7e4fac978315198`
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

### `ubuntu:18.10` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:f86ccaa5e2bc8b4b86bacec9224ccb0cdaaeaf8a53a37b1f99199d7cc0b3fa26
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.9 MB (31947126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd7995b4a54e7e3cf6284a2822cb329f099d4b63c611836dede1485df4317167`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:48:42 GMT
ADD file:30eb84cc0e2d326afec16f48f9ab055e2534ecc222c56abef4bfb11cd3acda8c in / 
# Tue, 18 Jun 2019 22:48:48 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:48:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:48:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:48:58 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ab66a18237b1f7a3d8d0b2a93cc8f5791c2616d8ff0066a213e590ca2ea04edc`  
		Last Modified: Tue, 18 Jun 2019 22:51:35 GMT  
		Size: 31.9 MB (31911085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a04c7a7e718c9bc47d3d2d1228851dc45cc6cbb06d93124e065a0680ddeb3f4`  
		Last Modified: Tue, 18 Jun 2019 22:51:26 GMT  
		Size: 35.0 KB (34987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87565feb1c83ebadf01d7b70791059d0db705582fc8acd93d0cc72a3c442d8f8`  
		Last Modified: Tue, 18 Jun 2019 22:51:26 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712345caa72c5b9691db05c2471183fa40daa793e7adae8365cdcd962ae3f0d0`  
		Last Modified: Tue, 18 Jun 2019 22:51:26 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:18.10` - linux; s390x

```console
$ docker pull ubuntu@sha256:b11e8349ea4919430e21b2090e9ddfb6e06e2e84129561800a7e7f9e28065bb9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25523118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d0ee3d5e70c4c3febedab656f88d766b6f6f0a352ac8115351c2b96764a226f`
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

## `ubuntu:19.04`

```console
$ docker pull ubuntu@sha256:db265801d395a88e15ed4eac372693012275a1a181d1032ebb0cefdd01e5a99f
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
$ docker pull ubuntu@sha256:41ef647cff01d0f5990f2e22b85c393052df387cf588a39950b66fb576b21cc6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27651552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86f1f717b6d869c9af906d8ef5ead7ae976a028203ac21821bc758997aeef726`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:52:33 GMT
ADD file:d3be43e0fdf0de92d585df42af7bfa7fab5072d1173bd42c7469fd49462cad3c in / 
# Tue, 18 Jun 2019 22:52:35 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:52:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:52:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:52:38 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:29c2f229a1281554ccce1972738cfb3232c4ace59343b4090d6e09f148fee588`  
		Last Modified: Fri, 14 Jun 2019 14:45:48 GMT  
		Size: 27.6 MB (27619579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d724aeeb8846c1a94a323f756fcf2ae6ca4e573edd64266c2c220a7951827b3`  
		Last Modified: Tue, 18 Jun 2019 22:54:20 GMT  
		Size: 30.9 KB (30946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60682405dd89aa6c1621f0f2df2ba6b430402c5b59c27b6c71af92b07e535893`  
		Last Modified: Tue, 18 Jun 2019 22:54:20 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9cd020258303b6913dc8e15db14030877decb816e87cde6fc4d24b060881a4`  
		Last Modified: Tue, 18 Jun 2019 22:54:20 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:19.04` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:29476c35c841c7e4b3ef26bf6810db86419a3dbf161c0c031e90589a55b9e84e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 MB (23148839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:382de1d3f1dc27baec5ae5b257a6ba68ddaef50a8ee147f9eeacf127e94100b7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:59:12 GMT
ADD file:c786ecb3cca2049794dbe978427d3ba71d82f6c499e1bbce3fb6580fc0ab3ac6 in / 
# Tue, 18 Jun 2019 21:59:14 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:59:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:59:18 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:59:18 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ea18fb6f0291dc0209d95d15664beb0cb15d2baf6c95b35e53d683c0c74fdd22`  
		Last Modified: Fri, 14 Jun 2019 15:05:59 GMT  
		Size: 23.1 MB (23116823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0427bce7903a82bafd6e55053eaf424abf1df065080fcddeff7a6fd8b9d847e`  
		Last Modified: Tue, 18 Jun 2019 22:02:36 GMT  
		Size: 31.0 KB (30958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26e4cbeba8d154632411315815ad759e1a46cd09a4248a286d8432554589fa3`  
		Last Modified: Tue, 18 Jun 2019 22:02:39 GMT  
		Size: 869.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56838bbc842516cc29051e34f67989619b1be99791458dc5d759a1a32b81012`  
		Last Modified: Tue, 18 Jun 2019 22:02:39 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:19.04` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:59e42258cd844b24dfb4f624aff6044e5258a6e78d027fd85dfb0f311df01cca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26412400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32cbb636a987ccb1144dfbc03ef8dcf0bf13aa7c068a8a025ee403859668f7b6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:51 GMT
ADD file:51d533e3c130665bdef840634216eace004cf6985ad8964387483655aa4779dc in / 
# Tue, 18 Jun 2019 21:40:53 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:56 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:4488dd9973772f1f778e425ee910dc6d2321ec4e46726567d298ae48a850c49b`  
		Last Modified: Fri, 14 Jun 2019 15:00:37 GMT  
		Size: 26.4 MB (26380585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff7293bf9b79f4f8aa641bd4b3d82bd01d1ab7cd97e5f04b7802583791f9f9a3`  
		Last Modified: Tue, 18 Jun 2019 21:42:12 GMT  
		Size: 30.8 KB (30762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a14d698dc993abf15832a33e640a84f658159c7fbc11e02dfa27cc96e0fab7`  
		Last Modified: Tue, 18 Jun 2019 21:42:12 GMT  
		Size: 866.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63aef2f774539d4eb2f3f72e10cb76e1b902947d34054134059e4a0615435264`  
		Last Modified: Tue, 18 Jun 2019 21:42:12 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:19.04` - linux; 386

```console
$ docker pull ubuntu@sha256:d6e2313a3e978de63e5df750833f95e15d7a552af9c805c66ba742038b6db07b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28313256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa88d866d4892ef3a933a2bc84db54da7576c8a3f8b936063bfc51431aeba34f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:39:46 GMT
ADD file:ce5cc7fe51b6d87c2e584ba7eee2fcd877b230bce289d7ab2d5e1c7a4c2a4aaa in / 
# Tue, 18 Jun 2019 21:39:47 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:39:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:39:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:39:49 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:a3a0dc03da3aae711d76416b6ace833014f072b2c95dc7d155723f073e96aff5`  
		Last Modified: Fri, 14 Jun 2019 14:52:45 GMT  
		Size: 28.3 MB (28282006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab68a4f5e08981094ec4932772d919c9c68958cbde54434373b1330cf657e670`  
		Last Modified: Tue, 18 Jun 2019 21:40:54 GMT  
		Size: 30.2 KB (30226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aba84b50f59f5e892e684a5ecfbad0a57e8aa4f1c7a8780dc21ceb7aa3cf02c`  
		Last Modified: Tue, 18 Jun 2019 21:40:54 GMT  
		Size: 861.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196ac2c35f627ece86a23d32066ae615cd58c81c5ff4477a35fc9713a458e21b`  
		Last Modified: Tue, 18 Jun 2019 21:40:54 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:19.04` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:f896e5b401bd7ed2ee5b699b7c7f917593cecfb20a56643e3f7a5984c2dc6518
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32911121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a367d887c7a4965434155e3f375f6826d0b89d326963f53dd9b74a9511d9c01f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:49:12 GMT
ADD file:035c9b3a2be4bc6300456ee4c0b215f0d8f493454877d89bf5e2778ec4a3f0e5 in / 
# Tue, 18 Jun 2019 22:49:19 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:49:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:49:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:49:31 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:de621b88ac71e8f3ff0b5ad60a86f0e657bd2b373db00864306fe6564297e433`  
		Last Modified: Tue, 18 Jun 2019 22:51:56 GMT  
		Size: 32.9 MB (32879271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7592d78c5bf3ac58c488cb07d787d530c6f8b89858611579fbabd7bd9c12f69e`  
		Last Modified: Tue, 18 Jun 2019 22:51:47 GMT  
		Size: 30.8 KB (30794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba2d1c08869c0eda4feffa6d2dd7da20bd3b8943625a5bf027d14f98fc411da3`  
		Last Modified: Tue, 18 Jun 2019 22:51:47 GMT  
		Size: 867.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f57ab1bd71775377d66eb3b0df9d5da7744ad65b3991094527234f23ac53b13e`  
		Last Modified: Tue, 18 Jun 2019 22:51:47 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:19.04` - linux; s390x

```console
$ docker pull ubuntu@sha256:cda5621b377fb66a817c39f8c1e091cec4ab8a059c3770f29c46eb5e74e1ee67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 MB (26234850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:325a003592ae5ad698e75d177bf27dd4bd0e4299f9d9e21fd081ca79f1c6f634`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:42:55 GMT
ADD file:e987de5e550cbdf23b185c00c1148504444eace5c57dc1b69187b76fe436b153 in / 
# Tue, 18 Jun 2019 21:42:56 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:42:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:42:58 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:42:58 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:28969797777b946282ba2b657e0bdda5b3e21e53eb7cec5eadc5c3e1235161d9`  
		Last Modified: Tue, 18 Jun 2019 21:44:39 GMT  
		Size: 26.2 MB (26202274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8520ba91e006a8790a2cd4077d96a35757cbba72f08eccf09cac51047b4c4c`  
		Last Modified: Tue, 18 Jun 2019 21:44:34 GMT  
		Size: 31.6 KB (31555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:942bf22444641d8df6c36a1bed04f998db82e46bafc3fa2c8459c262a5663aad`  
		Last Modified: Tue, 18 Jun 2019 21:44:34 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a9f2dd675a65c49dc282ce884812f201f4bad9d8d6fb099db6bc65e0e64e940`  
		Last Modified: Tue, 18 Jun 2019 21:44:35 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:19.10`

```console
$ docker pull ubuntu@sha256:1f89ef5186c9da8ce0d878b039ed925c2c807ecc3aa16e7d4a4b55650faff5db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:19.10` - linux; amd64

```console
$ docker pull ubuntu@sha256:dfa784277cf14813cd6ecb23685ad7cd55eafed0e245011bc4fb793f0cd72f21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27898858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76749da58329a5f2604c69a3077a89b966ce9c5004440729a552977e1eee43bf`
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

### `ubuntu:19.10` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:e1947409e93849e56ee931477fdcc2d6e2f30b78ec4f7a82a13d7917fb025b78
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23368160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a3a824942420486b9613620e045e9ff80ed1dd6b3e91f7348de892a8f7a2738`
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

### `ubuntu:19.10` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:3e69dce53edd67f9c5b1ea7ac7fa0831359b96efd97e28bd3c153469d703b24f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 MB (26683914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5acdef155c952b67f8459923819aad0dfb820c9d028eecee8131b4727228f66`
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

### `ubuntu:19.10` - linux; 386

```console
$ docker pull ubuntu@sha256:3c5a6107388c90013d87e83a2b233747896f774750c25665cb05a1619da61b06
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28573045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7684828caa1a6f64d1a01ed1eb9035369f63713ed72a97213eaddeb26044cf87`
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

### `ubuntu:19.10` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:69be7cea6c55c165de4d56375ae9e4e7a295d0c5e332a3cb6a7500e0c0bc6649
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 MB (33182586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dad5858c20d4c68e3984f808fb3b2c364dc36863337b6096d6019d36b25f7328`
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

### `ubuntu:19.10` - linux; s390x

```console
$ docker pull ubuntu@sha256:77086fda05783728fac2b4417a1daa29697a35a6754fbce502dc9ca2b0087789
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26408191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74f50de9afa7003777803388cd6d8e51ef6224ff0c4fb5aeb812a11e43f7fd7e`
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

## `ubuntu:bionic`

```console
$ docker pull ubuntu@sha256:9b1702dcfe32c873a770a32cfd306dd7fc1c4fd134adfb783db68defc8894b3c
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
$ docker pull ubuntu@sha256:eb70667a801686f914408558660da753cde27192cd036148e58258819b927395
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 MB (26720871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c108a37151f54439950335c409802e948883e00c93fdb751d206c9a9674c1f6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:51:33 GMT
ADD file:4e6b5d9ca371eb881c581574b8dc4f5391eff2872db364af0f8d9804e4890098 in / 
# Tue, 18 Jun 2019 22:51:35 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:51:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:51:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:51:38 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:5b7339215d1d5f8e68622d584a224f60339f5bef41dbd74330d081e912f0cddd`  
		Last Modified: Thu, 13 Jun 2019 00:24:57 GMT  
		Size: 26.7 MB (26684508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ca88e9f6723ce82bc14b241cda8634f6d19677184691d086662641ab96fe68`  
		Last Modified: Tue, 18 Jun 2019 22:53:58 GMT  
		Size: 35.4 KB (35352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31c3b1caad473a474d574283741f880e37c708cc06ee620d3e93fa602125ee0`  
		Last Modified: Tue, 18 Jun 2019 22:53:57 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b054a26005b7f3b032577f811421fab5ec3b42ce45a4012dfa00cf6ed6191b0f`  
		Last Modified: Tue, 18 Jun 2019 22:53:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:09a066942d6dc6b5d9f88c707f1197748cb620bd0b322484ed327253cab2ac1a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.3 MB (22315997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e37fc27e0a1c7033d1d6725b271b9fd6de1286028cab7c0e3bdbf4411aa8b1e7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:58:19 GMT
ADD file:f97088f30dc73833af9b7e84a77cc26a7d489c3b106250bc1c67ca78ecf34401 in / 
# Tue, 18 Jun 2019 21:58:21 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:58:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:58:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:58:25 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:890bdf70a444971b59240478f3073e23d165e3ba40106d3d4e94a57e52f9f715`  
		Last Modified: Fri, 14 Jun 2019 14:40:30 GMT  
		Size: 22.3 MB (22279501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7984ec58db25dba3b1eb769446c440c608e2a35869a13b6a57ba069134f28e1`  
		Last Modified: Tue, 18 Jun 2019 22:00:38 GMT  
		Size: 35.5 KB (35452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69dd89700a6c256d7ddae21c28adf3ded21abb73838795b0a1a5c3b12556da0b`  
		Last Modified: Tue, 18 Jun 2019 22:00:38 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af11110095b961ce4addaca6fbf8afe199d233b510f48cdd196b4c0b4029576`  
		Last Modified: Tue, 18 Jun 2019 22:00:41 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:fcf80b2fae669da66e29b272d768451f7d2b1641c26a250b7adf83bf0dafb452
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23740561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c1de3d39dd66d71ef688133f7ffc8b4757ed9f8383adf7dc0c84b547ef7bd85`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:20 GMT
ADD file:5a85b2cf366cbf793b3cd89f16906c1221128e020868bf7593cf85df20370c31 in / 
# Tue, 18 Jun 2019 21:40:22 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:26 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:85df13e07ac866f0749412605b4d04aef859d2d116979e1dad9da5093585ce3c`  
		Last Modified: Fri, 14 Jun 2019 14:38:29 GMT  
		Size: 23.7 MB (23704318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627bf1c6512dd26e72f564465b94d24232e3221dc649211b6c2169cd9bae0f7`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 35.2 KB (35201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99ec04f469874c69bd01d057f54593e5346d90cfba712152008d76624217ddb`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc2e75663b5f54850089251d728dea5cb0b29b1e95e1bc0785c801bd2dc3092`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic` - linux; 386

```console
$ docker pull ubuntu@sha256:30fe694bccc16b8d61c21f92ebc24065ef3ff7e87a8891eb9a7d3657fe1f3d94
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27143816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf5ff47c2b80aec3ebd29b66a23fe67c95ef99fa1e6371f7044638b61e3dac83`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:39:16 GMT
ADD file:fbc9f64de576e5c6264e95b9bb0c43eda9cecf9836b3331c91c148402f192352 in / 
# Tue, 18 Jun 2019 21:39:17 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:39:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:39:18 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:39:18 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:3245b5a2a588d6e4eef6ef141d6a38071aa4d1617100cc2feace80b721e75274`  
		Last Modified: Fri, 14 Jun 2019 14:32:18 GMT  
		Size: 27.1 MB (27108206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d75e9a49d317af603cf3ed3fd0ac05c131074504b43af468073d51021f9bcd`  
		Last Modified: Tue, 18 Jun 2019 21:40:31 GMT  
		Size: 34.6 KB (34601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f40a38fc4ff69c71a6542dfb6acbdf6e5e3be25f0f94659ee85f2e120e37d82`  
		Last Modified: Tue, 18 Jun 2019 21:40:31 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0423e7d050e37d4651190300ea074bd25a8ac7977ab897205fd1df44889605`  
		Last Modified: Tue, 18 Jun 2019 21:40:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:b11b1467edefe08a02b4eb3799cb7df8f19a25f0b2da2ef837b993ad2c750c3c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30425927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dc4a19dc1271abc8daffce96513470c1cb3a909784bdc92f838bd4ffb6f92ac`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:48:01 GMT
ADD file:fffa2939fb9dcbb708086aef7eaeec85560e44db64ec7228205cc0dffdfde2b3 in / 
# Tue, 18 Jun 2019 22:48:08 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:48:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:48:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:48:22 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ef5b5b197566d2f3081c54f8e5ce315ef1bb409a622708e21f26f8a316324dc9`  
		Last Modified: Tue, 18 Jun 2019 22:51:11 GMT  
		Size: 30.4 MB (30389695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb5943989879ea71f39058451b18a9cfe7c8d63d5e98bea0f8ce8398b662cfd`  
		Last Modified: Tue, 18 Jun 2019 22:51:00 GMT  
		Size: 35.2 KB (35187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03367c790f847a4fb9da497ba924c531b08ed840ced5ddebd576b1e617fdeabc`  
		Last Modified: Tue, 18 Jun 2019 22:51:00 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0dfc04432356cee71730dc1476c35948bcaa233371a0bee11cf8be333b28da`  
		Last Modified: Tue, 18 Jun 2019 22:50:59 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic` - linux; s390x

```console
$ docker pull ubuntu@sha256:2250c49a818ed4162862b23d6c7e470e64d6a83d68a38615c1666126bd42993c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.4 MB (25402108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ebc7802c8d928c19cc7c3ea9a2f1e3e582ae8100aa515c74ec5dbe432ab3ad0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:42:25 GMT
ADD file:a2279da3a6bb25fe163ff2f525a032d1d3b872475150261b48a46805a1b871d9 in / 
# Tue, 18 Jun 2019 21:42:26 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:42:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:42:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:42:29 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:3e0ab3b7390d02875ba6655704ba528f120405db6e19a6c8014bacd27a2a2b07`  
		Last Modified: Tue, 18 Jun 2019 21:44:15 GMT  
		Size: 25.4 MB (25364931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8641916778260cb4957d491680516450d36f7590247405e9657afbd7ab582a71`  
		Last Modified: Tue, 18 Jun 2019 21:44:07 GMT  
		Size: 36.2 KB (36171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9dae6e8c4d6bcdbd01ec8e9e91d209bc0d0fb0e392fdb4ef5075d1e322fd3ac`  
		Last Modified: Tue, 18 Jun 2019 21:44:07 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756f46ae05c783e37b80e6d459322ed9643102a8da1ca620233c21a601cce8e4`  
		Last Modified: Tue, 18 Jun 2019 21:44:07 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:bionic-20190612`

```console
$ docker pull ubuntu@sha256:9b1702dcfe32c873a770a32cfd306dd7fc1c4fd134adfb783db68defc8894b3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:bionic-20190612` - linux; amd64

```console
$ docker pull ubuntu@sha256:eb70667a801686f914408558660da753cde27192cd036148e58258819b927395
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 MB (26720871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c108a37151f54439950335c409802e948883e00c93fdb751d206c9a9674c1f6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:51:33 GMT
ADD file:4e6b5d9ca371eb881c581574b8dc4f5391eff2872db364af0f8d9804e4890098 in / 
# Tue, 18 Jun 2019 22:51:35 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:51:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:51:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:51:38 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:5b7339215d1d5f8e68622d584a224f60339f5bef41dbd74330d081e912f0cddd`  
		Last Modified: Thu, 13 Jun 2019 00:24:57 GMT  
		Size: 26.7 MB (26684508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ca88e9f6723ce82bc14b241cda8634f6d19677184691d086662641ab96fe68`  
		Last Modified: Tue, 18 Jun 2019 22:53:58 GMT  
		Size: 35.4 KB (35352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31c3b1caad473a474d574283741f880e37c708cc06ee620d3e93fa602125ee0`  
		Last Modified: Tue, 18 Jun 2019 22:53:57 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b054a26005b7f3b032577f811421fab5ec3b42ce45a4012dfa00cf6ed6191b0f`  
		Last Modified: Tue, 18 Jun 2019 22:53:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic-20190612` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:09a066942d6dc6b5d9f88c707f1197748cb620bd0b322484ed327253cab2ac1a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.3 MB (22315997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e37fc27e0a1c7033d1d6725b271b9fd6de1286028cab7c0e3bdbf4411aa8b1e7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:58:19 GMT
ADD file:f97088f30dc73833af9b7e84a77cc26a7d489c3b106250bc1c67ca78ecf34401 in / 
# Tue, 18 Jun 2019 21:58:21 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:58:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:58:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:58:25 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:890bdf70a444971b59240478f3073e23d165e3ba40106d3d4e94a57e52f9f715`  
		Last Modified: Fri, 14 Jun 2019 14:40:30 GMT  
		Size: 22.3 MB (22279501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7984ec58db25dba3b1eb769446c440c608e2a35869a13b6a57ba069134f28e1`  
		Last Modified: Tue, 18 Jun 2019 22:00:38 GMT  
		Size: 35.5 KB (35452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69dd89700a6c256d7ddae21c28adf3ded21abb73838795b0a1a5c3b12556da0b`  
		Last Modified: Tue, 18 Jun 2019 22:00:38 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af11110095b961ce4addaca6fbf8afe199d233b510f48cdd196b4c0b4029576`  
		Last Modified: Tue, 18 Jun 2019 22:00:41 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic-20190612` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:fcf80b2fae669da66e29b272d768451f7d2b1641c26a250b7adf83bf0dafb452
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23740561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c1de3d39dd66d71ef688133f7ffc8b4757ed9f8383adf7dc0c84b547ef7bd85`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:20 GMT
ADD file:5a85b2cf366cbf793b3cd89f16906c1221128e020868bf7593cf85df20370c31 in / 
# Tue, 18 Jun 2019 21:40:22 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:26 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:85df13e07ac866f0749412605b4d04aef859d2d116979e1dad9da5093585ce3c`  
		Last Modified: Fri, 14 Jun 2019 14:38:29 GMT  
		Size: 23.7 MB (23704318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627bf1c6512dd26e72f564465b94d24232e3221dc649211b6c2169cd9bae0f7`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 35.2 KB (35201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99ec04f469874c69bd01d057f54593e5346d90cfba712152008d76624217ddb`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc2e75663b5f54850089251d728dea5cb0b29b1e95e1bc0785c801bd2dc3092`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic-20190612` - linux; 386

```console
$ docker pull ubuntu@sha256:30fe694bccc16b8d61c21f92ebc24065ef3ff7e87a8891eb9a7d3657fe1f3d94
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27143816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf5ff47c2b80aec3ebd29b66a23fe67c95ef99fa1e6371f7044638b61e3dac83`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:39:16 GMT
ADD file:fbc9f64de576e5c6264e95b9bb0c43eda9cecf9836b3331c91c148402f192352 in / 
# Tue, 18 Jun 2019 21:39:17 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:39:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:39:18 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:39:18 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:3245b5a2a588d6e4eef6ef141d6a38071aa4d1617100cc2feace80b721e75274`  
		Last Modified: Fri, 14 Jun 2019 14:32:18 GMT  
		Size: 27.1 MB (27108206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d75e9a49d317af603cf3ed3fd0ac05c131074504b43af468073d51021f9bcd`  
		Last Modified: Tue, 18 Jun 2019 21:40:31 GMT  
		Size: 34.6 KB (34601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f40a38fc4ff69c71a6542dfb6acbdf6e5e3be25f0f94659ee85f2e120e37d82`  
		Last Modified: Tue, 18 Jun 2019 21:40:31 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0423e7d050e37d4651190300ea074bd25a8ac7977ab897205fd1df44889605`  
		Last Modified: Tue, 18 Jun 2019 21:40:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic-20190612` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:b11b1467edefe08a02b4eb3799cb7df8f19a25f0b2da2ef837b993ad2c750c3c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30425927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dc4a19dc1271abc8daffce96513470c1cb3a909784bdc92f838bd4ffb6f92ac`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:48:01 GMT
ADD file:fffa2939fb9dcbb708086aef7eaeec85560e44db64ec7228205cc0dffdfde2b3 in / 
# Tue, 18 Jun 2019 22:48:08 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:48:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:48:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:48:22 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ef5b5b197566d2f3081c54f8e5ce315ef1bb409a622708e21f26f8a316324dc9`  
		Last Modified: Tue, 18 Jun 2019 22:51:11 GMT  
		Size: 30.4 MB (30389695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb5943989879ea71f39058451b18a9cfe7c8d63d5e98bea0f8ce8398b662cfd`  
		Last Modified: Tue, 18 Jun 2019 22:51:00 GMT  
		Size: 35.2 KB (35187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03367c790f847a4fb9da497ba924c531b08ed840ced5ddebd576b1e617fdeabc`  
		Last Modified: Tue, 18 Jun 2019 22:51:00 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0dfc04432356cee71730dc1476c35948bcaa233371a0bee11cf8be333b28da`  
		Last Modified: Tue, 18 Jun 2019 22:50:59 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic-20190612` - linux; s390x

```console
$ docker pull ubuntu@sha256:2250c49a818ed4162862b23d6c7e470e64d6a83d68a38615c1666126bd42993c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.4 MB (25402108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ebc7802c8d928c19cc7c3ea9a2f1e3e582ae8100aa515c74ec5dbe432ab3ad0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:42:25 GMT
ADD file:a2279da3a6bb25fe163ff2f525a032d1d3b872475150261b48a46805a1b871d9 in / 
# Tue, 18 Jun 2019 21:42:26 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:42:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:42:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:42:29 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:3e0ab3b7390d02875ba6655704ba528f120405db6e19a6c8014bacd27a2a2b07`  
		Last Modified: Tue, 18 Jun 2019 21:44:15 GMT  
		Size: 25.4 MB (25364931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8641916778260cb4957d491680516450d36f7590247405e9657afbd7ab582a71`  
		Last Modified: Tue, 18 Jun 2019 21:44:07 GMT  
		Size: 36.2 KB (36171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9dae6e8c4d6bcdbd01ec8e9e91d209bc0d0fb0e392fdb4ef5075d1e322fd3ac`  
		Last Modified: Tue, 18 Jun 2019 21:44:07 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756f46ae05c783e37b80e6d459322ed9643102a8da1ca620233c21a601cce8e4`  
		Last Modified: Tue, 18 Jun 2019 21:44:07 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:cosmic`

```console
$ docker pull ubuntu@sha256:99620cf8975764d3189177ff85d355a51abf902d14d2185ec987880c80d05ff3
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
$ docker pull ubuntu@sha256:5bd0315e9b85ae78f9d7eaf2d69097f93fe7e1465f35d602a9495330f584e368
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27114230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f73120de66c958c6bcd1ee745d25f5a509d1ad09edf62fecd94f91777756726`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:52:07 GMT
ADD file:57710235acd445085df388290be388b9b8a2edf8d7ddce2441dee90a64f2e606 in / 
# Tue, 18 Jun 2019 22:52:08 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:52:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:52:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:52:11 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:7ec6d2912f0a2b3b591d5231ebfa4c5f0729414df42cb550942eea07fee552e6`  
		Last Modified: Fri, 14 Jun 2019 14:34:29 GMT  
		Size: 27.1 MB (27078061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fae9a0cb8ab2b4f17affd557ab971e49b32aeadb040316e7d73b5a92a2785c`  
		Last Modified: Tue, 18 Jun 2019 22:54:10 GMT  
		Size: 35.1 KB (35145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c3e823150a973b487c60711aaa4ac2a2b67d4216dc4360a72e7ef88519eddd`  
		Last Modified: Tue, 18 Jun 2019 22:54:10 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b1b19bb4500839e8d81d4a2a09b3c8eba8d5963218769bf2422cb4adb45ff6`  
		Last Modified: Tue, 18 Jun 2019 22:54:10 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:cosmic` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:3406adaee29309451e642df03f4882bfc92e325bbe83a61ea720ed7f7f1e5e1a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.5 MB (22543652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:973838334554463515958e72036cd8c7e5f347582db62fdb3c6a21cdb30cb6b0`
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

### `ubuntu:cosmic` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:4b01037ea45e2511d491e3f416fcf821ca70451a16f3186d55d870a74e4b2765
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.4 MB (25416947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45abfb193f9bc3aa64a000188dcc8acb2878c7dddc74ac6cc2828507d88dae94`
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

### `ubuntu:cosmic` - linux; 386

```console
$ docker pull ubuntu@sha256:eb7789fff5a0fd56b13301e708e0c854f97f5af7f8c31abba38a69f0f9f68e7e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27535980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d229ab9d517aa94ebf6e759e1973c1dbb4edf0d6d765e0b9f7e4fac978315198`
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

### `ubuntu:cosmic` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:f86ccaa5e2bc8b4b86bacec9224ccb0cdaaeaf8a53a37b1f99199d7cc0b3fa26
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.9 MB (31947126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd7995b4a54e7e3cf6284a2822cb329f099d4b63c611836dede1485df4317167`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:48:42 GMT
ADD file:30eb84cc0e2d326afec16f48f9ab055e2534ecc222c56abef4bfb11cd3acda8c in / 
# Tue, 18 Jun 2019 22:48:48 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:48:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:48:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:48:58 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ab66a18237b1f7a3d8d0b2a93cc8f5791c2616d8ff0066a213e590ca2ea04edc`  
		Last Modified: Tue, 18 Jun 2019 22:51:35 GMT  
		Size: 31.9 MB (31911085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a04c7a7e718c9bc47d3d2d1228851dc45cc6cbb06d93124e065a0680ddeb3f4`  
		Last Modified: Tue, 18 Jun 2019 22:51:26 GMT  
		Size: 35.0 KB (34987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87565feb1c83ebadf01d7b70791059d0db705582fc8acd93d0cc72a3c442d8f8`  
		Last Modified: Tue, 18 Jun 2019 22:51:26 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712345caa72c5b9691db05c2471183fa40daa793e7adae8365cdcd962ae3f0d0`  
		Last Modified: Tue, 18 Jun 2019 22:51:26 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:cosmic` - linux; s390x

```console
$ docker pull ubuntu@sha256:b11e8349ea4919430e21b2090e9ddfb6e06e2e84129561800a7e7f9e28065bb9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25523118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d0ee3d5e70c4c3febedab656f88d766b6f6f0a352ac8115351c2b96764a226f`
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

## `ubuntu:cosmic-20190614`

```console
$ docker pull ubuntu@sha256:99620cf8975764d3189177ff85d355a51abf902d14d2185ec987880c80d05ff3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:cosmic-20190614` - linux; amd64

```console
$ docker pull ubuntu@sha256:5bd0315e9b85ae78f9d7eaf2d69097f93fe7e1465f35d602a9495330f584e368
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27114230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f73120de66c958c6bcd1ee745d25f5a509d1ad09edf62fecd94f91777756726`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:52:07 GMT
ADD file:57710235acd445085df388290be388b9b8a2edf8d7ddce2441dee90a64f2e606 in / 
# Tue, 18 Jun 2019 22:52:08 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:52:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:52:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:52:11 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:7ec6d2912f0a2b3b591d5231ebfa4c5f0729414df42cb550942eea07fee552e6`  
		Last Modified: Fri, 14 Jun 2019 14:34:29 GMT  
		Size: 27.1 MB (27078061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fae9a0cb8ab2b4f17affd557ab971e49b32aeadb040316e7d73b5a92a2785c`  
		Last Modified: Tue, 18 Jun 2019 22:54:10 GMT  
		Size: 35.1 KB (35145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c3e823150a973b487c60711aaa4ac2a2b67d4216dc4360a72e7ef88519eddd`  
		Last Modified: Tue, 18 Jun 2019 22:54:10 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b1b19bb4500839e8d81d4a2a09b3c8eba8d5963218769bf2422cb4adb45ff6`  
		Last Modified: Tue, 18 Jun 2019 22:54:10 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:cosmic-20190614` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:3406adaee29309451e642df03f4882bfc92e325bbe83a61ea720ed7f7f1e5e1a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.5 MB (22543652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:973838334554463515958e72036cd8c7e5f347582db62fdb3c6a21cdb30cb6b0`
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

### `ubuntu:cosmic-20190614` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:4b01037ea45e2511d491e3f416fcf821ca70451a16f3186d55d870a74e4b2765
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.4 MB (25416947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45abfb193f9bc3aa64a000188dcc8acb2878c7dddc74ac6cc2828507d88dae94`
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

### `ubuntu:cosmic-20190614` - linux; 386

```console
$ docker pull ubuntu@sha256:eb7789fff5a0fd56b13301e708e0c854f97f5af7f8c31abba38a69f0f9f68e7e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27535980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d229ab9d517aa94ebf6e759e1973c1dbb4edf0d6d765e0b9f7e4fac978315198`
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

### `ubuntu:cosmic-20190614` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:f86ccaa5e2bc8b4b86bacec9224ccb0cdaaeaf8a53a37b1f99199d7cc0b3fa26
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.9 MB (31947126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd7995b4a54e7e3cf6284a2822cb329f099d4b63c611836dede1485df4317167`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:48:42 GMT
ADD file:30eb84cc0e2d326afec16f48f9ab055e2534ecc222c56abef4bfb11cd3acda8c in / 
# Tue, 18 Jun 2019 22:48:48 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:48:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:48:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:48:58 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ab66a18237b1f7a3d8d0b2a93cc8f5791c2616d8ff0066a213e590ca2ea04edc`  
		Last Modified: Tue, 18 Jun 2019 22:51:35 GMT  
		Size: 31.9 MB (31911085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a04c7a7e718c9bc47d3d2d1228851dc45cc6cbb06d93124e065a0680ddeb3f4`  
		Last Modified: Tue, 18 Jun 2019 22:51:26 GMT  
		Size: 35.0 KB (34987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87565feb1c83ebadf01d7b70791059d0db705582fc8acd93d0cc72a3c442d8f8`  
		Last Modified: Tue, 18 Jun 2019 22:51:26 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712345caa72c5b9691db05c2471183fa40daa793e7adae8365cdcd962ae3f0d0`  
		Last Modified: Tue, 18 Jun 2019 22:51:26 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:cosmic-20190614` - linux; s390x

```console
$ docker pull ubuntu@sha256:b11e8349ea4919430e21b2090e9ddfb6e06e2e84129561800a7e7f9e28065bb9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25523118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d0ee3d5e70c4c3febedab656f88d766b6f6f0a352ac8115351c2b96764a226f`
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

## `ubuntu:devel`

```console
$ docker pull ubuntu@sha256:1f89ef5186c9da8ce0d878b039ed925c2c807ecc3aa16e7d4a4b55650faff5db
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
$ docker pull ubuntu@sha256:dfa784277cf14813cd6ecb23685ad7cd55eafed0e245011bc4fb793f0cd72f21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27898858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76749da58329a5f2604c69a3077a89b966ce9c5004440729a552977e1eee43bf`
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

### `ubuntu:devel` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:e1947409e93849e56ee931477fdcc2d6e2f30b78ec4f7a82a13d7917fb025b78
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23368160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a3a824942420486b9613620e045e9ff80ed1dd6b3e91f7348de892a8f7a2738`
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

### `ubuntu:devel` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:3e69dce53edd67f9c5b1ea7ac7fa0831359b96efd97e28bd3c153469d703b24f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 MB (26683914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5acdef155c952b67f8459923819aad0dfb820c9d028eecee8131b4727228f66`
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

### `ubuntu:devel` - linux; 386

```console
$ docker pull ubuntu@sha256:3c5a6107388c90013d87e83a2b233747896f774750c25665cb05a1619da61b06
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28573045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7684828caa1a6f64d1a01ed1eb9035369f63713ed72a97213eaddeb26044cf87`
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

### `ubuntu:devel` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:69be7cea6c55c165de4d56375ae9e4e7a295d0c5e332a3cb6a7500e0c0bc6649
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 MB (33182586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dad5858c20d4c68e3984f808fb3b2c364dc36863337b6096d6019d36b25f7328`
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

### `ubuntu:devel` - linux; s390x

```console
$ docker pull ubuntu@sha256:77086fda05783728fac2b4417a1daa29697a35a6754fbce502dc9ca2b0087789
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26408191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74f50de9afa7003777803388cd6d8e51ef6224ff0c4fb5aeb812a11e43f7fd7e`
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

## `ubuntu:disco`

```console
$ docker pull ubuntu@sha256:db265801d395a88e15ed4eac372693012275a1a181d1032ebb0cefdd01e5a99f
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
$ docker pull ubuntu@sha256:41ef647cff01d0f5990f2e22b85c393052df387cf588a39950b66fb576b21cc6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27651552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86f1f717b6d869c9af906d8ef5ead7ae976a028203ac21821bc758997aeef726`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:52:33 GMT
ADD file:d3be43e0fdf0de92d585df42af7bfa7fab5072d1173bd42c7469fd49462cad3c in / 
# Tue, 18 Jun 2019 22:52:35 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:52:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:52:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:52:38 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:29c2f229a1281554ccce1972738cfb3232c4ace59343b4090d6e09f148fee588`  
		Last Modified: Fri, 14 Jun 2019 14:45:48 GMT  
		Size: 27.6 MB (27619579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d724aeeb8846c1a94a323f756fcf2ae6ca4e573edd64266c2c220a7951827b3`  
		Last Modified: Tue, 18 Jun 2019 22:54:20 GMT  
		Size: 30.9 KB (30946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60682405dd89aa6c1621f0f2df2ba6b430402c5b59c27b6c71af92b07e535893`  
		Last Modified: Tue, 18 Jun 2019 22:54:20 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9cd020258303b6913dc8e15db14030877decb816e87cde6fc4d24b060881a4`  
		Last Modified: Tue, 18 Jun 2019 22:54:20 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:disco` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:29476c35c841c7e4b3ef26bf6810db86419a3dbf161c0c031e90589a55b9e84e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 MB (23148839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:382de1d3f1dc27baec5ae5b257a6ba68ddaef50a8ee147f9eeacf127e94100b7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:59:12 GMT
ADD file:c786ecb3cca2049794dbe978427d3ba71d82f6c499e1bbce3fb6580fc0ab3ac6 in / 
# Tue, 18 Jun 2019 21:59:14 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:59:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:59:18 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:59:18 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ea18fb6f0291dc0209d95d15664beb0cb15d2baf6c95b35e53d683c0c74fdd22`  
		Last Modified: Fri, 14 Jun 2019 15:05:59 GMT  
		Size: 23.1 MB (23116823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0427bce7903a82bafd6e55053eaf424abf1df065080fcddeff7a6fd8b9d847e`  
		Last Modified: Tue, 18 Jun 2019 22:02:36 GMT  
		Size: 31.0 KB (30958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26e4cbeba8d154632411315815ad759e1a46cd09a4248a286d8432554589fa3`  
		Last Modified: Tue, 18 Jun 2019 22:02:39 GMT  
		Size: 869.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56838bbc842516cc29051e34f67989619b1be99791458dc5d759a1a32b81012`  
		Last Modified: Tue, 18 Jun 2019 22:02:39 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:disco` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:59e42258cd844b24dfb4f624aff6044e5258a6e78d027fd85dfb0f311df01cca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26412400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32cbb636a987ccb1144dfbc03ef8dcf0bf13aa7c068a8a025ee403859668f7b6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:51 GMT
ADD file:51d533e3c130665bdef840634216eace004cf6985ad8964387483655aa4779dc in / 
# Tue, 18 Jun 2019 21:40:53 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:56 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:4488dd9973772f1f778e425ee910dc6d2321ec4e46726567d298ae48a850c49b`  
		Last Modified: Fri, 14 Jun 2019 15:00:37 GMT  
		Size: 26.4 MB (26380585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff7293bf9b79f4f8aa641bd4b3d82bd01d1ab7cd97e5f04b7802583791f9f9a3`  
		Last Modified: Tue, 18 Jun 2019 21:42:12 GMT  
		Size: 30.8 KB (30762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a14d698dc993abf15832a33e640a84f658159c7fbc11e02dfa27cc96e0fab7`  
		Last Modified: Tue, 18 Jun 2019 21:42:12 GMT  
		Size: 866.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63aef2f774539d4eb2f3f72e10cb76e1b902947d34054134059e4a0615435264`  
		Last Modified: Tue, 18 Jun 2019 21:42:12 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:disco` - linux; 386

```console
$ docker pull ubuntu@sha256:d6e2313a3e978de63e5df750833f95e15d7a552af9c805c66ba742038b6db07b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28313256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa88d866d4892ef3a933a2bc84db54da7576c8a3f8b936063bfc51431aeba34f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:39:46 GMT
ADD file:ce5cc7fe51b6d87c2e584ba7eee2fcd877b230bce289d7ab2d5e1c7a4c2a4aaa in / 
# Tue, 18 Jun 2019 21:39:47 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:39:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:39:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:39:49 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:a3a0dc03da3aae711d76416b6ace833014f072b2c95dc7d155723f073e96aff5`  
		Last Modified: Fri, 14 Jun 2019 14:52:45 GMT  
		Size: 28.3 MB (28282006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab68a4f5e08981094ec4932772d919c9c68958cbde54434373b1330cf657e670`  
		Last Modified: Tue, 18 Jun 2019 21:40:54 GMT  
		Size: 30.2 KB (30226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aba84b50f59f5e892e684a5ecfbad0a57e8aa4f1c7a8780dc21ceb7aa3cf02c`  
		Last Modified: Tue, 18 Jun 2019 21:40:54 GMT  
		Size: 861.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196ac2c35f627ece86a23d32066ae615cd58c81c5ff4477a35fc9713a458e21b`  
		Last Modified: Tue, 18 Jun 2019 21:40:54 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:disco` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:f896e5b401bd7ed2ee5b699b7c7f917593cecfb20a56643e3f7a5984c2dc6518
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32911121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a367d887c7a4965434155e3f375f6826d0b89d326963f53dd9b74a9511d9c01f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:49:12 GMT
ADD file:035c9b3a2be4bc6300456ee4c0b215f0d8f493454877d89bf5e2778ec4a3f0e5 in / 
# Tue, 18 Jun 2019 22:49:19 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:49:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:49:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:49:31 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:de621b88ac71e8f3ff0b5ad60a86f0e657bd2b373db00864306fe6564297e433`  
		Last Modified: Tue, 18 Jun 2019 22:51:56 GMT  
		Size: 32.9 MB (32879271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7592d78c5bf3ac58c488cb07d787d530c6f8b89858611579fbabd7bd9c12f69e`  
		Last Modified: Tue, 18 Jun 2019 22:51:47 GMT  
		Size: 30.8 KB (30794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba2d1c08869c0eda4feffa6d2dd7da20bd3b8943625a5bf027d14f98fc411da3`  
		Last Modified: Tue, 18 Jun 2019 22:51:47 GMT  
		Size: 867.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f57ab1bd71775377d66eb3b0df9d5da7744ad65b3991094527234f23ac53b13e`  
		Last Modified: Tue, 18 Jun 2019 22:51:47 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:disco` - linux; s390x

```console
$ docker pull ubuntu@sha256:cda5621b377fb66a817c39f8c1e091cec4ab8a059c3770f29c46eb5e74e1ee67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 MB (26234850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:325a003592ae5ad698e75d177bf27dd4bd0e4299f9d9e21fd081ca79f1c6f634`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:42:55 GMT
ADD file:e987de5e550cbdf23b185c00c1148504444eace5c57dc1b69187b76fe436b153 in / 
# Tue, 18 Jun 2019 21:42:56 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:42:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:42:58 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:42:58 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:28969797777b946282ba2b657e0bdda5b3e21e53eb7cec5eadc5c3e1235161d9`  
		Last Modified: Tue, 18 Jun 2019 21:44:39 GMT  
		Size: 26.2 MB (26202274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8520ba91e006a8790a2cd4077d96a35757cbba72f08eccf09cac51047b4c4c`  
		Last Modified: Tue, 18 Jun 2019 21:44:34 GMT  
		Size: 31.6 KB (31555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:942bf22444641d8df6c36a1bed04f998db82e46bafc3fa2c8459c262a5663aad`  
		Last Modified: Tue, 18 Jun 2019 21:44:34 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a9f2dd675a65c49dc282ce884812f201f4bad9d8d6fb099db6bc65e0e64e940`  
		Last Modified: Tue, 18 Jun 2019 21:44:35 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:disco-20190613`

```console
$ docker pull ubuntu@sha256:db265801d395a88e15ed4eac372693012275a1a181d1032ebb0cefdd01e5a99f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:disco-20190613` - linux; amd64

```console
$ docker pull ubuntu@sha256:41ef647cff01d0f5990f2e22b85c393052df387cf588a39950b66fb576b21cc6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27651552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86f1f717b6d869c9af906d8ef5ead7ae976a028203ac21821bc758997aeef726`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:52:33 GMT
ADD file:d3be43e0fdf0de92d585df42af7bfa7fab5072d1173bd42c7469fd49462cad3c in / 
# Tue, 18 Jun 2019 22:52:35 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:52:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:52:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:52:38 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:29c2f229a1281554ccce1972738cfb3232c4ace59343b4090d6e09f148fee588`  
		Last Modified: Fri, 14 Jun 2019 14:45:48 GMT  
		Size: 27.6 MB (27619579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d724aeeb8846c1a94a323f756fcf2ae6ca4e573edd64266c2c220a7951827b3`  
		Last Modified: Tue, 18 Jun 2019 22:54:20 GMT  
		Size: 30.9 KB (30946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60682405dd89aa6c1621f0f2df2ba6b430402c5b59c27b6c71af92b07e535893`  
		Last Modified: Tue, 18 Jun 2019 22:54:20 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9cd020258303b6913dc8e15db14030877decb816e87cde6fc4d24b060881a4`  
		Last Modified: Tue, 18 Jun 2019 22:54:20 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:disco-20190613` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:29476c35c841c7e4b3ef26bf6810db86419a3dbf161c0c031e90589a55b9e84e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 MB (23148839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:382de1d3f1dc27baec5ae5b257a6ba68ddaef50a8ee147f9eeacf127e94100b7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:59:12 GMT
ADD file:c786ecb3cca2049794dbe978427d3ba71d82f6c499e1bbce3fb6580fc0ab3ac6 in / 
# Tue, 18 Jun 2019 21:59:14 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:59:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:59:18 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:59:18 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ea18fb6f0291dc0209d95d15664beb0cb15d2baf6c95b35e53d683c0c74fdd22`  
		Last Modified: Fri, 14 Jun 2019 15:05:59 GMT  
		Size: 23.1 MB (23116823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0427bce7903a82bafd6e55053eaf424abf1df065080fcddeff7a6fd8b9d847e`  
		Last Modified: Tue, 18 Jun 2019 22:02:36 GMT  
		Size: 31.0 KB (30958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26e4cbeba8d154632411315815ad759e1a46cd09a4248a286d8432554589fa3`  
		Last Modified: Tue, 18 Jun 2019 22:02:39 GMT  
		Size: 869.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56838bbc842516cc29051e34f67989619b1be99791458dc5d759a1a32b81012`  
		Last Modified: Tue, 18 Jun 2019 22:02:39 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:disco-20190613` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:59e42258cd844b24dfb4f624aff6044e5258a6e78d027fd85dfb0f311df01cca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26412400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32cbb636a987ccb1144dfbc03ef8dcf0bf13aa7c068a8a025ee403859668f7b6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:51 GMT
ADD file:51d533e3c130665bdef840634216eace004cf6985ad8964387483655aa4779dc in / 
# Tue, 18 Jun 2019 21:40:53 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:56 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:4488dd9973772f1f778e425ee910dc6d2321ec4e46726567d298ae48a850c49b`  
		Last Modified: Fri, 14 Jun 2019 15:00:37 GMT  
		Size: 26.4 MB (26380585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff7293bf9b79f4f8aa641bd4b3d82bd01d1ab7cd97e5f04b7802583791f9f9a3`  
		Last Modified: Tue, 18 Jun 2019 21:42:12 GMT  
		Size: 30.8 KB (30762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a14d698dc993abf15832a33e640a84f658159c7fbc11e02dfa27cc96e0fab7`  
		Last Modified: Tue, 18 Jun 2019 21:42:12 GMT  
		Size: 866.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63aef2f774539d4eb2f3f72e10cb76e1b902947d34054134059e4a0615435264`  
		Last Modified: Tue, 18 Jun 2019 21:42:12 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:disco-20190613` - linux; 386

```console
$ docker pull ubuntu@sha256:d6e2313a3e978de63e5df750833f95e15d7a552af9c805c66ba742038b6db07b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28313256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa88d866d4892ef3a933a2bc84db54da7576c8a3f8b936063bfc51431aeba34f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:39:46 GMT
ADD file:ce5cc7fe51b6d87c2e584ba7eee2fcd877b230bce289d7ab2d5e1c7a4c2a4aaa in / 
# Tue, 18 Jun 2019 21:39:47 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:39:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:39:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:39:49 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:a3a0dc03da3aae711d76416b6ace833014f072b2c95dc7d155723f073e96aff5`  
		Last Modified: Fri, 14 Jun 2019 14:52:45 GMT  
		Size: 28.3 MB (28282006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab68a4f5e08981094ec4932772d919c9c68958cbde54434373b1330cf657e670`  
		Last Modified: Tue, 18 Jun 2019 21:40:54 GMT  
		Size: 30.2 KB (30226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aba84b50f59f5e892e684a5ecfbad0a57e8aa4f1c7a8780dc21ceb7aa3cf02c`  
		Last Modified: Tue, 18 Jun 2019 21:40:54 GMT  
		Size: 861.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196ac2c35f627ece86a23d32066ae615cd58c81c5ff4477a35fc9713a458e21b`  
		Last Modified: Tue, 18 Jun 2019 21:40:54 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:disco-20190613` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:f896e5b401bd7ed2ee5b699b7c7f917593cecfb20a56643e3f7a5984c2dc6518
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32911121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a367d887c7a4965434155e3f375f6826d0b89d326963f53dd9b74a9511d9c01f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:49:12 GMT
ADD file:035c9b3a2be4bc6300456ee4c0b215f0d8f493454877d89bf5e2778ec4a3f0e5 in / 
# Tue, 18 Jun 2019 22:49:19 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:49:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:49:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:49:31 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:de621b88ac71e8f3ff0b5ad60a86f0e657bd2b373db00864306fe6564297e433`  
		Last Modified: Tue, 18 Jun 2019 22:51:56 GMT  
		Size: 32.9 MB (32879271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7592d78c5bf3ac58c488cb07d787d530c6f8b89858611579fbabd7bd9c12f69e`  
		Last Modified: Tue, 18 Jun 2019 22:51:47 GMT  
		Size: 30.8 KB (30794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba2d1c08869c0eda4feffa6d2dd7da20bd3b8943625a5bf027d14f98fc411da3`  
		Last Modified: Tue, 18 Jun 2019 22:51:47 GMT  
		Size: 867.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f57ab1bd71775377d66eb3b0df9d5da7744ad65b3991094527234f23ac53b13e`  
		Last Modified: Tue, 18 Jun 2019 22:51:47 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:disco-20190613` - linux; s390x

```console
$ docker pull ubuntu@sha256:cda5621b377fb66a817c39f8c1e091cec4ab8a059c3770f29c46eb5e74e1ee67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 MB (26234850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:325a003592ae5ad698e75d177bf27dd4bd0e4299f9d9e21fd081ca79f1c6f634`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:42:55 GMT
ADD file:e987de5e550cbdf23b185c00c1148504444eace5c57dc1b69187b76fe436b153 in / 
# Tue, 18 Jun 2019 21:42:56 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:42:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:42:58 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:42:58 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:28969797777b946282ba2b657e0bdda5b3e21e53eb7cec5eadc5c3e1235161d9`  
		Last Modified: Tue, 18 Jun 2019 21:44:39 GMT  
		Size: 26.2 MB (26202274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8520ba91e006a8790a2cd4077d96a35757cbba72f08eccf09cac51047b4c4c`  
		Last Modified: Tue, 18 Jun 2019 21:44:34 GMT  
		Size: 31.6 KB (31555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:942bf22444641d8df6c36a1bed04f998db82e46bafc3fa2c8459c262a5663aad`  
		Last Modified: Tue, 18 Jun 2019 21:44:34 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a9f2dd675a65c49dc282ce884812f201f4bad9d8d6fb099db6bc65e0e64e940`  
		Last Modified: Tue, 18 Jun 2019 21:44:35 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:eoan`

```console
$ docker pull ubuntu@sha256:1f89ef5186c9da8ce0d878b039ed925c2c807ecc3aa16e7d4a4b55650faff5db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:eoan` - linux; amd64

```console
$ docker pull ubuntu@sha256:dfa784277cf14813cd6ecb23685ad7cd55eafed0e245011bc4fb793f0cd72f21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27898858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76749da58329a5f2604c69a3077a89b966ce9c5004440729a552977e1eee43bf`
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

### `ubuntu:eoan` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:e1947409e93849e56ee931477fdcc2d6e2f30b78ec4f7a82a13d7917fb025b78
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23368160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a3a824942420486b9613620e045e9ff80ed1dd6b3e91f7348de892a8f7a2738`
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

### `ubuntu:eoan` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:3e69dce53edd67f9c5b1ea7ac7fa0831359b96efd97e28bd3c153469d703b24f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 MB (26683914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5acdef155c952b67f8459923819aad0dfb820c9d028eecee8131b4727228f66`
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

### `ubuntu:eoan` - linux; 386

```console
$ docker pull ubuntu@sha256:3c5a6107388c90013d87e83a2b233747896f774750c25665cb05a1619da61b06
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28573045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7684828caa1a6f64d1a01ed1eb9035369f63713ed72a97213eaddeb26044cf87`
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

### `ubuntu:eoan` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:69be7cea6c55c165de4d56375ae9e4e7a295d0c5e332a3cb6a7500e0c0bc6649
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 MB (33182586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dad5858c20d4c68e3984f808fb3b2c364dc36863337b6096d6019d36b25f7328`
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

### `ubuntu:eoan` - linux; s390x

```console
$ docker pull ubuntu@sha256:77086fda05783728fac2b4417a1daa29697a35a6754fbce502dc9ca2b0087789
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26408191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74f50de9afa7003777803388cd6d8e51ef6224ff0c4fb5aeb812a11e43f7fd7e`
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

## `ubuntu:eoan-20190614`

```console
$ docker pull ubuntu@sha256:1f89ef5186c9da8ce0d878b039ed925c2c807ecc3aa16e7d4a4b55650faff5db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:eoan-20190614` - linux; amd64

```console
$ docker pull ubuntu@sha256:dfa784277cf14813cd6ecb23685ad7cd55eafed0e245011bc4fb793f0cd72f21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27898858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76749da58329a5f2604c69a3077a89b966ce9c5004440729a552977e1eee43bf`
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

### `ubuntu:eoan-20190614` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:e1947409e93849e56ee931477fdcc2d6e2f30b78ec4f7a82a13d7917fb025b78
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23368160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a3a824942420486b9613620e045e9ff80ed1dd6b3e91f7348de892a8f7a2738`
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

### `ubuntu:eoan-20190614` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:3e69dce53edd67f9c5b1ea7ac7fa0831359b96efd97e28bd3c153469d703b24f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 MB (26683914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5acdef155c952b67f8459923819aad0dfb820c9d028eecee8131b4727228f66`
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

### `ubuntu:eoan-20190614` - linux; 386

```console
$ docker pull ubuntu@sha256:3c5a6107388c90013d87e83a2b233747896f774750c25665cb05a1619da61b06
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28573045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7684828caa1a6f64d1a01ed1eb9035369f63713ed72a97213eaddeb26044cf87`
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

### `ubuntu:eoan-20190614` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:69be7cea6c55c165de4d56375ae9e4e7a295d0c5e332a3cb6a7500e0c0bc6649
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 MB (33182586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dad5858c20d4c68e3984f808fb3b2c364dc36863337b6096d6019d36b25f7328`
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

### `ubuntu:eoan-20190614` - linux; s390x

```console
$ docker pull ubuntu@sha256:77086fda05783728fac2b4417a1daa29697a35a6754fbce502dc9ca2b0087789
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26408191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74f50de9afa7003777803388cd6d8e51ef6224ff0c4fb5aeb812a11e43f7fd7e`
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

## `ubuntu:latest`

```console
$ docker pull ubuntu@sha256:9b1702dcfe32c873a770a32cfd306dd7fc1c4fd134adfb783db68defc8894b3c
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
$ docker pull ubuntu@sha256:eb70667a801686f914408558660da753cde27192cd036148e58258819b927395
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 MB (26720871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c108a37151f54439950335c409802e948883e00c93fdb751d206c9a9674c1f6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:51:33 GMT
ADD file:4e6b5d9ca371eb881c581574b8dc4f5391eff2872db364af0f8d9804e4890098 in / 
# Tue, 18 Jun 2019 22:51:35 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:51:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:51:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:51:38 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:5b7339215d1d5f8e68622d584a224f60339f5bef41dbd74330d081e912f0cddd`  
		Last Modified: Thu, 13 Jun 2019 00:24:57 GMT  
		Size: 26.7 MB (26684508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ca88e9f6723ce82bc14b241cda8634f6d19677184691d086662641ab96fe68`  
		Last Modified: Tue, 18 Jun 2019 22:53:58 GMT  
		Size: 35.4 KB (35352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31c3b1caad473a474d574283741f880e37c708cc06ee620d3e93fa602125ee0`  
		Last Modified: Tue, 18 Jun 2019 22:53:57 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b054a26005b7f3b032577f811421fab5ec3b42ce45a4012dfa00cf6ed6191b0f`  
		Last Modified: Tue, 18 Jun 2019 22:53:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:latest` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:09a066942d6dc6b5d9f88c707f1197748cb620bd0b322484ed327253cab2ac1a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.3 MB (22315997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e37fc27e0a1c7033d1d6725b271b9fd6de1286028cab7c0e3bdbf4411aa8b1e7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:58:19 GMT
ADD file:f97088f30dc73833af9b7e84a77cc26a7d489c3b106250bc1c67ca78ecf34401 in / 
# Tue, 18 Jun 2019 21:58:21 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:58:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:58:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:58:25 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:890bdf70a444971b59240478f3073e23d165e3ba40106d3d4e94a57e52f9f715`  
		Last Modified: Fri, 14 Jun 2019 14:40:30 GMT  
		Size: 22.3 MB (22279501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7984ec58db25dba3b1eb769446c440c608e2a35869a13b6a57ba069134f28e1`  
		Last Modified: Tue, 18 Jun 2019 22:00:38 GMT  
		Size: 35.5 KB (35452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69dd89700a6c256d7ddae21c28adf3ded21abb73838795b0a1a5c3b12556da0b`  
		Last Modified: Tue, 18 Jun 2019 22:00:38 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af11110095b961ce4addaca6fbf8afe199d233b510f48cdd196b4c0b4029576`  
		Last Modified: Tue, 18 Jun 2019 22:00:41 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:latest` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:fcf80b2fae669da66e29b272d768451f7d2b1641c26a250b7adf83bf0dafb452
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23740561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c1de3d39dd66d71ef688133f7ffc8b4757ed9f8383adf7dc0c84b547ef7bd85`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:20 GMT
ADD file:5a85b2cf366cbf793b3cd89f16906c1221128e020868bf7593cf85df20370c31 in / 
# Tue, 18 Jun 2019 21:40:22 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:26 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:85df13e07ac866f0749412605b4d04aef859d2d116979e1dad9da5093585ce3c`  
		Last Modified: Fri, 14 Jun 2019 14:38:29 GMT  
		Size: 23.7 MB (23704318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627bf1c6512dd26e72f564465b94d24232e3221dc649211b6c2169cd9bae0f7`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 35.2 KB (35201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99ec04f469874c69bd01d057f54593e5346d90cfba712152008d76624217ddb`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc2e75663b5f54850089251d728dea5cb0b29b1e95e1bc0785c801bd2dc3092`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:latest` - linux; 386

```console
$ docker pull ubuntu@sha256:30fe694bccc16b8d61c21f92ebc24065ef3ff7e87a8891eb9a7d3657fe1f3d94
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27143816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf5ff47c2b80aec3ebd29b66a23fe67c95ef99fa1e6371f7044638b61e3dac83`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:39:16 GMT
ADD file:fbc9f64de576e5c6264e95b9bb0c43eda9cecf9836b3331c91c148402f192352 in / 
# Tue, 18 Jun 2019 21:39:17 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:39:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:39:18 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:39:18 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:3245b5a2a588d6e4eef6ef141d6a38071aa4d1617100cc2feace80b721e75274`  
		Last Modified: Fri, 14 Jun 2019 14:32:18 GMT  
		Size: 27.1 MB (27108206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d75e9a49d317af603cf3ed3fd0ac05c131074504b43af468073d51021f9bcd`  
		Last Modified: Tue, 18 Jun 2019 21:40:31 GMT  
		Size: 34.6 KB (34601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f40a38fc4ff69c71a6542dfb6acbdf6e5e3be25f0f94659ee85f2e120e37d82`  
		Last Modified: Tue, 18 Jun 2019 21:40:31 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0423e7d050e37d4651190300ea074bd25a8ac7977ab897205fd1df44889605`  
		Last Modified: Tue, 18 Jun 2019 21:40:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:latest` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:b11b1467edefe08a02b4eb3799cb7df8f19a25f0b2da2ef837b993ad2c750c3c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30425927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dc4a19dc1271abc8daffce96513470c1cb3a909784bdc92f838bd4ffb6f92ac`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:48:01 GMT
ADD file:fffa2939fb9dcbb708086aef7eaeec85560e44db64ec7228205cc0dffdfde2b3 in / 
# Tue, 18 Jun 2019 22:48:08 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:48:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:48:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:48:22 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ef5b5b197566d2f3081c54f8e5ce315ef1bb409a622708e21f26f8a316324dc9`  
		Last Modified: Tue, 18 Jun 2019 22:51:11 GMT  
		Size: 30.4 MB (30389695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb5943989879ea71f39058451b18a9cfe7c8d63d5e98bea0f8ce8398b662cfd`  
		Last Modified: Tue, 18 Jun 2019 22:51:00 GMT  
		Size: 35.2 KB (35187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03367c790f847a4fb9da497ba924c531b08ed840ced5ddebd576b1e617fdeabc`  
		Last Modified: Tue, 18 Jun 2019 22:51:00 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0dfc04432356cee71730dc1476c35948bcaa233371a0bee11cf8be333b28da`  
		Last Modified: Tue, 18 Jun 2019 22:50:59 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:latest` - linux; s390x

```console
$ docker pull ubuntu@sha256:2250c49a818ed4162862b23d6c7e470e64d6a83d68a38615c1666126bd42993c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.4 MB (25402108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ebc7802c8d928c19cc7c3ea9a2f1e3e582ae8100aa515c74ec5dbe432ab3ad0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:42:25 GMT
ADD file:a2279da3a6bb25fe163ff2f525a032d1d3b872475150261b48a46805a1b871d9 in / 
# Tue, 18 Jun 2019 21:42:26 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:42:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:42:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:42:29 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:3e0ab3b7390d02875ba6655704ba528f120405db6e19a6c8014bacd27a2a2b07`  
		Last Modified: Tue, 18 Jun 2019 21:44:15 GMT  
		Size: 25.4 MB (25364931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8641916778260cb4957d491680516450d36f7590247405e9657afbd7ab582a71`  
		Last Modified: Tue, 18 Jun 2019 21:44:07 GMT  
		Size: 36.2 KB (36171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9dae6e8c4d6bcdbd01ec8e9e91d209bc0d0fb0e392fdb4ef5075d1e322fd3ac`  
		Last Modified: Tue, 18 Jun 2019 21:44:07 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756f46ae05c783e37b80e6d459322ed9643102a8da1ca620233c21a601cce8e4`  
		Last Modified: Tue, 18 Jun 2019 21:44:07 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:rolling`

```console
$ docker pull ubuntu@sha256:db265801d395a88e15ed4eac372693012275a1a181d1032ebb0cefdd01e5a99f
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
$ docker pull ubuntu@sha256:41ef647cff01d0f5990f2e22b85c393052df387cf588a39950b66fb576b21cc6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27651552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86f1f717b6d869c9af906d8ef5ead7ae976a028203ac21821bc758997aeef726`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:52:33 GMT
ADD file:d3be43e0fdf0de92d585df42af7bfa7fab5072d1173bd42c7469fd49462cad3c in / 
# Tue, 18 Jun 2019 22:52:35 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:52:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:52:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:52:38 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:29c2f229a1281554ccce1972738cfb3232c4ace59343b4090d6e09f148fee588`  
		Last Modified: Fri, 14 Jun 2019 14:45:48 GMT  
		Size: 27.6 MB (27619579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d724aeeb8846c1a94a323f756fcf2ae6ca4e573edd64266c2c220a7951827b3`  
		Last Modified: Tue, 18 Jun 2019 22:54:20 GMT  
		Size: 30.9 KB (30946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60682405dd89aa6c1621f0f2df2ba6b430402c5b59c27b6c71af92b07e535893`  
		Last Modified: Tue, 18 Jun 2019 22:54:20 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9cd020258303b6913dc8e15db14030877decb816e87cde6fc4d24b060881a4`  
		Last Modified: Tue, 18 Jun 2019 22:54:20 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:rolling` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:29476c35c841c7e4b3ef26bf6810db86419a3dbf161c0c031e90589a55b9e84e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 MB (23148839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:382de1d3f1dc27baec5ae5b257a6ba68ddaef50a8ee147f9eeacf127e94100b7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:59:12 GMT
ADD file:c786ecb3cca2049794dbe978427d3ba71d82f6c499e1bbce3fb6580fc0ab3ac6 in / 
# Tue, 18 Jun 2019 21:59:14 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:59:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:59:18 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:59:18 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ea18fb6f0291dc0209d95d15664beb0cb15d2baf6c95b35e53d683c0c74fdd22`  
		Last Modified: Fri, 14 Jun 2019 15:05:59 GMT  
		Size: 23.1 MB (23116823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0427bce7903a82bafd6e55053eaf424abf1df065080fcddeff7a6fd8b9d847e`  
		Last Modified: Tue, 18 Jun 2019 22:02:36 GMT  
		Size: 31.0 KB (30958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26e4cbeba8d154632411315815ad759e1a46cd09a4248a286d8432554589fa3`  
		Last Modified: Tue, 18 Jun 2019 22:02:39 GMT  
		Size: 869.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56838bbc842516cc29051e34f67989619b1be99791458dc5d759a1a32b81012`  
		Last Modified: Tue, 18 Jun 2019 22:02:39 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:rolling` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:59e42258cd844b24dfb4f624aff6044e5258a6e78d027fd85dfb0f311df01cca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26412400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32cbb636a987ccb1144dfbc03ef8dcf0bf13aa7c068a8a025ee403859668f7b6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:51 GMT
ADD file:51d533e3c130665bdef840634216eace004cf6985ad8964387483655aa4779dc in / 
# Tue, 18 Jun 2019 21:40:53 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:56 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:4488dd9973772f1f778e425ee910dc6d2321ec4e46726567d298ae48a850c49b`  
		Last Modified: Fri, 14 Jun 2019 15:00:37 GMT  
		Size: 26.4 MB (26380585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff7293bf9b79f4f8aa641bd4b3d82bd01d1ab7cd97e5f04b7802583791f9f9a3`  
		Last Modified: Tue, 18 Jun 2019 21:42:12 GMT  
		Size: 30.8 KB (30762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a14d698dc993abf15832a33e640a84f658159c7fbc11e02dfa27cc96e0fab7`  
		Last Modified: Tue, 18 Jun 2019 21:42:12 GMT  
		Size: 866.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63aef2f774539d4eb2f3f72e10cb76e1b902947d34054134059e4a0615435264`  
		Last Modified: Tue, 18 Jun 2019 21:42:12 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:rolling` - linux; 386

```console
$ docker pull ubuntu@sha256:d6e2313a3e978de63e5df750833f95e15d7a552af9c805c66ba742038b6db07b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28313256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa88d866d4892ef3a933a2bc84db54da7576c8a3f8b936063bfc51431aeba34f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:39:46 GMT
ADD file:ce5cc7fe51b6d87c2e584ba7eee2fcd877b230bce289d7ab2d5e1c7a4c2a4aaa in / 
# Tue, 18 Jun 2019 21:39:47 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:39:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:39:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:39:49 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:a3a0dc03da3aae711d76416b6ace833014f072b2c95dc7d155723f073e96aff5`  
		Last Modified: Fri, 14 Jun 2019 14:52:45 GMT  
		Size: 28.3 MB (28282006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab68a4f5e08981094ec4932772d919c9c68958cbde54434373b1330cf657e670`  
		Last Modified: Tue, 18 Jun 2019 21:40:54 GMT  
		Size: 30.2 KB (30226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aba84b50f59f5e892e684a5ecfbad0a57e8aa4f1c7a8780dc21ceb7aa3cf02c`  
		Last Modified: Tue, 18 Jun 2019 21:40:54 GMT  
		Size: 861.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196ac2c35f627ece86a23d32066ae615cd58c81c5ff4477a35fc9713a458e21b`  
		Last Modified: Tue, 18 Jun 2019 21:40:54 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:rolling` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:f896e5b401bd7ed2ee5b699b7c7f917593cecfb20a56643e3f7a5984c2dc6518
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32911121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a367d887c7a4965434155e3f375f6826d0b89d326963f53dd9b74a9511d9c01f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:49:12 GMT
ADD file:035c9b3a2be4bc6300456ee4c0b215f0d8f493454877d89bf5e2778ec4a3f0e5 in / 
# Tue, 18 Jun 2019 22:49:19 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:49:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:49:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:49:31 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:de621b88ac71e8f3ff0b5ad60a86f0e657bd2b373db00864306fe6564297e433`  
		Last Modified: Tue, 18 Jun 2019 22:51:56 GMT  
		Size: 32.9 MB (32879271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7592d78c5bf3ac58c488cb07d787d530c6f8b89858611579fbabd7bd9c12f69e`  
		Last Modified: Tue, 18 Jun 2019 22:51:47 GMT  
		Size: 30.8 KB (30794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba2d1c08869c0eda4feffa6d2dd7da20bd3b8943625a5bf027d14f98fc411da3`  
		Last Modified: Tue, 18 Jun 2019 22:51:47 GMT  
		Size: 867.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f57ab1bd71775377d66eb3b0df9d5da7744ad65b3991094527234f23ac53b13e`  
		Last Modified: Tue, 18 Jun 2019 22:51:47 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:rolling` - linux; s390x

```console
$ docker pull ubuntu@sha256:cda5621b377fb66a817c39f8c1e091cec4ab8a059c3770f29c46eb5e74e1ee67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 MB (26234850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:325a003592ae5ad698e75d177bf27dd4bd0e4299f9d9e21fd081ca79f1c6f634`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:42:55 GMT
ADD file:e987de5e550cbdf23b185c00c1148504444eace5c57dc1b69187b76fe436b153 in / 
# Tue, 18 Jun 2019 21:42:56 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:42:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:42:58 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:42:58 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:28969797777b946282ba2b657e0bdda5b3e21e53eb7cec5eadc5c3e1235161d9`  
		Last Modified: Tue, 18 Jun 2019 21:44:39 GMT  
		Size: 26.2 MB (26202274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8520ba91e006a8790a2cd4077d96a35757cbba72f08eccf09cac51047b4c4c`  
		Last Modified: Tue, 18 Jun 2019 21:44:34 GMT  
		Size: 31.6 KB (31555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:942bf22444641d8df6c36a1bed04f998db82e46bafc3fa2c8459c262a5663aad`  
		Last Modified: Tue, 18 Jun 2019 21:44:34 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a9f2dd675a65c49dc282ce884812f201f4bad9d8d6fb099db6bc65e0e64e940`  
		Last Modified: Tue, 18 Jun 2019 21:44:35 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:xenial`

```console
$ docker pull ubuntu@sha256:a4d8e674ee993e5ec88823391de828a5e9286a1597b731eaecaaf9066cfdf539
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
$ docker pull ubuntu@sha256:3288f31c6b3760981b5a9ad8fc13735d236cb1f5bae79b2d0750bcadfb00fed5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43839306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13c9f1285025c03cfd56a2809973bfec93a6468953c4d0ed70afb1f492f50489`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:53:31 GMT
ADD file:24352f4a071cb97b3f111253f3db695ba473c5e7985544889af3e34408ce32ff in / 
# Tue, 18 Jun 2019 22:53:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:53:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:53:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:53:37 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:35b42117c431dd1e13679a09c3c68bb983578a1cbe0a8d8980f507567ebce76c`  
		Last Modified: Tue, 11 Jun 2019 13:20:32 GMT  
		Size: 43.8 MB (43837758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9c569a8d989555892683a932df468cfe294859186790d3f2fb704c3a022e96`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293b44f451623251bf75ce5a72d3cee63706972c88980232217a81026987f63e`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c175077525d1ddec01cb7cf003c2d8b4b6650ae15b504a64914f5eed8d28e50`  
		Last Modified: Tue, 18 Jun 2019 22:54:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:c661e92c759c378d3954c5a0b44994ce9e4e5d19b9327d11b7a3e86c9520de3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38712079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee8f230ddd55bcf4ff7c680c70db9f45f6880d72b6b2a4fe9deba8a7427b65e1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:00:10 GMT
ADD file:fec39c1129e6533db9c615a06b157d086097dad71bbf9646d94fda33ea3b9e55 in / 
# Tue, 18 Jun 2019 22:00:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:00:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:00:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:00:16 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:2a522207f17dad6487398e666217b842511b6d0aef5d5d3b8a6c92e28581d60e`  
		Last Modified: Fri, 14 Jun 2019 22:21:08 GMT  
		Size: 38.7 MB (38710547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e59c2ace1d7baaf22d49477f12e41743f37497fbdeed7092b5b847be1d05e9`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23423fd3acc94a25767511b76b252e7fc469334e588905cf449583baab12fcf5`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fb32d384c9241b858083119d34b653c651bda61a0a79679511a3e3ee22ad90`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:23c723a61e5c98c635cc68972589f51921e76fe2164375f915fb086b3033c8cf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.8 MB (39792468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:106bbeca2517c24e6aaee7106a3da14ff478d485f1764edf4b437fbd3a337fea`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:41:24 GMT
ADD file:395b290afad707e76c379d6d1f14f12f1afc596f54a93e6c7b2a9fd7933e67a5 in / 
# Tue, 18 Jun 2019 21:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:41:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:41:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:41:30 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:6d4d0d1f37de0d4417055235ff4a4ce52439ec078835b8d6c91cecd64d192029`  
		Last Modified: Fri, 14 Jun 2019 14:30:02 GMT  
		Size: 39.8 MB (39790979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b10db5fd500822d1d74c2d604ce345b50cbea31db8f3813f5b166633b8042d`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45503012c89a34b797c44068bce23b360a1212b5582d4483553249eba85ce075`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078966f8f5cec9611dad9af01d4b52e898763e22fd0facf8a5dd72d48cbe568f`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial` - linux; 386

```console
$ docker pull ubuntu@sha256:5ebbd4e1fc12f800ec64a5da98984237e52dffdc111e66593f9ea0736434365c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43980954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c7f4a351101b28019e0a6384133e9048f7e86d14c4014a088289fa29bea38f8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:16 GMT
ADD file:385cfb43ebfe35c607f88d3e6a5a4fe2259261b83a0aee3674781b056e114ff7 in / 
# Tue, 18 Jun 2019 21:40:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:40:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:19 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:856ae43f63ed6657b450c1d9c8e4cb587d875421e485fe008070949c85478d95`  
		Last Modified: Fri, 14 Jun 2019 14:26:09 GMT  
		Size: 44.0 MB (43979421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb11583701fe0ca24f56e54f018637031575222c3e805aef8d79d17d47d26386`  
		Last Modified: Tue, 18 Jun 2019 21:41:16 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15f4b605d91eafa00b250a75f7557fdec29c3f0435c255edb984caee21cabb6`  
		Last Modified: Tue, 18 Jun 2019 21:41:16 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f07c26ededbd5bb64a792e097f441fb697d2ffe42776a621885522339045517`  
		Last Modified: Tue, 18 Jun 2019 21:41:17 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:1ce5cea5199f5be43428274390a8bb82e4453bef017c2847a774472233f75421
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (45977899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5719ee441d089b4745754e79071696ec5bbd0e93d771d6ebf499c99cb9fff6f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:50:20 GMT
ADD file:bb7fa17cc95ca89abe7a1b93077479764f75ee18108ec44141aaff4d2a1c6e7d in / 
# Tue, 18 Jun 2019 22:50:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:50:32 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:50:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:50:38 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:1b0f236ed1ddec38971bf51256ce70e6672ebc41b9d7544e3f278adf3bda5373`  
		Last Modified: Tue, 18 Jun 2019 22:52:50 GMT  
		Size: 46.0 MB (45976401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d122a84ecd3a18e9b734692549cc4536a3bd6c4ef8ea05527403a57c1232d1cc`  
		Last Modified: Tue, 18 Jun 2019 22:52:37 GMT  
		Size: 472.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf57bfa9cc2bbbd897299e6df30a2374ffcbd35a3bbde6ab9130c888321c4663`  
		Last Modified: Tue, 18 Jun 2019 22:52:36 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb32e0af70bba6cc9b0b95d580545ed84bebf7dcdae99d34ca6a0cd9acc41f5f`  
		Last Modified: Tue, 18 Jun 2019 22:52:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial` - linux; s390x

```console
$ docker pull ubuntu@sha256:2a6b3b155f3c5347e8975d40da64bee47d29c307f06c3baff94606e641c2d06c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.7 MB (42665410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c37fb7d9b3a24a4aebc8991f6b159351b7b7c2a88ddf82907895d073d5ead027`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:43:36 GMT
ADD file:82c5b9a2558f1996eed4cedc4672226b9be3f29de5e4929faea93ebb0c4a4425 in / 
# Tue, 18 Jun 2019 21:43:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:43:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:43:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:43:41 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:13164bfcbd4c81a114d0c20e22b11bbc14d1e6c6c1406525bd49ea9b80196704`  
		Last Modified: Tue, 18 Jun 2019 21:45:09 GMT  
		Size: 42.7 MB (42663919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca6e9f3028d16f9753abf51f7e631b78cbdffb436a2288a6365615e21fdd19b`  
		Last Modified: Tue, 18 Jun 2019 21:45:00 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b454fecd10a241beb8ca744cdd20dca457837201c9078fec4a4ea4ec85f56b`  
		Last Modified: Tue, 18 Jun 2019 21:45:00 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6915070f22f8931076f003becb0eeef15eb5c5b52d6539abb9e2d37afd6cd7a7`  
		Last Modified: Tue, 18 Jun 2019 21:45:00 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:xenial-20190610`

```console
$ docker pull ubuntu@sha256:a4d8e674ee993e5ec88823391de828a5e9286a1597b731eaecaaf9066cfdf539
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:xenial-20190610` - linux; amd64

```console
$ docker pull ubuntu@sha256:3288f31c6b3760981b5a9ad8fc13735d236cb1f5bae79b2d0750bcadfb00fed5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43839306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13c9f1285025c03cfd56a2809973bfec93a6468953c4d0ed70afb1f492f50489`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:53:31 GMT
ADD file:24352f4a071cb97b3f111253f3db695ba473c5e7985544889af3e34408ce32ff in / 
# Tue, 18 Jun 2019 22:53:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:53:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:53:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:53:37 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:35b42117c431dd1e13679a09c3c68bb983578a1cbe0a8d8980f507567ebce76c`  
		Last Modified: Tue, 11 Jun 2019 13:20:32 GMT  
		Size: 43.8 MB (43837758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9c569a8d989555892683a932df468cfe294859186790d3f2fb704c3a022e96`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293b44f451623251bf75ce5a72d3cee63706972c88980232217a81026987f63e`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c175077525d1ddec01cb7cf003c2d8b4b6650ae15b504a64914f5eed8d28e50`  
		Last Modified: Tue, 18 Jun 2019 22:54:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial-20190610` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:c661e92c759c378d3954c5a0b44994ce9e4e5d19b9327d11b7a3e86c9520de3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38712079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee8f230ddd55bcf4ff7c680c70db9f45f6880d72b6b2a4fe9deba8a7427b65e1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:00:10 GMT
ADD file:fec39c1129e6533db9c615a06b157d086097dad71bbf9646d94fda33ea3b9e55 in / 
# Tue, 18 Jun 2019 22:00:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:00:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:00:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:00:16 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:2a522207f17dad6487398e666217b842511b6d0aef5d5d3b8a6c92e28581d60e`  
		Last Modified: Fri, 14 Jun 2019 22:21:08 GMT  
		Size: 38.7 MB (38710547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e59c2ace1d7baaf22d49477f12e41743f37497fbdeed7092b5b847be1d05e9`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23423fd3acc94a25767511b76b252e7fc469334e588905cf449583baab12fcf5`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fb32d384c9241b858083119d34b653c651bda61a0a79679511a3e3ee22ad90`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial-20190610` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:23c723a61e5c98c635cc68972589f51921e76fe2164375f915fb086b3033c8cf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.8 MB (39792468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:106bbeca2517c24e6aaee7106a3da14ff478d485f1764edf4b437fbd3a337fea`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:41:24 GMT
ADD file:395b290afad707e76c379d6d1f14f12f1afc596f54a93e6c7b2a9fd7933e67a5 in / 
# Tue, 18 Jun 2019 21:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:41:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:41:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:41:30 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:6d4d0d1f37de0d4417055235ff4a4ce52439ec078835b8d6c91cecd64d192029`  
		Last Modified: Fri, 14 Jun 2019 14:30:02 GMT  
		Size: 39.8 MB (39790979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b10db5fd500822d1d74c2d604ce345b50cbea31db8f3813f5b166633b8042d`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45503012c89a34b797c44068bce23b360a1212b5582d4483553249eba85ce075`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078966f8f5cec9611dad9af01d4b52e898763e22fd0facf8a5dd72d48cbe568f`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial-20190610` - linux; 386

```console
$ docker pull ubuntu@sha256:5ebbd4e1fc12f800ec64a5da98984237e52dffdc111e66593f9ea0736434365c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43980954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c7f4a351101b28019e0a6384133e9048f7e86d14c4014a088289fa29bea38f8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:16 GMT
ADD file:385cfb43ebfe35c607f88d3e6a5a4fe2259261b83a0aee3674781b056e114ff7 in / 
# Tue, 18 Jun 2019 21:40:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:40:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:19 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:856ae43f63ed6657b450c1d9c8e4cb587d875421e485fe008070949c85478d95`  
		Last Modified: Fri, 14 Jun 2019 14:26:09 GMT  
		Size: 44.0 MB (43979421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb11583701fe0ca24f56e54f018637031575222c3e805aef8d79d17d47d26386`  
		Last Modified: Tue, 18 Jun 2019 21:41:16 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15f4b605d91eafa00b250a75f7557fdec29c3f0435c255edb984caee21cabb6`  
		Last Modified: Tue, 18 Jun 2019 21:41:16 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f07c26ededbd5bb64a792e097f441fb697d2ffe42776a621885522339045517`  
		Last Modified: Tue, 18 Jun 2019 21:41:17 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial-20190610` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:1ce5cea5199f5be43428274390a8bb82e4453bef017c2847a774472233f75421
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (45977899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5719ee441d089b4745754e79071696ec5bbd0e93d771d6ebf499c99cb9fff6f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:50:20 GMT
ADD file:bb7fa17cc95ca89abe7a1b93077479764f75ee18108ec44141aaff4d2a1c6e7d in / 
# Tue, 18 Jun 2019 22:50:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:50:32 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:50:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:50:38 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:1b0f236ed1ddec38971bf51256ce70e6672ebc41b9d7544e3f278adf3bda5373`  
		Last Modified: Tue, 18 Jun 2019 22:52:50 GMT  
		Size: 46.0 MB (45976401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d122a84ecd3a18e9b734692549cc4536a3bd6c4ef8ea05527403a57c1232d1cc`  
		Last Modified: Tue, 18 Jun 2019 22:52:37 GMT  
		Size: 472.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf57bfa9cc2bbbd897299e6df30a2374ffcbd35a3bbde6ab9130c888321c4663`  
		Last Modified: Tue, 18 Jun 2019 22:52:36 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb32e0af70bba6cc9b0b95d580545ed84bebf7dcdae99d34ca6a0cd9acc41f5f`  
		Last Modified: Tue, 18 Jun 2019 22:52:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial-20190610` - linux; s390x

```console
$ docker pull ubuntu@sha256:2a6b3b155f3c5347e8975d40da64bee47d29c307f06c3baff94606e641c2d06c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.7 MB (42665410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c37fb7d9b3a24a4aebc8991f6b159351b7b7c2a88ddf82907895d073d5ead027`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:43:36 GMT
ADD file:82c5b9a2558f1996eed4cedc4672226b9be3f29de5e4929faea93ebb0c4a4425 in / 
# Tue, 18 Jun 2019 21:43:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:43:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:43:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:43:41 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:13164bfcbd4c81a114d0c20e22b11bbc14d1e6c6c1406525bd49ea9b80196704`  
		Last Modified: Tue, 18 Jun 2019 21:45:09 GMT  
		Size: 42.7 MB (42663919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca6e9f3028d16f9753abf51f7e631b78cbdffb436a2288a6365615e21fdd19b`  
		Last Modified: Tue, 18 Jun 2019 21:45:00 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b454fecd10a241beb8ca744cdd20dca457837201c9078fec4a4ea4ec85f56b`  
		Last Modified: Tue, 18 Jun 2019 21:45:00 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6915070f22f8931076f003becb0eeef15eb5c5b52d6539abb9e2d37afd6cd7a7`  
		Last Modified: Tue, 18 Jun 2019 21:45:00 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
