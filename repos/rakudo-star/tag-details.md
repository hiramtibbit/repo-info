<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rakudo-star`

-	[`rakudo-star:2018.10`](#rakudo-star201810)
-	[`rakudo-star:latest`](#rakudo-starlatest)

## `rakudo-star:2018.10`

```console
$ docker pull rakudo-star@sha256:4bcd37958da2efaa0581a9973b97a77c2229b719dc141eee21afcbed063e6acf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `rakudo-star:2018.10` - linux; amd64

```console
$ docker pull rakudo-star@sha256:664fe95b35a8cb1c2c09c15c334fc75ed34fedf0a87cc06ce3c57e5843ef4a3b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.7 MB (132660711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8c1f72a972070233276c9326c0a1a2e6cf61a96b03ad19d8e964fcefb9eefd8`
-	Default Command: `["perl6"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 22 Jan 2019 20:06:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 22:20:32 GMT
MAINTAINER Rob Hoelz
# Tue, 29 Jan 2019 22:20:33 GMT
RUN groupadd -r perl6 && useradd -r -g perl6 perl6
# Tue, 29 Jan 2019 22:20:49 GMT
ARG rakudo_version=2018.10
# Tue, 29 Jan 2019 22:20:49 GMT
ENV rakudo_version=2018.10
# Tue, 29 Jan 2019 22:33:52 GMT
RUN buildDeps='         gcc         libc6-dev         libencode-perl         make     '     url="https://rakudo.org/downloads/star/rakudo-star-${rakudo_version}.tar.gz"     keyserver='ha.pool.sks-keyservers.net'     keyfp='ECF8B611205B447E091246AF959E3D6197190DD5'     tmpdir="$(mktemp -d)"     && set -x     && export GNUPGHOME="$tmpdir"     && apt-get update     && apt-get --yes install --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && gpg --batch --keyserver $keyserver --recv-keys $keyfp     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && perl Configure.pl --prefix=/usr --gen-moar         && make install     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps
# Tue, 29 Jan 2019 22:33:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/site/bin
# Tue, 29 Jan 2019 22:33:52 GMT
CMD ["perl6"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1dd648b5ade2bbdfe77fa94424b0314100b58fb5f6a98486538c2126e08e2f`  
		Last Modified: Tue, 22 Jan 2019 20:13:28 GMT  
		Size: 50.1 MB (50062800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c624dbcc1aae29e070917b34cee209984828e49a964b458a0dfeb4c90e7387`  
		Last Modified: Tue, 29 Jan 2019 22:33:59 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331459e4326b14d78f8f45034f0d4248722ec1eb8b4c8620f529ac3bee35e529`  
		Last Modified: Tue, 29 Jan 2019 22:34:04 GMT  
		Size: 22.1 MB (22130360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rakudo-star:2018.10` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:4ed21c6f0e5321f8ee15148917bc558af79e22f867826ea51b7b8225c6bf9e10
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.8 MB (126787131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87c053cc50bc7aa239feee31766919017a467aabcc813c46311894b92f30f168`
-	Default Command: `["perl6"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 12:13:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Jan 2019 09:50:30 GMT
MAINTAINER Rob Hoelz
# Fri, 25 Jan 2019 09:50:34 GMT
RUN groupadd -r perl6 && useradd -r -g perl6 perl6
# Fri, 25 Jan 2019 09:50:34 GMT
ARG rakudo_version=2018.10
# Fri, 25 Jan 2019 09:50:35 GMT
ENV rakudo_version=2018.10
# Wed, 30 Jan 2019 11:18:54 GMT
RUN buildDeps='         gcc         libc6-dev         libencode-perl         make     '     url="https://rakudo.org/downloads/star/rakudo-star-${rakudo_version}.tar.gz"     keyserver='ha.pool.sks-keyservers.net'     keyfp='ECF8B611205B447E091246AF959E3D6197190DD5'     tmpdir="$(mktemp -d)"     && set -x     && export GNUPGHOME="$tmpdir"     && apt-get update     && apt-get --yes install --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && gpg --batch --keyserver $keyserver --recv-keys $keyfp     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && perl Configure.pl --prefix=/usr --gen-moar         && make install     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps
# Wed, 30 Jan 2019 11:18:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/site/bin
# Wed, 30 Jan 2019 11:18:55 GMT
CMD ["perl6"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3909cbce85809e95cb66a5b6e819717d1857f55a876c03fa1d9e885c2b0d9a2`  
		Last Modified: Sat, 29 Dec 2018 13:33:57 GMT  
		Size: 48.0 MB (48005935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3fafa608ce99590703141f50f887841077d39eee6deb2c28b1e76358b50056c`  
		Last Modified: Wed, 30 Jan 2019 11:19:11 GMT  
		Size: 1.8 KB (1776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40fff580ae2982585e710e0a40ce8cb9d7b161419f1eac566faf5696777f6618`  
		Last Modified: Wed, 30 Jan 2019 11:19:22 GMT  
		Size: 21.8 MB (21841094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rakudo-star:latest`

```console
$ docker pull rakudo-star@sha256:4bcd37958da2efaa0581a9973b97a77c2229b719dc141eee21afcbed063e6acf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `rakudo-star:latest` - linux; amd64

```console
$ docker pull rakudo-star@sha256:664fe95b35a8cb1c2c09c15c334fc75ed34fedf0a87cc06ce3c57e5843ef4a3b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.7 MB (132660711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8c1f72a972070233276c9326c0a1a2e6cf61a96b03ad19d8e964fcefb9eefd8`
-	Default Command: `["perl6"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 22 Jan 2019 20:06:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 22:20:32 GMT
MAINTAINER Rob Hoelz
# Tue, 29 Jan 2019 22:20:33 GMT
RUN groupadd -r perl6 && useradd -r -g perl6 perl6
# Tue, 29 Jan 2019 22:20:49 GMT
ARG rakudo_version=2018.10
# Tue, 29 Jan 2019 22:20:49 GMT
ENV rakudo_version=2018.10
# Tue, 29 Jan 2019 22:33:52 GMT
RUN buildDeps='         gcc         libc6-dev         libencode-perl         make     '     url="https://rakudo.org/downloads/star/rakudo-star-${rakudo_version}.tar.gz"     keyserver='ha.pool.sks-keyservers.net'     keyfp='ECF8B611205B447E091246AF959E3D6197190DD5'     tmpdir="$(mktemp -d)"     && set -x     && export GNUPGHOME="$tmpdir"     && apt-get update     && apt-get --yes install --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && gpg --batch --keyserver $keyserver --recv-keys $keyfp     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && perl Configure.pl --prefix=/usr --gen-moar         && make install     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps
# Tue, 29 Jan 2019 22:33:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/site/bin
# Tue, 29 Jan 2019 22:33:52 GMT
CMD ["perl6"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1dd648b5ade2bbdfe77fa94424b0314100b58fb5f6a98486538c2126e08e2f`  
		Last Modified: Tue, 22 Jan 2019 20:13:28 GMT  
		Size: 50.1 MB (50062800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c624dbcc1aae29e070917b34cee209984828e49a964b458a0dfeb4c90e7387`  
		Last Modified: Tue, 29 Jan 2019 22:33:59 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331459e4326b14d78f8f45034f0d4248722ec1eb8b4c8620f529ac3bee35e529`  
		Last Modified: Tue, 29 Jan 2019 22:34:04 GMT  
		Size: 22.1 MB (22130360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rakudo-star:latest` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:4ed21c6f0e5321f8ee15148917bc558af79e22f867826ea51b7b8225c6bf9e10
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.8 MB (126787131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87c053cc50bc7aa239feee31766919017a467aabcc813c46311894b92f30f168`
-	Default Command: `["perl6"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 12:13:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Jan 2019 09:50:30 GMT
MAINTAINER Rob Hoelz
# Fri, 25 Jan 2019 09:50:34 GMT
RUN groupadd -r perl6 && useradd -r -g perl6 perl6
# Fri, 25 Jan 2019 09:50:34 GMT
ARG rakudo_version=2018.10
# Fri, 25 Jan 2019 09:50:35 GMT
ENV rakudo_version=2018.10
# Wed, 30 Jan 2019 11:18:54 GMT
RUN buildDeps='         gcc         libc6-dev         libencode-perl         make     '     url="https://rakudo.org/downloads/star/rakudo-star-${rakudo_version}.tar.gz"     keyserver='ha.pool.sks-keyservers.net'     keyfp='ECF8B611205B447E091246AF959E3D6197190DD5'     tmpdir="$(mktemp -d)"     && set -x     && export GNUPGHOME="$tmpdir"     && apt-get update     && apt-get --yes install --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && gpg --batch --keyserver $keyserver --recv-keys $keyfp     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && perl Configure.pl --prefix=/usr --gen-moar         && make install     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps
# Wed, 30 Jan 2019 11:18:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/site/bin
# Wed, 30 Jan 2019 11:18:55 GMT
CMD ["perl6"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3909cbce85809e95cb66a5b6e819717d1857f55a876c03fa1d9e885c2b0d9a2`  
		Last Modified: Sat, 29 Dec 2018 13:33:57 GMT  
		Size: 48.0 MB (48005935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3fafa608ce99590703141f50f887841077d39eee6deb2c28b1e76358b50056c`  
		Last Modified: Wed, 30 Jan 2019 11:19:11 GMT  
		Size: 1.8 KB (1776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40fff580ae2982585e710e0a40ce8cb9d7b161419f1eac566faf5696777f6618`  
		Last Modified: Wed, 30 Jan 2019 11:19:22 GMT  
		Size: 21.8 MB (21841094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
