## `julia:jessie`

```console
$ docker pull julia@sha256:c011a9e0af1b2b3240bf038c1bda5508614bb0a8a4782ad6b3270f8eaca738ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `julia:jessie` - linux; amd64

```console
$ docker pull julia@sha256:5ea869511825fc01b27388ff204c8d0d96ea2ad852edbb2c9caddbee55a8a9d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.1 MB (129078189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:287e1969906879f4172bd7670a3fce539350290d39ca786f049bc51e3ce37056`
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
# Wed, 25 Jul 2018 17:37:28 GMT
ENV JULIA_VERSION=0.6.4
# Fri, 27 Jul 2018 22:21:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='d20e6984bcf8c3692d853a9922e2cf1de19b91201cb9e396d9264c32cebedc46' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='ab45280c799e63ab04da7a928fee79b43e41b457a6d4c48058798b9bad542688' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 27 Jul 2018 22:21:53 GMT
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
	-	`sha256:dd9a90093cf80c789101965985ed29ec6fb366083fc8e7c3cd3d27515054bd39`  
		Last Modified: Fri, 27 Jul 2018 22:27:08 GMT  
		Size: 69.8 MB (69805887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:jessie` - linux; 386

```console
$ docker pull julia@sha256:133f38dd0fcb2593bda7b97aeb2db8197c0cbfc52796bd01ef2e9239b78b4b37
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128617917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bad177368ab38bfd67d0426eacce8d66e6c43fa871e19ea7a72d45dce8577821`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 10:41:14 GMT
ADD file:edf13e4ea5255fbdbe91ff11bf281f8dc1ed1790ea095ab1ff341f0abc03f58c in / 
# Tue, 17 Jul 2018 10:41:14 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:15:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:15:36 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 17 Jul 2018 15:15:43 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 15:15:44 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 26 Jul 2018 11:01:42 GMT
ENV JULIA_VERSION=0.6.4
# Thu, 26 Jul 2018 11:02:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='d20e6984bcf8c3692d853a9922e2cf1de19b91201cb9e396d9264c32cebedc46' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='ab45280c799e63ab04da7a928fee79b43e41b457a6d4c48058798b9bad542688' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 26 Jul 2018 11:02:17 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:357075fdb6ed4cabaab3293713922024245238f5596815e10a36b24c0a498f08`  
		Last Modified: Tue, 17 Jul 2018 10:56:53 GMT  
		Size: 54.5 MB (54483269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0995000f03e07b1ca2c329ad64bd48f79f0ce1466b24e01d6afc23f8202d8dc4`  
		Last Modified: Tue, 17 Jul 2018 15:18:04 GMT  
		Size: 7.2 MB (7188245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95efa14371252030cbaa559ded745ce0977036ccfda241679a7d8e7acea17615`  
		Last Modified: Thu, 26 Jul 2018 11:05:02 GMT  
		Size: 66.9 MB (66946403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
