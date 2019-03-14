## `ubuntu:devel`

```console
$ docker pull ubuntu@sha256:d7f038fcfc5acdc73b7ec864537827085a17970fde9e8d2a7049b4f9d9c1d57a
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
$ docker pull ubuntu@sha256:a22cb6307a7f0c86fed5d608db75d326abcd857ff1ee78de2001602c0cddf27c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.8 MB (29801475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec09fc18c20a561f889ce710874453166bed17b33901f547ef1bd73704a5f5ea`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:40 GMT
ADD file:fb67b3715033bf1e45c62fd971171c8957d88725a105d3ef8362415d534bc20e in / 
# Tue, 12 Mar 2019 00:20:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:42 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:09fe536fe3e411c4fb4668571d3a715d868e2bcfb0c85d27232659847e7d9c15`  
		Last Modified: Mon, 11 Mar 2019 15:15:07 GMT  
		Size: 29.8 MB (29800246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4326ed393c122a5405a107f1f49b078547c684d462d8aed43fd0a753f44e87ae`  
		Last Modified: Tue, 12 Mar 2019 00:21:48 GMT  
		Size: 858.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a8f76105d804e6923d5daf8fd3e87e0db4490df366a41153ded0fabeb93044`  
		Last Modified: Tue, 12 Mar 2019 00:21:48 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a147631503722e57a1b5c637ab2cef44141c45969c8e0f0ef0f162599a2f06`  
		Last Modified: Tue, 12 Mar 2019 00:21:48 GMT  
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
$ docker pull ubuntu@sha256:6ae0d854fbfbddd6cb582416ac64017837f2736343581314baa93b4c4fd2ac35
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30458629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cd48a624f604d8a205858bdad9328b5e64ce0ee94253ec7fdf61fe14c0662b9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 12 Mar 2019 11:34:48 GMT
ADD file:0dfb23b0a1112885d01fe6df29441235dff16f526177d1ce9b8d8ed3deceaee7 in / 
# Tue, 12 Mar 2019 11:34:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 11:34:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 11:34:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 11:34:51 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:0264b937bf01b2952e74ed0bf0c008729aa494d1882fec6e48d54f4098576beb`  
		Last Modified: Mon, 11 Mar 2019 15:20:19 GMT  
		Size: 30.5 MB (30457396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaae86ef7f1841f28fa31f192d1dee3d81d438e90d73f603471e687be43a4f96`  
		Last Modified: Tue, 12 Mar 2019 11:35:55 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d718e42e1f763f60a1573657ef5acd44da8e26e4fcafcda44bfe415fb74b0c`  
		Last Modified: Tue, 12 Mar 2019 11:35:55 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3d42c4c38740b82a6634618c8c163c2cf00e6dc5df6390fc9722182d1cb4f5`  
		Last Modified: Tue, 12 Mar 2019 11:35:55 GMT  
		Size: 162.0 B  
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
$ docker pull ubuntu@sha256:e5bbf0551007a7dc99afe30cb3495c5f1aa28a5c2798de9cc6828124f557b006
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28383056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0348311dc8c252a90cbb5da386477b051533d3831f345946826b5cf8c290ecd6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:09:15 GMT
ADD file:e37ba2873aa5ddfdbef288b6918d41be3cccfdb999270d3b9a968e445b0e9c7e in / 
# Tue, 12 Mar 2019 12:09:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:09:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:09:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:09:22 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:0e3c141776ad97066eef399660b5365166d8e09e778617ebd8fef60f9de9aa9e`  
		Last Modified: Mon, 11 Mar 2019 15:18:20 GMT  
		Size: 28.4 MB (28381823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b590beeeb9ac49dd3e079d5d37704a06889acb31e0bbf69a321c454ba86b847`  
		Last Modified: Tue, 12 Mar 2019 12:10:30 GMT  
		Size: 861.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69988281313e592c56d6f88042d4751dc708fa32b135531bf2b5c7f82e075471`  
		Last Modified: Tue, 12 Mar 2019 12:10:30 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bca2c34773bb7e2e3316d4d834652f1112de7bf63c35ec1b0258f5cf54731c5`  
		Last Modified: Tue, 12 Mar 2019 12:10:30 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
