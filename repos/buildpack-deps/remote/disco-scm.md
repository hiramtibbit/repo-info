## `buildpack-deps:disco-scm`

```console
$ docker pull buildpack-deps@sha256:cd4da72e5a0af049eea954aeb372bce4d07481e600df3b3f0b5964125da8ee22
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
$ docker pull buildpack-deps@sha256:2d3d44da27a5ec92e6991dee0cfe70907fcb6a39a2a44cafae18193417cd7855
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86281123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:038a8f7137de9e1b27a01a3805956840f9037f999f276820907a844571769181`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:14 GMT
ADD file:3a109f3caf85a7b3477f6785dfac95d586150b920d7762bd777723e53f26df1d in / 
# Fri, 28 Dec 2018 23:24:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:24:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:24:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:24:17 GMT
CMD ["/bin/bash"]
# Fri, 28 Dec 2018 23:52:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:52:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 28 Dec 2018 23:53:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5d5ba9e5cbafa75fd695c6259512b971d7cf0bf372f6f83ea8a66e39b7232e44`  
		Last Modified: Mon, 24 Dec 2018 15:09:27 GMT  
		Size: 29.5 MB (29507462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3995f02a9bb9318376226e982a42fe61e0839fb3035f3efc79edb66b763ee9`  
		Last Modified: Fri, 28 Dec 2018 23:26:21 GMT  
		Size: 805.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd753179fe083c4423e399f1f1fcbe0aaf0a69bf321c87851b85e9bfc162602`  
		Last Modified: Fri, 28 Dec 2018 23:26:21 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7e36bc580a03c8f3c134ddcfe223657d716b63410ca3d50b7af6ae0102b6992`  
		Last Modified: Fri, 28 Dec 2018 23:26:21 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889876e91107e0346c56e6c08c2a30e319779dab07af86fb3c5fdab3d015dc29`  
		Last Modified: Sat, 29 Dec 2018 00:18:41 GMT  
		Size: 6.1 MB (6144771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:027b5f503509b596c71754e568f22b9aea69c8549481798f1f4c3a0966ffdb24`  
		Last Modified: Sat, 29 Dec 2018 00:18:40 GMT  
		Size: 3.0 MB (2968981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:243bc7025128c78fbb874215a1999f232d7e334ee8acc28c64f743fa9f7d435d`  
		Last Modified: Sat, 29 Dec 2018 00:18:57 GMT  
		Size: 47.7 MB (47658734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:4bd70030dba31ee8f44442b44f534b22952f6dcd66ac1a7343f4a76d0dc4cb23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.9 MB (75889177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d3b5a2ed81cd61e3d937b18b65a1816f85e3ba575c9f307ba72158acaeba381`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:06:44 GMT
ADD file:25d55bc6d7d892fd357f56bc488362d24323b9fa49980ba53261b824b99b2788 in / 
# Tue, 20 Nov 2018 13:06:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:06:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:06:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:06:48 GMT
CMD ["/bin/bash"]
# Wed, 05 Dec 2018 12:58:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Dec 2018 12:59:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Dec 2018 13:00:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a753913fd9ccf64b6990de89fcbbbb44fc5f459e7c4d693eb57afe859357de3c`  
		Last Modified: Tue, 20 Nov 2018 13:09:35 GMT  
		Size: 24.9 MB (24911271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451dc523aa60b7358e3a45a6f40c36d5cc0166aa5dc6a822710887001aa72947`  
		Last Modified: Tue, 20 Nov 2018 13:09:28 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a188c1ab0c6e346b369134112cb267387d4d3c276004dc27e3074d52cd28e63`  
		Last Modified: Tue, 20 Nov 2018 13:09:28 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc7d9128132a1e2ba7875d0aaae8253f8708d0929dc168fac468d7ed141fadd9`  
		Last Modified: Tue, 20 Nov 2018 13:09:28 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ec77b36c36669a0562da704af6e2e2470009fcfe66d20ce65776e5a405087d3`  
		Last Modified: Wed, 05 Dec 2018 13:04:22 GMT  
		Size: 5.2 MB (5181338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758436e529f07c56d57505a157f11cb5ac11f4ee26d3b7f22cad42c2744ce13d`  
		Last Modified: Wed, 05 Dec 2018 13:04:22 GMT  
		Size: 2.5 MB (2534329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a78762140cbc486cf6dbe4c7b7e171806e4af85bc18b738ddd0c0cc2b0f7c2`  
		Last Modified: Wed, 05 Dec 2018 13:04:52 GMT  
		Size: 43.3 MB (43260993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:34bddb7518cbecfc68ba12f2c8d7b5991e2a54c2ca9223920e774922f18c9edf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84750201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e0254d95e2b5d67c0e421ff71509d81f35d36eaa36ee6e5b694649517069c67`
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
# Sat, 29 Dec 2018 11:41:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:42:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 11:44:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:eb97f718bb20b0755c91be37d0d51d788af8e09a38d41f455bdf64bbf9332f2a`  
		Last Modified: Sat, 29 Dec 2018 13:23:05 GMT  
		Size: 6.0 MB (6020030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2bfff9effc18756f529b04d564dc9d6eb0e04cac3241cee494a3ca366d2854`  
		Last Modified: Sat, 29 Dec 2018 13:22:58 GMT  
		Size: 2.9 MB (2941095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a6291631de795ee3d93a578b7b8bdae52f23812941bba9985f33a1e2cdaa68`  
		Last Modified: Sat, 29 Dec 2018 13:25:42 GMT  
		Size: 47.9 MB (47874649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:827c53ee0987b0e091116cf487b086c5ad7d165b1f8a41834a0ff71cfa3ba03b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88664086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49110fe5b24b486530a4d9086a61722b026c0d26b37ee5c0d63601345683ab18`
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
# Sat, 29 Dec 2018 12:41:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:41:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 12:42:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:73aa17f423b31edaa54ccf76ad6cf7c008b6b69c591c11b9f0a7007cb14071f4`  
		Last Modified: Sat, 29 Dec 2018 13:22:45 GMT  
		Size: 6.4 MB (6418725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e869216752c84874bb4971644410a69ddedce631d587c3685c6afa24d5f1ad`  
		Last Modified: Sat, 29 Dec 2018 13:22:44 GMT  
		Size: 3.2 MB (3201171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83532d5a51ca19a65541d64f2e82283ac03ee645b83d8207c9527435516c4409`  
		Last Modified: Sat, 29 Dec 2018 13:23:17 GMT  
		Size: 49.1 MB (49109592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:6c247249d124ed180e78bebc98a39d174bba4201d3f557f8a790045a2bc3263f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.5 MB (101519460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63ce661dc289e3afd1d8cc70e7a642ae738518883219fcb97e10adca83e4281b`
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
# Sat, 29 Dec 2018 10:18:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:19:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 10:20:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:f6c19f7187feabd15f67ed513b8eb4e7454ba971ff0beaba8b0bd3ab3efa8f31`  
		Last Modified: Sat, 29 Dec 2018 11:14:09 GMT  
		Size: 7.0 MB (6980952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d408736ac52cc333d2c4b769e53f0734fc730a67ca9b258ce7a4011ebd04a55`  
		Last Modified: Sat, 29 Dec 2018 11:14:08 GMT  
		Size: 3.8 MB (3753430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5a4aaafadd1103794daebdc2cc0b36d662182cf29fd88f9882e934758e63ba`  
		Last Modified: Sat, 29 Dec 2018 11:14:48 GMT  
		Size: 56.5 MB (56514662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:079daf41a7e3490de07576587437dcab723b2e715366b6b68a191e807f2eb618
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (83981020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62b81660cd54704aa27d04dcb1033f10999abcefc1f05fb1b079581bbcc5bc42`
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
# Sat, 29 Dec 2018 13:12:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:12:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 13:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:e894dcd57eeb7c3b730bbdbe2686bbfd458b8d6f34cb199b86009040883dc151`  
		Last Modified: Sat, 29 Dec 2018 13:23:08 GMT  
		Size: 5.8 MB (5792615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1109fa194694727eb6f7e8a7903062cd1c03f62a1ccd3b6d912888eb458dd2`  
		Last Modified: Sat, 29 Dec 2018 13:23:08 GMT  
		Size: 2.9 MB (2911905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd0dffc2b30bd798daccef9bf6d09e306ceac14d2eefdc08576fe0cccee962e`  
		Last Modified: Sat, 29 Dec 2018 13:23:26 GMT  
		Size: 47.3 MB (47328354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
