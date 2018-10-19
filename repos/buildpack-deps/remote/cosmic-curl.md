## `buildpack-deps:cosmic-curl`

```console
$ docker pull buildpack-deps@sha256:137bdba501a0b88e2301c65c5f2e82ee775c326c5caad16e9eddc6defce75907
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:cosmic-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:48dd748c9844a611db4abeeaf84e05d352165488aea417eb31b164d23f76c958
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 MB (38339130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3697426dbdd43c4087ba2e6e6ad72151cc86c4b7b967d927483778f12583e2b1`
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

### `buildpack-deps:cosmic-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:89cb3a2b4f7a986b696b904735289f507d8786272e8ccae15f7b8c5bdc434507
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32382565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c2be2469ce6a0cbc3ea9f4aadc620cff85e1d835d25a4707d59e580c1d5d154`
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

### `buildpack-deps:cosmic-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:aad5b9e6b7715a8705a9dc73f3cd37ed5469f1080b96bc4b6119794343f5a533
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35125363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a724f5193bc25794422ae53f21cd555d85b52c6ada0611180d1aae7488c211a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 06 Sep 2018 11:13:30 GMT
ADD file:e26106db800a0ecafb3dced9d54f8d6d610a2ecc3349d0af388822d621a29003 in / 
# Thu, 06 Sep 2018 11:13:32 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 06 Sep 2018 11:13:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 11:13:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 06 Sep 2018 11:13:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 06 Sep 2018 11:13:37 GMT
CMD ["/bin/bash"]
# Thu, 06 Sep 2018 11:34:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 11:35:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:8afcf4e2d24a00d2654536c6cd4c53c770ed252a339359579e5bd9b83c1e5a0c`  
		Last Modified: Thu, 06 Sep 2018 11:16:10 GMT  
		Size: 26.6 MB (26626408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b69e476c2268d8a13378e9f3877b80b81fd224fb027a35af9f12a59a6a3b98`  
		Last Modified: Thu, 06 Sep 2018 11:16:00 GMT  
		Size: 867.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9e655e8aebba26cf7d93e0a1d7a911d0852d486f7c37552909152eb62adfdc`  
		Last Modified: Thu, 06 Sep 2018 11:16:00 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6959f058270a4693c87bdb4d8a0816b66eddfec01b291f9df85564392a30c308`  
		Last Modified: Thu, 06 Sep 2018 11:16:01 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7414562e233a271f6f3cfd36fa0dbb0378b5d1e61cdb297bafe65fc802e9257e`  
		Last Modified: Thu, 06 Sep 2018 11:45:30 GMT  
		Size: 5.6 MB (5554519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6de763d81d03a2c3f540c181b27b7371c29e25cdb02209643929e751679f84c`  
		Last Modified: Thu, 06 Sep 2018 11:45:29 GMT  
		Size: 2.9 MB (2942554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:d17b75e30b548265393566ac5cf9959c2d26b9a3c17eddfb4cd85961d86a66fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39262818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c54536cadfec95efc154ef7c33e912d9fd019e6fe3c436c0e766a8b6d4f38a4`
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

### `buildpack-deps:cosmic-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:d32d0d42d70f23967e93f39034b34cea8fb5135f20f2a637c8d5e100a4645d2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44621946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:860f02356bcfc6d9730ded115a3429a418bed44806762ae1f7070c229509e266`
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

### `buildpack-deps:cosmic-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:d7decb392bf3146e2633e451385bc5c8013129de455ba3e460d53b633cd7d10b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36369749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feac368b491bf5e5e31bd6eb080f88c582f54826379cdecaa15fef42ebecdfeb`
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
