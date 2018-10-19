## `buildpack-deps:cosmic-scm`

```console
$ docker pull buildpack-deps@sha256:595fc4b3270489a2bc404d8cffc0e1bf25176bef1da6258da7face16da2934c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:cosmic-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:48bf535df2c62ab95ca36ac3b96f8782571148fd3d30d400c50c829ac78e1423
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86711995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:672d2b25dd80ab7002fd15586ef0758592d45d8863b452ef6fa6d511f2e08dba`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 19 Oct 2018 00:48:18 GMT
ADD file:4edaa1926df20a1485746993a79b3ac596c83159d51f3d34370759d8bfa3d40a in / 
# Fri, 19 Oct 2018 00:48:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:48:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:48:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:48:20 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:32:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 19 Oct 2018 01:33:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:72f45ff89b789ad4a1ee071b3554cea8fb95f6a161009ff9ce9b93fffa8f9f72`  
		Last Modified: Fri, 19 Oct 2018 00:50:19 GMT  
		Size: 29.3 MB (29266221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f034a33b165968ac685c37504f31a6cd0c46bbc13535e3e16b79e1c789f25d8`  
		Last Modified: Fri, 19 Oct 2018 00:50:14 GMT  
		Size: 867.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386fee7ab4d392ad9dfbe161b465ccc35519326fb8926a084551c2f5d84793bc`  
		Last Modified: Fri, 19 Oct 2018 00:50:14 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f941b4ac6aa8574d1e4261d11e9d4329b4890f658b16def3c761a9648a3360a7`  
		Last Modified: Fri, 19 Oct 2018 00:50:14 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83de0934378fc629db1937f88081529cb8575a913eb0e56018b65b196299131`  
		Last Modified: Fri, 19 Oct 2018 01:45:31 GMT  
		Size: 6.1 MB (6098372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:911850473622abc39fa99455727b6ba1347649cf6b75743edc91bcf19c6d757d`  
		Last Modified: Fri, 19 Oct 2018 01:45:31 GMT  
		Size: 3.0 MB (2973296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d7a2a25d997e4ab2e7c84ef9b206e26ba6884e934988ff6a779bd8e689b4ec`  
		Last Modified: Fri, 19 Oct 2018 01:46:12 GMT  
		Size: 48.4 MB (48372865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:89c765314bb0465164c5f76b281717818a362b083d6707bece16c32e82ba6cf6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.9 MB (75879138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8174c25c1ded0b6f916f3cbcd358d3745a16838645fcd11f47c9b52f7f45aff6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 19 Oct 2018 12:28:28 GMT
ADD file:1ce3e3a3630e9bb8d2e5c8338543d661ceff2157eed352daa4d470b418948e12 in / 
# Fri, 19 Oct 2018 12:28:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 12:28:31 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:28:33 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 12:28:33 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 13:18:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:18:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 19 Oct 2018 13:19:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:dc2687bed40a437730d03c02ab085c197bc14b0a4c81adea35f0be040c7d964e`  
		Last Modified: Fri, 19 Oct 2018 12:30:52 GMT  
		Size: 24.7 MB (24700230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5fbcced990272b1acb4feb96edd7adf42272c4c20062f3cee7b04804baa7a98`  
		Last Modified: Fri, 19 Oct 2018 12:30:43 GMT  
		Size: 858.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9d4f42adfe057eab570af75bc5627e26dcdc266cf2262be933d471bd0a8620`  
		Last Modified: Fri, 19 Oct 2018 12:30:43 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdde21967f9ea0cdfcc9449ac885527361b2ae8cb19ea5049ec210a5c6c604ae`  
		Last Modified: Fri, 19 Oct 2018 12:30:43 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41906b183c2a36b35e4985896d623b6506fcaac9dae1e6f3953e864121b97006`  
		Last Modified: Fri, 19 Oct 2018 13:31:23 GMT  
		Size: 5.1 MB (5146418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e6c27e1806ff2b51c64583f9a36010a1788fa73391f6d095e297316f7792755`  
		Last Modified: Fri, 19 Oct 2018 13:31:22 GMT  
		Size: 2.5 MB (2534661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9323a94c76191e5fc29670cc3a709d1e2d3ce357181f00defa834d49f553ddb8`  
		Last Modified: Fri, 19 Oct 2018 13:31:58 GMT  
		Size: 43.5 MB (43496573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:34796c70f2c3734791fb443e6ed59920cde578a29cb2fb6cd2f1d029b6599f68
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.4 MB (84447863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efe6cfcda07da7f901088cc9671fa942853aff30efaf2f1963ab1d1b5a5adcdc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 19 Oct 2018 11:21:22 GMT
ADD file:e6e56aca41e342035fafeb7c12e7bffa77f668100887313c97662d26d2b6a644 in / 
# Fri, 19 Oct 2018 11:21:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 11:21:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 11:21:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 11:21:29 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 13:11:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:12:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 19 Oct 2018 13:13:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b1c856af33667cc4ba965a2e01142ad8e54149d472f81b2bb1f49df365c4fd34`  
		Last Modified: Fri, 19 Oct 2018 11:24:39 GMT  
		Size: 27.5 MB (27535057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baab517ba091c055a75573c2502c425fa8d206509361f07801e7393406dfaf91`  
		Last Modified: Fri, 19 Oct 2018 11:24:32 GMT  
		Size: 866.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b07158007647d5ac2b921fcca5d9946330b5cb344506e57dfed867c320a41788`  
		Last Modified: Fri, 19 Oct 2018 11:24:29 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9592d14c5dd71c1da58e3fc62546237f0f85de32fa09ec77ff775ff7460ec1fa`  
		Last Modified: Fri, 19 Oct 2018 11:24:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3c8407035c58fb02f3adb0ff3862b87f04995c3883b2b7112a0c532e6ee3e24`  
		Last Modified: Fri, 19 Oct 2018 13:43:59 GMT  
		Size: 5.8 MB (5789105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb59b71bdd12b7c3559d5bbb5b28884c821889fd04e7a40d3b41d916e38af605`  
		Last Modified: Fri, 19 Oct 2018 13:43:58 GMT  
		Size: 2.9 MB (2942655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7660d66fdb7bb1dc977371fc2560592b8cc779d29eb372bc95a448f592e01ec`  
		Last Modified: Fri, 19 Oct 2018 13:44:44 GMT  
		Size: 48.2 MB (48179805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:ed5a849fa3815899cb530c31272a4eeca69d67bb6cd98ed507a10e95bc63d321
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.9 MB (88940881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12988a5940105c66e2fe3abba44ca510e60cd17d6dccade79bf7d7f5f88fafbf`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 19 Oct 2018 12:41:19 GMT
ADD file:d7e32309ae51939fef2ba4e69ba3879ab4e146861b1fcb5f97357691ce40e080 in / 
# Fri, 19 Oct 2018 12:41:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 12:41:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:41:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 12:41:21 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 13:29:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:30:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 19 Oct 2018 13:30:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:735a8f592d37e2a5730765780214e59cd1c848ee704fb12d619a36b9f4df9429`  
		Last Modified: Fri, 19 Oct 2018 12:43:24 GMT  
		Size: 29.7 MB (29682235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7babd3084e2ed09047039e2ff5b69cdca1aef0d96435a2d0a9ca72ad04d23540`  
		Last Modified: Fri, 19 Oct 2018 12:43:17 GMT  
		Size: 867.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ccab6a6282180951394995ba77c640e7a43d5456a144516d950c23794f2c394`  
		Last Modified: Fri, 19 Oct 2018 12:43:17 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb5812dd5773567f3c2dce906fd9475daeb2f8101bda02e52cec9d4dc89a1ee`  
		Last Modified: Fri, 19 Oct 2018 12:43:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69eb9e8c4c6cf86558f7a9c61c6d929bec6a9914888c9979b5942a67266a96c`  
		Last Modified: Fri, 19 Oct 2018 13:41:42 GMT  
		Size: 6.4 MB (6374723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61172d5e8605a254b74e133728571b6c98fc72dd4427f764da8ceaf4a1b3dc8b`  
		Last Modified: Fri, 19 Oct 2018 13:41:40 GMT  
		Size: 3.2 MB (3204617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4f222ce02459c7d849843c3cb3a1665e7a9a9118c8349520baeb76f0907d5e4`  
		Last Modified: Fri, 19 Oct 2018 13:42:16 GMT  
		Size: 49.7 MB (49678063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:e69dfbd6340b2ef340ff124c3f5f08c956efe5008c6ca59a820f70cfb641cbce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.7 MB (101730295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31148cb6667f1e37d8ed495e581e411b34351a07f19d92f6b469db027583a66e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 19 Oct 2018 09:16:48 GMT
ADD file:9f9aa14c196ad60f93a5d44d5d99ad42647a580e461c07f8fd88939332e5d4e9 in / 
# Fri, 19 Oct 2018 09:16:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 09:16:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 09:17:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 09:17:02 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 10:26:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:27:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 19 Oct 2018 10:29:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ff96bdc610825532ca663a34e3b2181bdf6f1ae7939fac9b812a8e06d246a204`  
		Last Modified: Fri, 19 Oct 2018 09:19:39 GMT  
		Size: 34.1 MB (34072113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48fc9001eabb97e48d88402eed6d272344741786d76327350505ed74ed62f306`  
		Last Modified: Fri, 19 Oct 2018 09:19:31 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812a4ce46669a9b735624d479f72fb1658f0212207d049f13694f86e455094b1`  
		Last Modified: Fri, 19 Oct 2018 09:19:31 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae2735981eb8ce5e6b33d9478a543db7e11ecf610bef6e1dc58178910711f24`  
		Last Modified: Fri, 19 Oct 2018 09:19:31 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51aaa32c1a79c91ff9deaa296c433be51cb5053bf7a751b6f00fafe2692f128f`  
		Last Modified: Fri, 19 Oct 2018 10:56:11 GMT  
		Size: 6.8 MB (6792068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e0b97f247127c7fb0ef9d092bca8659cb54318c13ac2f46f90f50f17e8fb64`  
		Last Modified: Fri, 19 Oct 2018 10:56:10 GMT  
		Size: 3.8 MB (3756497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ebb8f11141c235f81530f3c30c0e35d0f37f4c5e8fe4e91c23e1b58f19a967`  
		Last Modified: Fri, 19 Oct 2018 10:56:59 GMT  
		Size: 57.1 MB (57108349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:ea7303cc2fc4ec5da0f2f21a78fdd4ee07b307a84dbe1a55752fbbf98cce0551
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.1 MB (84131596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316fa90a6420aee6961885de97de30e819f2d7fd301cae7e0bda1ec12086dfca`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 19 Oct 2018 12:51:05 GMT
ADD file:e7a634701f9faafe3c16ed86b9dbca286eac0ae40284522e30bb1ef0395ef2a4 in / 
# Fri, 19 Oct 2018 12:51:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 12:51:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:51:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 12:51:07 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 13:17:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:17:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 19 Oct 2018 13:17:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ac3a798ae69c593c8c3a4e48ca803bd2d075455a03a228b0dc1e1230046618e`  
		Last Modified: Fri, 19 Oct 2018 12:51:52 GMT  
		Size: 27.7 MB (27687038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7cfef564eab92a1eeba0d91b3e770d40a29227a0fbaf83cb8a73dfbbc6c4b6`  
		Last Modified: Fri, 19 Oct 2018 12:51:47 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b77e487ef7664dea23e958c7673c2b5835af8f2e3f70677335e3716800c3e35`  
		Last Modified: Fri, 19 Oct 2018 12:51:47 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4246b42a9cf7bf128b858049057acc2cdf0f99c5387790de79b56fe72002a19c`  
		Last Modified: Fri, 19 Oct 2018 12:51:47 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc78f7db8fe7436800961f41345bf49e4e63008e3e8caa71d139e3d15b45cdf`  
		Last Modified: Fri, 19 Oct 2018 13:21:40 GMT  
		Size: 5.8 MB (5767437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4e02b93c943f945789478356201b5b7910a79e142aceb0c2bcbcb7a5ce11abf`  
		Last Modified: Fri, 19 Oct 2018 13:21:39 GMT  
		Size: 2.9 MB (2914038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6985d920d7167aab1fbd87e48558728e743325cffd429b9d94ce33fed9b65545`  
		Last Modified: Fri, 19 Oct 2018 13:22:04 GMT  
		Size: 47.8 MB (47761847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
