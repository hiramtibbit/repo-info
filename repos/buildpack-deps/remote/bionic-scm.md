## `buildpack-deps:bionic-scm`

```console
$ docker pull buildpack-deps@sha256:a84fe7a62c2d14a83213e34b05deeaf3cec68c9c6d2d0efccf7be47ec2b51cb7
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
$ docker pull buildpack-deps@sha256:0b4a6e4ba7f945259b098d2315e2eee4d837ac0b7e12850f4cd76b3e378057fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87334953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:955e32033f885bc1fdd57dfd12aaa7ee6dd327a81e9a874ed6f5a9906039037a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 06 Mar 2018 22:16:07 GMT
ADD file:79ffb87505d2c52afbc7309cd58477dfc56bae5ac5af460081c19b462dfe49b8 in / 
# Tue, 06 Mar 2018 22:16:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:16:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:16:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:16:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:16:11 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 00:39:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 00:39:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 07 Mar 2018 00:40:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c5cc0d8681c121e34eab689b1a348b61128b1c3d6643aac74358f3afd4e1051d`  
		Last Modified: Mon, 26 Feb 2018 14:45:53 GMT  
		Size: 34.8 MB (34830763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25992ae88689bae0fd012854058ad51aff0f2144522bbaf9a6fdddcf5f361b69`  
		Last Modified: Tue, 06 Mar 2018 22:19:06 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b293e28b639065d678f2f218d234533945ff173f6c8a663d8cdcb1f89d0674`  
		Last Modified: Tue, 06 Mar 2018 22:19:06 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e97fb8c1b1b91155f2cbc379d73086402584b7e1459d4f0daa31b664ad0b81c`  
		Last Modified: Tue, 06 Mar 2018 22:19:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89d6de98e440f92b2aaae29e60ab6baa67b9ec4234b8f4bde4caa14c572aa5f`  
		Last Modified: Tue, 06 Mar 2018 22:19:06 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b98fc5db81e81d9904ad53ebede10b0c73157009ccf46289de4239dba751006`  
		Last Modified: Wed, 07 Mar 2018 00:58:44 GMT  
		Size: 5.4 MB (5379060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be92a347feec32878119143321fab9b969aab534e5eaec8df885d9619452490`  
		Last Modified: Wed, 07 Mar 2018 00:59:16 GMT  
		Size: 47.1 MB (47122864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:bd7b47efee4fa052b70cba4a33460c000f642a0b30cced81d121adaed7014ba5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77119122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:520b5998f69d55dcf047a2ffb9e012429f465f16110bed7117bbb6f5d7b2d9c3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 07 Mar 2018 13:51:14 GMT
ADD file:886ddcd1b8d1c90b4eb406530752924e28c90f8252af281e708532d67def3c2c in / 
# Wed, 07 Mar 2018 13:51:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 13:51:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 13:51:17 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 13:51:18 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 13:51:18 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 14:16:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:16:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 07 Mar 2018 14:17:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cf9d1c318ca71157729b389bfcd686269fd38166871baa5d1ed3ac1d3c09fcb0`  
		Last Modified: Wed, 07 Mar 2018 13:53:48 GMT  
		Size: 29.9 MB (29949273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b980fc2ff0e1bbf20000c55f1dae8678f56d51d81605ce166f099e801176f1`  
		Last Modified: Wed, 07 Mar 2018 13:53:40 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:571a19300a0c0974d01a06b150be3aa250ccc534acc4c0d3a89f9c5bb8e9e01e`  
		Last Modified: Wed, 07 Mar 2018 13:53:40 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66bfa9a7624c1c80740fb5f812940d69e32f9f7cf25ba43a834796be4d646571`  
		Last Modified: Wed, 07 Mar 2018 13:53:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de6568b11fe3c5b5581cfa1665ccd3d504f40eab819f48a04eec1c974b69f161`  
		Last Modified: Wed, 07 Mar 2018 13:53:40 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb9e99650116208045699399d0b9997ae91a97a11cb37e1c6f1bb86774eaf1f`  
		Last Modified: Wed, 07 Mar 2018 14:28:50 GMT  
		Size: 3.4 MB (3420065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2defb8639f4f1616d37651b226c29a96b1c64cbae3e2d62f9a15cf33e2e695ca`  
		Last Modified: Wed, 07 Mar 2018 14:29:20 GMT  
		Size: 43.7 MB (43747495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:60e24b5242a1e1ae1a5a30c44243222ad74e6a505583dd8485fb3bef858512c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.6 MB (81561584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f64de6feb4e87ab9812f69158d4d0038deffe3cfc249c7a0a3178565506c2260`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 07 Mar 2018 15:01:44 GMT
ADD file:b83588a8cd6162ce8278b63d25a53f489c3f2219e48f2c7a6ead925c2034937a in / 
# Wed, 07 Mar 2018 15:01:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 15:01:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:01:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 15:01:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 15:01:50 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 15:42:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:42:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 07 Mar 2018 15:45:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d8a4cfc2b8052d56ca64b6f61a2a34c22c1f02ba3b4b645c9945896443b93ba6`  
		Last Modified: Mon, 26 Feb 2018 14:46:15 GMT  
		Size: 31.7 MB (31675029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58974b48cad0779ac2d8c0e47a7fd51735e40f24da0527ff6647126d50fb29e5`  
		Last Modified: Wed, 07 Mar 2018 15:05:15 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8523813641092c940889f3605bad99d19943cf1b9b0d00df4beaeab974f2352b`  
		Last Modified: Wed, 07 Mar 2018 15:05:16 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12a4bccc065827ae171bde699f5ea39037ff22a4c9b1307650dd9c561e1ac32`  
		Last Modified: Wed, 07 Mar 2018 15:05:15 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d206825587bb78f50b7a7399ac6560c596f917693826848e7d1bd3200a66b6`  
		Last Modified: Wed, 07 Mar 2018 15:05:15 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f5625008b715232b3d0752e12ac0f80da858d7bec3afc4e22805ad8725c7a6c`  
		Last Modified: Wed, 07 Mar 2018 16:21:12 GMT  
		Size: 3.6 MB (3618379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17fb2c04a9154cf5ed61ec6e8d50b7e354fd7e669f3894d86e77119278d3dabf`  
		Last Modified: Wed, 07 Mar 2018 16:22:05 GMT  
		Size: 46.3 MB (46265920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:003c1bbb5464da176ab7ff8fd8eb8d9550dc3d8ff66cca55aa6aa9464aea1133
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.7 MB (90748116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:911114d6e5ab226a73065a44fe99c8e84045fc8e505044264f6ab6d853b577fc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 08 Mar 2018 03:55:00 GMT
ADD file:8282136f5dd3d107181527be6243aa0422d1f5797d76b9dc6b4a0535c0bf781f in / 
# Thu, 08 Mar 2018 03:55:01 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 08 Mar 2018 03:55:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 08 Mar 2018 03:55:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 08 Mar 2018 03:55:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 08 Mar 2018 03:55:04 GMT
CMD ["/bin/bash"]
# Thu, 08 Mar 2018 10:13:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Mar 2018 10:13:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 08 Mar 2018 10:20:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:68c038c15d304c9e1aaff039d3ca36770d889582108aeae54e4a28e66258d706`  
		Last Modified: Mon, 26 Feb 2018 14:45:52 GMT  
		Size: 35.9 MB (35892425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55613e36b8b6396da57b246baa29f0f9e9bf2f07e7c1558320f952b3e4b7fe68`  
		Last Modified: Thu, 08 Mar 2018 05:04:13 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fac81ee2875abb3fb4761616c54dd4a81962e766fa3ada7786a51d0f7037b1`  
		Last Modified: Thu, 08 Mar 2018 05:04:13 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b24bee7315d3d32b062a05d357e3c01a1bbeb262050af57430236238191c2a`  
		Last Modified: Thu, 08 Mar 2018 05:04:14 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4fb99389d5f276de2b65c753d1a43d771920f78f812561021583c87c860918c`  
		Last Modified: Thu, 08 Mar 2018 05:04:14 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d8654daa543eec04c87b0448331ac53557327cacf5697cbd929d4ef5b80330`  
		Last Modified: Thu, 08 Mar 2018 12:15:33 GMT  
		Size: 4.7 MB (4720335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f7c749de73dc500d63dc74c10cc210b8ac386be6907ca0f83d40c815c3a8d2`  
		Last Modified: Thu, 08 Mar 2018 12:16:45 GMT  
		Size: 50.1 MB (50133084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:010238492a5dcf723292bf031ed52cba22e3b0456eee8c4f0fcd9126d8e0c0c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.4 MB (99396771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f588fa228b8e370c725d7b05d10142b8181a26dbd19c1f54356f3149d86de79`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 07 Mar 2018 03:40:57 GMT
ADD file:f42e79074f38a5a9f1ea0fc1f28387544209ad41ac40438e1cf30f94aff7a01c in / 
# Wed, 07 Mar 2018 03:41:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 03:41:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 03:41:13 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 03:41:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 03:41:18 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 04:17:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:17:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 07 Mar 2018 04:19:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0a79f30d68f4b7e93bfaa4f1a8ae0e32b087cf6e0be2fc5bf1f3eb30e6cf9139`  
		Last Modified: Wed, 07 Mar 2018 03:43:36 GMT  
		Size: 39.1 MB (39054807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ee592de7549dd39a44e901ce8e61a65545c4663042a4828f98cdf1889bc730`  
		Last Modified: Wed, 07 Mar 2018 03:43:26 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3667a327424573d2aeab3fcbdac7ca39ef5ece2b9dc72e7c04609f06d09c30aa`  
		Last Modified: Wed, 07 Mar 2018 03:43:26 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b5455070dc4a6d615ba5b5a2cae6f1630d1812a4fcdfc3b430018b87553911`  
		Last Modified: Wed, 07 Mar 2018 03:43:26 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e21c6c21ff8e409d95bfaa160a754c32bcf9250d8ea8617608b4e5414f4a01c0`  
		Last Modified: Wed, 07 Mar 2018 03:43:27 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bde9ca3dd0a41021adb4cdcf3fec194e4df87a54caa6e242f63c22ed2cb13b9`  
		Last Modified: Wed, 07 Mar 2018 05:00:49 GMT  
		Size: 4.1 MB (4063171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bd9cc42c0891a1a263cd826d24b6b36622fb80b41df63e775e693b16772f79`  
		Last Modified: Wed, 07 Mar 2018 05:01:20 GMT  
		Size: 56.3 MB (56276512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:6091f792a11c35ef88a1d7daa0defe6f74bdf43258b2feb5d198038b83d30ad3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.5 MB (85493979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fb4c3c5bd7c7a5787a35a746e05a2f8e47129082e26cf403d2fe8f33e4cc1c7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 07 Mar 2018 14:15:50 GMT
ADD file:8107fea0db98826cfa3869259c5ff03e0c9b1557db5b95cd2924cfcc77dd0a1a in / 
# Wed, 07 Mar 2018 14:15:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 14:15:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:15:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 14:15:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 14:15:52 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 14:39:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:39:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 07 Mar 2018 14:40:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c1d77f9796949f821158c9bfc7317fe5b1667b55b0e07fa49e95163f05a578d6`  
		Last Modified: Mon, 26 Feb 2018 14:54:16 GMT  
		Size: 33.7 MB (33683986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a203ed008ffa81322e65a62ae9953d31929e1efb608337ca75eeec00e8e71267`  
		Last Modified: Wed, 07 Mar 2018 14:16:39 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fd4667635a581fd152315475abddb11d6678f2a5b1d482ab3ea5343474c9bf4`  
		Last Modified: Wed, 07 Mar 2018 14:16:38 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f24b2024157b5a7027e82b99a635b93784c163639e2634433c6a1e26b36967`  
		Last Modified: Wed, 07 Mar 2018 14:16:38 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4ee1523374bc6b696cfe661da35723fff9c75e663f2718dce7f8587c9c1255`  
		Last Modified: Wed, 07 Mar 2018 14:16:38 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7058ea91aed3283853805accfc8110f4b6aa6ae9966846850494652cad6fc1e3`  
		Last Modified: Wed, 07 Mar 2018 14:52:06 GMT  
		Size: 3.7 MB (3683191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5295bbc905cde6f9159f991142ed07a727fec72b842d7e60e2a9ffa1e4f97306`  
		Last Modified: Wed, 07 Mar 2018 14:52:22 GMT  
		Size: 48.1 MB (48124546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
