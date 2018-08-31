## `julia:0-stretch`

```console
$ docker pull julia@sha256:76160fbcdbc242b34073ed3e5df5069732de0cb192540c89954896cb22387906
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `julia:0-stretch` - linux; amd64

```console
$ docker pull julia@sha256:23ae8fd2603f79267bef7934182e43e22cebf62faa66b0050e5179c86929e686
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152422112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cbda7b20f258a5d5eedd79ae1db9cfcc3fc9d99b0be7131a638201ba22dba95`
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
# Thu, 30 Aug 2018 22:06:38 GMT
ENV JULIA_VERSION=0.7.0
# Thu, 30 Aug 2018 22:07:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 30 Aug 2018 22:07:02 GMT
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
	-	`sha256:1fd3b794b0e6424c046221ffd4485094ba4468d7e3485324f86ceeebac688ffc`  
		Last Modified: Thu, 30 Aug 2018 22:08:43 GMT  
		Size: 97.7 MB (97658255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0-stretch` - linux; 386

```console
$ docker pull julia@sha256:678182d7b9c7717b28a0571146980d0fc2d4358f54fd1aec6b3005ecc97e0009
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.6 MB (150606020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80f9800359b93e243aa9945f46aed8700c550b56c28713a9c8203d7f704cac1e`
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
# Fri, 31 Aug 2018 19:53:42 GMT
ENV JULIA_VERSION=0.7.0
# Fri, 31 Aug 2018 19:54:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 31 Aug 2018 19:54:11 GMT
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
	-	`sha256:23057057e36b2111327beb678d363b509f961fdf7af6c6e04b58a004dd1402f0`  
		Last Modified: Fri, 31 Aug 2018 19:56:59 GMT  
		Size: 95.1 MB (95110160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
