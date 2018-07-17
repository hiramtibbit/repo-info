<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `julia`

-	[`julia:0`](#julia0)
-	[`julia:0.6`](#julia06)
-	[`julia:0.6.3`](#julia063)
-	[`julia:0.6.3-jessie`](#julia063-jessie)
-	[`julia:0.6.3-stretch`](#julia063-stretch)
-	[`julia:0.6.3-windowsservercore-1709`](#julia063-windowsservercore-1709)
-	[`julia:0.6.3-windowsservercore-ltsc2016`](#julia063-windowsservercore-ltsc2016)
-	[`julia:0.6-jessie`](#julia06-jessie)
-	[`julia:0.6-stretch`](#julia06-stretch)
-	[`julia:0.6-windowsservercore-1709`](#julia06-windowsservercore-1709)
-	[`julia:0.6-windowsservercore-ltsc2016`](#julia06-windowsservercore-ltsc2016)
-	[`julia:0-jessie`](#julia0-jessie)
-	[`julia:0-stretch`](#julia0-stretch)
-	[`julia:0-windowsservercore-1709`](#julia0-windowsservercore-1709)
-	[`julia:0-windowsservercore-ltsc2016`](#julia0-windowsservercore-ltsc2016)
-	[`julia:jessie`](#juliajessie)
-	[`julia:latest`](#julialatest)
-	[`julia:stretch`](#juliastretch)
-	[`julia:windowsservercore-1709`](#juliawindowsservercore-1709)
-	[`julia:windowsservercore-ltsc2016`](#juliawindowsservercore-ltsc2016)

## `julia:0`

```console
$ docker pull julia@sha256:19d0ffc9eb859706091a2374c99bfa68b8e74f08008a4286ef4118e1b477006e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	windows version 10.0.14393.2248; amd64
	-	windows version 10.0.16299.431; amd64

### `julia:0` - linux; amd64

```console
$ docker pull julia@sha256:ab3e7fb945713f1eda0431843f3ac8c4f90829255cb5c70edfd82fb38d864514
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.8 MB (124816028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e773bf0c961804d9d7de53fd68bc16dc8e80e6989e0a7ef2fa0a5174dc3c6618`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:10:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:10:53 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 17 Jul 2018 03:10:53 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 03:10:53 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 17 Jul 2018 03:10:53 GMT
ENV JULIA_VERSION=0.6.3
# Tue, 17 Jul 2018 03:11:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 17 Jul 2018 03:11:15 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0293350860a4c4d4be5f5e524ab4b733fcab37b5f9d2256bcd6224d6e2f9d842`  
		Last Modified: Tue, 17 Jul 2018 03:13:04 GMT  
		Size: 9.5 MB (9453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a9f4a06a95c38b239943fcb5fe5a4f9dae48fbfd9b7f3a7a470bffda03e1bc`  
		Last Modified: Tue, 17 Jul 2018 03:13:27 GMT  
		Size: 70.1 MB (70052036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0` - linux; arm variant v7

```console
$ docker pull julia@sha256:972dfd17f09e5094f9b6b00f778c2443f83e5a0a3e3a2fa06db63e6ac7aea2e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.2 MB (112170710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3510d6c59cacd7c741e1c6f8cbc06e9f8b545ea309798bdd2479472b6c81a85`
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
# Tue, 17 Jul 2018 14:34:23 GMT
ENV JULIA_VERSION=0.6.3
# Tue, 17 Jul 2018 14:35:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 17 Jul 2018 14:35:06 GMT
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
	-	`sha256:8a1a624beebb6b2e83b16cf394724c8233f01e4336eb47c4ad341af5175481be`  
		Last Modified: Tue, 17 Jul 2018 14:37:09 GMT  
		Size: 61.9 MB (61931414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:e66471220e26b69df1f3cbb0f012762ecda45d04cdf1ec8ce611bd4dd00a040f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.7 MB (111705440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a2b8f7c21da8c9fe45290ef25084f24e4482c7eff3bbb3fb732a71e0c677336`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:01 GMT
ADD file:0f69db95e9a06ee21c38014c8bc6c142be97ec4d5127ba83f1d0ef48806f7415 in / 
# Wed, 27 Jun 2018 08:47:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:43:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:43:08 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 27 Jun 2018 11:43:09 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 11:43:10 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 27 Jun 2018 11:43:11 GMT
ENV JULIA_VERSION=0.6.3
# Wed, 27 Jun 2018 11:44:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 27 Jun 2018 11:44:01 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:6054c6775a4e4515d2365ad9337e322dd5c6ad0e0bc8e5bb6b0252461e71afc4`  
		Last Modified: Wed, 27 Jun 2018 08:57:38 GMT  
		Size: 43.1 MB (43115791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56e9ee7d81fc382bdbd88d7a4988894f94c604a487bdf3a1caa46523f95eabb`  
		Last Modified: Wed, 27 Jun 2018 11:44:44 GMT  
		Size: 8.4 MB (8447750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9aec8c9dfd3ab74db8752beda539d27ec4165d6788630ca9db3d8e00840931b`  
		Last Modified: Wed, 27 Jun 2018 11:45:07 GMT  
		Size: 60.1 MB (60141899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0` - linux; 386

```console
$ docker pull julia@sha256:6f7a9e51f6f5cf93a942b6187764c5210a366311eb134a87764e37719f5f7552
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.9 MB (122917963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea8f419cde3d56d787ce72b6891cc0a6f2139512a985a94ff63b6fe68bd2959a`
-	Default Command: `["julia"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Thu, 07 Jun 2018 10:41:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Jun 2018 10:41:23 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 07 Jun 2018 10:41:23 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Jun 2018 10:41:23 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 07 Jun 2018 10:41:24 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 10:41:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 07 Jun 2018 10:41:59 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5492f7e41d454d495d06adbb70e6fb67b0864bdcff8d8d64b4289a9ebee37854`  
		Last Modified: Thu, 07 Jun 2018 10:44:24 GMT  
		Size: 9.5 MB (9489356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b7f3f4ffd636fe026e46d0bccb956d086f4f6096a6af92d86a8902b17bbbbc`  
		Last Modified: Thu, 07 Jun 2018 10:44:58 GMT  
		Size: 67.4 MB (67383722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0` - windows version 10.0.14393.2248; amd64

```console
$ docker pull julia@sha256:63f867d9cc4cd7a74fa8f4dc6223cc9dd401c3f139c58f08eea21ce8afd97c14
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5541540308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2773f0aaa16fb3c02f6c1c20ef0a1f1a2ff9e7152eed5aba8f376193cee29ae9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 May 2018 18:12:28 GMT
RUN Install update 10.0.14393.2248
# Thu, 10 May 2018 09:39:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 07 Jun 2018 09:27:09 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 09:27:10 GMT
ENV JULIA_SHA256=e6eef263bbe6d95d2def300407edb6a624e77166d73f423cd7fc895f8464cffd
# Thu, 07 Jun 2018 09:29:48 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION -replace '[.-][^.-]+$', ''));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 07 Jun 2018 09:29:50 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ace98111594c5bc232640988045037489d2adc214b3a14e07a8a9e9d30442cef`  
		Last Modified: Mon, 07 May 2018 18:12:28 GMT  
		Size: 1.4 GB (1395367096 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3fef3bd83b7c0eb06ccae001ea0bfed47b7258d9a1c5d593913034b18f7fd8c0`  
		Last Modified: Thu, 10 May 2018 10:17:55 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37d9a0aeff592233fdb9d01b85e98f7e55f0a78436b29766f159b762d5a9786`  
		Last Modified: Thu, 07 Jun 2018 09:32:41 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf993c1d96696292574271f1e0a98afd835ea080fe54fdf1bc4a574e70dd266`  
		Last Modified: Thu, 07 Jun 2018 09:32:40 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648aa5fece6bd256eefa00ff994994fecd47079e736d980d54ccf52be64d6de7`  
		Last Modified: Thu, 07 Jun 2018 09:33:01 GMT  
		Size: 76.2 MB (76182595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f544fd1b74dbdc68541fdc934d07b65c0907c19a37691102fab65affaa318a4b`  
		Last Modified: Thu, 07 Jun 2018 09:32:40 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0` - windows version 10.0.16299.431; amd64

```console
$ docker pull julia@sha256:23a3a084cd4aa95c3a3d4ccc1498a967aca564ab2c41188229b494146e2bbce7
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3156099225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4a92b03bea0016940498e18ff13bd412227d1e149c0f3e13717e47af439c8d4`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 05 May 2018 14:37:10 GMT
RUN Install update 10.0.16299.431
# Thu, 10 May 2018 09:50:49 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 07 Jun 2018 09:30:05 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 09:30:06 GMT
ENV JULIA_SHA256=e6eef263bbe6d95d2def300407edb6a624e77166d73f423cd7fc895f8464cffd
# Thu, 07 Jun 2018 09:32:13 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION -replace '[.-][^.-]+$', ''));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 07 Jun 2018 09:32:14 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:af675e5054a0dfb3eb70b140f566a5dbe612b5212e4a4ef2a2991308740d1006`  
		Last Modified: Tue, 08 May 2018 18:45:22 GMT  
		Size: 805.9 MB (805944217 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0d3f2c48ca5c41c53fe84071bb55725c2d6c36c8840dcef5297cc048ffe39aa`  
		Last Modified: Thu, 10 May 2018 10:18:48 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77d33463f42f0bcb1655df4bfe906c00ac3280480df69466e7cc3c3babac2e1`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbab489bf4a5850d763fa5c68f32b1e0ef3405eeafcb8dd829463f6904233198`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16258a58f087df023f736eb999e818ddeae9c5662f03cc65c92dd5099ce4d30`  
		Last Modified: Thu, 07 Jun 2018 09:33:42 GMT  
		Size: 75.8 MB (75849671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73780b7474046900f9482c7300b2fc09ddb19883d17dd157d2541b5268c8038f`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.6`

```console
$ docker pull julia@sha256:19d0ffc9eb859706091a2374c99bfa68b8e74f08008a4286ef4118e1b477006e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	windows version 10.0.14393.2248; amd64
	-	windows version 10.0.16299.431; amd64

### `julia:0.6` - linux; amd64

```console
$ docker pull julia@sha256:ab3e7fb945713f1eda0431843f3ac8c4f90829255cb5c70edfd82fb38d864514
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.8 MB (124816028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e773bf0c961804d9d7de53fd68bc16dc8e80e6989e0a7ef2fa0a5174dc3c6618`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:10:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:10:53 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 17 Jul 2018 03:10:53 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 03:10:53 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 17 Jul 2018 03:10:53 GMT
ENV JULIA_VERSION=0.6.3
# Tue, 17 Jul 2018 03:11:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 17 Jul 2018 03:11:15 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0293350860a4c4d4be5f5e524ab4b733fcab37b5f9d2256bcd6224d6e2f9d842`  
		Last Modified: Tue, 17 Jul 2018 03:13:04 GMT  
		Size: 9.5 MB (9453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a9f4a06a95c38b239943fcb5fe5a4f9dae48fbfd9b7f3a7a470bffda03e1bc`  
		Last Modified: Tue, 17 Jul 2018 03:13:27 GMT  
		Size: 70.1 MB (70052036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6` - linux; arm variant v7

```console
$ docker pull julia@sha256:972dfd17f09e5094f9b6b00f778c2443f83e5a0a3e3a2fa06db63e6ac7aea2e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.2 MB (112170710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3510d6c59cacd7c741e1c6f8cbc06e9f8b545ea309798bdd2479472b6c81a85`
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
# Tue, 17 Jul 2018 14:34:23 GMT
ENV JULIA_VERSION=0.6.3
# Tue, 17 Jul 2018 14:35:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 17 Jul 2018 14:35:06 GMT
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
	-	`sha256:8a1a624beebb6b2e83b16cf394724c8233f01e4336eb47c4ad341af5175481be`  
		Last Modified: Tue, 17 Jul 2018 14:37:09 GMT  
		Size: 61.9 MB (61931414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:e66471220e26b69df1f3cbb0f012762ecda45d04cdf1ec8ce611bd4dd00a040f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.7 MB (111705440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a2b8f7c21da8c9fe45290ef25084f24e4482c7eff3bbb3fb732a71e0c677336`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:01 GMT
ADD file:0f69db95e9a06ee21c38014c8bc6c142be97ec4d5127ba83f1d0ef48806f7415 in / 
# Wed, 27 Jun 2018 08:47:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:43:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:43:08 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 27 Jun 2018 11:43:09 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 11:43:10 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 27 Jun 2018 11:43:11 GMT
ENV JULIA_VERSION=0.6.3
# Wed, 27 Jun 2018 11:44:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 27 Jun 2018 11:44:01 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:6054c6775a4e4515d2365ad9337e322dd5c6ad0e0bc8e5bb6b0252461e71afc4`  
		Last Modified: Wed, 27 Jun 2018 08:57:38 GMT  
		Size: 43.1 MB (43115791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56e9ee7d81fc382bdbd88d7a4988894f94c604a487bdf3a1caa46523f95eabb`  
		Last Modified: Wed, 27 Jun 2018 11:44:44 GMT  
		Size: 8.4 MB (8447750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9aec8c9dfd3ab74db8752beda539d27ec4165d6788630ca9db3d8e00840931b`  
		Last Modified: Wed, 27 Jun 2018 11:45:07 GMT  
		Size: 60.1 MB (60141899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6` - linux; 386

```console
$ docker pull julia@sha256:6f7a9e51f6f5cf93a942b6187764c5210a366311eb134a87764e37719f5f7552
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.9 MB (122917963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea8f419cde3d56d787ce72b6891cc0a6f2139512a985a94ff63b6fe68bd2959a`
-	Default Command: `["julia"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Thu, 07 Jun 2018 10:41:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Jun 2018 10:41:23 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 07 Jun 2018 10:41:23 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Jun 2018 10:41:23 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 07 Jun 2018 10:41:24 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 10:41:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 07 Jun 2018 10:41:59 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5492f7e41d454d495d06adbb70e6fb67b0864bdcff8d8d64b4289a9ebee37854`  
		Last Modified: Thu, 07 Jun 2018 10:44:24 GMT  
		Size: 9.5 MB (9489356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b7f3f4ffd636fe026e46d0bccb956d086f4f6096a6af92d86a8902b17bbbbc`  
		Last Modified: Thu, 07 Jun 2018 10:44:58 GMT  
		Size: 67.4 MB (67383722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6` - windows version 10.0.14393.2248; amd64

```console
$ docker pull julia@sha256:63f867d9cc4cd7a74fa8f4dc6223cc9dd401c3f139c58f08eea21ce8afd97c14
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5541540308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2773f0aaa16fb3c02f6c1c20ef0a1f1a2ff9e7152eed5aba8f376193cee29ae9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 May 2018 18:12:28 GMT
RUN Install update 10.0.14393.2248
# Thu, 10 May 2018 09:39:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 07 Jun 2018 09:27:09 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 09:27:10 GMT
ENV JULIA_SHA256=e6eef263bbe6d95d2def300407edb6a624e77166d73f423cd7fc895f8464cffd
# Thu, 07 Jun 2018 09:29:48 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION -replace '[.-][^.-]+$', ''));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 07 Jun 2018 09:29:50 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ace98111594c5bc232640988045037489d2adc214b3a14e07a8a9e9d30442cef`  
		Last Modified: Mon, 07 May 2018 18:12:28 GMT  
		Size: 1.4 GB (1395367096 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3fef3bd83b7c0eb06ccae001ea0bfed47b7258d9a1c5d593913034b18f7fd8c0`  
		Last Modified: Thu, 10 May 2018 10:17:55 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37d9a0aeff592233fdb9d01b85e98f7e55f0a78436b29766f159b762d5a9786`  
		Last Modified: Thu, 07 Jun 2018 09:32:41 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf993c1d96696292574271f1e0a98afd835ea080fe54fdf1bc4a574e70dd266`  
		Last Modified: Thu, 07 Jun 2018 09:32:40 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648aa5fece6bd256eefa00ff994994fecd47079e736d980d54ccf52be64d6de7`  
		Last Modified: Thu, 07 Jun 2018 09:33:01 GMT  
		Size: 76.2 MB (76182595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f544fd1b74dbdc68541fdc934d07b65c0907c19a37691102fab65affaa318a4b`  
		Last Modified: Thu, 07 Jun 2018 09:32:40 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6` - windows version 10.0.16299.431; amd64

```console
$ docker pull julia@sha256:23a3a084cd4aa95c3a3d4ccc1498a967aca564ab2c41188229b494146e2bbce7
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3156099225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4a92b03bea0016940498e18ff13bd412227d1e149c0f3e13717e47af439c8d4`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 05 May 2018 14:37:10 GMT
RUN Install update 10.0.16299.431
# Thu, 10 May 2018 09:50:49 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 07 Jun 2018 09:30:05 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 09:30:06 GMT
ENV JULIA_SHA256=e6eef263bbe6d95d2def300407edb6a624e77166d73f423cd7fc895f8464cffd
# Thu, 07 Jun 2018 09:32:13 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION -replace '[.-][^.-]+$', ''));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 07 Jun 2018 09:32:14 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:af675e5054a0dfb3eb70b140f566a5dbe612b5212e4a4ef2a2991308740d1006`  
		Last Modified: Tue, 08 May 2018 18:45:22 GMT  
		Size: 805.9 MB (805944217 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0d3f2c48ca5c41c53fe84071bb55725c2d6c36c8840dcef5297cc048ffe39aa`  
		Last Modified: Thu, 10 May 2018 10:18:48 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77d33463f42f0bcb1655df4bfe906c00ac3280480df69466e7cc3c3babac2e1`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbab489bf4a5850d763fa5c68f32b1e0ef3405eeafcb8dd829463f6904233198`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16258a58f087df023f736eb999e818ddeae9c5662f03cc65c92dd5099ce4d30`  
		Last Modified: Thu, 07 Jun 2018 09:33:42 GMT  
		Size: 75.8 MB (75849671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73780b7474046900f9482c7300b2fc09ddb19883d17dd157d2541b5268c8038f`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.6.3`

```console
$ docker pull julia@sha256:19d0ffc9eb859706091a2374c99bfa68b8e74f08008a4286ef4118e1b477006e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	windows version 10.0.14393.2248; amd64
	-	windows version 10.0.16299.431; amd64

### `julia:0.6.3` - linux; amd64

```console
$ docker pull julia@sha256:ab3e7fb945713f1eda0431843f3ac8c4f90829255cb5c70edfd82fb38d864514
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.8 MB (124816028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e773bf0c961804d9d7de53fd68bc16dc8e80e6989e0a7ef2fa0a5174dc3c6618`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:10:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:10:53 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 17 Jul 2018 03:10:53 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 03:10:53 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 17 Jul 2018 03:10:53 GMT
ENV JULIA_VERSION=0.6.3
# Tue, 17 Jul 2018 03:11:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 17 Jul 2018 03:11:15 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0293350860a4c4d4be5f5e524ab4b733fcab37b5f9d2256bcd6224d6e2f9d842`  
		Last Modified: Tue, 17 Jul 2018 03:13:04 GMT  
		Size: 9.5 MB (9453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a9f4a06a95c38b239943fcb5fe5a4f9dae48fbfd9b7f3a7a470bffda03e1bc`  
		Last Modified: Tue, 17 Jul 2018 03:13:27 GMT  
		Size: 70.1 MB (70052036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6.3` - linux; arm variant v7

```console
$ docker pull julia@sha256:972dfd17f09e5094f9b6b00f778c2443f83e5a0a3e3a2fa06db63e6ac7aea2e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.2 MB (112170710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3510d6c59cacd7c741e1c6f8cbc06e9f8b545ea309798bdd2479472b6c81a85`
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
# Tue, 17 Jul 2018 14:34:23 GMT
ENV JULIA_VERSION=0.6.3
# Tue, 17 Jul 2018 14:35:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 17 Jul 2018 14:35:06 GMT
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
	-	`sha256:8a1a624beebb6b2e83b16cf394724c8233f01e4336eb47c4ad341af5175481be`  
		Last Modified: Tue, 17 Jul 2018 14:37:09 GMT  
		Size: 61.9 MB (61931414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6.3` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:e66471220e26b69df1f3cbb0f012762ecda45d04cdf1ec8ce611bd4dd00a040f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.7 MB (111705440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a2b8f7c21da8c9fe45290ef25084f24e4482c7eff3bbb3fb732a71e0c677336`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:01 GMT
ADD file:0f69db95e9a06ee21c38014c8bc6c142be97ec4d5127ba83f1d0ef48806f7415 in / 
# Wed, 27 Jun 2018 08:47:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:43:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:43:08 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 27 Jun 2018 11:43:09 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 11:43:10 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 27 Jun 2018 11:43:11 GMT
ENV JULIA_VERSION=0.6.3
# Wed, 27 Jun 2018 11:44:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 27 Jun 2018 11:44:01 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:6054c6775a4e4515d2365ad9337e322dd5c6ad0e0bc8e5bb6b0252461e71afc4`  
		Last Modified: Wed, 27 Jun 2018 08:57:38 GMT  
		Size: 43.1 MB (43115791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56e9ee7d81fc382bdbd88d7a4988894f94c604a487bdf3a1caa46523f95eabb`  
		Last Modified: Wed, 27 Jun 2018 11:44:44 GMT  
		Size: 8.4 MB (8447750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9aec8c9dfd3ab74db8752beda539d27ec4165d6788630ca9db3d8e00840931b`  
		Last Modified: Wed, 27 Jun 2018 11:45:07 GMT  
		Size: 60.1 MB (60141899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6.3` - linux; 386

```console
$ docker pull julia@sha256:6f7a9e51f6f5cf93a942b6187764c5210a366311eb134a87764e37719f5f7552
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.9 MB (122917963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea8f419cde3d56d787ce72b6891cc0a6f2139512a985a94ff63b6fe68bd2959a`
-	Default Command: `["julia"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Thu, 07 Jun 2018 10:41:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Jun 2018 10:41:23 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 07 Jun 2018 10:41:23 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Jun 2018 10:41:23 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 07 Jun 2018 10:41:24 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 10:41:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 07 Jun 2018 10:41:59 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5492f7e41d454d495d06adbb70e6fb67b0864bdcff8d8d64b4289a9ebee37854`  
		Last Modified: Thu, 07 Jun 2018 10:44:24 GMT  
		Size: 9.5 MB (9489356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b7f3f4ffd636fe026e46d0bccb956d086f4f6096a6af92d86a8902b17bbbbc`  
		Last Modified: Thu, 07 Jun 2018 10:44:58 GMT  
		Size: 67.4 MB (67383722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6.3` - windows version 10.0.14393.2248; amd64

```console
$ docker pull julia@sha256:63f867d9cc4cd7a74fa8f4dc6223cc9dd401c3f139c58f08eea21ce8afd97c14
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5541540308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2773f0aaa16fb3c02f6c1c20ef0a1f1a2ff9e7152eed5aba8f376193cee29ae9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 May 2018 18:12:28 GMT
RUN Install update 10.0.14393.2248
# Thu, 10 May 2018 09:39:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 07 Jun 2018 09:27:09 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 09:27:10 GMT
ENV JULIA_SHA256=e6eef263bbe6d95d2def300407edb6a624e77166d73f423cd7fc895f8464cffd
# Thu, 07 Jun 2018 09:29:48 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION -replace '[.-][^.-]+$', ''));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 07 Jun 2018 09:29:50 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ace98111594c5bc232640988045037489d2adc214b3a14e07a8a9e9d30442cef`  
		Last Modified: Mon, 07 May 2018 18:12:28 GMT  
		Size: 1.4 GB (1395367096 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3fef3bd83b7c0eb06ccae001ea0bfed47b7258d9a1c5d593913034b18f7fd8c0`  
		Last Modified: Thu, 10 May 2018 10:17:55 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37d9a0aeff592233fdb9d01b85e98f7e55f0a78436b29766f159b762d5a9786`  
		Last Modified: Thu, 07 Jun 2018 09:32:41 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf993c1d96696292574271f1e0a98afd835ea080fe54fdf1bc4a574e70dd266`  
		Last Modified: Thu, 07 Jun 2018 09:32:40 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648aa5fece6bd256eefa00ff994994fecd47079e736d980d54ccf52be64d6de7`  
		Last Modified: Thu, 07 Jun 2018 09:33:01 GMT  
		Size: 76.2 MB (76182595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f544fd1b74dbdc68541fdc934d07b65c0907c19a37691102fab65affaa318a4b`  
		Last Modified: Thu, 07 Jun 2018 09:32:40 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6.3` - windows version 10.0.16299.431; amd64

```console
$ docker pull julia@sha256:23a3a084cd4aa95c3a3d4ccc1498a967aca564ab2c41188229b494146e2bbce7
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3156099225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4a92b03bea0016940498e18ff13bd412227d1e149c0f3e13717e47af439c8d4`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 05 May 2018 14:37:10 GMT
RUN Install update 10.0.16299.431
# Thu, 10 May 2018 09:50:49 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 07 Jun 2018 09:30:05 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 09:30:06 GMT
ENV JULIA_SHA256=e6eef263bbe6d95d2def300407edb6a624e77166d73f423cd7fc895f8464cffd
# Thu, 07 Jun 2018 09:32:13 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION -replace '[.-][^.-]+$', ''));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 07 Jun 2018 09:32:14 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:af675e5054a0dfb3eb70b140f566a5dbe612b5212e4a4ef2a2991308740d1006`  
		Last Modified: Tue, 08 May 2018 18:45:22 GMT  
		Size: 805.9 MB (805944217 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0d3f2c48ca5c41c53fe84071bb55725c2d6c36c8840dcef5297cc048ffe39aa`  
		Last Modified: Thu, 10 May 2018 10:18:48 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77d33463f42f0bcb1655df4bfe906c00ac3280480df69466e7cc3c3babac2e1`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbab489bf4a5850d763fa5c68f32b1e0ef3405eeafcb8dd829463f6904233198`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16258a58f087df023f736eb999e818ddeae9c5662f03cc65c92dd5099ce4d30`  
		Last Modified: Thu, 07 Jun 2018 09:33:42 GMT  
		Size: 75.8 MB (75849671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73780b7474046900f9482c7300b2fc09ddb19883d17dd157d2541b5268c8038f`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.6.3-jessie`

```console
$ docker pull julia@sha256:d8b9a51aaaefd6d5233f8c0312b48aee6e477ca7545467d1325de31d8076e0a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `julia:0.6.3-jessie` - linux; amd64

```console
$ docker pull julia@sha256:72c49b1f9a33cc888ea23e895e2a07b2b10c42ecf3d233bb68ac5f8e648ac806
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.0 MB (129027557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62e210eec0e61e9cc522abbdde391950e2cb5ce0c075cb3c4521cd92697c1b20`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:12:10 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 17 Jul 2018 03:12:10 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 03:12:11 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 17 Jul 2018 03:12:11 GMT
ENV JULIA_VERSION=0.6.3
# Tue, 17 Jul 2018 03:12:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 17 Jul 2018 03:12:33 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e8f0cab8e60e66de34225b277a8eaa74a9810acff17b95101832c5be91c121`  
		Last Modified: Tue, 17 Jul 2018 03:14:43 GMT  
		Size: 5.0 MB (5020177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0b12dff35e0096d515ea6b5998ff6b2218cecb5e721c013eaa2caebcd711bf2`  
		Last Modified: Tue, 17 Jul 2018 03:15:21 GMT  
		Size: 69.8 MB (69755255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6.3-jessie` - linux; arm variant v7

```console
$ docker pull julia@sha256:7d1d9f1e94efac461b6b065ab3b275adc94dfe740e4a0ee412d7e579d455a957
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.4 MB (116366260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da596b76426772e1151d7fc6149ea7f61b46c75c543e65e5fd128d91812b4994`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 11:59:28 GMT
ADD file:b6521e3d1f270115e5b6c8df3fb62b87aae252b99045c6884f1c071d88fecf10 in / 
# Tue, 17 Jul 2018 11:59:35 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:35:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:35:57 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 17 Jul 2018 14:35:58 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 14:35:58 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 17 Jul 2018 14:35:58 GMT
ENV JULIA_VERSION=0.6.3
# Tue, 17 Jul 2018 14:36:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 17 Jul 2018 14:36:24 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:fbd7fa58000c551825cee932912ff0e71b08d10d3a21e72fa231f872c5ec3109`  
		Last Modified: Tue, 17 Jul 2018 12:10:53 GMT  
		Size: 50.2 MB (50187773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81f7d65bba33bddbc7730abc235f2b7a674c350c8915364d52ab44217dacb47`  
		Last Modified: Tue, 17 Jul 2018 14:37:45 GMT  
		Size: 4.5 MB (4540744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715bb0735973ab62cee24d37b63e51802298a7b56e064e7c0cd6339af0769007`  
		Last Modified: Tue, 17 Jul 2018 14:38:07 GMT  
		Size: 61.6 MB (61637743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6.3-jessie` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:e5b399d5e21409102caf5e26a92105b1adb8b3d5c8319c8af40d96a5de72cf73
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116020319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67fa50a2dcb761bdfdf18ffb1eca6ad20b0eb9b6c03695caf68e1c1d8a1537ce`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Tue, 15 May 2018 08:42:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 08:42:35 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 15 May 2018 08:42:36 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 08:42:37 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 07 Jun 2018 08:44:16 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 08:44:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 07 Jun 2018 08:44:41 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f471c7fc2bc7d13b2a134e7277b8058fbbc6981feefaee2db17f95105ff413`  
		Last Modified: Tue, 15 May 2018 08:44:26 GMT  
		Size: 4.7 MB (4728243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8108f5e7c9acd858b289b09f117421546ecb1ef80b56dec3164bb44c649db15f`  
		Last Modified: Thu, 07 Jun 2018 08:46:45 GMT  
		Size: 59.8 MB (59845222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6.3-jessie` - linux; 386

```console
$ docker pull julia@sha256:c4b1636c07597456d4548da88862ec5063b6157f78e0d899937b0a98c9ebe347
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.8 MB (128806784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f438e34901fa4049ef6173c4ec8e871d60583b04bc0172a5850f1dc1c11f0120`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:09 GMT
ADD file:08ad3a6967c6fe1bfa51f138b64b989a03a61773e4558ec538f63256b472dd77 in / 
# Wed, 27 Jun 2018 10:40:13 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:38:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:38:10 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 27 Jun 2018 12:38:10 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 12:38:10 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 27 Jun 2018 12:38:10 GMT
ENV JULIA_VERSION=0.6.3
# Wed, 27 Jun 2018 12:38:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 27 Jun 2018 12:38:49 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:9e841ca399d43620c0457822730c2d49124abceba44d04d1ec0a0fa4f453b6d1`  
		Last Modified: Wed, 27 Jun 2018 10:53:00 GMT  
		Size: 54.5 MB (54483863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c32a81ec80a665d2951ef246c993dcfc09a8eab7afb5c847db252cdcde3e53b`  
		Last Modified: Wed, 27 Jun 2018 12:39:17 GMT  
		Size: 7.2 MB (7235596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c000b6087b8092e5981e8739c197459f11b114477ba1375c57de8044b5f48c1c`  
		Last Modified: Wed, 27 Jun 2018 12:39:49 GMT  
		Size: 67.1 MB (67087325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.6.3-stretch`

```console
$ docker pull julia@sha256:49ed5b1384edfd5fc17a438c56258876cd3e71df0f4d02f93d6daae295a899a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `julia:0.6.3-stretch` - linux; amd64

```console
$ docker pull julia@sha256:ab3e7fb945713f1eda0431843f3ac8c4f90829255cb5c70edfd82fb38d864514
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.8 MB (124816028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e773bf0c961804d9d7de53fd68bc16dc8e80e6989e0a7ef2fa0a5174dc3c6618`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:10:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:10:53 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 17 Jul 2018 03:10:53 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 03:10:53 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 17 Jul 2018 03:10:53 GMT
ENV JULIA_VERSION=0.6.3
# Tue, 17 Jul 2018 03:11:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 17 Jul 2018 03:11:15 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0293350860a4c4d4be5f5e524ab4b733fcab37b5f9d2256bcd6224d6e2f9d842`  
		Last Modified: Tue, 17 Jul 2018 03:13:04 GMT  
		Size: 9.5 MB (9453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a9f4a06a95c38b239943fcb5fe5a4f9dae48fbfd9b7f3a7a470bffda03e1bc`  
		Last Modified: Tue, 17 Jul 2018 03:13:27 GMT  
		Size: 70.1 MB (70052036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6.3-stretch` - linux; arm variant v7

```console
$ docker pull julia@sha256:972dfd17f09e5094f9b6b00f778c2443f83e5a0a3e3a2fa06db63e6ac7aea2e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.2 MB (112170710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3510d6c59cacd7c741e1c6f8cbc06e9f8b545ea309798bdd2479472b6c81a85`
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
# Tue, 17 Jul 2018 14:34:23 GMT
ENV JULIA_VERSION=0.6.3
# Tue, 17 Jul 2018 14:35:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 17 Jul 2018 14:35:06 GMT
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
	-	`sha256:8a1a624beebb6b2e83b16cf394724c8233f01e4336eb47c4ad341af5175481be`  
		Last Modified: Tue, 17 Jul 2018 14:37:09 GMT  
		Size: 61.9 MB (61931414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6.3-stretch` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:e66471220e26b69df1f3cbb0f012762ecda45d04cdf1ec8ce611bd4dd00a040f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.7 MB (111705440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a2b8f7c21da8c9fe45290ef25084f24e4482c7eff3bbb3fb732a71e0c677336`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:01 GMT
ADD file:0f69db95e9a06ee21c38014c8bc6c142be97ec4d5127ba83f1d0ef48806f7415 in / 
# Wed, 27 Jun 2018 08:47:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:43:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:43:08 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 27 Jun 2018 11:43:09 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 11:43:10 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 27 Jun 2018 11:43:11 GMT
ENV JULIA_VERSION=0.6.3
# Wed, 27 Jun 2018 11:44:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 27 Jun 2018 11:44:01 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:6054c6775a4e4515d2365ad9337e322dd5c6ad0e0bc8e5bb6b0252461e71afc4`  
		Last Modified: Wed, 27 Jun 2018 08:57:38 GMT  
		Size: 43.1 MB (43115791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56e9ee7d81fc382bdbd88d7a4988894f94c604a487bdf3a1caa46523f95eabb`  
		Last Modified: Wed, 27 Jun 2018 11:44:44 GMT  
		Size: 8.4 MB (8447750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9aec8c9dfd3ab74db8752beda539d27ec4165d6788630ca9db3d8e00840931b`  
		Last Modified: Wed, 27 Jun 2018 11:45:07 GMT  
		Size: 60.1 MB (60141899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6.3-stretch` - linux; 386

```console
$ docker pull julia@sha256:6f7a9e51f6f5cf93a942b6187764c5210a366311eb134a87764e37719f5f7552
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.9 MB (122917963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea8f419cde3d56d787ce72b6891cc0a6f2139512a985a94ff63b6fe68bd2959a`
-	Default Command: `["julia"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Thu, 07 Jun 2018 10:41:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Jun 2018 10:41:23 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 07 Jun 2018 10:41:23 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Jun 2018 10:41:23 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 07 Jun 2018 10:41:24 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 10:41:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 07 Jun 2018 10:41:59 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5492f7e41d454d495d06adbb70e6fb67b0864bdcff8d8d64b4289a9ebee37854`  
		Last Modified: Thu, 07 Jun 2018 10:44:24 GMT  
		Size: 9.5 MB (9489356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b7f3f4ffd636fe026e46d0bccb956d086f4f6096a6af92d86a8902b17bbbbc`  
		Last Modified: Thu, 07 Jun 2018 10:44:58 GMT  
		Size: 67.4 MB (67383722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.6.3-windowsservercore-1709`

```console
$ docker pull julia@sha256:eb605a7c5c37548ba9cd70df8345fa8b267544969893829ae9b35d6d11cb346a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.431; amd64

### `julia:0.6.3-windowsservercore-1709` - windows version 10.0.16299.431; amd64

```console
$ docker pull julia@sha256:23a3a084cd4aa95c3a3d4ccc1498a967aca564ab2c41188229b494146e2bbce7
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3156099225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4a92b03bea0016940498e18ff13bd412227d1e149c0f3e13717e47af439c8d4`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 05 May 2018 14:37:10 GMT
RUN Install update 10.0.16299.431
# Thu, 10 May 2018 09:50:49 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 07 Jun 2018 09:30:05 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 09:30:06 GMT
ENV JULIA_SHA256=e6eef263bbe6d95d2def300407edb6a624e77166d73f423cd7fc895f8464cffd
# Thu, 07 Jun 2018 09:32:13 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION -replace '[.-][^.-]+$', ''));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 07 Jun 2018 09:32:14 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:af675e5054a0dfb3eb70b140f566a5dbe612b5212e4a4ef2a2991308740d1006`  
		Last Modified: Tue, 08 May 2018 18:45:22 GMT  
		Size: 805.9 MB (805944217 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0d3f2c48ca5c41c53fe84071bb55725c2d6c36c8840dcef5297cc048ffe39aa`  
		Last Modified: Thu, 10 May 2018 10:18:48 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77d33463f42f0bcb1655df4bfe906c00ac3280480df69466e7cc3c3babac2e1`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbab489bf4a5850d763fa5c68f32b1e0ef3405eeafcb8dd829463f6904233198`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16258a58f087df023f736eb999e818ddeae9c5662f03cc65c92dd5099ce4d30`  
		Last Modified: Thu, 07 Jun 2018 09:33:42 GMT  
		Size: 75.8 MB (75849671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73780b7474046900f9482c7300b2fc09ddb19883d17dd157d2541b5268c8038f`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.6.3-windowsservercore-ltsc2016`

```console
$ docker pull julia@sha256:a62ebe16910aa0412495371faaafab96abefbc5f028f253030c91d0fa5bf018a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2248; amd64

### `julia:0.6.3-windowsservercore-ltsc2016` - windows version 10.0.14393.2248; amd64

```console
$ docker pull julia@sha256:63f867d9cc4cd7a74fa8f4dc6223cc9dd401c3f139c58f08eea21ce8afd97c14
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5541540308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2773f0aaa16fb3c02f6c1c20ef0a1f1a2ff9e7152eed5aba8f376193cee29ae9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 May 2018 18:12:28 GMT
RUN Install update 10.0.14393.2248
# Thu, 10 May 2018 09:39:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 07 Jun 2018 09:27:09 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 09:27:10 GMT
ENV JULIA_SHA256=e6eef263bbe6d95d2def300407edb6a624e77166d73f423cd7fc895f8464cffd
# Thu, 07 Jun 2018 09:29:48 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION -replace '[.-][^.-]+$', ''));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 07 Jun 2018 09:29:50 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ace98111594c5bc232640988045037489d2adc214b3a14e07a8a9e9d30442cef`  
		Last Modified: Mon, 07 May 2018 18:12:28 GMT  
		Size: 1.4 GB (1395367096 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3fef3bd83b7c0eb06ccae001ea0bfed47b7258d9a1c5d593913034b18f7fd8c0`  
		Last Modified: Thu, 10 May 2018 10:17:55 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37d9a0aeff592233fdb9d01b85e98f7e55f0a78436b29766f159b762d5a9786`  
		Last Modified: Thu, 07 Jun 2018 09:32:41 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf993c1d96696292574271f1e0a98afd835ea080fe54fdf1bc4a574e70dd266`  
		Last Modified: Thu, 07 Jun 2018 09:32:40 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648aa5fece6bd256eefa00ff994994fecd47079e736d980d54ccf52be64d6de7`  
		Last Modified: Thu, 07 Jun 2018 09:33:01 GMT  
		Size: 76.2 MB (76182595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f544fd1b74dbdc68541fdc934d07b65c0907c19a37691102fab65affaa318a4b`  
		Last Modified: Thu, 07 Jun 2018 09:32:40 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.6-jessie`

```console
$ docker pull julia@sha256:d8b9a51aaaefd6d5233f8c0312b48aee6e477ca7545467d1325de31d8076e0a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `julia:0.6-jessie` - linux; amd64

```console
$ docker pull julia@sha256:72c49b1f9a33cc888ea23e895e2a07b2b10c42ecf3d233bb68ac5f8e648ac806
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.0 MB (129027557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62e210eec0e61e9cc522abbdde391950e2cb5ce0c075cb3c4521cd92697c1b20`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:12:10 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 17 Jul 2018 03:12:10 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 03:12:11 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 17 Jul 2018 03:12:11 GMT
ENV JULIA_VERSION=0.6.3
# Tue, 17 Jul 2018 03:12:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 17 Jul 2018 03:12:33 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e8f0cab8e60e66de34225b277a8eaa74a9810acff17b95101832c5be91c121`  
		Last Modified: Tue, 17 Jul 2018 03:14:43 GMT  
		Size: 5.0 MB (5020177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0b12dff35e0096d515ea6b5998ff6b2218cecb5e721c013eaa2caebcd711bf2`  
		Last Modified: Tue, 17 Jul 2018 03:15:21 GMT  
		Size: 69.8 MB (69755255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6-jessie` - linux; arm variant v7

```console
$ docker pull julia@sha256:7d1d9f1e94efac461b6b065ab3b275adc94dfe740e4a0ee412d7e579d455a957
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.4 MB (116366260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da596b76426772e1151d7fc6149ea7f61b46c75c543e65e5fd128d91812b4994`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 11:59:28 GMT
ADD file:b6521e3d1f270115e5b6c8df3fb62b87aae252b99045c6884f1c071d88fecf10 in / 
# Tue, 17 Jul 2018 11:59:35 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:35:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:35:57 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 17 Jul 2018 14:35:58 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 14:35:58 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 17 Jul 2018 14:35:58 GMT
ENV JULIA_VERSION=0.6.3
# Tue, 17 Jul 2018 14:36:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 17 Jul 2018 14:36:24 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:fbd7fa58000c551825cee932912ff0e71b08d10d3a21e72fa231f872c5ec3109`  
		Last Modified: Tue, 17 Jul 2018 12:10:53 GMT  
		Size: 50.2 MB (50187773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81f7d65bba33bddbc7730abc235f2b7a674c350c8915364d52ab44217dacb47`  
		Last Modified: Tue, 17 Jul 2018 14:37:45 GMT  
		Size: 4.5 MB (4540744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715bb0735973ab62cee24d37b63e51802298a7b56e064e7c0cd6339af0769007`  
		Last Modified: Tue, 17 Jul 2018 14:38:07 GMT  
		Size: 61.6 MB (61637743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6-jessie` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:e5b399d5e21409102caf5e26a92105b1adb8b3d5c8319c8af40d96a5de72cf73
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116020319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67fa50a2dcb761bdfdf18ffb1eca6ad20b0eb9b6c03695caf68e1c1d8a1537ce`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Tue, 15 May 2018 08:42:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 08:42:35 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 15 May 2018 08:42:36 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 08:42:37 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 07 Jun 2018 08:44:16 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 08:44:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 07 Jun 2018 08:44:41 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f471c7fc2bc7d13b2a134e7277b8058fbbc6981feefaee2db17f95105ff413`  
		Last Modified: Tue, 15 May 2018 08:44:26 GMT  
		Size: 4.7 MB (4728243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8108f5e7c9acd858b289b09f117421546ecb1ef80b56dec3164bb44c649db15f`  
		Last Modified: Thu, 07 Jun 2018 08:46:45 GMT  
		Size: 59.8 MB (59845222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6-jessie` - linux; 386

```console
$ docker pull julia@sha256:c4b1636c07597456d4548da88862ec5063b6157f78e0d899937b0a98c9ebe347
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.8 MB (128806784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f438e34901fa4049ef6173c4ec8e871d60583b04bc0172a5850f1dc1c11f0120`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:09 GMT
ADD file:08ad3a6967c6fe1bfa51f138b64b989a03a61773e4558ec538f63256b472dd77 in / 
# Wed, 27 Jun 2018 10:40:13 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:38:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:38:10 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 27 Jun 2018 12:38:10 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 12:38:10 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 27 Jun 2018 12:38:10 GMT
ENV JULIA_VERSION=0.6.3
# Wed, 27 Jun 2018 12:38:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 27 Jun 2018 12:38:49 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:9e841ca399d43620c0457822730c2d49124abceba44d04d1ec0a0fa4f453b6d1`  
		Last Modified: Wed, 27 Jun 2018 10:53:00 GMT  
		Size: 54.5 MB (54483863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c32a81ec80a665d2951ef246c993dcfc09a8eab7afb5c847db252cdcde3e53b`  
		Last Modified: Wed, 27 Jun 2018 12:39:17 GMT  
		Size: 7.2 MB (7235596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c000b6087b8092e5981e8739c197459f11b114477ba1375c57de8044b5f48c1c`  
		Last Modified: Wed, 27 Jun 2018 12:39:49 GMT  
		Size: 67.1 MB (67087325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.6-stretch`

```console
$ docker pull julia@sha256:49ed5b1384edfd5fc17a438c56258876cd3e71df0f4d02f93d6daae295a899a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `julia:0.6-stretch` - linux; amd64

```console
$ docker pull julia@sha256:ab3e7fb945713f1eda0431843f3ac8c4f90829255cb5c70edfd82fb38d864514
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.8 MB (124816028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e773bf0c961804d9d7de53fd68bc16dc8e80e6989e0a7ef2fa0a5174dc3c6618`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:10:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:10:53 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 17 Jul 2018 03:10:53 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 03:10:53 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 17 Jul 2018 03:10:53 GMT
ENV JULIA_VERSION=0.6.3
# Tue, 17 Jul 2018 03:11:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 17 Jul 2018 03:11:15 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0293350860a4c4d4be5f5e524ab4b733fcab37b5f9d2256bcd6224d6e2f9d842`  
		Last Modified: Tue, 17 Jul 2018 03:13:04 GMT  
		Size: 9.5 MB (9453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a9f4a06a95c38b239943fcb5fe5a4f9dae48fbfd9b7f3a7a470bffda03e1bc`  
		Last Modified: Tue, 17 Jul 2018 03:13:27 GMT  
		Size: 70.1 MB (70052036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6-stretch` - linux; arm variant v7

```console
$ docker pull julia@sha256:972dfd17f09e5094f9b6b00f778c2443f83e5a0a3e3a2fa06db63e6ac7aea2e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.2 MB (112170710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3510d6c59cacd7c741e1c6f8cbc06e9f8b545ea309798bdd2479472b6c81a85`
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
# Tue, 17 Jul 2018 14:34:23 GMT
ENV JULIA_VERSION=0.6.3
# Tue, 17 Jul 2018 14:35:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 17 Jul 2018 14:35:06 GMT
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
	-	`sha256:8a1a624beebb6b2e83b16cf394724c8233f01e4336eb47c4ad341af5175481be`  
		Last Modified: Tue, 17 Jul 2018 14:37:09 GMT  
		Size: 61.9 MB (61931414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6-stretch` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:e66471220e26b69df1f3cbb0f012762ecda45d04cdf1ec8ce611bd4dd00a040f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.7 MB (111705440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a2b8f7c21da8c9fe45290ef25084f24e4482c7eff3bbb3fb732a71e0c677336`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:01 GMT
ADD file:0f69db95e9a06ee21c38014c8bc6c142be97ec4d5127ba83f1d0ef48806f7415 in / 
# Wed, 27 Jun 2018 08:47:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:43:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:43:08 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 27 Jun 2018 11:43:09 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 11:43:10 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 27 Jun 2018 11:43:11 GMT
ENV JULIA_VERSION=0.6.3
# Wed, 27 Jun 2018 11:44:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 27 Jun 2018 11:44:01 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:6054c6775a4e4515d2365ad9337e322dd5c6ad0e0bc8e5bb6b0252461e71afc4`  
		Last Modified: Wed, 27 Jun 2018 08:57:38 GMT  
		Size: 43.1 MB (43115791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56e9ee7d81fc382bdbd88d7a4988894f94c604a487bdf3a1caa46523f95eabb`  
		Last Modified: Wed, 27 Jun 2018 11:44:44 GMT  
		Size: 8.4 MB (8447750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9aec8c9dfd3ab74db8752beda539d27ec4165d6788630ca9db3d8e00840931b`  
		Last Modified: Wed, 27 Jun 2018 11:45:07 GMT  
		Size: 60.1 MB (60141899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6-stretch` - linux; 386

```console
$ docker pull julia@sha256:6f7a9e51f6f5cf93a942b6187764c5210a366311eb134a87764e37719f5f7552
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.9 MB (122917963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea8f419cde3d56d787ce72b6891cc0a6f2139512a985a94ff63b6fe68bd2959a`
-	Default Command: `["julia"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Thu, 07 Jun 2018 10:41:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Jun 2018 10:41:23 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 07 Jun 2018 10:41:23 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Jun 2018 10:41:23 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 07 Jun 2018 10:41:24 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 10:41:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 07 Jun 2018 10:41:59 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5492f7e41d454d495d06adbb70e6fb67b0864bdcff8d8d64b4289a9ebee37854`  
		Last Modified: Thu, 07 Jun 2018 10:44:24 GMT  
		Size: 9.5 MB (9489356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b7f3f4ffd636fe026e46d0bccb956d086f4f6096a6af92d86a8902b17bbbbc`  
		Last Modified: Thu, 07 Jun 2018 10:44:58 GMT  
		Size: 67.4 MB (67383722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.6-windowsservercore-1709`

```console
$ docker pull julia@sha256:eb605a7c5c37548ba9cd70df8345fa8b267544969893829ae9b35d6d11cb346a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.431; amd64

### `julia:0.6-windowsservercore-1709` - windows version 10.0.16299.431; amd64

```console
$ docker pull julia@sha256:23a3a084cd4aa95c3a3d4ccc1498a967aca564ab2c41188229b494146e2bbce7
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3156099225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4a92b03bea0016940498e18ff13bd412227d1e149c0f3e13717e47af439c8d4`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 05 May 2018 14:37:10 GMT
RUN Install update 10.0.16299.431
# Thu, 10 May 2018 09:50:49 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 07 Jun 2018 09:30:05 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 09:30:06 GMT
ENV JULIA_SHA256=e6eef263bbe6d95d2def300407edb6a624e77166d73f423cd7fc895f8464cffd
# Thu, 07 Jun 2018 09:32:13 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION -replace '[.-][^.-]+$', ''));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 07 Jun 2018 09:32:14 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:af675e5054a0dfb3eb70b140f566a5dbe612b5212e4a4ef2a2991308740d1006`  
		Last Modified: Tue, 08 May 2018 18:45:22 GMT  
		Size: 805.9 MB (805944217 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0d3f2c48ca5c41c53fe84071bb55725c2d6c36c8840dcef5297cc048ffe39aa`  
		Last Modified: Thu, 10 May 2018 10:18:48 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77d33463f42f0bcb1655df4bfe906c00ac3280480df69466e7cc3c3babac2e1`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbab489bf4a5850d763fa5c68f32b1e0ef3405eeafcb8dd829463f6904233198`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16258a58f087df023f736eb999e818ddeae9c5662f03cc65c92dd5099ce4d30`  
		Last Modified: Thu, 07 Jun 2018 09:33:42 GMT  
		Size: 75.8 MB (75849671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73780b7474046900f9482c7300b2fc09ddb19883d17dd157d2541b5268c8038f`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.6-windowsservercore-ltsc2016`

```console
$ docker pull julia@sha256:a62ebe16910aa0412495371faaafab96abefbc5f028f253030c91d0fa5bf018a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2248; amd64

### `julia:0.6-windowsservercore-ltsc2016` - windows version 10.0.14393.2248; amd64

```console
$ docker pull julia@sha256:63f867d9cc4cd7a74fa8f4dc6223cc9dd401c3f139c58f08eea21ce8afd97c14
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5541540308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2773f0aaa16fb3c02f6c1c20ef0a1f1a2ff9e7152eed5aba8f376193cee29ae9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 May 2018 18:12:28 GMT
RUN Install update 10.0.14393.2248
# Thu, 10 May 2018 09:39:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 07 Jun 2018 09:27:09 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 09:27:10 GMT
ENV JULIA_SHA256=e6eef263bbe6d95d2def300407edb6a624e77166d73f423cd7fc895f8464cffd
# Thu, 07 Jun 2018 09:29:48 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION -replace '[.-][^.-]+$', ''));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 07 Jun 2018 09:29:50 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ace98111594c5bc232640988045037489d2adc214b3a14e07a8a9e9d30442cef`  
		Last Modified: Mon, 07 May 2018 18:12:28 GMT  
		Size: 1.4 GB (1395367096 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3fef3bd83b7c0eb06ccae001ea0bfed47b7258d9a1c5d593913034b18f7fd8c0`  
		Last Modified: Thu, 10 May 2018 10:17:55 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37d9a0aeff592233fdb9d01b85e98f7e55f0a78436b29766f159b762d5a9786`  
		Last Modified: Thu, 07 Jun 2018 09:32:41 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf993c1d96696292574271f1e0a98afd835ea080fe54fdf1bc4a574e70dd266`  
		Last Modified: Thu, 07 Jun 2018 09:32:40 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648aa5fece6bd256eefa00ff994994fecd47079e736d980d54ccf52be64d6de7`  
		Last Modified: Thu, 07 Jun 2018 09:33:01 GMT  
		Size: 76.2 MB (76182595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f544fd1b74dbdc68541fdc934d07b65c0907c19a37691102fab65affaa318a4b`  
		Last Modified: Thu, 07 Jun 2018 09:32:40 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0-jessie`

```console
$ docker pull julia@sha256:d8b9a51aaaefd6d5233f8c0312b48aee6e477ca7545467d1325de31d8076e0a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `julia:0-jessie` - linux; amd64

```console
$ docker pull julia@sha256:72c49b1f9a33cc888ea23e895e2a07b2b10c42ecf3d233bb68ac5f8e648ac806
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.0 MB (129027557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62e210eec0e61e9cc522abbdde391950e2cb5ce0c075cb3c4521cd92697c1b20`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:12:10 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 17 Jul 2018 03:12:10 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 03:12:11 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 17 Jul 2018 03:12:11 GMT
ENV JULIA_VERSION=0.6.3
# Tue, 17 Jul 2018 03:12:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 17 Jul 2018 03:12:33 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e8f0cab8e60e66de34225b277a8eaa74a9810acff17b95101832c5be91c121`  
		Last Modified: Tue, 17 Jul 2018 03:14:43 GMT  
		Size: 5.0 MB (5020177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0b12dff35e0096d515ea6b5998ff6b2218cecb5e721c013eaa2caebcd711bf2`  
		Last Modified: Tue, 17 Jul 2018 03:15:21 GMT  
		Size: 69.8 MB (69755255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0-jessie` - linux; arm variant v7

```console
$ docker pull julia@sha256:7d1d9f1e94efac461b6b065ab3b275adc94dfe740e4a0ee412d7e579d455a957
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.4 MB (116366260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da596b76426772e1151d7fc6149ea7f61b46c75c543e65e5fd128d91812b4994`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 11:59:28 GMT
ADD file:b6521e3d1f270115e5b6c8df3fb62b87aae252b99045c6884f1c071d88fecf10 in / 
# Tue, 17 Jul 2018 11:59:35 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:35:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:35:57 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 17 Jul 2018 14:35:58 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 14:35:58 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 17 Jul 2018 14:35:58 GMT
ENV JULIA_VERSION=0.6.3
# Tue, 17 Jul 2018 14:36:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 17 Jul 2018 14:36:24 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:fbd7fa58000c551825cee932912ff0e71b08d10d3a21e72fa231f872c5ec3109`  
		Last Modified: Tue, 17 Jul 2018 12:10:53 GMT  
		Size: 50.2 MB (50187773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81f7d65bba33bddbc7730abc235f2b7a674c350c8915364d52ab44217dacb47`  
		Last Modified: Tue, 17 Jul 2018 14:37:45 GMT  
		Size: 4.5 MB (4540744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715bb0735973ab62cee24d37b63e51802298a7b56e064e7c0cd6339af0769007`  
		Last Modified: Tue, 17 Jul 2018 14:38:07 GMT  
		Size: 61.6 MB (61637743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0-jessie` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:e5b399d5e21409102caf5e26a92105b1adb8b3d5c8319c8af40d96a5de72cf73
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116020319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67fa50a2dcb761bdfdf18ffb1eca6ad20b0eb9b6c03695caf68e1c1d8a1537ce`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Tue, 15 May 2018 08:42:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 08:42:35 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 15 May 2018 08:42:36 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 08:42:37 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 07 Jun 2018 08:44:16 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 08:44:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 07 Jun 2018 08:44:41 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f471c7fc2bc7d13b2a134e7277b8058fbbc6981feefaee2db17f95105ff413`  
		Last Modified: Tue, 15 May 2018 08:44:26 GMT  
		Size: 4.7 MB (4728243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8108f5e7c9acd858b289b09f117421546ecb1ef80b56dec3164bb44c649db15f`  
		Last Modified: Thu, 07 Jun 2018 08:46:45 GMT  
		Size: 59.8 MB (59845222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0-jessie` - linux; 386

```console
$ docker pull julia@sha256:c4b1636c07597456d4548da88862ec5063b6157f78e0d899937b0a98c9ebe347
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.8 MB (128806784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f438e34901fa4049ef6173c4ec8e871d60583b04bc0172a5850f1dc1c11f0120`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:09 GMT
ADD file:08ad3a6967c6fe1bfa51f138b64b989a03a61773e4558ec538f63256b472dd77 in / 
# Wed, 27 Jun 2018 10:40:13 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:38:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:38:10 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 27 Jun 2018 12:38:10 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 12:38:10 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 27 Jun 2018 12:38:10 GMT
ENV JULIA_VERSION=0.6.3
# Wed, 27 Jun 2018 12:38:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 27 Jun 2018 12:38:49 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:9e841ca399d43620c0457822730c2d49124abceba44d04d1ec0a0fa4f453b6d1`  
		Last Modified: Wed, 27 Jun 2018 10:53:00 GMT  
		Size: 54.5 MB (54483863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c32a81ec80a665d2951ef246c993dcfc09a8eab7afb5c847db252cdcde3e53b`  
		Last Modified: Wed, 27 Jun 2018 12:39:17 GMT  
		Size: 7.2 MB (7235596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c000b6087b8092e5981e8739c197459f11b114477ba1375c57de8044b5f48c1c`  
		Last Modified: Wed, 27 Jun 2018 12:39:49 GMT  
		Size: 67.1 MB (67087325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0-stretch`

```console
$ docker pull julia@sha256:49ed5b1384edfd5fc17a438c56258876cd3e71df0f4d02f93d6daae295a899a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `julia:0-stretch` - linux; amd64

```console
$ docker pull julia@sha256:ab3e7fb945713f1eda0431843f3ac8c4f90829255cb5c70edfd82fb38d864514
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.8 MB (124816028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e773bf0c961804d9d7de53fd68bc16dc8e80e6989e0a7ef2fa0a5174dc3c6618`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:10:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:10:53 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 17 Jul 2018 03:10:53 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 03:10:53 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 17 Jul 2018 03:10:53 GMT
ENV JULIA_VERSION=0.6.3
# Tue, 17 Jul 2018 03:11:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 17 Jul 2018 03:11:15 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0293350860a4c4d4be5f5e524ab4b733fcab37b5f9d2256bcd6224d6e2f9d842`  
		Last Modified: Tue, 17 Jul 2018 03:13:04 GMT  
		Size: 9.5 MB (9453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a9f4a06a95c38b239943fcb5fe5a4f9dae48fbfd9b7f3a7a470bffda03e1bc`  
		Last Modified: Tue, 17 Jul 2018 03:13:27 GMT  
		Size: 70.1 MB (70052036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0-stretch` - linux; arm variant v7

```console
$ docker pull julia@sha256:972dfd17f09e5094f9b6b00f778c2443f83e5a0a3e3a2fa06db63e6ac7aea2e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.2 MB (112170710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3510d6c59cacd7c741e1c6f8cbc06e9f8b545ea309798bdd2479472b6c81a85`
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
# Tue, 17 Jul 2018 14:34:23 GMT
ENV JULIA_VERSION=0.6.3
# Tue, 17 Jul 2018 14:35:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 17 Jul 2018 14:35:06 GMT
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
	-	`sha256:8a1a624beebb6b2e83b16cf394724c8233f01e4336eb47c4ad341af5175481be`  
		Last Modified: Tue, 17 Jul 2018 14:37:09 GMT  
		Size: 61.9 MB (61931414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0-stretch` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:e66471220e26b69df1f3cbb0f012762ecda45d04cdf1ec8ce611bd4dd00a040f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.7 MB (111705440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a2b8f7c21da8c9fe45290ef25084f24e4482c7eff3bbb3fb732a71e0c677336`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:01 GMT
ADD file:0f69db95e9a06ee21c38014c8bc6c142be97ec4d5127ba83f1d0ef48806f7415 in / 
# Wed, 27 Jun 2018 08:47:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:43:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:43:08 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 27 Jun 2018 11:43:09 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 11:43:10 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 27 Jun 2018 11:43:11 GMT
ENV JULIA_VERSION=0.6.3
# Wed, 27 Jun 2018 11:44:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 27 Jun 2018 11:44:01 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:6054c6775a4e4515d2365ad9337e322dd5c6ad0e0bc8e5bb6b0252461e71afc4`  
		Last Modified: Wed, 27 Jun 2018 08:57:38 GMT  
		Size: 43.1 MB (43115791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56e9ee7d81fc382bdbd88d7a4988894f94c604a487bdf3a1caa46523f95eabb`  
		Last Modified: Wed, 27 Jun 2018 11:44:44 GMT  
		Size: 8.4 MB (8447750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9aec8c9dfd3ab74db8752beda539d27ec4165d6788630ca9db3d8e00840931b`  
		Last Modified: Wed, 27 Jun 2018 11:45:07 GMT  
		Size: 60.1 MB (60141899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0-stretch` - linux; 386

```console
$ docker pull julia@sha256:6f7a9e51f6f5cf93a942b6187764c5210a366311eb134a87764e37719f5f7552
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.9 MB (122917963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea8f419cde3d56d787ce72b6891cc0a6f2139512a985a94ff63b6fe68bd2959a`
-	Default Command: `["julia"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Thu, 07 Jun 2018 10:41:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Jun 2018 10:41:23 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 07 Jun 2018 10:41:23 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Jun 2018 10:41:23 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 07 Jun 2018 10:41:24 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 10:41:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 07 Jun 2018 10:41:59 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5492f7e41d454d495d06adbb70e6fb67b0864bdcff8d8d64b4289a9ebee37854`  
		Last Modified: Thu, 07 Jun 2018 10:44:24 GMT  
		Size: 9.5 MB (9489356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b7f3f4ffd636fe026e46d0bccb956d086f4f6096a6af92d86a8902b17bbbbc`  
		Last Modified: Thu, 07 Jun 2018 10:44:58 GMT  
		Size: 67.4 MB (67383722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0-windowsservercore-1709`

```console
$ docker pull julia@sha256:eb605a7c5c37548ba9cd70df8345fa8b267544969893829ae9b35d6d11cb346a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.431; amd64

### `julia:0-windowsservercore-1709` - windows version 10.0.16299.431; amd64

```console
$ docker pull julia@sha256:23a3a084cd4aa95c3a3d4ccc1498a967aca564ab2c41188229b494146e2bbce7
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3156099225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4a92b03bea0016940498e18ff13bd412227d1e149c0f3e13717e47af439c8d4`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 05 May 2018 14:37:10 GMT
RUN Install update 10.0.16299.431
# Thu, 10 May 2018 09:50:49 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 07 Jun 2018 09:30:05 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 09:30:06 GMT
ENV JULIA_SHA256=e6eef263bbe6d95d2def300407edb6a624e77166d73f423cd7fc895f8464cffd
# Thu, 07 Jun 2018 09:32:13 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION -replace '[.-][^.-]+$', ''));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 07 Jun 2018 09:32:14 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:af675e5054a0dfb3eb70b140f566a5dbe612b5212e4a4ef2a2991308740d1006`  
		Last Modified: Tue, 08 May 2018 18:45:22 GMT  
		Size: 805.9 MB (805944217 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0d3f2c48ca5c41c53fe84071bb55725c2d6c36c8840dcef5297cc048ffe39aa`  
		Last Modified: Thu, 10 May 2018 10:18:48 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77d33463f42f0bcb1655df4bfe906c00ac3280480df69466e7cc3c3babac2e1`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbab489bf4a5850d763fa5c68f32b1e0ef3405eeafcb8dd829463f6904233198`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16258a58f087df023f736eb999e818ddeae9c5662f03cc65c92dd5099ce4d30`  
		Last Modified: Thu, 07 Jun 2018 09:33:42 GMT  
		Size: 75.8 MB (75849671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73780b7474046900f9482c7300b2fc09ddb19883d17dd157d2541b5268c8038f`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0-windowsservercore-ltsc2016`

```console
$ docker pull julia@sha256:a62ebe16910aa0412495371faaafab96abefbc5f028f253030c91d0fa5bf018a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2248; amd64

### `julia:0-windowsservercore-ltsc2016` - windows version 10.0.14393.2248; amd64

```console
$ docker pull julia@sha256:63f867d9cc4cd7a74fa8f4dc6223cc9dd401c3f139c58f08eea21ce8afd97c14
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5541540308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2773f0aaa16fb3c02f6c1c20ef0a1f1a2ff9e7152eed5aba8f376193cee29ae9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 May 2018 18:12:28 GMT
RUN Install update 10.0.14393.2248
# Thu, 10 May 2018 09:39:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 07 Jun 2018 09:27:09 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 09:27:10 GMT
ENV JULIA_SHA256=e6eef263bbe6d95d2def300407edb6a624e77166d73f423cd7fc895f8464cffd
# Thu, 07 Jun 2018 09:29:48 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION -replace '[.-][^.-]+$', ''));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 07 Jun 2018 09:29:50 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ace98111594c5bc232640988045037489d2adc214b3a14e07a8a9e9d30442cef`  
		Last Modified: Mon, 07 May 2018 18:12:28 GMT  
		Size: 1.4 GB (1395367096 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3fef3bd83b7c0eb06ccae001ea0bfed47b7258d9a1c5d593913034b18f7fd8c0`  
		Last Modified: Thu, 10 May 2018 10:17:55 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37d9a0aeff592233fdb9d01b85e98f7e55f0a78436b29766f159b762d5a9786`  
		Last Modified: Thu, 07 Jun 2018 09:32:41 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf993c1d96696292574271f1e0a98afd835ea080fe54fdf1bc4a574e70dd266`  
		Last Modified: Thu, 07 Jun 2018 09:32:40 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648aa5fece6bd256eefa00ff994994fecd47079e736d980d54ccf52be64d6de7`  
		Last Modified: Thu, 07 Jun 2018 09:33:01 GMT  
		Size: 76.2 MB (76182595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f544fd1b74dbdc68541fdc934d07b65c0907c19a37691102fab65affaa318a4b`  
		Last Modified: Thu, 07 Jun 2018 09:32:40 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:jessie`

```console
$ docker pull julia@sha256:d8b9a51aaaefd6d5233f8c0312b48aee6e477ca7545467d1325de31d8076e0a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `julia:jessie` - linux; amd64

```console
$ docker pull julia@sha256:72c49b1f9a33cc888ea23e895e2a07b2b10c42ecf3d233bb68ac5f8e648ac806
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.0 MB (129027557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62e210eec0e61e9cc522abbdde391950e2cb5ce0c075cb3c4521cd92697c1b20`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:12:10 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 17 Jul 2018 03:12:10 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 03:12:11 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 17 Jul 2018 03:12:11 GMT
ENV JULIA_VERSION=0.6.3
# Tue, 17 Jul 2018 03:12:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 17 Jul 2018 03:12:33 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e8f0cab8e60e66de34225b277a8eaa74a9810acff17b95101832c5be91c121`  
		Last Modified: Tue, 17 Jul 2018 03:14:43 GMT  
		Size: 5.0 MB (5020177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0b12dff35e0096d515ea6b5998ff6b2218cecb5e721c013eaa2caebcd711bf2`  
		Last Modified: Tue, 17 Jul 2018 03:15:21 GMT  
		Size: 69.8 MB (69755255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:jessie` - linux; arm variant v7

```console
$ docker pull julia@sha256:7d1d9f1e94efac461b6b065ab3b275adc94dfe740e4a0ee412d7e579d455a957
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.4 MB (116366260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da596b76426772e1151d7fc6149ea7f61b46c75c543e65e5fd128d91812b4994`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 11:59:28 GMT
ADD file:b6521e3d1f270115e5b6c8df3fb62b87aae252b99045c6884f1c071d88fecf10 in / 
# Tue, 17 Jul 2018 11:59:35 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:35:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:35:57 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 17 Jul 2018 14:35:58 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 14:35:58 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 17 Jul 2018 14:35:58 GMT
ENV JULIA_VERSION=0.6.3
# Tue, 17 Jul 2018 14:36:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 17 Jul 2018 14:36:24 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:fbd7fa58000c551825cee932912ff0e71b08d10d3a21e72fa231f872c5ec3109`  
		Last Modified: Tue, 17 Jul 2018 12:10:53 GMT  
		Size: 50.2 MB (50187773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81f7d65bba33bddbc7730abc235f2b7a674c350c8915364d52ab44217dacb47`  
		Last Modified: Tue, 17 Jul 2018 14:37:45 GMT  
		Size: 4.5 MB (4540744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715bb0735973ab62cee24d37b63e51802298a7b56e064e7c0cd6339af0769007`  
		Last Modified: Tue, 17 Jul 2018 14:38:07 GMT  
		Size: 61.6 MB (61637743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:jessie` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:e5b399d5e21409102caf5e26a92105b1adb8b3d5c8319c8af40d96a5de72cf73
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116020319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67fa50a2dcb761bdfdf18ffb1eca6ad20b0eb9b6c03695caf68e1c1d8a1537ce`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Tue, 15 May 2018 08:42:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 08:42:35 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 15 May 2018 08:42:36 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 08:42:37 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 07 Jun 2018 08:44:16 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 08:44:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 07 Jun 2018 08:44:41 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f471c7fc2bc7d13b2a134e7277b8058fbbc6981feefaee2db17f95105ff413`  
		Last Modified: Tue, 15 May 2018 08:44:26 GMT  
		Size: 4.7 MB (4728243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8108f5e7c9acd858b289b09f117421546ecb1ef80b56dec3164bb44c649db15f`  
		Last Modified: Thu, 07 Jun 2018 08:46:45 GMT  
		Size: 59.8 MB (59845222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:jessie` - linux; 386

```console
$ docker pull julia@sha256:c4b1636c07597456d4548da88862ec5063b6157f78e0d899937b0a98c9ebe347
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.8 MB (128806784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f438e34901fa4049ef6173c4ec8e871d60583b04bc0172a5850f1dc1c11f0120`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:09 GMT
ADD file:08ad3a6967c6fe1bfa51f138b64b989a03a61773e4558ec538f63256b472dd77 in / 
# Wed, 27 Jun 2018 10:40:13 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:38:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:38:10 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 27 Jun 2018 12:38:10 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 12:38:10 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 27 Jun 2018 12:38:10 GMT
ENV JULIA_VERSION=0.6.3
# Wed, 27 Jun 2018 12:38:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 27 Jun 2018 12:38:49 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:9e841ca399d43620c0457822730c2d49124abceba44d04d1ec0a0fa4f453b6d1`  
		Last Modified: Wed, 27 Jun 2018 10:53:00 GMT  
		Size: 54.5 MB (54483863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c32a81ec80a665d2951ef246c993dcfc09a8eab7afb5c847db252cdcde3e53b`  
		Last Modified: Wed, 27 Jun 2018 12:39:17 GMT  
		Size: 7.2 MB (7235596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c000b6087b8092e5981e8739c197459f11b114477ba1375c57de8044b5f48c1c`  
		Last Modified: Wed, 27 Jun 2018 12:39:49 GMT  
		Size: 67.1 MB (67087325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:latest`

```console
$ docker pull julia@sha256:19d0ffc9eb859706091a2374c99bfa68b8e74f08008a4286ef4118e1b477006e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	windows version 10.0.14393.2248; amd64
	-	windows version 10.0.16299.431; amd64

### `julia:latest` - linux; amd64

```console
$ docker pull julia@sha256:ab3e7fb945713f1eda0431843f3ac8c4f90829255cb5c70edfd82fb38d864514
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.8 MB (124816028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e773bf0c961804d9d7de53fd68bc16dc8e80e6989e0a7ef2fa0a5174dc3c6618`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:10:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:10:53 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 17 Jul 2018 03:10:53 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 03:10:53 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 17 Jul 2018 03:10:53 GMT
ENV JULIA_VERSION=0.6.3
# Tue, 17 Jul 2018 03:11:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 17 Jul 2018 03:11:15 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0293350860a4c4d4be5f5e524ab4b733fcab37b5f9d2256bcd6224d6e2f9d842`  
		Last Modified: Tue, 17 Jul 2018 03:13:04 GMT  
		Size: 9.5 MB (9453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a9f4a06a95c38b239943fcb5fe5a4f9dae48fbfd9b7f3a7a470bffda03e1bc`  
		Last Modified: Tue, 17 Jul 2018 03:13:27 GMT  
		Size: 70.1 MB (70052036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - linux; arm variant v7

```console
$ docker pull julia@sha256:972dfd17f09e5094f9b6b00f778c2443f83e5a0a3e3a2fa06db63e6ac7aea2e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.2 MB (112170710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3510d6c59cacd7c741e1c6f8cbc06e9f8b545ea309798bdd2479472b6c81a85`
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
# Tue, 17 Jul 2018 14:34:23 GMT
ENV JULIA_VERSION=0.6.3
# Tue, 17 Jul 2018 14:35:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 17 Jul 2018 14:35:06 GMT
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
	-	`sha256:8a1a624beebb6b2e83b16cf394724c8233f01e4336eb47c4ad341af5175481be`  
		Last Modified: Tue, 17 Jul 2018 14:37:09 GMT  
		Size: 61.9 MB (61931414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:e66471220e26b69df1f3cbb0f012762ecda45d04cdf1ec8ce611bd4dd00a040f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.7 MB (111705440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a2b8f7c21da8c9fe45290ef25084f24e4482c7eff3bbb3fb732a71e0c677336`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:01 GMT
ADD file:0f69db95e9a06ee21c38014c8bc6c142be97ec4d5127ba83f1d0ef48806f7415 in / 
# Wed, 27 Jun 2018 08:47:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:43:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:43:08 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 27 Jun 2018 11:43:09 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 11:43:10 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 27 Jun 2018 11:43:11 GMT
ENV JULIA_VERSION=0.6.3
# Wed, 27 Jun 2018 11:44:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 27 Jun 2018 11:44:01 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:6054c6775a4e4515d2365ad9337e322dd5c6ad0e0bc8e5bb6b0252461e71afc4`  
		Last Modified: Wed, 27 Jun 2018 08:57:38 GMT  
		Size: 43.1 MB (43115791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56e9ee7d81fc382bdbd88d7a4988894f94c604a487bdf3a1caa46523f95eabb`  
		Last Modified: Wed, 27 Jun 2018 11:44:44 GMT  
		Size: 8.4 MB (8447750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9aec8c9dfd3ab74db8752beda539d27ec4165d6788630ca9db3d8e00840931b`  
		Last Modified: Wed, 27 Jun 2018 11:45:07 GMT  
		Size: 60.1 MB (60141899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - linux; 386

```console
$ docker pull julia@sha256:6f7a9e51f6f5cf93a942b6187764c5210a366311eb134a87764e37719f5f7552
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.9 MB (122917963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea8f419cde3d56d787ce72b6891cc0a6f2139512a985a94ff63b6fe68bd2959a`
-	Default Command: `["julia"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Thu, 07 Jun 2018 10:41:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Jun 2018 10:41:23 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 07 Jun 2018 10:41:23 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Jun 2018 10:41:23 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 07 Jun 2018 10:41:24 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 10:41:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 07 Jun 2018 10:41:59 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5492f7e41d454d495d06adbb70e6fb67b0864bdcff8d8d64b4289a9ebee37854`  
		Last Modified: Thu, 07 Jun 2018 10:44:24 GMT  
		Size: 9.5 MB (9489356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b7f3f4ffd636fe026e46d0bccb956d086f4f6096a6af92d86a8902b17bbbbc`  
		Last Modified: Thu, 07 Jun 2018 10:44:58 GMT  
		Size: 67.4 MB (67383722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - windows version 10.0.14393.2248; amd64

```console
$ docker pull julia@sha256:63f867d9cc4cd7a74fa8f4dc6223cc9dd401c3f139c58f08eea21ce8afd97c14
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5541540308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2773f0aaa16fb3c02f6c1c20ef0a1f1a2ff9e7152eed5aba8f376193cee29ae9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 May 2018 18:12:28 GMT
RUN Install update 10.0.14393.2248
# Thu, 10 May 2018 09:39:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 07 Jun 2018 09:27:09 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 09:27:10 GMT
ENV JULIA_SHA256=e6eef263bbe6d95d2def300407edb6a624e77166d73f423cd7fc895f8464cffd
# Thu, 07 Jun 2018 09:29:48 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION -replace '[.-][^.-]+$', ''));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 07 Jun 2018 09:29:50 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ace98111594c5bc232640988045037489d2adc214b3a14e07a8a9e9d30442cef`  
		Last Modified: Mon, 07 May 2018 18:12:28 GMT  
		Size: 1.4 GB (1395367096 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3fef3bd83b7c0eb06ccae001ea0bfed47b7258d9a1c5d593913034b18f7fd8c0`  
		Last Modified: Thu, 10 May 2018 10:17:55 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37d9a0aeff592233fdb9d01b85e98f7e55f0a78436b29766f159b762d5a9786`  
		Last Modified: Thu, 07 Jun 2018 09:32:41 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf993c1d96696292574271f1e0a98afd835ea080fe54fdf1bc4a574e70dd266`  
		Last Modified: Thu, 07 Jun 2018 09:32:40 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648aa5fece6bd256eefa00ff994994fecd47079e736d980d54ccf52be64d6de7`  
		Last Modified: Thu, 07 Jun 2018 09:33:01 GMT  
		Size: 76.2 MB (76182595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f544fd1b74dbdc68541fdc934d07b65c0907c19a37691102fab65affaa318a4b`  
		Last Modified: Thu, 07 Jun 2018 09:32:40 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - windows version 10.0.16299.431; amd64

```console
$ docker pull julia@sha256:23a3a084cd4aa95c3a3d4ccc1498a967aca564ab2c41188229b494146e2bbce7
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3156099225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4a92b03bea0016940498e18ff13bd412227d1e149c0f3e13717e47af439c8d4`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 05 May 2018 14:37:10 GMT
RUN Install update 10.0.16299.431
# Thu, 10 May 2018 09:50:49 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 07 Jun 2018 09:30:05 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 09:30:06 GMT
ENV JULIA_SHA256=e6eef263bbe6d95d2def300407edb6a624e77166d73f423cd7fc895f8464cffd
# Thu, 07 Jun 2018 09:32:13 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION -replace '[.-][^.-]+$', ''));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 07 Jun 2018 09:32:14 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:af675e5054a0dfb3eb70b140f566a5dbe612b5212e4a4ef2a2991308740d1006`  
		Last Modified: Tue, 08 May 2018 18:45:22 GMT  
		Size: 805.9 MB (805944217 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0d3f2c48ca5c41c53fe84071bb55725c2d6c36c8840dcef5297cc048ffe39aa`  
		Last Modified: Thu, 10 May 2018 10:18:48 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77d33463f42f0bcb1655df4bfe906c00ac3280480df69466e7cc3c3babac2e1`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbab489bf4a5850d763fa5c68f32b1e0ef3405eeafcb8dd829463f6904233198`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16258a58f087df023f736eb999e818ddeae9c5662f03cc65c92dd5099ce4d30`  
		Last Modified: Thu, 07 Jun 2018 09:33:42 GMT  
		Size: 75.8 MB (75849671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73780b7474046900f9482c7300b2fc09ddb19883d17dd157d2541b5268c8038f`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:stretch`

```console
$ docker pull julia@sha256:49ed5b1384edfd5fc17a438c56258876cd3e71df0f4d02f93d6daae295a899a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `julia:stretch` - linux; amd64

```console
$ docker pull julia@sha256:ab3e7fb945713f1eda0431843f3ac8c4f90829255cb5c70edfd82fb38d864514
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.8 MB (124816028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e773bf0c961804d9d7de53fd68bc16dc8e80e6989e0a7ef2fa0a5174dc3c6618`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:10:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:10:53 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 17 Jul 2018 03:10:53 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 03:10:53 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 17 Jul 2018 03:10:53 GMT
ENV JULIA_VERSION=0.6.3
# Tue, 17 Jul 2018 03:11:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 17 Jul 2018 03:11:15 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0293350860a4c4d4be5f5e524ab4b733fcab37b5f9d2256bcd6224d6e2f9d842`  
		Last Modified: Tue, 17 Jul 2018 03:13:04 GMT  
		Size: 9.5 MB (9453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a9f4a06a95c38b239943fcb5fe5a4f9dae48fbfd9b7f3a7a470bffda03e1bc`  
		Last Modified: Tue, 17 Jul 2018 03:13:27 GMT  
		Size: 70.1 MB (70052036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:stretch` - linux; arm variant v7

```console
$ docker pull julia@sha256:972dfd17f09e5094f9b6b00f778c2443f83e5a0a3e3a2fa06db63e6ac7aea2e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.2 MB (112170710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3510d6c59cacd7c741e1c6f8cbc06e9f8b545ea309798bdd2479472b6c81a85`
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
# Tue, 17 Jul 2018 14:34:23 GMT
ENV JULIA_VERSION=0.6.3
# Tue, 17 Jul 2018 14:35:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 17 Jul 2018 14:35:06 GMT
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
	-	`sha256:8a1a624beebb6b2e83b16cf394724c8233f01e4336eb47c4ad341af5175481be`  
		Last Modified: Tue, 17 Jul 2018 14:37:09 GMT  
		Size: 61.9 MB (61931414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:stretch` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:e66471220e26b69df1f3cbb0f012762ecda45d04cdf1ec8ce611bd4dd00a040f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.7 MB (111705440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a2b8f7c21da8c9fe45290ef25084f24e4482c7eff3bbb3fb732a71e0c677336`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:01 GMT
ADD file:0f69db95e9a06ee21c38014c8bc6c142be97ec4d5127ba83f1d0ef48806f7415 in / 
# Wed, 27 Jun 2018 08:47:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:43:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:43:08 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 27 Jun 2018 11:43:09 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 11:43:10 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 27 Jun 2018 11:43:11 GMT
ENV JULIA_VERSION=0.6.3
# Wed, 27 Jun 2018 11:44:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 27 Jun 2018 11:44:01 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:6054c6775a4e4515d2365ad9337e322dd5c6ad0e0bc8e5bb6b0252461e71afc4`  
		Last Modified: Wed, 27 Jun 2018 08:57:38 GMT  
		Size: 43.1 MB (43115791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56e9ee7d81fc382bdbd88d7a4988894f94c604a487bdf3a1caa46523f95eabb`  
		Last Modified: Wed, 27 Jun 2018 11:44:44 GMT  
		Size: 8.4 MB (8447750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9aec8c9dfd3ab74db8752beda539d27ec4165d6788630ca9db3d8e00840931b`  
		Last Modified: Wed, 27 Jun 2018 11:45:07 GMT  
		Size: 60.1 MB (60141899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:stretch` - linux; 386

```console
$ docker pull julia@sha256:6f7a9e51f6f5cf93a942b6187764c5210a366311eb134a87764e37719f5f7552
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.9 MB (122917963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea8f419cde3d56d787ce72b6891cc0a6f2139512a985a94ff63b6fe68bd2959a`
-	Default Command: `["julia"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Thu, 07 Jun 2018 10:41:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Jun 2018 10:41:23 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 07 Jun 2018 10:41:23 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Jun 2018 10:41:23 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 07 Jun 2018 10:41:24 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 10:41:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 07 Jun 2018 10:41:59 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5492f7e41d454d495d06adbb70e6fb67b0864bdcff8d8d64b4289a9ebee37854`  
		Last Modified: Thu, 07 Jun 2018 10:44:24 GMT  
		Size: 9.5 MB (9489356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b7f3f4ffd636fe026e46d0bccb956d086f4f6096a6af92d86a8902b17bbbbc`  
		Last Modified: Thu, 07 Jun 2018 10:44:58 GMT  
		Size: 67.4 MB (67383722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:windowsservercore-1709`

```console
$ docker pull julia@sha256:eb605a7c5c37548ba9cd70df8345fa8b267544969893829ae9b35d6d11cb346a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.431; amd64

### `julia:windowsservercore-1709` - windows version 10.0.16299.431; amd64

```console
$ docker pull julia@sha256:23a3a084cd4aa95c3a3d4ccc1498a967aca564ab2c41188229b494146e2bbce7
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3156099225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4a92b03bea0016940498e18ff13bd412227d1e149c0f3e13717e47af439c8d4`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 05 May 2018 14:37:10 GMT
RUN Install update 10.0.16299.431
# Thu, 10 May 2018 09:50:49 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 07 Jun 2018 09:30:05 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 09:30:06 GMT
ENV JULIA_SHA256=e6eef263bbe6d95d2def300407edb6a624e77166d73f423cd7fc895f8464cffd
# Thu, 07 Jun 2018 09:32:13 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION -replace '[.-][^.-]+$', ''));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 07 Jun 2018 09:32:14 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:af675e5054a0dfb3eb70b140f566a5dbe612b5212e4a4ef2a2991308740d1006`  
		Last Modified: Tue, 08 May 2018 18:45:22 GMT  
		Size: 805.9 MB (805944217 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0d3f2c48ca5c41c53fe84071bb55725c2d6c36c8840dcef5297cc048ffe39aa`  
		Last Modified: Thu, 10 May 2018 10:18:48 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77d33463f42f0bcb1655df4bfe906c00ac3280480df69466e7cc3c3babac2e1`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbab489bf4a5850d763fa5c68f32b1e0ef3405eeafcb8dd829463f6904233198`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16258a58f087df023f736eb999e818ddeae9c5662f03cc65c92dd5099ce4d30`  
		Last Modified: Thu, 07 Jun 2018 09:33:42 GMT  
		Size: 75.8 MB (75849671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73780b7474046900f9482c7300b2fc09ddb19883d17dd157d2541b5268c8038f`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:windowsservercore-ltsc2016`

```console
$ docker pull julia@sha256:a62ebe16910aa0412495371faaafab96abefbc5f028f253030c91d0fa5bf018a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2248; amd64

### `julia:windowsservercore-ltsc2016` - windows version 10.0.14393.2248; amd64

```console
$ docker pull julia@sha256:63f867d9cc4cd7a74fa8f4dc6223cc9dd401c3f139c58f08eea21ce8afd97c14
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5541540308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2773f0aaa16fb3c02f6c1c20ef0a1f1a2ff9e7152eed5aba8f376193cee29ae9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 May 2018 18:12:28 GMT
RUN Install update 10.0.14393.2248
# Thu, 10 May 2018 09:39:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 07 Jun 2018 09:27:09 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 09:27:10 GMT
ENV JULIA_SHA256=e6eef263bbe6d95d2def300407edb6a624e77166d73f423cd7fc895f8464cffd
# Thu, 07 Jun 2018 09:29:48 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION -replace '[.-][^.-]+$', ''));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 07 Jun 2018 09:29:50 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ace98111594c5bc232640988045037489d2adc214b3a14e07a8a9e9d30442cef`  
		Last Modified: Mon, 07 May 2018 18:12:28 GMT  
		Size: 1.4 GB (1395367096 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3fef3bd83b7c0eb06ccae001ea0bfed47b7258d9a1c5d593913034b18f7fd8c0`  
		Last Modified: Thu, 10 May 2018 10:17:55 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37d9a0aeff592233fdb9d01b85e98f7e55f0a78436b29766f159b762d5a9786`  
		Last Modified: Thu, 07 Jun 2018 09:32:41 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf993c1d96696292574271f1e0a98afd835ea080fe54fdf1bc4a574e70dd266`  
		Last Modified: Thu, 07 Jun 2018 09:32:40 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648aa5fece6bd256eefa00ff994994fecd47079e736d980d54ccf52be64d6de7`  
		Last Modified: Thu, 07 Jun 2018 09:33:01 GMT  
		Size: 76.2 MB (76182595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f544fd1b74dbdc68541fdc934d07b65c0907c19a37691102fab65affaa318a4b`  
		Last Modified: Thu, 07 Jun 2018 09:32:40 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
