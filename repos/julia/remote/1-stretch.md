## `julia:1-stretch`

```console
$ docker pull julia@sha256:aa686f9360c5135dc2b2ccd6c24ef23504b860f86db162ba10e17e6ff96b1920
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `julia:1-stretch` - linux; amd64

```console
$ docker pull julia@sha256:43225f45d87f9af378882a77adb35f75ca9ac96b61eee71abf9f55dcf4925928
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.6 MB (150565367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:202a3fcc951917b0a195635a0c779500dd1cbbbe254ede9df0825bfe063eb62d`
-	Default Command: `["julia"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 00:02:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 00:02:58 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Nov 2018 00:02:58 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 00:02:59 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 16 Nov 2018 00:02:59 GMT
ENV JULIA_VERSION=1.0.2
# Fri, 16 Nov 2018 00:03:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='e0e93949753cc4ac46d5f27d7ae213488b3fef5f8e766794df0058e1b3d2f142' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='267f31e5adf55e17ebcee7e078c4536b45d0f2746a3ecd9298f60369eb84b886' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 16 Nov 2018 00:03:18 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046e37470a2333f6d0c52712661e665b96608a63660e52fb17a884588645ce84`  
		Last Modified: Fri, 16 Nov 2018 00:05:49 GMT  
		Size: 9.5 MB (9454423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f4a4205826defccb5f24122af3d0949431c52280dd74a1723c9152bbdfc7762`  
		Last Modified: Fri, 16 Nov 2018 00:06:17 GMT  
		Size: 95.8 MB (95790687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
