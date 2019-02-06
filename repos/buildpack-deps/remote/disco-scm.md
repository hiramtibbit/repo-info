## `buildpack-deps:disco-scm`

```console
$ docker pull buildpack-deps@sha256:a4319c04515c68bc142ed3e5d256b9971572ce59b8a136a88fad4a3d38390ea7
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
$ docker pull buildpack-deps@sha256:4cf1d9d67157312547cf6f243f2e1e1ffd472d6e6fc0b0a2e57ee3040673f9fc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.1 MB (91119214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f551a2be51fe564623520d99c21144cd94ba2d7741a4ff5d99dcc0db67723f8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:38:09 GMT
ADD file:d1913f33c701cbb9d7c04d0b77842e4bed9b710cefdd7134db60bf52c19b3936 in / 
# Wed, 06 Feb 2019 03:38:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:38:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:38:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:38:12 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 05:37:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:37:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 05:38:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:311f739cf765a852fae2e17cf19fd7217531c3ef15353269024a910995ec0791`  
		Last Modified: Wed, 06 Feb 2019 03:39:01 GMT  
		Size: 29.8 MB (29808039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2062ff08c7fb52855c43eeb0cf2f31bf7f6922b06deeb4b4cf0c05555e1a2213`  
		Last Modified: Wed, 06 Feb 2019 03:38:56 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9284f431651ef5d48fc959f151d631bd7b35954d98365a2df298d8182beba13a`  
		Last Modified: Wed, 06 Feb 2019 03:38:55 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92a507bf7ffc004d4f7b6a940ebef83b7d5594e198bc995a9a112aa072e68b9`  
		Last Modified: Wed, 06 Feb 2019 03:38:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d7c2c812227d9f3f1cd8327deff63724714bf5014218d0c4a581af376acd3e`  
		Last Modified: Wed, 06 Feb 2019 05:59:09 GMT  
		Size: 6.7 MB (6653693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81eacb9d379dedcbdf7a252d11f677e906759a3dd4da4031f28c6cff12503ccb`  
		Last Modified: Wed, 06 Feb 2019 05:59:08 GMT  
		Size: 3.5 MB (3511057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0361a25c3ef3d75a0279893f3db944b074b3674df409d31a8ebf864a8e34466b`  
		Last Modified: Wed, 06 Feb 2019 05:59:25 GMT  
		Size: 51.1 MB (51145191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:011c31a8e84fa7ae963e57269ffd03f448b8e50b5f0f988ab2c685fdf38d5687
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.4 MB (76449913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2386749fdcb55f144a6727076b64d4be08445f17d0f2586b602978055ef2e83e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 23 Jan 2019 12:59:15 GMT
ADD file:471cd2f4e793d53fb4404c7971d45b667b9ec27bf95d0161a0a78b2c1b7234ef in / 
# Wed, 23 Jan 2019 12:59:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:59:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:59:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:59:23 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:30:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:31:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d52c3a0d49142e9ac5191fe029321c0fe33e153c0cf40386158659c71553b388`  
		Last Modified: Wed, 23 Jan 2019 13:01:54 GMT  
		Size: 25.0 MB (24974250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7380a8e1ad2b13cf16168a1c9ee9f395394875da856a261c4bc0d2b0d1a1fd8`  
		Last Modified: Wed, 23 Jan 2019 13:01:48 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93912c1b43e36cb712a08dcbb502c4667ad4c9d0e182875de9fa35782b77bf18`  
		Last Modified: Wed, 23 Jan 2019 13:01:48 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5541ce3a09889ab7dd08f9c72f30cff9bfd5dce1598f2bd081b53f0290a0932`  
		Last Modified: Wed, 23 Jan 2019 13:01:48 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfdaf13d9761ef080ca0304e3d6ed80f0399a7c495a3b883628c3cbc8076f9c1`  
		Last Modified: Wed, 23 Jan 2019 14:01:48 GMT  
		Size: 5.2 MB (5239991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d5940d00a35cb809cf6fb08145dbb122cd10517c16c68a767532ad5e5dbf3e0`  
		Last Modified: Wed, 23 Jan 2019 14:01:48 GMT  
		Size: 2.5 MB (2531909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3b02ecc6d0337f04cbca47a5dcc75f2db9abbe73f3e727cfde4d9f0e045b320`  
		Last Modified: Wed, 23 Jan 2019 14:02:16 GMT  
		Size: 43.7 MB (43702516 bytes)  
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
$ docker pull buildpack-deps@sha256:13e66742c88d1c5b70e9c1e763318af6d883805fbc2ac4b2895ef469f9780620
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.2 MB (89224228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97e63da31c8b59f42e5604b0a79149b55aa4cd21313a8983175a6c075333eb83`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 23 Jan 2019 12:08:30 GMT
ADD file:38ae5c36f5c6e95c6ee63c1929f0212994df8329d04eb71d036cb5b763f446e0 in / 
# Wed, 23 Jan 2019 12:08:32 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:08:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:08:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:08:36 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 12:31:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:32:03 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:32:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d51fa7f0aa644905fb115b9e9c4a69c2c9752fa1fa0a62cd6e93d18ed3cdf2ed`  
		Last Modified: Wed, 23 Jan 2019 12:11:22 GMT  
		Size: 30.0 MB (29974628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdb5852ef2410762f6f012fb05e62f5a93c4480071fbb69378b29b52bc5a9b35`  
		Last Modified: Wed, 23 Jan 2019 12:11:13 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65dfd50bf991ac34cfdd28552c5faea18ef285cfbb06ac74faca76a14eec71b`  
		Last Modified: Wed, 23 Jan 2019 12:11:13 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f6ab688d623d80915b0c970b47bea2435b7465913322d70f286e8f7adeba07`  
		Last Modified: Wed, 23 Jan 2019 12:11:13 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847f347b293a6d9335b26629516e2dd2a616fa1ceb5a842129fc17787486ddc9`  
		Last Modified: Wed, 23 Jan 2019 13:06:58 GMT  
		Size: 6.5 MB (6476533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8931913cbde31710cdaa2685a7014c2317a9b281ad9a3f8c8689abbc81f0414`  
		Last Modified: Wed, 23 Jan 2019 13:06:57 GMT  
		Size: 3.2 MB (3201261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33779216e5c1f62f459b3b69463019c30e786009d4e3ef479a9e0f94a047b12`  
		Last Modified: Wed, 23 Jan 2019 13:07:21 GMT  
		Size: 49.6 MB (49570593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:de8efe26b3237ddefc670bd640f5b404310ee108d3a1273751c7189fa82f1407
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.1 MB (102140460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b5539457bfe72f2c125d877a3a74ca23399463f52c9c4dcb275208405a3a9b7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:26:22 GMT
ADD file:1578e85f773f7a4c92b35ec1d27201274011c7053a8206409c734926fbacd95f in / 
# Wed, 23 Jan 2019 09:26:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:26:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:26:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:26:55 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:37:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:38:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 10:40:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e973b20e6a07903ab220829525d50cb0ace6989869fc04b3a562e6bd92beb3e2`  
		Last Modified: Mon, 21 Jan 2019 12:14:49 GMT  
		Size: 34.3 MB (34327564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4078be190ca31d95653398dc9920d042e407b371e4f84467f88aadb7774c918b`  
		Last Modified: Wed, 23 Jan 2019 09:30:11 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96f8ef51cfe739c667db58a24f991959340112246a223dbf084064e9e62515a`  
		Last Modified: Wed, 23 Jan 2019 09:30:11 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f5ee8a1749faee2fda96685c809f0ffb4952c2f2c9a1b7dc5df27cc66b7465`  
		Last Modified: Wed, 23 Jan 2019 09:30:11 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975c3570be9cbd6ed5c0c0479f9942e97ce66f24159734f999c5f3a4ea2d2f8a`  
		Last Modified: Wed, 23 Jan 2019 11:44:36 GMT  
		Size: 7.1 MB (7057216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a48c527f7d362f41928d403b5a8b66dea53992b36d07a26d145b5d91c672b01`  
		Last Modified: Wed, 23 Jan 2019 11:44:36 GMT  
		Size: 3.8 MB (3760009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7375f6a20a80240d1b0790c9e7969f13f2ca9493545343a969c78dc53a22da82`  
		Last Modified: Wed, 23 Jan 2019 11:45:13 GMT  
		Size: 57.0 MB (56994423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:a32137fd7465108c26dd90094616316b860da7c9e337ef8aa2a14a815a24569c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.5 MB (84533284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a860b0211b3f476e93984991987ddf821e8eaf748d7941c4bd00aee52b662dc7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 23 Jan 2019 12:51:42 GMT
ADD file:cc7d7c56db28d6b68f1781a394fc2d60a47b06de9e5fc0dccaa371589bb343f7 in / 
# Wed, 23 Jan 2019 12:51:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:51:45 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:51:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:51:47 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:13:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:13:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:13:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1b17a85ae196bb550ba5fc7c3a62a8417cb5d61a95d6830b5089dfcc3d67e3d2`  
		Last Modified: Mon, 21 Jan 2019 12:14:51 GMT  
		Size: 28.0 MB (27983448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c899237bc875b4b3da609b3a3d696f9d4d23b72748664e2fb8eb71a7286de2`  
		Last Modified: Wed, 23 Jan 2019 12:53:03 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32c83006722da7ad29a4b1b3da15776fc396f037609ce833e01da6d497e2fc2`  
		Last Modified: Wed, 23 Jan 2019 12:53:04 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302a31e6628bdada814285e9ab3dd3b91c8bb132f45b59cab1bdd3cf006494ca`  
		Last Modified: Wed, 23 Jan 2019 12:53:03 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b53b017aa84fe9254f8de58b58404014f1a60ce2d8c4e0f9df1b857170d7efb8`  
		Last Modified: Wed, 23 Jan 2019 13:24:56 GMT  
		Size: 5.9 MB (5853876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff310dc34538651a5dbfb46195401f1375dff0abaf39574eee9542dbf9afa5a`  
		Last Modified: Wed, 23 Jan 2019 13:24:56 GMT  
		Size: 2.9 MB (2911842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1907b8d6b00c64e4012a6058ffc9f7fe8cddd8a27faf019c2ef210c686efbe1a`  
		Last Modified: Wed, 23 Jan 2019 13:25:15 GMT  
		Size: 47.8 MB (47782900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
