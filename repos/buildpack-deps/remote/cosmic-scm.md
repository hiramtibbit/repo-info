## `buildpack-deps:cosmic-scm`

```console
$ docker pull buildpack-deps@sha256:aca807a17c1343e431dd04f339accb9abbd2eada7fdebb2d82428569b95f89bc
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
$ docker pull buildpack-deps@sha256:7a67624dbfea410bf49eacf823ebe51790161dc341ca77c4b67a2eb9579df429
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86731734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:997cac58a008f48e3966a37d5d15c336dd19cd289afbbd389fc67ad16e0acb80`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:21:29 GMT
ADD file:7d720b4a423f92d6f502a7fd82d91b639332e9435e6adbcf8ffe6df526d0eccd in / 
# Fri, 26 Apr 2019 22:21:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:21:31 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:21:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:21:32 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 22:47:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:47:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 26 Apr 2019 22:48:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a43aaa89cea0569e59fa9d1118576b9efdbc906116b241a5087ca44465737f6e`  
		Last Modified: Mon, 22 Apr 2019 15:15:43 GMT  
		Size: 29.3 MB (29276895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:483b18c8a50f763f3d56555657a8fa0f61dc4caf5c9bd37e2cfd7377ed967b2c`  
		Last Modified: Fri, 26 Apr 2019 22:22:55 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f62699848218e6e363d351d6397105dff563cdcd19556395fa8450d3dc22d6`  
		Last Modified: Fri, 26 Apr 2019 22:22:55 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ac49ee776b4569c1064b839d40c5ade038b50034872238522fb559eddc3473`  
		Last Modified: Fri, 26 Apr 2019 22:22:54 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6d5f2ea743087d7ebbfabd6ab87bb2e4218425d28881005043bd96676afd5c`  
		Last Modified: Fri, 26 Apr 2019 23:00:52 GMT  
		Size: 6.1 MB (6103581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8413c62b48ea3fa27407f2c7664f944e991a6a61aee52d21f82c6fef0b63605`  
		Last Modified: Fri, 26 Apr 2019 23:00:47 GMT  
		Size: 3.0 MB (2975191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d0093287fd917753909ab3e78c55bf61281400bef5d4223709bf2f00e57f8ac`  
		Last Modified: Fri, 26 Apr 2019 23:01:09 GMT  
		Size: 48.4 MB (48374823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:63eefa7951b0df94fd7b150a769e77d2dd6aa2ce737562e1f156259376546326
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.9 MB (75895692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d808f108b62d76999f19ebf0e2f8581126f9896be2c61824247f5fa606542860`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:08:06 GMT
ADD file:6c264b876173452b1fc85b16265d0ee105523113d79da2e850f4bf79bc240c4d in / 
# Sat, 27 Apr 2019 12:08:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:08:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:08:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:08:12 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:31:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:31:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 27 Apr 2019 12:32:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2e3ee0de3763aa9d379c5911f59f2b56a15395fd758e294668af2db8141fd20a`  
		Last Modified: Mon, 22 Apr 2019 15:16:19 GMT  
		Size: 24.7 MB (24707529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6630577ca8c36fb48fa9bd917ab8a2953ca727aa591590adc6e9442ed92ae572`  
		Last Modified: Sat, 27 Apr 2019 12:10:36 GMT  
		Size: 871.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc1498af13d49746446dc70e37e5d675cbae7d3432f613c1d0dc887c21c6dd43`  
		Last Modified: Sat, 27 Apr 2019 12:10:36 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286cfd197550bdd226c51a802c9a5316ece868756f997a120375238368d934cb`  
		Last Modified: Sat, 27 Apr 2019 12:10:36 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a60893bce8c4c898b9d0d06df592364c0affc32ecfa1e01fb86a312b3838ed`  
		Last Modified: Sat, 27 Apr 2019 12:48:10 GMT  
		Size: 5.2 MB (5150303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cdfeb9068ac5dd91e002167b6c13d5ad8a6f567b8e3f92a3f6d883b962f8ce2`  
		Last Modified: Sat, 27 Apr 2019 12:48:09 GMT  
		Size: 2.5 MB (2535975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48824cfbdd24fd50c20d224217218faf115b80600e4128aa666018a4ff9d4579`  
		Last Modified: Sat, 27 Apr 2019 12:48:31 GMT  
		Size: 43.5 MB (43500615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:7863975fd2d5825b8699c5bc6a0e9ddd27cae4517a3f6d80313f490d81a28598
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84664107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88aee67c7a808e7ac40dcf734af3b11d950f395930472f9447e0f18babb63e63`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:36:20 GMT
ADD file:553fca2155f2b626dbc844a86d150a795f7596945a028911e9e65b52a75fab62 in / 
# Sat, 27 Apr 2019 09:36:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:36:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:36:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:36:29 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 11:54:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:55:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 27 Apr 2019 11:57:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c894f8296d41be2ffaca8f8ef57181f09265114d21ab969299e8616eab1e5dc0`  
		Last Modified: Mon, 22 Apr 2019 15:16:14 GMT  
		Size: 27.6 MB (27579200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1827f8d6d7d5322a3e5de6f09f63edaff2d90dd69a64a52646e5ec7f6e437bab`  
		Last Modified: Sat, 27 Apr 2019 09:39:48 GMT  
		Size: 866.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd1f0c92a0a7f7dbfe035edc2df6b5cd3d5e22d8c554ebcf3c496911f6cbd23`  
		Last Modified: Sat, 27 Apr 2019 09:39:48 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f5293ca941f33109b4f3d981f6783a90c18688058e9426bab434b086639f10`  
		Last Modified: Sat, 27 Apr 2019 09:39:48 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a3b225d0d559a33106d239ef814e7a71ce3fe91fb63eb2aee2d4839decbe60`  
		Last Modified: Sat, 27 Apr 2019 12:46:59 GMT  
		Size: 5.8 MB (5829344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6bf9fcb206f75c73aaf0571c9de01becd022bcdd46102c057245109fded40c4`  
		Last Modified: Sat, 27 Apr 2019 12:46:58 GMT  
		Size: 2.9 MB (2944006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d892428689ce502820810d26bcadb4a9005209b54c0b1384f7268f3afaf0d26b`  
		Last Modified: Sat, 27 Apr 2019 12:47:27 GMT  
		Size: 48.3 MB (48310314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:6f605b180dad35e7566cfc030008c1a80985f8048eaaad52a1ce8ef210a25c0f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.0 MB (88969616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37cc5cdff3f7cddd2b7cfb51fe229afefa1f46ed9a5aedd72864717885a24a9b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 11:58:06 GMT
ADD file:3c410403491c099bc6f4c2443c3f8e5b49a9682d0d10951c126a070d9ca274b7 in / 
# Sat, 27 Apr 2019 11:58:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 11:58:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:58:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 11:58:09 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:26:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 27 Apr 2019 12:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:552df96d91c5f805b055a87a1a4cbda7015638361a27547314478e85de8e3128`  
		Last Modified: Mon, 22 Apr 2019 15:16:09 GMT  
		Size: 29.7 MB (29701001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74bd5a3b2c99f7022663bc3113b0dd1159fdbdf5264c85bbd9eb7d48e3cadbde`  
		Last Modified: Sat, 27 Apr 2019 11:59:38 GMT  
		Size: 869.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9c708994f79fbd2e9c6ff35b7491a11a07ad92d957d27c9c583647b48e01977`  
		Last Modified: Sat, 27 Apr 2019 11:59:38 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7543a70d695b8c65efc828fa7575bb3efca1de1a5d95706a34eede222cea5b6e`  
		Last Modified: Sat, 27 Apr 2019 11:59:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f55673ca0b35efa61f904740b3d4abb845af6c4e02981a5fc738b654f1eefe9`  
		Last Modified: Sat, 27 Apr 2019 12:40:42 GMT  
		Size: 6.4 MB (6377076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66953a6767cb5c45eada96c9b6c3588344409223edda29dc6decf16040a6e86f`  
		Last Modified: Sat, 27 Apr 2019 12:40:41 GMT  
		Size: 3.2 MB (3206306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f035c3bef2a0b640802101f4b15596bdcb6e915919f1fced06ce40c482d1220d`  
		Last Modified: Sat, 27 Apr 2019 12:41:01 GMT  
		Size: 49.7 MB (49683989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:f37610b83c4bd1e1cfed540318b25937fe3068c105988193e802e0ae6fa8acbd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.9 MB (101940365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2edc4e92306a13d0365c255a0063123585895b3a480c7bf875ea89484291b5b8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:20:38 GMT
ADD file:44c88b73d704bd032f51ed3607964b5709cbea6ae4b07e6ee0a6bf2fe5acfc3f in / 
# Sat, 27 Apr 2019 09:20:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:20:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:21:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:21:02 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 10:04:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:05:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 27 Apr 2019 10:07:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6e719ad17430745f564beae472b51ff771ce7f912280e9adfcc17fdc856e77fc`  
		Last Modified: Mon, 22 Apr 2019 15:17:33 GMT  
		Size: 34.1 MB (34123812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02ffb7f2fdc5b239bc7f5afc1f21b73ab3c5d172cf15c0952ced65394ec1de6`  
		Last Modified: Sat, 27 Apr 2019 09:30:06 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4de7c4e0b5db5a901196d9cecb096664601404e6ed044b9d5b6b6910ad4118d`  
		Last Modified: Sat, 27 Apr 2019 09:30:06 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5717908812f9d703aa401bd4f7c395c20a16140ad33e65d725a8ba0c0fa6d82`  
		Last Modified: Sat, 27 Apr 2019 09:30:06 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ebc389923a816bd728f459040def86a850a01725135143d393de0a6d54effb`  
		Last Modified: Sat, 27 Apr 2019 11:11:56 GMT  
		Size: 6.8 MB (6832118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7093ea96b6e5b00209aea32e4b88247192b653ee59c780f006a0d7020e404a54`  
		Last Modified: Sat, 27 Apr 2019 11:11:54 GMT  
		Size: 3.8 MB (3758932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06fae42d2eb1039db1c1a50ba8c6b918b8cb508a0fe97288ad8d174308a63d61`  
		Last Modified: Sat, 27 Apr 2019 11:12:57 GMT  
		Size: 57.2 MB (57224234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:50c978e1690e90080369113bf612040c14117fd49b45306100fe345f315bd726
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.1 MB (84134088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eae29140c50bed8db8eecaac363aae9531b2a0019f7571548eabc59890c8700f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:54:34 GMT
ADD file:010179253f7bfa11ec084b9699a4818699ddcc98d851a63af5ebf1afac4949ea in / 
# Sat, 27 Apr 2019 12:54:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:54:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:54:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:54:40 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 13:30:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 13:30:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 27 Apr 2019 13:30:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ff85e9503d0ecf0768cf24887ebe9620d564dfa4bdaa13935dceb1e65ccb9573`  
		Last Modified: Mon, 22 Apr 2019 15:17:57 GMT  
		Size: 27.7 MB (27686779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:800d9a7d7036030a011d375009034d468e4d427f511c1804a06f6bc799a6399a`  
		Last Modified: Sat, 27 Apr 2019 12:56:32 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff82b015e0f98b925e6ae845f925eca37b2d78f15012e63b99179553bc4d9bb`  
		Last Modified: Sat, 27 Apr 2019 12:56:32 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb24158be879469daf448427400492a34e3d1ccd5ccec1513f4df2e68575fd26`  
		Last Modified: Sat, 27 Apr 2019 12:56:32 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea2df8cf0fbd1d4b37745c983e8a421d1074eb26862825b28a9d2931195cb4f5`  
		Last Modified: Sat, 27 Apr 2019 13:39:31 GMT  
		Size: 5.8 MB (5769741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a6f35f3359847e7eddadedef0293a575d647dd1f3b774b13f679f52899d41e2`  
		Last Modified: Sat, 27 Apr 2019 13:39:30 GMT  
		Size: 2.9 MB (2916017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b21b923e5ed531c58c114e95dc8e493322965c0b224e58e2f806557ddfdb65`  
		Last Modified: Sat, 27 Apr 2019 13:39:48 GMT  
		Size: 47.8 MB (47760311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
