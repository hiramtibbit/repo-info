## `buildpack-deps:bionic-scm`

```console
$ docker pull buildpack-deps@sha256:bbb41a3e7de7b564bfdbce4afaa415e74bac92f7b2d4f8cfa15617c5cd22d57d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:bionic-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:333bc1fb514444883f48f4df77fc426a17f6a1a3cbd1fcc7bb76cd5c1bff51e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.6 MB (88604566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a656a9a9cac887c93b540c6ce906188f5421f1d89d669b51e23e429e19a07c5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:28:39 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 22 Aug 2018 17:28:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:28:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:28:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:28:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:28:57 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 17:54:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:55:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 22 Aug 2018 17:56:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebc019eb4e2bbd192e61bce91038048924216d72dfe6ac3255322caaeb70144`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac0825f7ffbea2ddf119026b0d6c4c453dfa38edb5c2abbe59bdba6ffdb3b9f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b0bb65d1bfb978cd646dcd653164f74b7e8656aa1b3a87657b8d244b56d324`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3b655c7f887451d42e45a04c2d13478171e4d451419bc8cf76c635f509532f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b8bdb28c9a15d2b0acc8060d9ed1e88eaff21d47981ee741282f9029ead1a9`  
		Last Modified: Wed, 22 Aug 2018 18:20:30 GMT  
		Size: 5.8 MB (5825886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad676fdc1845f1cf944a2004f64137ff2589a6e16374c43ae7ba820827e5101`  
		Last Modified: Wed, 22 Aug 2018 18:20:29 GMT  
		Size: 3.0 MB (2958435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc1ddcb6147528cf97a342f7a2317fe59e951cd3637536d1e8f27a0dab5a337`  
		Last Modified: Wed, 22 Aug 2018 18:21:46 GMT  
		Size: 48.1 MB (48060551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:dd3470730dd7af119a4e798b9eefcd3b94100ef17ced85379cbe6da9c0c91527
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.8 MB (77812185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c80e3491bfacb740dace6c621b2352dd5651bf83ded5f1e0e28fc04a127ac000`
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
# Fri, 27 Jul 2018 13:11:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:11:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 27 Jul 2018 13:12:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:21fb2b55bdfa2b9dbf32e225ce49818214893e0e70ac78c83db6ea4d43e13aa4`  
		Last Modified: Fri, 27 Jul 2018 13:20:45 GMT  
		Size: 4.9 MB (4921650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5266c317a5d30b3c1c8b5cf0f0a3ef00b0663760cec335c95aee0e0658495fee`  
		Last Modified: Fri, 27 Jul 2018 13:20:45 GMT  
		Size: 2.5 MB (2520539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae563a31a24744c817b14edb9c8b87a022e445763bc63eba1ea38fb7bc3176ee`  
		Last Modified: Fri, 27 Jul 2018 13:21:29 GMT  
		Size: 43.3 MB (43279784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:4dae4a56e5e06185940c5098c2f8ed40b77d007541c88d077427af25ec5367d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82426130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3de3b07937a41401e103610b2f4d696f9410b7f31773d0cff8504bfe5d340086`
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
# Fri, 27 Jul 2018 13:52:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:52:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 27 Jul 2018 13:54:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:871a5803472437f3232864e7998086a91a1c5c0ce00c54efb63584dafc021abd`  
		Last Modified: Fri, 27 Jul 2018 14:45:42 GMT  
		Size: 5.3 MB (5287217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90edd7308d2df7cf6359ef6fd1bb4974df05a5cf5a7d03edeb26b2f9cbd8559d`  
		Last Modified: Fri, 27 Jul 2018 14:45:40 GMT  
		Size: 2.7 MB (2719900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4c7cd53c9e73744caa560ed28ebf800c32c21c3a26832576f3e2887bbadf29`  
		Last Modified: Fri, 27 Jul 2018 14:47:44 GMT  
		Size: 45.9 MB (45874897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:995d917cdfce9e5663eb923195c2094c2e95bd339987bdc2c7abbe1e1b8173b5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.0 MB (90973649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6355285310b8d25d1316dcb007eee2259033ad0db72b043032d1f6e32321e2d`
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
# Fri, 27 Jul 2018 11:25:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 11:25:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 27 Jul 2018 11:27:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:96ace9b3db35a7d4adf1e598712cd88dbcaa63a23fbca767b84bec23406b3e79`  
		Last Modified: Fri, 27 Jul 2018 11:46:02 GMT  
		Size: 6.1 MB (6102360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:810a51d82a6c99e5affa82b6fd1f66541f47e0fa5bbdc9a6ca973b75a3d2fb6f`  
		Last Modified: Fri, 27 Jul 2018 11:46:01 GMT  
		Size: 3.2 MB (3189218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b9de409e82fecbc89cc1d7c07498a5e7f445c8d2f38f245c6d974a6c38fe95`  
		Last Modified: Fri, 27 Jul 2018 11:47:24 GMT  
		Size: 49.7 MB (49666206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:48a79856686b347fecebe645bb89d491353f783a8af5cb68055fe843f632c02e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.2 MB (101169277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42fd0cc5b7791fd118b14bc2f1ccc6ed7e25fb12d8dd3aa6a117a425fc4dfdf0`
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
# Tue, 21 Aug 2018 18:43:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:44:37 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 21 Aug 2018 18:46:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:7e6c34cd2d0702e65b2b8133bd18f93fa2c22c5ee69f4be961623070ef505e08`  
		Last Modified: Tue, 21 Aug 2018 19:21:21 GMT  
		Size: 6.0 MB (6015480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ca1420fa89d19dd0d08edb5813d8714ad7805632fdac91d3ef2c4ec8e4cb7b6`  
		Last Modified: Tue, 21 Aug 2018 19:21:19 GMT  
		Size: 3.7 MB (3656134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab889081f5fc5cf9857769448e27969f534dbc584b1552791b31ce064120f3f`  
		Last Modified: Tue, 21 Aug 2018 19:22:20 GMT  
		Size: 56.3 MB (56319575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:d0434ef433be47355781fea4475d5e11b7a38a09e4387339b83a8d225dd132a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.1 MB (86141553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06abb31786398f5cfa2e72e3f2953ebb7127327bdf989400727af702657c2d51`
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
# Fri, 27 Jul 2018 13:21:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:21:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 27 Jul 2018 13:22:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:72648e96a7b9a4908d08d4d2da708716609ca2e40b4d997bd5e5c5c9253a40fd`  
		Last Modified: Fri, 27 Jul 2018 13:27:25 GMT  
		Size: 5.5 MB (5512065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a32a5b108be1f6c910a98c55a0273279272255786ac240cd71287b52e8457da`  
		Last Modified: Fri, 27 Jul 2018 13:27:25 GMT  
		Size: 2.9 MB (2911604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65cc6f19ec2d188e3848f2211e5b4436869fbc3713f8b682084b7c9aea08490`  
		Last Modified: Fri, 27 Jul 2018 13:27:50 GMT  
		Size: 47.6 MB (47613924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
