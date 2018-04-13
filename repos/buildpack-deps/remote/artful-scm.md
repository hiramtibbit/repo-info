## `buildpack-deps:artful-scm`

```console
$ docker pull buildpack-deps@sha256:57277b47fa58d9e216c2a9de4c406e1946fc7c66ade25ace7d2a5660ee390a64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:artful-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:8b5a18a2240cac16f4daea71f71692421d8c8d1467e7947fd05242d25669eabb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.3 MB (92309506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f0b2dc0c855ec451b8b22caa2b46b4cd983d70e95595f358b1c894641cca8e0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 12 Apr 2018 18:34:38 GMT
ADD file:468408277a83dbd0949d04a6bd3fe61c1fda31fb15df76257c1f1502c6b2889b in / 
# Thu, 12 Apr 2018 18:34:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:34:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:34:40 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:34:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:34:41 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 05:42:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 05:42:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 05:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f56c16792d1e2514d57f86a120f7bff06c8f7ad0f3c26c47f54e8d96f57b1ca7`  
		Last Modified: Thu, 12 Apr 2018 19:14:52 GMT  
		Size: 40.5 MB (40506608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f3fcbcaacdbf8bf99fc9e2cecfae0ca6b637325023b34140d9b328b7cea39a`  
		Last Modified: Thu, 12 Apr 2018 19:14:44 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f1503c00f86eee2f931903a7038268867b9952347e7ae66c8e0bee8a1aff51`  
		Last Modified: Thu, 12 Apr 2018 19:14:41 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5ce6675ff396e9b2cffca66df5660189168e4e29a301dbae503425b5bc7095b`  
		Last Modified: Thu, 12 Apr 2018 19:14:41 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29a9bdc981f94e39efbc0aff3f33cffcde04a8fcb08fb1c28d43395451829d6`  
		Last Modified: Thu, 12 Apr 2018 19:14:43 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653f0ed7b83110353af83d208a422c8d5ad63f7333cd852a15ee5874c71e5b42`  
		Last Modified: Fri, 13 Apr 2018 07:39:08 GMT  
		Size: 6.1 MB (6058074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9de5bee3f59d95475b06389d8c003157b2eb608117c6fd74ee2af9fd6899197`  
		Last Modified: Fri, 13 Apr 2018 07:53:47 GMT  
		Size: 45.7 MB (45742354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:493244c29a3c96b0d5ed61a5f8a009ba38ac3c0f4e8009886b90810b7e1456fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.0 MB (83015738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6896169e442dad67d8c240f80b597e260463167658ad1de1484003c2a4357a98`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 11:58:17 GMT
ADD file:26367a94d8cc4f7fa0e02116faaae9edc886aa9da56c2802f71f48d08ae75e8b in / 
# Fri, 13 Apr 2018 11:58:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 11:58:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 11:58:21 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 11:58:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 11:58:22 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:19:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:19:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 12:20:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d4054238eed5290c6f57cd471b902eaaf3bd27d19fb0b8a6a8c39cb034ff6a70`  
		Last Modified: Fri, 13 Apr 2018 12:01:00 GMT  
		Size: 36.1 MB (36060770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c5b27bb3651d84dc8e413439d8de989508647ffb94255ec4e354ea9c5cf5dae`  
		Last Modified: Fri, 13 Apr 2018 12:00:50 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44ac846d3efab223e091ca18483622b84c8c032966d3c35737a5e7b32a6577d`  
		Last Modified: Fri, 13 Apr 2018 12:00:50 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf80291c4b9df80e3fdda623f12baebe6740d1ddb1351d712bac17ecd237f13d`  
		Last Modified: Fri, 13 Apr 2018 12:00:49 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85c2d4190a7dbdb234e6f7229504e16b20b7ccf6de1505364a68f92e5522786`  
		Last Modified: Fri, 13 Apr 2018 12:00:50 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d793831cc287313591c7fb552a20404cb8ef43ef2a7e2dbb74865142f31cc0`  
		Last Modified: Fri, 13 Apr 2018 12:30:55 GMT  
		Size: 5.1 MB (5100454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5b9fa54aa4c3a3a93e1909f4e2f5638cbb6d2b3b65ebf9158e077abfd366b6`  
		Last Modified: Fri, 13 Apr 2018 12:31:24 GMT  
		Size: 41.9 MB (41852026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:1dab74f3903e01e16305c044ea6aa8fcb846ef8ecea872eaaa8dd226e40b1d55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86692743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:915e839763f440901f48cad66d913934b8128dfce7f480508ed709a14a5ccacb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 09:00:41 GMT
ADD file:5dabd9134066531a408285904be465bf1e5142f628da743285a0be5630cb1154 in / 
# Fri, 13 Apr 2018 09:01:01 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 09:01:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:01:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 09:01:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 09:01:47 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 09:29:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:29:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 09:31:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2b1f6ea78d7ef0fc778cc4c9efe2aa767eef81d18ed06c22a875175bd5c774a7`  
		Last Modified: Fri, 13 Apr 2018 09:05:55 GMT  
		Size: 37.4 MB (37384539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2a41ee280eec625e740bf2fad7daadce056da8d442fc204b6672383f5c46cc`  
		Last Modified: Fri, 13 Apr 2018 09:05:42 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f5655d0e2914712c51c81b543c8bb44942c2a1adc800189cef12e79f1b1d52`  
		Last Modified: Fri, 13 Apr 2018 09:05:42 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1722db19a03faf76336de112e234f9ab466407d61f59abc166fb4e8adc47bc66`  
		Last Modified: Fri, 13 Apr 2018 09:05:42 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f525e55347dacd941c576525ea9306a9a6461ace88a428df68c318b5bec92f3`  
		Last Modified: Fri, 13 Apr 2018 09:05:42 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570ce18a9d4455185cfe57e24eeb9ddce6e0ffcc72b8b5dd40e29c3209c5e2b4`  
		Last Modified: Fri, 13 Apr 2018 10:24:20 GMT  
		Size: 5.3 MB (5338083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4e1fdb688e46d07d12d5970045c02634f4dbacbd81fcdbf19feab3134815404`  
		Last Modified: Fri, 13 Apr 2018 10:26:29 GMT  
		Size: 44.0 MB (43967718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:60aa64b9e3bd3274e636bcd7ce0441f1a4b616019d16e70cce22d1baa3525edd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 MB (94610015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abfc808a66212f24911b5b13a4201ad505532d37a0b7eca88c11bb8ce6138601`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 08 Mar 2018 03:37:14 GMT
ADD file:21ae54b42598bdc4e53f9cc31f21c838a3febc013ec82f7fa2bde60715358ed6 in / 
# Thu, 08 Mar 2018 03:37:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 08 Mar 2018 03:37:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 08 Mar 2018 03:37:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 08 Mar 2018 03:37:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 08 Mar 2018 03:37:20 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 22:00:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:00:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 22:00:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6f4f8c7764e3b9bf54c0b80551001c22563ee6c352468283d261aee662ce8507`  
		Last Modified: Wed, 28 Feb 2018 15:20:04 GMT  
		Size: 41.1 MB (41144382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f328fe89f835d015452de62e5952c5463c19b8aec1b32b86a50c9331b2d79256`  
		Last Modified: Thu, 08 Mar 2018 04:50:09 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce90b2869033e50b1e52f3e07387c198342a98b9e2766946037a2d5d46c9985`  
		Last Modified: Thu, 08 Mar 2018 04:50:09 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:564c6fdc53601ac6fc3c81c545e12adb0d3119e204d13351fecba8217713c2ab`  
		Last Modified: Thu, 08 Mar 2018 04:50:09 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cce0c6dcf704eae01c9678d8e09c763b09a4e201b681976f95e05864be67638`  
		Last Modified: Thu, 08 Mar 2018 04:50:09 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c31f16c2a465dca871e30eb191d00b6a67d10f16fef217b1e66489411424857`  
		Last Modified: Fri, 13 Apr 2018 22:22:51 GMT  
		Size: 6.1 MB (6112140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00afa9185b3ade8922e39c6129312ef53b5edb252a4a7ee0c2e7c204539557b`  
		Last Modified: Fri, 13 Apr 2018 22:23:50 GMT  
		Size: 47.4 MB (47351056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:a15d83aa6023b6779086a661f481a6dd987a73afcaf4e835f67bcd56aedbdff4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.9 MB (102946689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7449281ee32accba1ad02c1ba6f3efad0489f51dc6f82236f349e77ca7190a9a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 07 Mar 2018 03:40:20 GMT
ADD file:3e487052d516b784d12726e9545e5a4d20a8eb85cb61891cbb01c912b68a7a52 in / 
# Wed, 07 Mar 2018 03:40:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 03:40:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 03:40:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 03:40:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 03:40:41 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 04:02:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:02:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 07 Mar 2018 04:04:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:be1681c90bdd83b6f79f79830c7b13d97ed94cdeec8548c93d9c76aa4aacc900`  
		Last Modified: Wed, 07 Mar 2018 03:43:04 GMT  
		Size: 43.5 MB (43513921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3193734bf7db081d1b21d3e6f57753c7fc0b1acdd3139455ffcf6658e08e640e`  
		Last Modified: Wed, 07 Mar 2018 03:42:56 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569811142bec37ed112c27989bcbd48b5d2e958e30a893cfc56b6939d49635c9`  
		Last Modified: Wed, 07 Mar 2018 03:42:57 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de002a1280e9189b82d0c226285162c88c6eb450d09c132f3b88b727ffcc3c2`  
		Last Modified: Wed, 07 Mar 2018 03:42:56 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6f5c6d5c658f99f3ae7593ef57abc46ad69beb32428b85bf1d5d14738d7a6e`  
		Last Modified: Wed, 07 Mar 2018 03:42:56 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc148cf75d509a73cea91666e0c02cc3e4c1f38ba01bcc4a5702ad475adbe31`  
		Last Modified: Wed, 07 Mar 2018 04:58:39 GMT  
		Size: 6.1 MB (6130941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ee01e8126030320755c2ebcc23658dad25c82e218f6dc01c77ebde4eb18109`  
		Last Modified: Wed, 07 Mar 2018 04:59:08 GMT  
		Size: 53.3 MB (53299360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:2cce990c8244c2ede785208a30180156588d54237cfecee98e0d8f9dc219cba9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.6 MB (90574364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7690a33ae2b8d0b4093f5af0fa8957ab403f9790a74f0cd8f0a6188150fb2c9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 12:00:06 GMT
ADD file:ffb5e4a73c278c11cbbbfe7fe0a629665a3d9845cb0db78f25bdd7671f141719 in / 
# Fri, 13 Apr 2018 12:00:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 12:00:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:00:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 12:00:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 12:00:09 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 13:35:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 13:35:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 13:36:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:36f23915609dd556741dde440d72061be7ab5faf7ee73b5a315cc90185eeca9c`  
		Last Modified: Fri, 13 Apr 2018 12:01:01 GMT  
		Size: 39.1 MB (39147163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a3df0e69edea74d5d2ac8bc07c17e8b25530cfab85664012bc7df0adb7b9c5`  
		Last Modified: Fri, 13 Apr 2018 12:00:54 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73506fffebcb9901fd776afad6ec0e0555c693bc97377a827a1ab8ec9f4287f4`  
		Last Modified: Fri, 13 Apr 2018 12:00:54 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2499bc9824ce3218ea6fe11f9f4e06c19a93fb8e7307124af412aaa05fe0de`  
		Last Modified: Fri, 13 Apr 2018 12:00:55 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdfe5206799f0b4cd2b1ee0745697f2808236dd958d9af00174a49853f719beb`  
		Last Modified: Fri, 13 Apr 2018 12:00:54 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e62b4b04dc9017a035e8e9877cdcef41d15b0a1f76aa713cd581d4974d537193`  
		Last Modified: Fri, 13 Apr 2018 13:42:29 GMT  
		Size: 5.7 MB (5743347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e652e3742fc047c90bbda29b7de7b77d828aac8d1f63e7c93ec9f7a7e1d85cb`  
		Last Modified: Fri, 13 Apr 2018 13:42:51 GMT  
		Size: 45.7 MB (45681460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
