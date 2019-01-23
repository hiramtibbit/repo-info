## `ubuntu:devel`

```console
$ docker pull ubuntu@sha256:b050b54859d45a64efd3ccef7f5c1209147a28e0ccfa0567a5886c022d829377
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
$ docker pull ubuntu@sha256:0a867861795d56dd21bfabe7147e2a1ac1d146b909ef0efc24912b3a762114ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29549005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05120fc985b9e1b7692762908cb6aaeabc148c82dd0c3cdefeb63b16d1d8764b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:45:19 GMT
ADD file:9a23ac7d19ec6e66b5b04ae79268f8482f008fa538e8112ef846506ca2ea2c94 in / 
# Tue, 22 Jan 2019 22:45:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:45:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:45:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:45:22 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d34594a8d8c8d0e45748c4405198369f222dd8915e5ff91857b1d8b555d3454a`  
		Last Modified: Mon, 21 Jan 2019 12:15:00 GMT  
		Size: 29.5 MB (29547785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63358b6e02fbb9c794f328b363588b66086781c9c97f3333b628f2955ee7e125`  
		Last Modified: Tue, 22 Jan 2019 22:49:47 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20eb4decfe8e8302f9cc71e71eb54eb04cb6eb3722e3c500fde10af305dc08fd`  
		Last Modified: Tue, 22 Jan 2019 22:49:47 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ed494aaadd450d0e4f54bfb98a84d948387d216893528dc72271a6f163b9a9`  
		Last Modified: Tue, 22 Jan 2019 22:49:47 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:devel` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:93ca1142eac95c72cc0ecf05311ee4a5fdc4b6e2ad590da27eb8dd4251c3446a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24938114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97c68987ae8f2df2ddec97a17be8ec9a1add5695a40f2832528bb0224e3d4580`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:59:31 GMT
ADD file:65b13929f711e16db5c8f41f06b01595a2a913b11a532ff8da51679c7c21ae1e in / 
# Sat, 29 Dec 2018 12:59:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 12:59:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:59:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 12:59:36 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:37b2a9d6349d1831cb4e15c494eae53d42bd0e61ba650ff57cfdfb7eaf0d3bac`  
		Last Modified: Mon, 24 Dec 2018 15:09:56 GMT  
		Size: 24.9 MB (24936909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8d1d5fdd51613528387dfa2e9e1723cf9557e299adc15cd1036909c288b748`  
		Last Modified: Sat, 29 Dec 2018 13:02:13 GMT  
		Size: 807.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b6d497ea7e29383efe9592d8b3fd8a2584ece2c30b70ca0ec58e95eadd4f22`  
		Last Modified: Sat, 29 Dec 2018 13:02:14 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef8093c28023570ac163a06351ad0158c59d4fd2b817295ee2fb2d3c5e8b0b0`  
		Last Modified: Sat, 29 Dec 2018 13:02:14 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:devel` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:985d990380d9e39d8521e16ab4658b48ed53089786ee512420ce9e2d62783b67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27914427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aac6688b38905ce444a036d35b60e83c20e18e4d65ccb825aad63c15d28ef77`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:11:38 GMT
ADD file:94998d52156ed7c3a5bd73e1662e439959ae32e5c59662254f815106ad51f427 in / 
# Sat, 29 Dec 2018 10:11:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:11:43 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:11:45 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:11:46 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:fd9fe2b43fd462e9b08f58e50aed325717020e756bba527f0799dec6a62cac24`  
		Last Modified: Mon, 24 Dec 2018 15:09:51 GMT  
		Size: 27.9 MB (27913242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3573903f8fd8d98bd4b997125816cb1eb3374f529f58d71efb2307179ce7897f`  
		Last Modified: Sat, 29 Dec 2018 10:14:16 GMT  
		Size: 813.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244541a530166de6a915bf1399a480d4361b26e409d26f008cb54933855d6c57`  
		Last Modified: Sat, 29 Dec 2018 10:14:16 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec3eb634a9723a1d90d98902434bbf8bb1e21da92723589ae7a705b5ffbf282`  
		Last Modified: Sat, 29 Dec 2018 10:14:16 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:devel` - linux; 386

```console
$ docker pull ubuntu@sha256:42b3611c5e8e1956852c7a388eec18069a2f57b36b13f4c7d11f0af3df1530fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.9 MB (29934598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e39451bac9ec0e1de95c94ae8dc16aa7427191285180236dd7f5caf767debb9f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:17:09 GMT
ADD file:f57da10337bed4116353ac552c029f9fca1ed2fd529bcd2045dfe392717d0075 in / 
# Sat, 29 Dec 2018 12:17:11 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 12:17:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:17:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 12:17:14 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:f8bee0d9f45afee13561a54a5e04fee2489dc38c66a3620fe66bfd616a8f5b1f`  
		Last Modified: Mon, 24 Dec 2018 15:11:08 GMT  
		Size: 29.9 MB (29933416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:401cc429da654e66bfe498aa459dcd64998f0059643104c8b84d638d6ae7ab4e`  
		Last Modified: Sat, 29 Dec 2018 12:20:28 GMT  
		Size: 810.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:038da1b5803de0c927f9da1a2de10b1ef988b37db2e811cb2f2e35575ff75411`  
		Last Modified: Sat, 29 Dec 2018 12:20:28 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:714b9265947b2b1c4f292f962e70d84da861bee1f69c963c5eb6749ab857e4c0`  
		Last Modified: Sat, 29 Dec 2018 12:20:28 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:devel` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:49eed3f61fc736afc9285e8c84df8d16d69fa06efdd809945a1a2e58b9193c13
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34270416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f35002c8fe3d4fca73409b99419b84aff6fe4bb16d8ed66502623796f97268e4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:13 GMT
ADD file:799a743f2e48ed199f5c85e58f78c28651566041935c831c0cf404b05e2ae458 in / 
# Sat, 29 Dec 2018 09:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 09:21:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 09:21:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 09:21:42 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:869aa1f9311f58d123a7b4552cc0f74961262afde457f5212b24b79609fb7d65`  
		Last Modified: Mon, 24 Dec 2018 15:11:30 GMT  
		Size: 34.3 MB (34269209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac95ca438129238925e19dfa7bc58973f339a89a96fc426f176715ee39ad0a8b`  
		Last Modified: Sat, 29 Dec 2018 09:24:59 GMT  
		Size: 808.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb04b44807051cfceb59de5b0d07a4d7f325da7b4cde1d50e9eef4e1878d87f2`  
		Last Modified: Sat, 29 Dec 2018 09:24:59 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea9fc4d29e42af3ba465323cd8fbf4a922143178c7244cdb35555b86dbfe861a`  
		Last Modified: Sat, 29 Dec 2018 09:24:59 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:devel` - linux; s390x

```console
$ docker pull ubuntu@sha256:a82e715dc37bfe7f99cb5056469120c6f12842db6b874d56cdb23bd4fba6cb56
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27948146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:685f2d2d28a8afb6674a7a78e1f7637bb419f8a06895572623d507580cd4424e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:48:51 GMT
ADD file:06b858923ebbc6ec3e6153dfc6c0bfc89c4a8c96041bf903d7f100a12ab1ffbe in / 
# Sat, 29 Dec 2018 12:48:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 12:48:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:48:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 12:48:53 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:7bdffdd0f0fcd9630824c3329b1a0cfc0b7d814b221568da3e2ffe7dfede76cc`  
		Last Modified: Mon, 24 Dec 2018 15:11:38 GMT  
		Size: 27.9 MB (27946970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78e6fa321fc1e62c7878a04d1e3bcd466b3e006e0a133c2cdfdac34e5ab5570`  
		Last Modified: Sat, 29 Dec 2018 12:49:46 GMT  
		Size: 805.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e864d4390fb6b3cfe8fcdedda6d61ca85c882904bf18740475fa9db1d3ccc7b`  
		Last Modified: Sat, 29 Dec 2018 12:49:46 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee2f76f0bd930e2698940c2d83885614c631efa4995e9f2cfad217a3a554f8d`  
		Last Modified: Sat, 29 Dec 2018 12:49:46 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
