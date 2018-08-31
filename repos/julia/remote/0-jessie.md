## `julia:0-jessie`

```console
$ docker pull julia@sha256:51b52e78253112a99f9b70bdcb4bc661e511a86b04102cfc2a11784b4f15a119
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `julia:0-jessie` - linux; amd64

```console
$ docker pull julia@sha256:44d2aac81ca040f598d9594163187ad10a97eb6d733147669307ca203b95a648
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.6 MB (156637853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6e4620e57b7b89149c15af5f45e3ac80d1e15bd43cd0035a546f84621bbaeb7`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Thu, 30 Aug 2018 22:07:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 30 Aug 2018 22:07:30 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 30 Aug 2018 22:07:30 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Aug 2018 22:07:30 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 30 Aug 2018 22:07:30 GMT
ENV JULIA_VERSION=0.7.0
# Thu, 30 Aug 2018 22:07:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 30 Aug 2018 22:07:49 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bbc917e3af3d2653c4a7d1b1ee460b4931157923a65632a678bacf5650683b4`  
		Last Modified: Thu, 30 Aug 2018 22:08:50 GMT  
		Size: 5.0 MB (5020859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff42deae5be1c9cb1bf5de4c8299a9e5ee68375fc2d4743ee81adf2874486f1a`  
		Last Modified: Thu, 30 Aug 2018 22:09:14 GMT  
		Size: 97.4 MB (97364869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0-jessie` - linux; 386

```console
$ docker pull julia@sha256:4fb192bbdcaa96d08d23a67f193121821c6fb144f5d181953dfd2ac8e10ce1b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.5 MB (156496740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22936b240f86a02cad40567489440915cf2b829061460d5a1d8460a024093a6d`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 10:41:14 GMT
ADD file:edf13e4ea5255fbdbe91ff11bf281f8dc1ed1790ea095ab1ff341f0abc03f58c in / 
# Tue, 17 Jul 2018 10:41:14 GMT
CMD ["bash"]
# Fri, 31 Aug 2018 19:55:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 31 Aug 2018 19:55:04 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 31 Aug 2018 19:55:05 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Aug 2018 19:55:05 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 31 Aug 2018 19:55:05 GMT
ENV JULIA_VERSION=0.7.0
# Fri, 31 Aug 2018 19:55:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 31 Aug 2018 19:55:39 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:357075fdb6ed4cabaab3293713922024245238f5596815e10a36b24c0a498f08`  
		Last Modified: Tue, 17 Jul 2018 10:56:53 GMT  
		Size: 54.5 MB (54483269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c6480a202cbf1828c6ed5b4c9c0972d3a964711059fe18c347828fb208da1d`  
		Last Modified: Fri, 31 Aug 2018 19:57:08 GMT  
		Size: 7.2 MB (7189381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9be4ea30e72524adf192573e5090b51938fd1accdbe0c2d2b4fc05aff3c809`  
		Last Modified: Fri, 31 Aug 2018 19:57:37 GMT  
		Size: 94.8 MB (94824090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
