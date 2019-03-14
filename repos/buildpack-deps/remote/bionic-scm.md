## `buildpack-deps:bionic-scm`

```console
$ docker pull buildpack-deps@sha256:dcee719a13e98be36b0af42062fad44d14d130cc9cc9f2fbebddffaafb773a99
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
$ docker pull buildpack-deps@sha256:f978116c99f1d1343edeb1ee5fd46b7bdd3ae61c24f4fc7f456480ea9e9aa9e9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.4 MB (89350715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53cb194c8164e1d1b317751998b9f2210cbbda7563165a12511ba8d5646a66e1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:38:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:38:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Mar 2019 00:38:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:930c33e06246f569fe45349e104765f718d3ad490002d5dd72b0a4aea8b61313`  
		Last Modified: Tue, 12 Mar 2019 00:54:57 GMT  
		Size: 5.8 MB (5827335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2eb65575a4547cea7f2fc651d6a2dd60bdbd8bba8d5f1822bd82b6e03d3bed3`  
		Last Modified: Tue, 12 Mar 2019 00:54:56 GMT  
		Size: 3.0 MB (2959423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0adb2cbf93a00a4e8fd9b33f1e6edfafc865cd993e45881f388d8c22a4784323`  
		Last Modified: Tue, 12 Mar 2019 00:55:11 GMT  
		Size: 48.1 MB (48095826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:faf10b9211b23c7ba6987dda3df944d7cbe6d9191f10ae970104cc3a4c528aa8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.5 MB (78454587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:494826e68362dd56bb47280d873b174c784548137f25c2d8b58f3004c25e2e6c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:42:51 GMT
ADD file:ee8258018aa132e6acb35329269b72b13b48f1f8c6ce922afa4b1cc6826a5c16 in / 
# Tue, 12 Mar 2019 12:42:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:42:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:42:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 13:19:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:20:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Mar 2019 13:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0271361e8a748614d0ba38f51c7a988f326368d204dd208c8fa316b9c3256a8a`  
		Last Modified: Fri, 08 Mar 2019 23:45:14 GMT  
		Size: 27.7 MB (27724155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82dbae99403c2042928314aca7a23c89d49820ab94d23704497ff98e75ec236`  
		Last Modified: Tue, 12 Mar 2019 12:45:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6b13b46c8edb7b87f8f1e566518d9d14e8cfcccbd738fb42f3f9f0d6bf56ef`  
		Last Modified: Tue, 12 Mar 2019 12:45:10 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492da8380468c9df5987a639a78f80e639877ed0737502667a2c88a35f642c2c`  
		Last Modified: Tue, 12 Mar 2019 12:45:10 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6c2b77e327135ebb02c8bc4d5f13eee53bebac05281e2517359a9b46594027`  
		Last Modified: Tue, 12 Mar 2019 13:38:29 GMT  
		Size: 4.9 MB (4924052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5da41d96446682a4392a7061441a77adc459cb9955d75e98a85183ac3d8f1ed`  
		Last Modified: Tue, 12 Mar 2019 13:38:29 GMT  
		Size: 2.5 MB (2522629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e6dd0c54de2e7adcbba932abb4169fc749c5854b1d703ae7165227e7f4b7d45`  
		Last Modified: Tue, 12 Mar 2019 13:38:51 GMT  
		Size: 43.3 MB (43282182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:ffe54eace3325c1fabe96a7cba5aa6ad81cd27a1c32693be998ae02aa193a9c2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.1 MB (83074934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf2f054861284346d63cdd713585586a01428e8b973d876a11607fbe8a4db13a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:34:18 GMT
ADD file:4cccf4e4a71783b1ac058bcfcabe23b3901e829c3859551be9d7e732cb9e3f86 in / 
# Thu, 14 Mar 2019 09:34:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:34:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:34:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:34:32 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 11:21:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:22:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Mar 2019 11:24:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a0ceea30e08b5fa042d10308a43b8b093b67ce44e98a69ea8d277d00077387ab`  
		Last Modified: Fri, 08 Mar 2019 23:47:38 GMT  
		Size: 29.2 MB (29175537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef245d4e8728acd667d550023b9ffbb688c7976f78f72986d132072041e5a1`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bb25026742c32e7fe5417efb6bc0ff5ad1eb9963007aebd5f71e9bc333e9ba`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62b2948ac15d07c725e6074399d5e49e916e79b2c7738d6ad63e4d1b090db8f`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc50b83bb5de95ccdd1441ff4c4c7e56ab0ba6e70bf72f055b21f02018bf974`  
		Last Modified: Thu, 14 Mar 2019 12:36:32 GMT  
		Size: 5.3 MB (5293254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9055781d17856d7933c24eb7420dd25fcbbec68240859efde8e12af6dfb6c14b`  
		Last Modified: Thu, 14 Mar 2019 12:36:32 GMT  
		Size: 2.7 MB (2721713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9bffdee91770fc364cdc0de2e299c3d36c930fb484bbab5152d152fdfa4d838`  
		Last Modified: Thu, 14 Mar 2019 12:37:00 GMT  
		Size: 45.9 MB (45882881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:b9aa6c10ce095e2ff376046a6245e1be71aed21a77ecf1dcb31f575f99446383
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.6 MB (91641600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c245c9321cd4848240b081859d1c3fc1a3504db42a154b1448e0e15b0397e90a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 12 Mar 2019 11:34:22 GMT
ADD file:f7fafa539dd961b988889301aa1a2227ec62e41d6aa679d40dadb3e5c63f1168 in / 
# Tue, 12 Mar 2019 11:34:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 11:34:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 11:34:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 11:34:24 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 11:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 11:52:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Mar 2019 11:52:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ef3d2bb83afee7eb9e6754deedde1918b0d7f67e26471e534707ea4aeb9e077c`  
		Last Modified: Mon, 11 Mar 2019 15:11:24 GMT  
		Size: 32.7 MB (32675809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2efd94b3527a4a9dc20d5c2c3d035522f3a076f77417c1cc46ebf8ab2e3f221`  
		Last Modified: Tue, 12 Mar 2019 11:35:31 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214a9a444a1e0ba9a2d2deaefb996b91adbbf62c211664c612b4308d4e3aedfc`  
		Last Modified: Tue, 12 Mar 2019 11:35:31 GMT  
		Size: 531.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce2299fb7c34883f2aca8a4fb9514a780289299da4cb98711d7f7e6a0257d06`  
		Last Modified: Tue, 12 Mar 2019 11:35:31 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:024b8a5f6ee18de6824eab0acb6dc6992d97596e35a5c3374aa4e8127c1cb23e`  
		Last Modified: Tue, 12 Mar 2019 12:10:40 GMT  
		Size: 6.1 MB (6104559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ab03ab3d1cac50b10a3869b6d3e73b0b637011db5ec46f3b6526d7ded4d4cd`  
		Last Modified: Tue, 12 Mar 2019 12:10:37 GMT  
		Size: 3.2 MB (3190231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223c5fd52943d59c44e746ca56192ce0f17fa6e2067884b465630d71ac5b9bfd`  
		Last Modified: Tue, 12 Mar 2019 12:10:57 GMT  
		Size: 49.7 MB (49669459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:143011333ff97748f0e71aab8447101d11fa71ea9f0aaa25c709f853f38de4d6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.9 MB (101865417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ea14c5a61e2bad6a558f49fedd16470b7d6eb7ef07ac6463357ac5cec12d16f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 12 Mar 2019 08:36:02 GMT
ADD file:6c9385eb6664a846c72d3c5498fc035a58c62525035b16099b9c193127bc4b2a in / 
# Tue, 12 Mar 2019 08:36:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 08:36:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 08:36:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 08:36:28 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 08:58:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 08:58:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Mar 2019 09:00:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3bc68f2d2d199135cfbad5cf36252da8055f0d928ae25036d127dc2e4589fb18`  
		Last Modified: Tue, 12 Mar 2019 08:39:50 GMT  
		Size: 35.8 MB (35830968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b8fe3eb9f1763e3c0e9c2517a8f1d9b4067f70500b63b66033fe88312efd39`  
		Last Modified: Tue, 12 Mar 2019 08:39:40 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fd213a0950a606039b023961bba2b91ee9d330c52d8583de302510ca56e9df`  
		Last Modified: Tue, 12 Mar 2019 08:39:40 GMT  
		Size: 533.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8002c958b1eeb578b48c50651cddd51a3d83c7e1d5d3a83147ea5f549b064f`  
		Last Modified: Tue, 12 Mar 2019 08:39:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad19cc085e62498aeee3852ae6b2f841f978af2146942c5f958750111ce15639`  
		Last Modified: Tue, 12 Mar 2019 09:53:25 GMT  
		Size: 6.0 MB (6039242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3999da7014c4251ac9f0c6a9ddf62b777eb6c31e863d51b971112c82f02483e1`  
		Last Modified: Tue, 12 Mar 2019 09:53:25 GMT  
		Size: 3.7 MB (3657702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ef0e42a5e41dc17166db7e838c9c5e8e122ad90edec7dea525b705809cf8cc`  
		Last Modified: Tue, 12 Mar 2019 09:54:09 GMT  
		Size: 56.3 MB (56335928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:6df55f27638b93e7fc3864a2b0f3cdd5f83dba23bac9f2e85b7220ea8ea8d9d2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.8 MB (86753682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:376c43834e260c21d48d7581f27455060b8be651edfb78c426539cdf8f6ece93`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:08:47 GMT
ADD file:7b97cdceb7a661db3458df6cd992d2e735fec8613abd86bdff58a949190c355b in / 
# Tue, 12 Mar 2019 12:08:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:08:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:08:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:08:51 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 12:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Mar 2019 12:27:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ce90edcc3139e116c97e192a11962790422da390b102aca2d617dc565de4d938`  
		Last Modified: Tue, 12 Mar 2019 12:10:06 GMT  
		Size: 30.7 MB (30701859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2794d8d2439572a529e844dce238c278c50debc920730de784f9cbc405a0b51`  
		Last Modified: Tue, 12 Mar 2019 12:09:58 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ecab1b250dd07edb1294b4ad9afbdcb2a5b9bc81e09ae75d2d65dc32c6df0c4`  
		Last Modified: Tue, 12 Mar 2019 12:09:58 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ae8f34b30e3b128ba685424ccf987869098004713c41da34ce3636eb12060e`  
		Last Modified: Tue, 12 Mar 2019 12:09:58 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eeb968b1e74596e00b92d84f23e765b2ce58d382567df3332212703de40202a`  
		Last Modified: Tue, 12 Mar 2019 12:36:38 GMT  
		Size: 5.5 MB (5512759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39aa25101593ff42fc074c71b740f2c2882802ae8b8948150353f43f44fc4ecd`  
		Last Modified: Tue, 12 Mar 2019 12:36:37 GMT  
		Size: 2.9 MB (2913111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda467fb94e626eb68ba6b146103056b1183109d38076b536ac0ae136456ffec`  
		Last Modified: Tue, 12 Mar 2019 12:36:56 GMT  
		Size: 47.6 MB (47624405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
