## `ubuntu:cosmic`

```console
$ docker pull ubuntu@sha256:ca12f999b81e707b9929a89642796107a194a978091a1d79a47736b1d96428e0
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
$ docker pull ubuntu@sha256:cd279abf5ab3ce4e0eaef6d98edbc91d5004513e2c5c8203cd31950bfc98b637
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29271105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09798120c134df0f94baf1714aee5657c50762660615bff11135ff417e259438`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:59 GMT
ADD file:8b0ccc99800a5f78a832ee06e3c0b41a440e09a7440cb4083c586db4ed5ef8c6 in / 
# Wed, 06 Feb 2019 03:38:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:38:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:38:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:38:01 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:a138b85795ddb9bf319d1eb360af4ae2a107c3624533f2469756781c4b96b2eb`  
		Last Modified: Mon, 04 Feb 2019 15:11:05 GMT  
		Size: 29.3 MB (29269866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03f26254a3512bb6ad17698533a45f5cdeaced032b17205e0955763a8184172`  
		Last Modified: Wed, 06 Feb 2019 03:38:46 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c574f2a0d5fc60acda8ff09fd5e3eb34e1354802f0806f8ae17d2bd2c991772b`  
		Last Modified: Wed, 06 Feb 2019 03:38:46 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d214b3691158cb216fecf74099639861395c962a63a458fec1ad422d25afcf7c`  
		Last Modified: Wed, 06 Feb 2019 03:38:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:cosmic` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:946090def5c5ad4af7f3246c1cff5736d1adcd37d9837733950c69432a64ac79
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.7 MB (24699238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1a4d81361dd134eb7723b8b0d7ee73f779d4e7d4c6153dcc74aefe451980a84`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 23 Jan 2019 12:58:48 GMT
ADD file:3b048f60db2f4df8710371c70e9ca8dd2cab6ee789fa1eda47fed3c30b74b266 in / 
# Wed, 23 Jan 2019 12:58:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:58:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:58:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:58:54 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:24dfcde4629ca0e77e64aa17b22b16e720dae9db062f063d4b374411fac97a15`  
		Last Modified: Wed, 23 Jan 2019 13:01:38 GMT  
		Size: 24.7 MB (24697971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17174ccd0cfc954bacc2051b67e4eaa0047e627e9dbd7f4d40e19b3871a11a2e`  
		Last Modified: Wed, 23 Jan 2019 13:01:31 GMT  
		Size: 867.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0018bef5931ca162197e806e3692a02fbb5e50b8cce7377b57a2e8f12010776f`  
		Last Modified: Wed, 23 Jan 2019 13:01:31 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e31b27059526153df819f9f94d62da558cad7b8636c1f59a5c5f573efead3620`  
		Last Modified: Wed, 23 Jan 2019 13:01:31 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:cosmic` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:7397109d5f58c49eba76ccb715021ada12ba376f9b26ce4ad4d2507f1a93dcc7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27541989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:460628865c2fa86d59729ab3c93c12a403589b4c60d97a893e70837ae9d04bf3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:40 GMT
ADD file:6ae96557996987850d9e8cd0c506fd91f18f82a96d6f0137473ff605b71a2628 in / 
# Wed, 06 Feb 2019 19:16:42 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:45 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:49 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d5fc74b6582763dd58332e1af6a900a65c2d05925ec75cccb100d67bddc65757`  
		Last Modified: Mon, 04 Feb 2019 15:11:06 GMT  
		Size: 27.5 MB (27540742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9bf63374e05ac4dd3d99e703ef65b0d830239ff05b974b924f7d1ed0a390303`  
		Last Modified: Wed, 06 Feb 2019 19:18:41 GMT  
		Size: 872.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e1d332b4a972cc9c4eae76beec9661d427b5f643e7b404a5bd482f53cd7873a`  
		Last Modified: Wed, 06 Feb 2019 19:18:41 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0c23ab65d4b7da1f26f1f11b1f6492ef0c5fbcb61f861bfb831d3690ab7ec92`  
		Last Modified: Wed, 06 Feb 2019 19:18:41 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:cosmic` - linux; 386

```console
$ docker pull ubuntu@sha256:dcbb66be8d92e444ce5f76f4244a43522aff79f8729d9ddc0e043df7bae9bc66
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29692583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fba8e160211cae8d8d5632ef2e6a3af5f30fa04f8b75cf39a88123017aa60b46`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 07 Feb 2019 00:49:21 GMT
ADD file:54f073883f3bd46b8bb3dbba9dfa1b8e22126c6d89839f20e97157762aae56bd in / 
# Thu, 07 Feb 2019 00:49:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 07 Feb 2019 00:49:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 00:49:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 07 Feb 2019 00:49:24 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:648f8842b72477cddce06c46a560a8ad41ce8e9ea4774271d53e2a22deeba512`  
		Last Modified: Mon, 04 Feb 2019 15:11:58 GMT  
		Size: 29.7 MB (29691338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9c44921a54f08f898374cb0f8a2fd2729b69265b3fb979501419b9fdab3113`  
		Last Modified: Thu, 07 Feb 2019 00:50:09 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f8e4399a17c8b240094afc510a40c8909f6b3e239fc38acb97d16acf7c4e05`  
		Last Modified: Thu, 07 Feb 2019 00:50:09 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c05c83b9fe91c2f1d0bfb9cb63602167105f417effad24fc08c72c8c537bb87`  
		Last Modified: Thu, 07 Feb 2019 00:50:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:cosmic` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:cd175253a34bad8d2723870ff87b9e86f142c93aac23b9dd3a5995d2a96765e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34089168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e08f501bf6373750648d74f063c575c1e839c17f568b37378ff836f7b3fad51a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Feb 2019 15:41:21 GMT
ADD file:4930a49ca85518eeb7acf2de2db2e9ba5bcd03df86ef4c6e1496225c491761f4 in / 
# Wed, 06 Feb 2019 15:41:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 15:41:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:41:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 15:41:46 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:356c0b14ba236d37bf8e81b97d66b8a4b36bc0e65107344ac2aa11268cb82b45`  
		Last Modified: Mon, 04 Feb 2019 15:13:13 GMT  
		Size: 34.1 MB (34087898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aab09e41cedcc52eeb753da5549223680df4b9ab3fb9f95219fcb364c88a960`  
		Last Modified: Wed, 06 Feb 2019 15:43:38 GMT  
		Size: 869.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad5555985398f7766fe920a78a6a65ed7f1912ef49afbb12f45e250ffde1560`  
		Last Modified: Wed, 06 Feb 2019 15:43:38 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb7c953d95c634a1949b8405ecc41762445591caa3f617bcc7173c223c8750ec`  
		Last Modified: Wed, 06 Feb 2019 15:43:38 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:cosmic` - linux; s390x

```console
$ docker pull ubuntu@sha256:0e0828eb24530a21f73b47bcfadb790ccfd5723950ef308d7a1a24f0e92c1054
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27689936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd323c994cd6f95970cd65463bbf8d2b1d0ad678f5187bac73e162e410f45be6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Feb 2019 15:15:08 GMT
ADD file:4d8fc3b0ec558c517cf3c70049442633f5a55e10345f1e27f9e53f412c54274b in / 
# Wed, 06 Feb 2019 15:15:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 15:15:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:15:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 15:15:11 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:fe869230382541de25cd7b7703a7c4c33487cb5d113899a7c50ce31b2ad361c8`  
		Last Modified: Wed, 06 Feb 2019 15:15:54 GMT  
		Size: 27.7 MB (27688701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d2678f5803ff6ac1a3d9ea67929097d02a27bfaab0f89f1c131ca3de23864d`  
		Last Modified: Wed, 06 Feb 2019 15:15:50 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b8c8a20cd3c6ad7637e3b81aed1c7be82e62b38a2c7911e591be7f41e437b4`  
		Last Modified: Wed, 06 Feb 2019 15:15:50 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d97af6549c2a29279f638da8d0a63cea5e9f55705d39fed651ea449d1dfb41c7`  
		Last Modified: Wed, 06 Feb 2019 15:15:49 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
