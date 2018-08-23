## `ubuntu:devel`

```console
$ docker pull ubuntu@sha256:abac9c7333e9788200e66ab211836173fa0b8826ab604681022e14326e848f5d
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
$ docker pull ubuntu@sha256:732f96d7e6701576329f9e445216dbc5c48ae230e3b1b8d64526414b30988686
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.0 MB (29043797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7323149c206aae2a55eb803858689d86179e3107b42422fa8c983d5c8d0cf7f6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:29:35 GMT
ADD file:f6ffec9946318d0be6095c6bfcf92c5b822d4132d04ddda311f029c0672d19e4 in / 
# Wed, 22 Aug 2018 17:29:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:29:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:29:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:29:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:29:53 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:f6ce8dd4f6a328d2c7def7290df9c4bb616665794bf4d96d30a021041090c1fa`  
		Last Modified: Wed, 22 Aug 2018 17:34:06 GMT  
		Size: 29.0 MB (29041919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e0a5e5001c3581f009549f4bf72273abe2c6a6581baf13af9087ae59f4d567`  
		Last Modified: Wed, 22 Aug 2018 17:33:57 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3682c8c930ee6683b1c2e168f2baad62ac35231c234a86d5a4d41fb142a2cc0b`  
		Last Modified: Wed, 22 Aug 2018 17:33:56 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aea40ddd174ef535393aeb138bddc3ad112518e417364cfa8c0e595fc745422`  
		Last Modified: Wed, 22 Aug 2018 17:33:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:devel` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:687812b021ebe08b6186e151139f499ea1bb672e90c439365ebc6d2e51ad71fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.6 MB (24561558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b091e52397ddb48a472bd5cb7b3d461b68adffa687b409c3499223b4d16ff5c9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 Aug 2018 13:29:40 GMT
ADD file:6cdb197727426e76fee3c91e936eaf040136c37da29a447e5e258de6c0c823e7 in / 
# Thu, 23 Aug 2018 13:29:42 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 13:29:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 13:29:43 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 13:29:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 13:29:45 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:adee882f80c5e0ab18af071145a3e13884f7f3eb1d4805d56ad631d546c7fb21`  
		Last Modified: Thu, 23 Aug 2018 13:31:34 GMT  
		Size: 24.6 MB (24559659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40da2918936a568cda51c312ac13bfe4943c11defe6276d94a27bc1f658d7e6`  
		Last Modified: Thu, 23 Aug 2018 13:31:27 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6b1c05d480f7cfd28dfb18d41f799019a77174b1e93b125e76434ab7da8222`  
		Last Modified: Thu, 23 Aug 2018 13:31:27 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602797cbbd5dfd999c5cee7ff11810fe8aa3034331912242330289e21acb9f64`  
		Last Modified: Thu, 23 Aug 2018 13:31:27 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:devel` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:8c72ceef1bcfc1fc7045ecf57d5a6acbbb7ff1ad6e75566e6aab90604dcddae0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 MB (26200002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bebfb6e3aae84f7ed57b98761e7b5da6d2aab0951149f4a334e8eb3fc1ef136f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 Aug 2018 17:57:53 GMT
ADD file:c08411583fbd036cdfe52a57e60bc2135cf3eb5a2977dcb5d72108c418cbc3b9 in / 
# Thu, 23 Aug 2018 17:57:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 17:57:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 17:57:59 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 17:58:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 17:58:02 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:190c7faaa654089b6c9b07e24206c9a4c4f4fe35811239202386e1e34be4699f`  
		Last Modified: Thu, 23 Aug 2018 18:02:54 GMT  
		Size: 26.2 MB (26198122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb7d65558fd4a4a93c465bec4d53f3dce1c0d987222b21e632f5c7b020539c05`  
		Last Modified: Thu, 23 Aug 2018 18:02:47 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755dd2b40afb33c13be4c8289fb6c15d2fdab88d8fa5a68c1114837976770c41`  
		Last Modified: Thu, 23 Aug 2018 18:02:45 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ff283afd59de84a6fca251b29c062a8fc9db9db7e5607af70a5152fb07503bf`  
		Last Modified: Thu, 23 Aug 2018 18:02:45 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:devel` - linux; 386

```console
$ docker pull ubuntu@sha256:589a601e520176093e73a6bc622be876cc3cd016c4b2f5ed7647900417c85164
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29455447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75055a509896e98e7385330f5de925af50f145caa1dda08979c438580023a5a2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 Aug 2018 15:52:31 GMT
ADD file:e2c73b21ea136304a9476862191f300c35f04637e95e3c014fed9299cf57b34d in / 
# Thu, 23 Aug 2018 15:52:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 15:52:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:52:43 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 15:52:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 15:53:01 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:67ba0e3ea69efa214839b755fb5f5685c6edbe01dd4add5c30ebe46b1336db90`  
		Last Modified: Thu, 23 Aug 2018 15:59:46 GMT  
		Size: 29.5 MB (29453570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159808e5d4fe1b26fa365f9fe1d9df7e3ac489d9595bb33265f1012a96e6b470`  
		Last Modified: Thu, 23 Aug 2018 15:59:34 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad8b6de326ee718f2ad39b754e3a155fdf21911b75fcdb9ba1c1a1530642977`  
		Last Modified: Thu, 23 Aug 2018 15:59:34 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f3ee0031f6d8726256426d889f122b8a5af5b9eea96c15e1bb604ce3693ba3`  
		Last Modified: Thu, 23 Aug 2018 15:59:34 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:devel` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:d661ef7a9697cec48f299861b47326aa4d95e3eee41caf35f53809e6edd54362
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32883607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32fae914e60d4470156798446efac6a09ea99be101d27f31e381510d7f927316`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 Aug 2018 12:48:50 GMT
ADD file:90ec39bdde69f12038306c80788caf1ca13570ed7352bc1bb849b15f3c820157 in / 
# Thu, 23 Aug 2018 12:48:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:49:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:49:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:49:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:49:08 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d6916d90889e3acf9c06539b8da4bb9378ef3b50a3d20cfae32e2c4d25960068`  
		Last Modified: Thu, 23 Aug 2018 12:51:44 GMT  
		Size: 32.9 MB (32881701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb1230894de7f2c99d6016f19275a22be4f5b2df1fb8a8f797b6dbc99a2a5a3a`  
		Last Modified: Thu, 23 Aug 2018 12:51:35 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ee4347c1f875bf9a455db5844337c4f7113f23f3b577daed5baa97e0350ff5`  
		Last Modified: Thu, 23 Aug 2018 12:51:35 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d90ebc6bb0e401eb3ce2fb5f015a1ac46e8ea3f845ae1a878735d7ce4320fe9`  
		Last Modified: Thu, 23 Aug 2018 12:51:35 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:devel` - linux; s390x

```console
$ docker pull ubuntu@sha256:748035bbe3e18f1c3fc1a583fb226f054e14ea97ea2b684b5edf706707e3d197
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 MB (27643845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4684d42eb1aa44e9d367a2eee264d0d94cb7b8b185299586548651ed58fd28a4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 Aug 2018 14:48:57 GMT
ADD file:5933957b70ad980d7dcdb7e70ed4aec93ef92c18e73d5f3e2360d268d9508ed9 in / 
# Thu, 23 Aug 2018 14:48:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 14:48:58 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 14:48:59 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 14:49:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 14:49:00 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:42865ba64a2a07e0874f83a789c040e13cfa4e69647bbfce783a399cb44a2486`  
		Last Modified: Thu, 23 Aug 2018 14:50:42 GMT  
		Size: 27.6 MB (27641972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55777ab21beca450166647db9a39d054cd5bb5b3fa9f372408116456e1f3c384`  
		Last Modified: Thu, 23 Aug 2018 14:50:27 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ca04d5e7ebe189196398049ffede5640ea2f326f4eff72d36a844abb81f98d`  
		Last Modified: Thu, 23 Aug 2018 14:50:27 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5d2c90afb44d85ecac0c1363c8d326201fab7dda7ce9beb8251855dff27353d`  
		Last Modified: Thu, 23 Aug 2018 14:50:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
