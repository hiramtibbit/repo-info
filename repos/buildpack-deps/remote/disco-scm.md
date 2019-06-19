## `buildpack-deps:disco-scm`

```console
$ docker pull buildpack-deps@sha256:819c27b9b5f1cf8c424d9c9f8afc56952ccb49d334a0437c37c080f012caeaa5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:disco-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:2d812e9232fbade35989d3fb3a60e1968346533ce231e7bd764c1cd29fedcc26
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.9 MB (88888744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:643a8af7512a9f30992627a456a9509dc8cc4920ccca0dc1c33f287c198d6b6a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:46 GMT
ADD file:b82101f178f1bebe33d5ac8f661a31ef8671c27500cba74a448dcb6544a6fd57 in / 
# Wed, 15 May 2019 21:20:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:49 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:47:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:47:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 15 May 2019 21:48:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4417cd7c3ebb45585a393a0c01ef74414c31104c874b4252d7034cd416796faa`  
		Last Modified: Wed, 15 May 2019 21:22:03 GMT  
		Size: 29.7 MB (29729754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4b01c082df6617a4ec1bf6043f0e270e774c843f7e974e2243090b86d5f929`  
		Last Modified: Wed, 15 May 2019 21:21:58 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08458b88081614d856d6db8cbe030d86b31ac276e3d439b280e633cb0a9c8d6b`  
		Last Modified: Wed, 15 May 2019 21:21:58 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1cec66520eed8f480efa1fc4d7dba9a8dab510d4b994f230fe8ad6f080ee7a`  
		Last Modified: Wed, 15 May 2019 21:58:10 GMT  
		Size: 6.7 MB (6666711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebcbdb3677b640a498e2e74f6549ea3ad1dfd89fb769f67f5dc697c645aa3c84`  
		Last Modified: Wed, 15 May 2019 21:58:09 GMT  
		Size: 3.5 MB (3511163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25947863bc172a05141a2fcb74e6b69d333dfeb1eb7c66c80448f9c9c1ea9598`  
		Last Modified: Wed, 15 May 2019 21:58:24 GMT  
		Size: 49.0 MB (48980095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:9ea0679503516da9efb34524df1fb15badd550aaec325f51d49101b464331fc8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.6 MB (74590034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60121aecb3442b651c4c29863b098443dde91cd34967933b449a9afe2e52b15b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:59:12 GMT
ADD file:c786ecb3cca2049794dbe978427d3ba71d82f6c499e1bbce3fb6580fc0ab3ac6 in / 
# Tue, 18 Jun 2019 21:59:14 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:59:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:59:18 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:59:18 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:32:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:33:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 18 Jun 2019 22:34:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ea18fb6f0291dc0209d95d15664beb0cb15d2baf6c95b35e53d683c0c74fdd22`  
		Last Modified: Fri, 14 Jun 2019 15:05:59 GMT  
		Size: 23.1 MB (23116823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0427bce7903a82bafd6e55053eaf424abf1df065080fcddeff7a6fd8b9d847e`  
		Last Modified: Tue, 18 Jun 2019 22:02:36 GMT  
		Size: 31.0 KB (30958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26e4cbeba8d154632411315815ad759e1a46cd09a4248a286d8432554589fa3`  
		Last Modified: Tue, 18 Jun 2019 22:02:39 GMT  
		Size: 869.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56838bbc842516cc29051e34f67989619b1be99791458dc5d759a1a32b81012`  
		Last Modified: Tue, 18 Jun 2019 22:02:39 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b346b62a23fb3bd9609273ea97e696fd323cdd21a54828c3fff6d4b8408bd9`  
		Last Modified: Tue, 18 Jun 2019 22:44:48 GMT  
		Size: 5.6 MB (5642005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7833274d62d8ae1ce712799c22f22f047ef6bd07f1d8216a6a41a45ad806cf3b`  
		Last Modified: Tue, 18 Jun 2019 22:44:47 GMT  
		Size: 3.0 MB (2976628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba08b427e3506a703b06d9709ae992d63116400695592e248cce0dc01cc272a`  
		Last Modified: Tue, 18 Jun 2019 22:45:18 GMT  
		Size: 42.8 MB (42822562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:84cfd201aaefdf43e77f70c84acea98511d52214a586e7f277b979d5b74cfba0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (84018457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c07cd4c1eb85c05373446cf7f1786e17f66b9fdd7a7711f990893ae42666450`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:51 GMT
ADD file:51d533e3c130665bdef840634216eace004cf6985ad8964387483655aa4779dc in / 
# Tue, 18 Jun 2019 21:40:53 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:56 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:06:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:06:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 18 Jun 2019 22:07:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4488dd9973772f1f778e425ee910dc6d2321ec4e46726567d298ae48a850c49b`  
		Last Modified: Fri, 14 Jun 2019 15:00:37 GMT  
		Size: 26.4 MB (26380585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff7293bf9b79f4f8aa641bd4b3d82bd01d1ab7cd97e5f04b7802583791f9f9a3`  
		Last Modified: Tue, 18 Jun 2019 21:42:12 GMT  
		Size: 30.8 KB (30762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a14d698dc993abf15832a33e640a84f658159c7fbc11e02dfa27cc96e0fab7`  
		Last Modified: Tue, 18 Jun 2019 21:42:12 GMT  
		Size: 866.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63aef2f774539d4eb2f3f72e10cb76e1b902947d34054134059e4a0615435264`  
		Last Modified: Tue, 18 Jun 2019 21:42:12 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97dc06570e61d5f9601a5434611d18f3c4a66f2956713ebf772600862ee3e00c`  
		Last Modified: Tue, 18 Jun 2019 22:18:05 GMT  
		Size: 6.5 MB (6539965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237f859ace831e42f4cadd2f371d49a14493d58e67b227f78124e5eec284e380`  
		Last Modified: Tue, 18 Jun 2019 22:18:22 GMT  
		Size: 3.5 MB (3506227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad630abb4e06bea474072c054ecfd671019e87de551ab8d076d29ee66e4807a`  
		Last Modified: Tue, 18 Jun 2019 22:19:02 GMT  
		Size: 47.6 MB (47559865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:c185faac29e9d1b321e05633261725a8e96ade9a26ad61439454aeb305ab97b0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.9 MB (87933137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9ac4db53c13cf251249913bec41426eec22f5251712f03dfe9f8a4ad9485974`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:39:46 GMT
ADD file:ce5cc7fe51b6d87c2e584ba7eee2fcd877b230bce289d7ab2d5e1c7a4c2a4aaa in / 
# Tue, 18 Jun 2019 21:39:47 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:39:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:39:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:39:49 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:16:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:17:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 18 Jun 2019 22:17:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a3a0dc03da3aae711d76416b6ace833014f072b2c95dc7d155723f073e96aff5`  
		Last Modified: Fri, 14 Jun 2019 14:52:45 GMT  
		Size: 28.3 MB (28282006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab68a4f5e08981094ec4932772d919c9c68958cbde54434373b1330cf657e670`  
		Last Modified: Tue, 18 Jun 2019 21:40:54 GMT  
		Size: 30.2 KB (30226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aba84b50f59f5e892e684a5ecfbad0a57e8aa4f1c7a8780dc21ceb7aa3cf02c`  
		Last Modified: Tue, 18 Jun 2019 21:40:54 GMT  
		Size: 861.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196ac2c35f627ece86a23d32066ae615cd58c81c5ff4477a35fc9713a458e21b`  
		Last Modified: Tue, 18 Jun 2019 21:40:54 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b2f204ee98219aafd53a4c5905ffdca387afe958695ceed1fd803159ed478d`  
		Last Modified: Tue, 18 Jun 2019 22:29:22 GMT  
		Size: 7.0 MB (6980226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df97a5b9fddbfc85abb8c63aedb65b0468286b5fff823a9224c3c56804f299b2`  
		Last Modified: Tue, 18 Jun 2019 22:29:20 GMT  
		Size: 3.8 MB (3805089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd7f6e8a96a1173c66b2ac1e11741fe45b3b7448c838e2cb2b259748717405b`  
		Last Modified: Tue, 18 Jun 2019 22:29:51 GMT  
		Size: 48.8 MB (48834566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:bcb5fd585bdcbabc6ca0d0ff5fb41f126a029b9ee61accd38093b3c0e5f87c9c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.2 MB (101197992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6a8025cb93430519f816ec835c6077d49a76b8b537e9ba4a55f3a4084183eb1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:49:12 GMT
ADD file:035c9b3a2be4bc6300456ee4c0b215f0d8f493454877d89bf5e2778ec4a3f0e5 in / 
# Tue, 18 Jun 2019 22:49:19 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:49:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:49:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:49:31 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 23:24:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:24:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 18 Jun 2019 23:25:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:de621b88ac71e8f3ff0b5ad60a86f0e657bd2b373db00864306fe6564297e433`  
		Last Modified: Tue, 18 Jun 2019 22:51:56 GMT  
		Size: 32.9 MB (32879271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7592d78c5bf3ac58c488cb07d787d530c6f8b89858611579fbabd7bd9c12f69e`  
		Last Modified: Tue, 18 Jun 2019 22:51:47 GMT  
		Size: 30.8 KB (30794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba2d1c08869c0eda4feffa6d2dd7da20bd3b8943625a5bf027d14f98fc411da3`  
		Last Modified: Tue, 18 Jun 2019 22:51:47 GMT  
		Size: 867.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f57ab1bd71775377d66eb3b0df9d5da7744ad65b3991094527234f23ac53b13e`  
		Last Modified: Tue, 18 Jun 2019 22:51:47 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0fda408cb2881c5d31f8502a6aa286c5cb62131d041df70b25808378f5ef1b`  
		Last Modified: Tue, 18 Jun 2019 23:47:11 GMT  
		Size: 7.7 MB (7742769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32955dc9d9b9d9fc1840c1e5e6d782780ac637fba6093a57523d6c5f00ac6d4`  
		Last Modified: Tue, 18 Jun 2019 23:47:10 GMT  
		Size: 4.5 MB (4461833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71254edc956822e6d727669923464ea25dd565c2b6bb6c686229af2bd78cdef6`  
		Last Modified: Tue, 18 Jun 2019 23:47:40 GMT  
		Size: 56.1 MB (56082269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:8b10674b46c6f1fc62cfefe8d7f8373e13bfd50bb674697e31fb8b1f0b83a59b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82851361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abd68d417b7ef6a5de7104134b210d9a977e08a0f77c1b57d482077eef25ac21`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:42:55 GMT
ADD file:e987de5e550cbdf23b185c00c1148504444eace5c57dc1b69187b76fe436b153 in / 
# Tue, 18 Jun 2019 21:42:56 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:42:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:42:58 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:42:58 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:08:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:09:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 18 Jun 2019 22:09:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:28969797777b946282ba2b657e0bdda5b3e21e53eb7cec5eadc5c3e1235161d9`  
		Last Modified: Tue, 18 Jun 2019 21:44:39 GMT  
		Size: 26.2 MB (26202274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8520ba91e006a8790a2cd4077d96a35757cbba72f08eccf09cac51047b4c4c`  
		Last Modified: Tue, 18 Jun 2019 21:44:34 GMT  
		Size: 31.6 KB (31555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:942bf22444641d8df6c36a1bed04f998db82e46bafc3fa2c8459c262a5663aad`  
		Last Modified: Tue, 18 Jun 2019 21:44:34 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a9f2dd675a65c49dc282ce884812f201f4bad9d8d6fb099db6bc65e0e64e940`  
		Last Modified: Tue, 18 Jun 2019 21:44:35 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3495fdb2a124f6351e8c029c4278154054494bbca8344ff8d88a472f41878592`  
		Last Modified: Tue, 18 Jun 2019 22:23:49 GMT  
		Size: 6.2 MB (6229611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4b2f421e4c0d9176c1247661c1cae994207d71330cc42396031563fd06a23a`  
		Last Modified: Tue, 18 Jun 2019 22:23:55 GMT  
		Size: 3.4 MB (3429555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1aec03d7f41ab9b2476dc9cfc788f6a5f1a49cd0f592be948b5651af15182e3`  
		Last Modified: Tue, 18 Jun 2019 22:24:28 GMT  
		Size: 47.0 MB (46957345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
