## `julia:1-stretch`

```console
$ docker pull julia@sha256:a29c683e8be70568d90c1d2740f3811fca8d361d3b6ccf55c754fa0d3c32f9ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `julia:1-stretch` - linux; amd64

```console
$ docker pull julia@sha256:e5672a9adc535528ebe5452e5ac5e2f0c96a9260d455d8b8ce87938246f01c1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.6 MB (150638021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f10e0b741845b571888bc23abe20bc26158ad958cddeb71d53472737ddc8bd7`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Thu, 30 Aug 2018 22:06:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 30 Aug 2018 22:06:11 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 30 Aug 2018 22:06:11 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Aug 2018 22:06:12 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 30 Aug 2018 22:06:12 GMT
ENV JULIA_VERSION=1.0.0
# Thu, 30 Aug 2018 22:06:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bea4570d7358016d8ed29d2c15787dbefaea3e746c570763e7ad6040f17831f3' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='61e855e93c3bfe5e4f486a54a4c45194f4b020922e56af5fc104ff3fd3d8e41a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='c8c607a7682bfe08b5511aac616c3b393038e52edf4dbaac5e69727c4f1eaa8b' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 30 Aug 2018 22:06:31 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e9a1317b3df089c1e00e29b314a1f97fa73611edf1275341dfe593c9a0f629`  
		Last Modified: Thu, 30 Aug 2018 22:07:59 GMT  
		Size: 9.5 MB (9453813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612844faa530217da6b34c26ad390cce36452f81289173414ae8072f1f61ac41`  
		Last Modified: Thu, 30 Aug 2018 22:08:17 GMT  
		Size: 95.9 MB (95874164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1-stretch` - linux; arm variant v7

```console
$ docker pull julia@sha256:6d2a72513b4c943eeb4025841fe8faff060e218a0689e764377db692d71bf6ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138070345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c866519a57f7d1406976be32a923260abd751c9a4fd8b7419d92082e3c68b0a`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 12:05:25 GMT
ADD file:77cbe27c4436cc4c9d81bee6c5ae0fee0c6d1708813d34abd2af2d3ebd7d96a5 in / 
# Tue, 17 Jul 2018 12:05:26 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:34:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:34:23 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 17 Jul 2018 14:34:23 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 14:34:23 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Sat, 11 Aug 2018 12:02:29 GMT
ENV JULIA_VERSION=1.0.0
# Sat, 11 Aug 2018 12:02:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bea4570d7358016d8ed29d2c15787dbefaea3e746c570763e7ad6040f17831f3' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='61e855e93c3bfe5e4f486a54a4c45194f4b020922e56af5fc104ff3fd3d8e41a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='c8c607a7682bfe08b5511aac616c3b393038e52edf4dbaac5e69727c4f1eaa8b' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Sat, 11 Aug 2018 12:02:56 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:a92bc499a4699bc1d9bd6631daec00b7b440346221ce91af635e3460f7d4d70b`  
		Last Modified: Tue, 17 Jul 2018 12:17:32 GMT  
		Size: 42.1 MB (42060835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad12a8525f9534d09ff81494d9586c287903f898fccb40830247c49027eb1553`  
		Last Modified: Tue, 17 Jul 2018 14:36:47 GMT  
		Size: 8.2 MB (8178461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fd4d4d490aa5a2fea76f6d3011e4bceea39c475b0cac14f28c4735a520aa8e`  
		Last Modified: Sat, 11 Aug 2018 12:03:36 GMT  
		Size: 87.8 MB (87831049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1-stretch` - linux; 386

```console
$ docker pull julia@sha256:d012f524038e71f68215e18d0c5a1fe48046a481fe69396bd41778ccff896184
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148778796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8aabcd74de4523487f96c179dea02146eb236052dfaacbf3aa7a954f10c0482`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Fri, 31 Aug 2018 19:53:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 31 Aug 2018 19:53:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_VERSION=1.0.0
# Fri, 31 Aug 2018 19:53:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bea4570d7358016d8ed29d2c15787dbefaea3e746c570763e7ad6040f17831f3' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='61e855e93c3bfe5e4f486a54a4c45194f4b020922e56af5fc104ff3fd3d8e41a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='c8c607a7682bfe08b5511aac616c3b393038e52edf4dbaac5e69727c4f1eaa8b' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 31 Aug 2018 19:53:36 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9e69f5fd8573ab47a73db4370f35334eb7072936d0c01cd01c038328e47799`  
		Last Modified: Fri, 31 Aug 2018 19:55:52 GMT  
		Size: 9.5 MB (9458338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b39a01685ce6250c0ce7ae2122bc54ca47df71db115de3efbb37769f508872b`  
		Last Modified: Fri, 31 Aug 2018 19:56:20 GMT  
		Size: 93.3 MB (93282936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
