<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rakudo-star`

-	[`rakudo-star:2018.10`](#rakudo-star201810)
-	[`rakudo-star:latest`](#rakudo-starlatest)

## `rakudo-star:2018.10`

```console
$ docker pull rakudo-star@sha256:90507ae234e21ce94fcb721c18f813eabd526b72459f3bcb5e6b3a0ef3207bc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `rakudo-star:2018.10` - linux; amd64

```console
$ docker pull rakudo-star@sha256:3147a8bf16d651ea2423ee89e95c66ac382fb5b4029784dc7048e47d7efd425f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.7 MB (132653504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26d6c2c098cb8ee94f9e2a202ac8e22ae4085f8e7a1c3e07227f69ac68c5660c`
-	Default Command: `["perl6"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:27:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 04:43:39 GMT
MAINTAINER Rob Hoelz
# Wed, 27 Mar 2019 04:43:40 GMT
RUN groupadd -r perl6 && useradd -r -g perl6 perl6
# Wed, 27 Mar 2019 04:43:41 GMT
ARG rakudo_version=2018.10
# Wed, 27 Mar 2019 04:43:41 GMT
ENV rakudo_version=2018.10
# Wed, 27 Mar 2019 05:05:58 GMT
RUN buildDeps='         gcc         libc6-dev         libencode-perl         make     '     url="https://rakudo.org/downloads/star/rakudo-star-${rakudo_version}.tar.gz"     keyserver='ha.pool.sks-keyservers.net'     keyfp='ECF8B611205B447E091246AF959E3D6197190DD5'     tmpdir="$(mktemp -d)"     && set -x     && export GNUPGHOME="$tmpdir"     && apt-get update     && apt-get --yes install --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && gpg --batch --keyserver $keyserver --recv-keys $keyfp     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && perl Configure.pl --prefix=/usr --gen-moar         && make install     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 05:05:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/site/bin
# Wed, 27 Mar 2019 05:05:59 GMT
CMD ["perl6"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54db43011fd116b8cb6d9e49e268cee1fa6212f152b30cbfa7f3c4c684427c3`  
		Last Modified: Tue, 26 Mar 2019 23:32:25 GMT  
		Size: 50.1 MB (50065446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbc0af35c4ec58d599df56370b42fbf664af20ead99b6ecb10dc024a81a3977f`  
		Last Modified: Wed, 27 Mar 2019 05:06:12 GMT  
		Size: 1.8 KB (1762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ab19ca2232f933032999306ef0fb7f41ebd6bae644b8d4624d2c5586e42c27`  
		Last Modified: Wed, 27 Mar 2019 05:06:17 GMT  
		Size: 22.1 MB (22121640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rakudo-star:2018.10` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:abe5b6565ffb6947234e95fc6e1f5ee7407931865ca3f8a9a5f6a16b0fb4e4bf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.8 MB (126820207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd7225872765159cd707060554b20db4aaf4240f077324186a170be3297850a`
-	Default Command: `["perl6"]`

```dockerfile
# Tue, 05 Mar 2019 10:00:23 GMT
ADD file:7bdd35ab84858c7d5864b73a83750df5ac3db71ce3e586a7da68d50ed15904c8 in / 
# Tue, 05 Mar 2019 10:00:24 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:31:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:32:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 11:33:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 18:07:43 GMT
MAINTAINER Rob Hoelz
# Tue, 05 Mar 2019 18:07:45 GMT
RUN groupadd -r perl6 && useradd -r -g perl6 perl6
# Tue, 05 Mar 2019 18:07:46 GMT
ARG rakudo_version=2018.10
# Tue, 05 Mar 2019 18:07:47 GMT
ENV rakudo_version=2018.10
# Tue, 05 Mar 2019 19:00:12 GMT
RUN buildDeps='         gcc         libc6-dev         libencode-perl         make     '     url="https://rakudo.org/downloads/star/rakudo-star-${rakudo_version}.tar.gz"     keyserver='ha.pool.sks-keyservers.net'     keyfp='ECF8B611205B447E091246AF959E3D6197190DD5'     tmpdir="$(mktemp -d)"     && set -x     && export GNUPGHOME="$tmpdir"     && apt-get update     && apt-get --yes install --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && gpg --batch --keyserver $keyserver --recv-keys $keyfp     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && perl Configure.pl --prefix=/usr --gen-moar         && make install     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 19:00:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/site/bin
# Tue, 05 Mar 2019 19:00:14 GMT
CMD ["perl6"]
```

-	Layers:
	-	`sha256:fe62b3d54b9c915735c759d5d36826088c3c05a73dec307a4ec4cb502ad034ff`  
		Last Modified: Tue, 05 Mar 2019 10:06:07 GMT  
		Size: 43.1 MB (43131855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a498920bfeb2353594e13055200f3227c4992da6fb9617197ee55ebd4a723c`  
		Last Modified: Tue, 05 Mar 2019 11:46:32 GMT  
		Size: 9.7 MB (9730480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb8191548b27dfce511beab0eb0f4a401e160544b2f893ba98c3dc794636c53`  
		Last Modified: Tue, 05 Mar 2019 11:46:30 GMT  
		Size: 4.1 MB (4094079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fe741ca3c91de7331744358ee1d4543b1be55d55bdde318da27773bc8522fd`  
		Last Modified: Tue, 05 Mar 2019 11:47:01 GMT  
		Size: 48.0 MB (48007524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f36ce80c874db826ed7156d685e619e9f694f4f054cf17a8833d25f88ed665f`  
		Last Modified: Tue, 05 Mar 2019 19:00:39 GMT  
		Size: 1.8 KB (1768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e245d6814e33a2007b5c043a0bb6c9dbc4ca73a580df3e0fe25ff6b9181ccd2`  
		Last Modified: Tue, 05 Mar 2019 19:00:51 GMT  
		Size: 21.9 MB (21854501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rakudo-star:latest`

```console
$ docker pull rakudo-star@sha256:90507ae234e21ce94fcb721c18f813eabd526b72459f3bcb5e6b3a0ef3207bc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `rakudo-star:latest` - linux; amd64

```console
$ docker pull rakudo-star@sha256:3147a8bf16d651ea2423ee89e95c66ac382fb5b4029784dc7048e47d7efd425f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.7 MB (132653504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26d6c2c098cb8ee94f9e2a202ac8e22ae4085f8e7a1c3e07227f69ac68c5660c`
-	Default Command: `["perl6"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:27:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 04:43:39 GMT
MAINTAINER Rob Hoelz
# Wed, 27 Mar 2019 04:43:40 GMT
RUN groupadd -r perl6 && useradd -r -g perl6 perl6
# Wed, 27 Mar 2019 04:43:41 GMT
ARG rakudo_version=2018.10
# Wed, 27 Mar 2019 04:43:41 GMT
ENV rakudo_version=2018.10
# Wed, 27 Mar 2019 05:05:58 GMT
RUN buildDeps='         gcc         libc6-dev         libencode-perl         make     '     url="https://rakudo.org/downloads/star/rakudo-star-${rakudo_version}.tar.gz"     keyserver='ha.pool.sks-keyservers.net'     keyfp='ECF8B611205B447E091246AF959E3D6197190DD5'     tmpdir="$(mktemp -d)"     && set -x     && export GNUPGHOME="$tmpdir"     && apt-get update     && apt-get --yes install --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && gpg --batch --keyserver $keyserver --recv-keys $keyfp     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && perl Configure.pl --prefix=/usr --gen-moar         && make install     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 05:05:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/site/bin
# Wed, 27 Mar 2019 05:05:59 GMT
CMD ["perl6"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54db43011fd116b8cb6d9e49e268cee1fa6212f152b30cbfa7f3c4c684427c3`  
		Last Modified: Tue, 26 Mar 2019 23:32:25 GMT  
		Size: 50.1 MB (50065446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbc0af35c4ec58d599df56370b42fbf664af20ead99b6ecb10dc024a81a3977f`  
		Last Modified: Wed, 27 Mar 2019 05:06:12 GMT  
		Size: 1.8 KB (1762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ab19ca2232f933032999306ef0fb7f41ebd6bae644b8d4624d2c5586e42c27`  
		Last Modified: Wed, 27 Mar 2019 05:06:17 GMT  
		Size: 22.1 MB (22121640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rakudo-star:latest` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:abe5b6565ffb6947234e95fc6e1f5ee7407931865ca3f8a9a5f6a16b0fb4e4bf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.8 MB (126820207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd7225872765159cd707060554b20db4aaf4240f077324186a170be3297850a`
-	Default Command: `["perl6"]`

```dockerfile
# Tue, 05 Mar 2019 10:00:23 GMT
ADD file:7bdd35ab84858c7d5864b73a83750df5ac3db71ce3e586a7da68d50ed15904c8 in / 
# Tue, 05 Mar 2019 10:00:24 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:31:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:32:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 11:33:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 18:07:43 GMT
MAINTAINER Rob Hoelz
# Tue, 05 Mar 2019 18:07:45 GMT
RUN groupadd -r perl6 && useradd -r -g perl6 perl6
# Tue, 05 Mar 2019 18:07:46 GMT
ARG rakudo_version=2018.10
# Tue, 05 Mar 2019 18:07:47 GMT
ENV rakudo_version=2018.10
# Tue, 05 Mar 2019 19:00:12 GMT
RUN buildDeps='         gcc         libc6-dev         libencode-perl         make     '     url="https://rakudo.org/downloads/star/rakudo-star-${rakudo_version}.tar.gz"     keyserver='ha.pool.sks-keyservers.net'     keyfp='ECF8B611205B447E091246AF959E3D6197190DD5'     tmpdir="$(mktemp -d)"     && set -x     && export GNUPGHOME="$tmpdir"     && apt-get update     && apt-get --yes install --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && gpg --batch --keyserver $keyserver --recv-keys $keyfp     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && perl Configure.pl --prefix=/usr --gen-moar         && make install     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 19:00:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/site/bin
# Tue, 05 Mar 2019 19:00:14 GMT
CMD ["perl6"]
```

-	Layers:
	-	`sha256:fe62b3d54b9c915735c759d5d36826088c3c05a73dec307a4ec4cb502ad034ff`  
		Last Modified: Tue, 05 Mar 2019 10:06:07 GMT  
		Size: 43.1 MB (43131855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a498920bfeb2353594e13055200f3227c4992da6fb9617197ee55ebd4a723c`  
		Last Modified: Tue, 05 Mar 2019 11:46:32 GMT  
		Size: 9.7 MB (9730480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb8191548b27dfce511beab0eb0f4a401e160544b2f893ba98c3dc794636c53`  
		Last Modified: Tue, 05 Mar 2019 11:46:30 GMT  
		Size: 4.1 MB (4094079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fe741ca3c91de7331744358ee1d4543b1be55d55bdde318da27773bc8522fd`  
		Last Modified: Tue, 05 Mar 2019 11:47:01 GMT  
		Size: 48.0 MB (48007524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f36ce80c874db826ed7156d685e619e9f694f4f054cf17a8833d25f88ed665f`  
		Last Modified: Tue, 05 Mar 2019 19:00:39 GMT  
		Size: 1.8 KB (1768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e245d6814e33a2007b5c043a0bb6c9dbc4ca73a580df3e0fe25ff6b9181ccd2`  
		Last Modified: Tue, 05 Mar 2019 19:00:51 GMT  
		Size: 21.9 MB (21854501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
