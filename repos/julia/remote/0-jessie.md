## `julia:0-jessie`

```console
$ docker pull julia@sha256:d14e0f5c53ac66127f060333178149bb45d7a3f33706b1ecd66adc3eb658cc9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `julia:0-jessie` - linux; amd64

```console
$ docker pull julia@sha256:26fd8ee1ce7c8e78179d0bbf96463c556b38dacd450af97bb23696ebf9490e99
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.8 MB (156775829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aece89cd2c09c2bf0b80d0069227d25b43a0b429a2cafee123ae9e3de349071`
-	Default Command: `["julia"]`

```dockerfile
# Fri, 28 Dec 2018 23:23:43 GMT
ADD file:7f32b46e26b56ebbde417db4d539757b8e852c62bab15978db092ce24d2420d1 in / 
# Fri, 28 Dec 2018 23:23:43 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 02:16:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:16:49 GMT
ENV JULIA_PATH=/usr/local/julia
# Sat, 29 Dec 2018 02:16:49 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 02:16:50 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Sat, 29 Dec 2018 02:16:50 GMT
ENV JULIA_VERSION=0.7.0
# Sat, 29 Dec 2018 02:17:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Sat, 29 Dec 2018 02:17:54 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ff144d3c0ab1033159cf082f681c9f51b09cd701d907e3bad65b1411fa1585a9`  
		Last Modified: Fri, 28 Dec 2018 23:33:45 GMT  
		Size: 54.4 MB (54387117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1805dd32b0de105e9157b8cfc4acd8588ef38ec618dde00bc7a420feeae86828`  
		Last Modified: Sat, 29 Dec 2018 02:19:26 GMT  
		Size: 5.0 MB (5024259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9ae6656309df5c327af309a7821277dc2eb4d64f2fc2319150b555d3ba09c5`  
		Last Modified: Sat, 29 Dec 2018 02:19:51 GMT  
		Size: 97.4 MB (97364453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0-jessie` - linux; 386

```console
$ docker pull julia@sha256:5a1805b84e7529dd2153d29e4fd059962485c136a4e7d755c95b82d5c8e0c6bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.6 MB (156599482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d78e2243f3ecd93d54f15600ad4e5c83c9da78feba8c97546ced245d16b7350`
-	Default Command: `["julia"]`

```dockerfile
# Fri, 16 Nov 2018 12:25:54 GMT
ADD file:85dda498c7ceba872653c9bb40223849881a8a9c59c0f9a39003a8e6862f66e5 in / 
# Fri, 16 Nov 2018 12:25:54 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 16:26:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:26:59 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Nov 2018 16:26:59 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 16:26:59 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 16 Nov 2018 16:27:00 GMT
ENV JULIA_VERSION=0.7.0
# Fri, 16 Nov 2018 16:27:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 16 Nov 2018 16:27:34 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:16575792c3dc98957c43c8d8fc1a81b062a3ff3fc617db60ddae32a813319afd`  
		Last Modified: Thu, 15 Nov 2018 01:12:17 GMT  
		Size: 54.6 MB (54584852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9171cf2d920f3c52071b1702dda762164a7459270deb9072fb80365bf7cea56a`  
		Last Modified: Fri, 16 Nov 2018 16:32:04 GMT  
		Size: 7.2 MB (7190645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b55cdff7b84660152bc4d74d8bab992b1f173b76a7efa2d5668e91d48ce9a3`  
		Last Modified: Fri, 16 Nov 2018 16:32:43 GMT  
		Size: 94.8 MB (94823985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
