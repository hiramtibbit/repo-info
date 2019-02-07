## `ubuntu:disco`

```console
$ docker pull ubuntu@sha256:c0d851642f1d8996505037ae036f79a00791322c3e8197543bb45905bcecc001
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
$ docker pull ubuntu@sha256:13fb525cf55583a873309c0eda3cec8ab0aa018889ce43f9dcfcd5f89e346b97
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.8 MB (29809273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6e206581acac199da8ce8f136e4689fa61a9cabcabc68a1272d45a4e164cd8a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:38:09 GMT
ADD file:d1913f33c701cbb9d7c04d0b77842e4bed9b710cefdd7134db60bf52c19b3936 in / 
# Wed, 06 Feb 2019 03:38:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:38:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:38:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:38:12 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:311f739cf765a852fae2e17cf19fd7217531c3ef15353269024a910995ec0791`  
		Last Modified: Wed, 06 Feb 2019 03:39:01 GMT  
		Size: 29.8 MB (29808039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2062ff08c7fb52855c43eeb0cf2f31bf7f6922b06deeb4b4cf0c05555e1a2213`  
		Last Modified: Wed, 06 Feb 2019 03:38:56 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9284f431651ef5d48fc959f151d631bd7b35954d98365a2df298d8182beba13a`  
		Last Modified: Wed, 06 Feb 2019 03:38:55 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92a507bf7ffc004d4f7b6a940ebef83b7d5594e198bc995a9a112aa072e68b9`  
		Last Modified: Wed, 06 Feb 2019 03:38:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:disco` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:725e828fc1ee9feaeddd132bfb8865da1902d37656ad025597eabd333df2b198
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.2 MB (25229473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e80eb9ef3eb947d2655adcfee5d809969b7b4b528d5d451f7f556bfe4878d70`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 07 Feb 2019 14:57:24 GMT
ADD file:bb30ec0af781b45a3f5b96b25a4d70ef264d41f759f1605a705e94ccbf695eda in / 
# Thu, 07 Feb 2019 14:57:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 07 Feb 2019 14:57:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 14:57:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 07 Feb 2019 14:57:30 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:600eb1441d5bb529506e69067c9b0b7737a77f9947a20fba9ed3137c4bba596c`  
		Last Modified: Thu, 07 Feb 2019 14:59:10 GMT  
		Size: 25.2 MB (25228214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023c86d39a689e69962bad754da791a62dafe45d69fc5a54e72c72b1909f8267`  
		Last Modified: Thu, 07 Feb 2019 14:59:04 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f40cfb5120233188214daf75651a9b3d9a68d5f72dd8e63a01bcc6e3a41d95`  
		Last Modified: Thu, 07 Feb 2019 14:59:04 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0562bb71c14fe18b3a1d3f4e877fc87e2e565f5a8b3b005fb277d49f9d35a037`  
		Last Modified: Thu, 07 Feb 2019 14:59:04 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:disco` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:63bfd502226d60814413457357cf7a5826cae0f248c5458ec7276549c023f6c4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28339384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5053889de3a93948e04899e2d5d57c79822f1799cbcc63a53b46edd03c5587a0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Feb 2019 19:17:06 GMT
ADD file:0c02a858df6308396dcfa844ba6dc59d3b6eb1775863020051161fe92a8c1e53 in / 
# Wed, 06 Feb 2019 19:17:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:17:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:17:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:17:17 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:f2822db590de32fc353a528c4fc51c099782fdf80a8c8fab3207c39f91fcae02`  
		Last Modified: Wed, 06 Feb 2019 19:19:13 GMT  
		Size: 28.3 MB (28338150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ef541c33a05a64322753a12b5d0451637156c3738e101f4c26c8317b833483`  
		Last Modified: Wed, 06 Feb 2019 19:19:02 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d9eaf1e5e7893a4b56fed32a39f7765f080f91528d7fc651b4b5edc83fbc0d`  
		Last Modified: Wed, 06 Feb 2019 19:19:03 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4caccbf0a153e2c200de6b5f177ecc8fd92cd0892bc3ab2046f2c9ca0a97ab`  
		Last Modified: Wed, 06 Feb 2019 19:19:02 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:disco` - linux; 386

```console
$ docker pull ubuntu@sha256:7002b76646f99831200df3e7ea1f57346dcda509bc1e42a9460e67e0ee9228f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30267804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c43aa48f98245f9e97ee617ae4db4aa1cab51d66e75c7f49cc37b94633ae1ed2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 07 Feb 2019 00:49:32 GMT
ADD file:b129ed53d83b299e95ecb9f43a11e815e047344c466888768ad01b7cd51a414e in / 
# Thu, 07 Feb 2019 00:49:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 07 Feb 2019 00:49:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 00:49:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 07 Feb 2019 00:49:34 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:02964b128234e98232949f14e8bb4d547cdae3b41b26a785c218695488321c0d`  
		Last Modified: Thu, 07 Feb 2019 00:50:27 GMT  
		Size: 30.3 MB (30266576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19545875a0d110e579baf09a54e0ef2784afac93dfe046b8a070997fed335d94`  
		Last Modified: Thu, 07 Feb 2019 00:50:20 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3b5c451a43715f81bb4a9977c444e9627b349dd160bf278c4eb93b080b146ed`  
		Last Modified: Thu, 07 Feb 2019 00:50:20 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3df3330f96dff1ebeaa18368e76658fda7bd33666e70cb18290663c0c647bf5`  
		Last Modified: Thu, 07 Feb 2019 00:50:20 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:disco` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:379c67a1639c4bc6d1a7f209c1a3100d6a3c9bd0f3ae89a7e5310b6488ae68e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.9 MB (34861206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3239e24450d4534076b48cf1d635cebbe5c260771af34b1b3865cad5d37e71f9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Feb 2019 15:42:02 GMT
ADD file:e5ccf01188cf6dcc68077f8b53c249ce0fff58d0d5bc610c271b5fbc6ebafad7 in / 
# Wed, 06 Feb 2019 15:42:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 15:42:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:42:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 15:42:28 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:68b107ae0f9a189cf67f2300ba5cbb4fc66f273026b15b61f5f34d9026f3be5b`  
		Last Modified: Wed, 06 Feb 2019 15:44:15 GMT  
		Size: 34.9 MB (34859943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2862cdb21e6569c8f3332e60ac58b6dce77b31ac54b8e60ab4e2fd34b39c33b3`  
		Last Modified: Wed, 06 Feb 2019 15:44:07 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4ce9f928bf4d1efb7e09e2a9dd0ba512be622a0361218defad41ca8890bf5f`  
		Last Modified: Wed, 06 Feb 2019 15:44:07 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b8ad09ee4798ed359734a7923c18af87af18561240af4a29bfeb5cd62e75dc`  
		Last Modified: Wed, 06 Feb 2019 15:44:07 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:disco` - linux; s390x

```console
$ docker pull ubuntu@sha256:6c57fd8f982a338c67169798d4e967349452e0a35c03c516187b34473fa75ccb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28293823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff3de55c9df68d2f87300fe7f323eac83ad5f418d93b67c668162a42f5d52571`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Feb 2019 15:15:20 GMT
ADD file:caeae918cdd434a009d231e24aa17075feb4ed9c1cc4aa28df5c728320ef41d8 in / 
# Wed, 06 Feb 2019 15:15:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 15:15:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:15:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 15:15:22 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:db7a192bbac64a3731a9883cd0e4c8a691b644366a7fda48b4357304e77bb72c`  
		Last Modified: Wed, 06 Feb 2019 15:16:09 GMT  
		Size: 28.3 MB (28292593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b85163d33b010baf1c67ea97a20f006806226ebd7ee406f1ae38c6e985d7f28`  
		Last Modified: Wed, 06 Feb 2019 15:16:00 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83991a8d1881639c7c58ba7436b9926830143083c70ffde2d273ed9cbc6ebb95`  
		Last Modified: Wed, 06 Feb 2019 15:16:01 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da534afccca292e26ae51dd4e7473405d87560c73063b978f20ad3edfd066e2`  
		Last Modified: Wed, 06 Feb 2019 15:16:01 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
