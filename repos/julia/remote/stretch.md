## `julia:stretch`

```console
$ docker pull julia@sha256:54445961609f302560de31a86e85a0cc421bc2f1777fe2662381372715b0d521
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `julia:stretch` - linux; amd64

```console
$ docker pull julia@sha256:23656f5886362aec1a97c36a8aa3b3c4ce3899b17ba40fd193c9530ec9e0953c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150080713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c4a51c5d4a120603dccec332d9b05fd101173f6cd98d27f801ad82ae53599d4`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:07:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:07:03 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 16 Oct 2018 04:07:04 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 04:07:04 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 16 Oct 2018 04:07:04 GMT
ENV JULIA_VERSION=1.0.1
# Tue, 16 Oct 2018 04:07:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='9ffbcf7f4a111e13415954caccdd1ce90b5c835cee9f62d6ac708f5b752c87dd' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='e2ce5fa564242c2dbb836f9493166ce6eaaec8f46db9861b4cdad047497dd4c4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 16 Oct 2018 04:07:21 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b55c75c692a7376d6299d24107c62327fa12485d23bc31fce9531cd6f2dc40d`  
		Last Modified: Tue, 16 Oct 2018 04:09:25 GMT  
		Size: 9.5 MB (9454059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fe50c24ea196870feb5679586fc25922925401e00b739c6cf7f6366821cfd7`  
		Last Modified: Tue, 16 Oct 2018 04:09:43 GMT  
		Size: 95.3 MB (95316720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:stretch` - linux; 386

```console
$ docker pull julia@sha256:f9bd3276955856e4d86b86fa5dca2cb770fc6613edefcdd6e5685a3bd26c205c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.7 MB (147733463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bf786be1646a480115c4f77c9407f02ce336651e6ea4d0d9c08300ca3f77278`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:36 GMT
ADD file:3712892f37687a2c2c5bbcb861ce5514725fe71d82c86a79fb1d1bcaa39b8989 in / 
# Wed, 05 Sep 2018 10:43:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:06:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:06:52 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 05 Sep 2018 12:06:52 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 12:06:53 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 03 Oct 2018 10:54:40 GMT
ENV JULIA_VERSION=1.0.1
# Wed, 03 Oct 2018 10:55:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='9ffbcf7f4a111e13415954caccdd1ce90b5c835cee9f62d6ac708f5b752c87dd' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='e2ce5fa564242c2dbb836f9493166ce6eaaec8f46db9861b4cdad047497dd4c4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 03 Oct 2018 10:55:00 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:23bbbdd93c8977020ec67716d0cda1fe7a96e73c4c3a0aa6c42122459e2ba839`  
		Last Modified: Wed, 05 Sep 2018 10:51:53 GMT  
		Size: 46.0 MB (46039046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c1b889552a86ebfdc9c0ac57b8ddad2b02c6cb1ca7cc7343834dd1eb6a9283`  
		Last Modified: Wed, 05 Sep 2018 12:11:31 GMT  
		Size: 9.5 MB (9458452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ebfc64b9f600a7d1421494a98cf8b2e8388030554e96cca299dcd8c3ca5be93`  
		Last Modified: Wed, 03 Oct 2018 10:55:38 GMT  
		Size: 92.2 MB (92235965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
