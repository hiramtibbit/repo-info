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
