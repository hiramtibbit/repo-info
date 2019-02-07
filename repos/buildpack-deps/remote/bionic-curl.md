## `buildpack-deps:bionic-curl`

```console
$ docker pull buildpack-deps@sha256:8fec624e2eab93c287afe3a42ccb2b3feb49aef8c9e4180a2022d09226af0c96
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
$ docker pull buildpack-deps@sha256:b2729f025cfd1492528c0002e436155bf2756188bd46082a25c79eb655080ec0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41163455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09b15921d5cb64c7b39b2f023d5bfde710fee9472a28a03617136e73ca8132b9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:49 GMT
ADD file:529264c6593975a61f31e017eaf2e33d9ef126bde387f5d4136c60cf010a7383 in / 
# Wed, 06 Feb 2019 03:37:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:37:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:37:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:37:51 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 05:25:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:26:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:6cf436f81810f067c6d4ffca6793eae7cb6d38456715b0707d8a5a2d1acccf12`  
		Last Modified: Tue, 05 Feb 2019 08:24:51 GMT  
		Size: 32.4 MB (32374324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987088a85b9606eb474a365eb210db765ff0d011ee099a6e3de5087435c6f966`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4624b3efe0617e59ed3998407eafdbe1cb6451346a6cabd066b6e253f50efb1`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42beb8ded595df5627ad4ef31bf528a6fdbfbd11d82f9023152738d6b05a7fa`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f8f536b719d034667ab51694aea33db16cb223d597c1bf86f15c28abb910f9`  
		Last Modified: Wed, 06 Feb 2019 05:56:16 GMT  
		Size: 5.8 MB (5827753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d52cc13020f2a6c26a8b0e75670cb9a1fa685d0f3e8610ad7e83d7ad684ec2c`  
		Last Modified: Wed, 06 Feb 2019 05:56:15 GMT  
		Size: 3.0 MB (2959852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:103d11876748bc523d1cd81462cb3394cac9fce3a5778f57e1720b0d0c7e57e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35031188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37ee33ea58f80125a75140527a8641e129d0a902fc07ad65be6d3e3b81f95e8e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 23 Jan 2019 12:58:13 GMT
ADD file:aafc542341caadede9c89b391367d7d2288cffafb456eb2db5a9677519f568a5 in / 
# Wed, 23 Jan 2019 12:58:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:58:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:58:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:58:25 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:18:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:18:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:8c0934160fa559420d31ee908905be8bcd67bd78cfd52d62fe27e4bc116c858c`  
		Last Modified: Wed, 23 Jan 2019 13:01:20 GMT  
		Size: 27.6 MB (27584191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbd3a60cd6e225ed0f95877fdf9c29729bbad5f34170ca4491b6595e3bb99c93`  
		Last Modified: Wed, 23 Jan 2019 13:01:12 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5d63a7279ff176b226af3f4a11850e7ec660d854f32bcf3bd1bf6c25fe4ee2`  
		Last Modified: Wed, 23 Jan 2019 13:01:12 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66dbf1bc2211383e2af85f3683b64d4cabbcc8fb27096c30bfab3c4a5475dc3`  
		Last Modified: Wed, 23 Jan 2019 13:01:12 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3141aaa8d54d9b70bfcc897b36f8c03e2696374f8fc40c702cc178a842078e1f`  
		Last Modified: Wed, 23 Jan 2019 13:58:03 GMT  
		Size: 4.9 MB (4923450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd7c4ef9218a18fb447b0a12f77239d1f7295abe99620c80cb89e8750d5ead26`  
		Last Modified: Wed, 23 Jan 2019 13:58:02 GMT  
		Size: 2.5 MB (2522010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:52fdb09270b4a9535a4d7e99bbac081bc73c4f1705185e66d45c20fa7d205d86
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.0 MB (37045066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d98fbfbf338174d36d6e3765284c0b73add426f4004147c8ff493c8270dfceab`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:05:18 GMT
ADD file:3c285ba2ad56ad13d4eec8d69ea1acc907eda8e3a1d03ae6ad9ef3b4f56e0141 in / 
# Wed, 23 Jan 2019 10:05:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:05:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:05:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:05:27 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 09:40:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 09:40:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:df873e76760c0ecfb038476448eddc15dec6cdd21b75b0416a47df2c8aba3236`  
		Last Modified: Wed, 23 Jan 2019 10:09:46 GMT  
		Size: 29.0 MB (29029766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a951c1487b9433013917e417d205310353d7dfab797a297a0c672f6a963cfa1`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be63a2d103f062f9fc411f29a626a07f76306f9959eee302679732205bbad8f2`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2234c9c6573c2005484152dbd91b419081429a30df062b4da6aa4783895b4f1d`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea1acb8efe601efd5c508571a4fa1e74235cd44203b4f6864f8d9c4da689959`  
		Last Modified: Wed, 06 Feb 2019 11:01:12 GMT  
		Size: 5.3 MB (5292686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:764c023a9300862ffc8d23a2f73c7b505141d982c0a2d1b77712761532530dc8`  
		Last Modified: Wed, 06 Feb 2019 11:01:11 GMT  
		Size: 2.7 MB (2721101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:bbc663131d22d8479d6cf60f51f5f5762b78377c870e9e2127a499f734d7e8c7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.9 MB (41904478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65b9dd89ef1ded3a0001c2791cb0a46b6ccb21a1322907fa496589f04b925cee`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 07 Feb 2019 00:49:11 GMT
ADD file:11177e5477a962c1361a8cd37f7ee3bb4b91f2b011db289f1243278d4bd97e3f in / 
# Thu, 07 Feb 2019 00:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 07 Feb 2019 00:49:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 00:49:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 07 Feb 2019 00:49:13 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 01:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:18:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:e812f908ae23106b5846d2b2e69c36a8ef65704915e9080ef341c8aa3693f5b3`  
		Last Modified: Thu, 07 Feb 2019 00:50:04 GMT  
		Size: 32.6 MB (32608845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e004e152f1c9a05dc7044d0ba1b833f09e3496719ed8416d935d0a036269a32e`  
		Last Modified: Thu, 07 Feb 2019 00:49:56 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc3dda45e8e3a88ee7f6643e533ce23b80b097cb16f75c6a809ae95bc468021`  
		Last Modified: Thu, 07 Feb 2019 00:49:56 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc9c0030009fbda6614c1dce2810c6600051833c09eb0ef6b0f52aaeab57973`  
		Last Modified: Thu, 07 Feb 2019 00:49:56 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7940c53063463fc9a79fed06b86aa7a3f1359eaf59930d094f1d084268453614`  
		Last Modified: Thu, 07 Feb 2019 01:55:29 GMT  
		Size: 6.1 MB (6104227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b3672be7dc05df35821e5dff33e98504db64dc82b99207d30f21769f48750ec`  
		Last Modified: Thu, 07 Feb 2019 01:55:28 GMT  
		Size: 3.2 MB (3189904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:e625d2e632de35dd10a1f50540d77e31b0becf4ad0f10086f011a548a3e434d0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45470555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9de63f2bbb9a48c7c0abde7b987fccc3f70d174868e22bd0647fa84021d00305`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Feb 2019 15:40:48 GMT
ADD file:f51eb7a4e29f7d4230f5bb341ba2516907130c5044883452fb4116bf629b1d12 in / 
# Wed, 06 Feb 2019 15:40:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 15:41:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:41:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 15:41:09 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 18:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 18:19:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:2a9179d9b269278930ef8ab84c21328bbea78fd4516306daa885af8361788a78`  
		Last Modified: Wed, 06 Feb 2019 15:43:22 GMT  
		Size: 35.8 MB (35773131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe609a92e3f2765a53873f0cde260341daf8bbbde6046c0f7e240146753dc43`  
		Last Modified: Wed, 06 Feb 2019 15:43:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b726957e1026893c47158225690b260c653454eeb52769afe36ef1add81ba91c`  
		Last Modified: Wed, 06 Feb 2019 15:43:13 GMT  
		Size: 505.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ba7c91fb87da91920d0f8cf21f9022084ee206707174e0a6cb49e6efb94aaf`  
		Last Modified: Wed, 06 Feb 2019 15:43:14 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e31b2326f84909362db2a927bcbee8a65619aa63a49b1be12c739fcb625574e3`  
		Last Modified: Wed, 06 Feb 2019 19:18:48 GMT  
		Size: 6.0 MB (6038535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9236007dd2ea8eb9d5816848a67e1a2934cdfbe1861b82dc5c4a62ffa773e6a`  
		Last Modified: Wed, 06 Feb 2019 19:18:47 GMT  
		Size: 3.7 MB (3657347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:9d96c1cc16b496dc0fab7881d8d5538029301cabcdd3cfa2d9e56e09f55e868c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39067541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2673a37a50db3bc0c29419be11d76bc99b0eb4df7f6e0f93fd2e41bfceaa282`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Feb 2019 15:15:00 GMT
ADD file:5688d1b4f32485e7f634a10b5a2fac2e69055f1c26726c0b078258ad59f79cd4 in / 
# Wed, 06 Feb 2019 15:15:01 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 15:15:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:15:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 15:15:02 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 15:19:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:19:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:4ab43239c4c6731e19a0d27a42aef2e17f139ef6a883a18290381d4a0c8c3edc`  
		Last Modified: Wed, 06 Feb 2019 15:15:43 GMT  
		Size: 30.6 MB (30640714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfcb9c3788452a54fe7c76f83679c77617d224e30183a01dc3ddae5b9d10d7c4`  
		Last Modified: Wed, 06 Feb 2019 15:15:38 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68251ad11b3331f345b8c4b83b20a9d764530960f7372eb5c62a8da87569c16b`  
		Last Modified: Wed, 06 Feb 2019 15:15:39 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3fc09096493ae2da013839e39712958b767923536b6507ce1698be02ae55897`  
		Last Modified: Wed, 06 Feb 2019 15:15:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:326a173b023473e96d2addedb7e2286376f03309d20cd7639e97e4ba93cd7a49`  
		Last Modified: Wed, 06 Feb 2019 15:29:54 GMT  
		Size: 5.5 MB (5512440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa3cdf04315f072970e8763a57577c344a8cc7454cb8a2ad3f6a2452cccdc18`  
		Last Modified: Wed, 06 Feb 2019 15:29:53 GMT  
		Size: 2.9 MB (2912879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
