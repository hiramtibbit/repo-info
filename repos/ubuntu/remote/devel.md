## `ubuntu:devel`

```console
$ docker pull ubuntu@sha256:95cfb84d2654fd604240ced28c0b57c5aff7614de8ccdb71755cf908d43be02a
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
$ docker pull ubuntu@sha256:2bdcbab2d39776c3b47f1138f7251f1083a4b5dad541b831813e7cd5e33a7e2c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25458675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68d965795962962b0a6b245f19a802d888b11a796d5cfe9bc85848633be9844b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:59:48 GMT
ADD file:d6c217e0d6beac6482cfac5cbc8a29c3a8eb728d206f98b7a3b9e8aa4fcc4e3a in / 
# Wed, 15 May 2019 21:59:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:59:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:59:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:59:55 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ab6a46fd4cabd5572e80f6f2c01de510ca350d1e16efa3cacb3d6bddadd26550`  
		Last Modified: Wed, 15 May 2019 22:02:45 GMT  
		Size: 25.5 MB (25457624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:886a1248f693fa58af0925fa5f8565bf458e4f3c9bbc929832e663c4596e2b9a`  
		Last Modified: Wed, 15 May 2019 22:02:38 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd30f6eeec515a283350787db53aea9ff62d6c34bfa5360c9877c273414738d7`  
		Last Modified: Wed, 15 May 2019 22:02:38 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:devel` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:14bba92b1720ef59981f48c8978324c8d0cbd5e253df60db27fb8486a7b651b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.8 MB (28769554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1588d6436dd3f12cdc2c240b9c80cbf4add62f7e271801766a9c142669f6646d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 22:01:16 GMT
ADD file:8d577e564c98287c3aa71f929606ba01ba47a78f362586208816235bf1ce5623 in / 
# Wed, 15 May 2019 22:01:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:01:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:01:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:01:37 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:70526f032590575fc33f443f2cc92f2fc1b3fb6fc7848cbed658d28ddd009f7b`  
		Last Modified: Wed, 15 May 2019 22:03:37 GMT  
		Size: 28.8 MB (28768503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d478db00d4d8008d79e5abdd55a17a3bfdd3c2b04c3cf86c389d60f5e6b7a999`  
		Last Modified: Wed, 15 May 2019 22:03:29 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff7ba0d642f0dd2b53f3c627b788d030de42ad5c6ffee565b1a9d4e240892bff`  
		Last Modified: Wed, 15 May 2019 22:03:29 GMT  
		Size: 186.0 B  
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
$ docker pull ubuntu@sha256:608bd08d2584b6294aedeb971ee9ce151d4bf1fc1289f5de925ebc8503b02f84
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.3 MB (35304674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc48bab3f395ac8c389ed0a7fd2856a2ca601c3b519e121cb8131790218a8bda`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 22:24:50 GMT
ADD file:00a5ec1b8d5b8371b23de268be1e30ed48c04cfae4a32a7d75573ef69d568819 in / 
# Wed, 15 May 2019 22:25:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:25:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:25:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:25:17 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:db81c3532b70eee61e0b9f862f12203c733919d38a7e0575e8d0527552a0dddb`  
		Last Modified: Wed, 15 May 2019 22:30:42 GMT  
		Size: 35.3 MB (35303621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2934f53728deb8736276e453391cdb81a6914b24595ef9f7070bf19e7dacf08`  
		Last Modified: Wed, 15 May 2019 22:30:15 GMT  
		Size: 866.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26aa955ab628f10ad6fb86725cd871ef399738b7cc2e74de526d5c3900eb4880`  
		Last Modified: Wed, 15 May 2019 22:30:15 GMT  
		Size: 187.0 B  
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
