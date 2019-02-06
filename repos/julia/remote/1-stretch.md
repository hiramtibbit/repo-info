## `julia:1-stretch`

```console
$ docker pull julia@sha256:55491325a3367cdf5ba400342ae6d196a8b970a9af8951be0ff624f2ca826a6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `julia:1-stretch` - linux; amd64

```console
$ docker pull julia@sha256:3fa7855f260c4063e15d4f42692b6cf047938ab3fda488d3ec6c0e71c25e4ee9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.4 MB (151438743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917093c9b9318ab13172cb568be70135d213ccd67a63fb935297efb925d1116f`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:03:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:03:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 06 Feb 2019 07:03:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 07:03:08 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 06 Feb 2019 07:03:08 GMT
ENV JULIA_VERSION=1.1.0
# Wed, 06 Feb 2019 07:03:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='80cfd013e526b5145ec3254920afd89bb459f1db7a2a3f21849125af20c05471' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='9efd7ffd4a246311f544cf0031682f4dcf946b2377abaa285684526071272fe5' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 06 Feb 2019 07:03:24 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ad57f7f512401da1583400da462433d25cd4866d4a2fb961c62229a1fcfc81`  
		Last Modified: Wed, 06 Feb 2019 07:03:59 GMT  
		Size: 9.5 MB (9495211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:713faba31c4e3403a140914fbef75960252252a6a0a23113d5628d119dc872d5`  
		Last Modified: Wed, 06 Feb 2019 07:04:16 GMT  
		Size: 96.6 MB (96599240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1-stretch` - linux; 386

```console
$ docker pull julia@sha256:b8cee0b0a243dd91eb1fd89f18b1586284af8cdd4aa365e4cfbb44011ccd5755
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.3 MB (149275399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:196658eb80886eecda3b971c8402e1bc949ced9faa3cb7faf1b568c4032c1784`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 23 Jan 2019 11:52:21 GMT
ADD file:a1b4934a559144838b98b09b06112a85c3f348fe479aa3c06de45ad4d3924f84 in / 
# Wed, 23 Jan 2019 11:52:22 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:29:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:13 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 23 Jan 2019 13:29:13 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 13:29:14 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Sat, 26 Jan 2019 12:22:05 GMT
ENV JULIA_VERSION=1.1.0
# Sat, 26 Jan 2019 12:22:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='80cfd013e526b5145ec3254920afd89bb459f1db7a2a3f21849125af20c05471' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='9efd7ffd4a246311f544cf0031682f4dcf946b2377abaa285684526071272fe5' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Sat, 26 Jan 2019 12:22:24 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:e7605ade44a5672398d8a60ec13ddeae3204795d746eafc908b8c1103fa8fa35`  
		Last Modified: Wed, 23 Jan 2019 12:02:23 GMT  
		Size: 46.1 MB (46069455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4720a2d1c8df31f556415a3ddc2634808ca7e302b5170cc4cac4f5ea1a7adfc3`  
		Last Modified: Wed, 23 Jan 2019 13:34:59 GMT  
		Size: 9.5 MB (9499374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ab2aed250a381b202ed10c22c56a44b11abb352eea45033310fd4d5e2d89a0`  
		Last Modified: Sat, 26 Jan 2019 12:22:58 GMT  
		Size: 93.7 MB (93706570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
