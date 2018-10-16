## `julia:0-jessie`

```console
$ docker pull julia@sha256:5b8d4ae99d549874cf384cc03bf2d2b05f2047321c92a548f85e90587a7cfe58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `julia:0-jessie` - linux; amd64

```console
$ docker pull julia@sha256:db43c6368039485a545c00c223b299eb4d2f508f8e9e143a65c3fb82f20d03fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.6 MB (156638167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f351494177d30617294461d2d53f951bfb3c80316ce950f94911275e234fe23a`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:26 GMT
ADD file:28906382f13932b8498c715984587f13905a32cc9427fb4f8779b7f159a68580 in / 
# Mon, 15 Oct 2018 23:20:26 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:08:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:08:39 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 16 Oct 2018 04:08:39 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 04:08:39 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 16 Oct 2018 04:08:39 GMT
ENV JULIA_VERSION=0.7.0
# Tue, 16 Oct 2018 04:08:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 16 Oct 2018 04:08:56 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:61be48634cb9ffcb29c1508fc1c308be81c32f84e95a627de9bdf107a854408c`  
		Last Modified: Mon, 15 Oct 2018 23:28:32 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b74e9a89227b6b937ff2a371c0a5ec352bf33f3363dd03e730f73d6e1591d8a`  
		Last Modified: Tue, 16 Oct 2018 04:11:18 GMT  
		Size: 5.0 MB (5021169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb19692a70901f7c5bee31efb672b836d19ffd77d33b29346a229076a7024dc4`  
		Last Modified: Tue, 16 Oct 2018 04:11:38 GMT  
		Size: 97.4 MB (97364873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0-jessie` - linux; 386

```console
$ docker pull julia@sha256:11f841a1cb630f9acc5e2751c372eee3ef14a84627735298b4c15a43ed56c0e0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.5 MB (156497416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfe505bc7f2f31ca760ff407b56aab5964fec6140e6b582e92623faa70bc8e40`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:10:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:10:18 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 05 Sep 2018 12:10:18 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 12:10:19 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 05 Sep 2018 12:10:19 GMT
ENV JULIA_VERSION=0.7.0
# Wed, 05 Sep 2018 12:11:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 05 Sep 2018 12:11:12 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0345df07625e173af96d169f7bc6ff73170f81d74766bb7ed6709453b405dd41`  
		Last Modified: Wed, 05 Sep 2018 12:13:34 GMT  
		Size: 7.2 MB (7189347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520f9284e545663be2e020135aff823df9708aec8a39a619a58a5bf58e0ce8a4`  
		Last Modified: Wed, 05 Sep 2018 12:14:19 GMT  
		Size: 94.8 MB (94824018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
