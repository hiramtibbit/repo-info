## `julia:1-stretch`

```console
$ docker pull julia@sha256:2138048ea3cf00daa7c3e0f3ecc9309115611e7bae144ac5fdb800d1cc464c5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `julia:1-stretch` - linux; amd64

```console
$ docker pull julia@sha256:44a3058b61d58ea33756caab6919526ea41ebe30d5efdcb324f42f6844391470
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.5 MB (150468640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3318dbd8f10c89a44829da1f71c86f5073385d63174afc0d6b0daa69b369c58`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 02:06:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:06:40 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 23 Jan 2019 02:06:40 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 02:06:40 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 23 Jan 2019 02:06:40 GMT
ENV JULIA_VERSION=1.0.3
# Wed, 23 Jan 2019 02:06:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='362ba867d2df5d4a64f824e103f19cffc3b61cf9d5a9066c657f1c5b73c87117' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='87c489ed92b1a17b231988ce59d64151b1e68700e6d503ded6085829d5587bc6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='75f43df36d71cb2bf3106b9e16670cc152e2a31f8ea6d761a6fe1d630ead05c3' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='6c8cc02d63a602870f78e66d0fdeb7e26e75b3eba558a133a86420e1273bbdc1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 23 Jan 2019 02:06:56 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfbf27cf4b26df07806163babb5e92b272db46bac11e39e2189c48f0b214ddba`  
		Last Modified: Wed, 23 Jan 2019 02:10:31 GMT  
		Size: 9.5 MB (9495235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3494351bfe6e9a412d32324c7b3994b9377132f5b2fb640a9078bfc6f0542f3`  
		Last Modified: Wed, 23 Jan 2019 02:10:51 GMT  
		Size: 95.6 MB (95628656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1-stretch` - linux; arm variant v7

```console
$ docker pull julia@sha256:adadfb5a0ab62403712ed4e3cb4ee929be333af52e61b7789a3fe891e5bc1fe0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137527325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05f9cace535e58ed9d73aeb4c18ffe09b80c4e108d67ad832f757d6df4b77c24`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:26:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 14:26:05 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 23 Jan 2019 14:26:06 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 14:26:06 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 23 Jan 2019 14:26:07 GMT
ENV JULIA_VERSION=1.0.3
# Wed, 23 Jan 2019 14:26:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='362ba867d2df5d4a64f824e103f19cffc3b61cf9d5a9066c657f1c5b73c87117' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='87c489ed92b1a17b231988ce59d64151b1e68700e6d503ded6085829d5587bc6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='75f43df36d71cb2bf3106b9e16670cc152e2a31f8ea6d761a6fe1d630ead05c3' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='6c8cc02d63a602870f78e66d0fdeb7e26e75b3eba558a133a86420e1273bbdc1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 23 Jan 2019 14:26:34 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765f0fbf859c042f0bcab0827ebe0ae4a11ac44ee47f9f1f2621ea983961cb21`  
		Last Modified: Wed, 23 Jan 2019 14:26:50 GMT  
		Size: 8.2 MB (8219716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec01a932dd60c9318fb460aeb8c6246d2ffa34e2c679cb119857e34b998907b8`  
		Last Modified: Wed, 23 Jan 2019 14:27:18 GMT  
		Size: 87.2 MB (87219878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1-stretch` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:b13cb9ab18b3aef0379a170a3d0eb71e608dd3eb54a14aca4458f5836ee94cad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131418236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c38fcbc2c3961c99727259c4a0824c41771b9326e14acfdf7d7038d0b7edf643`
-	Default Command: `["julia"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 23:07:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 23:07:33 GMT
ENV JULIA_PATH=/usr/local/julia
# Sat, 29 Dec 2018 23:07:34 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 23:07:34 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Sat, 29 Dec 2018 23:07:35 GMT
ENV JULIA_VERSION=1.0.3
# Sat, 29 Dec 2018 23:09:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='362ba867d2df5d4a64f824e103f19cffc3b61cf9d5a9066c657f1c5b73c87117' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='87c489ed92b1a17b231988ce59d64151b1e68700e6d503ded6085829d5587bc6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='75f43df36d71cb2bf3106b9e16670cc152e2a31f8ea6d761a6fe1d630ead05c3' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='6c8cc02d63a602870f78e66d0fdeb7e26e75b3eba558a133a86420e1273bbdc1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Sat, 29 Dec 2018 23:09:03 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a038fbec7bbb72b15ec76c61f1c7f153aa5f68a828150045e55670c9844908`  
		Last Modified: Sat, 29 Dec 2018 23:09:24 GMT  
		Size: 8.5 MB (8463270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32127451bddfcbecce084c85f84f08eef9db3abd3dece367e49e7be525763ff2`  
		Last Modified: Sat, 29 Dec 2018 23:09:53 GMT  
		Size: 79.8 MB (79838488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1-stretch` - linux; 386

```console
$ docker pull julia@sha256:6e731f09e39134e7244c6b96abd9c63bb159c99e203c60d4de85dc9400c1469e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.0 MB (148019484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99f2218acdb958fd00ecfd2ddce1a191c3eb8aa7e00629f8595843e05acfc618`
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
# Wed, 23 Jan 2019 13:29:14 GMT
ENV JULIA_VERSION=1.0.3
# Wed, 23 Jan 2019 13:29:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='362ba867d2df5d4a64f824e103f19cffc3b61cf9d5a9066c657f1c5b73c87117' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='87c489ed92b1a17b231988ce59d64151b1e68700e6d503ded6085829d5587bc6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='75f43df36d71cb2bf3106b9e16670cc152e2a31f8ea6d761a6fe1d630ead05c3' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='6c8cc02d63a602870f78e66d0fdeb7e26e75b3eba558a133a86420e1273bbdc1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 23 Jan 2019 13:29:35 GMT
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
	-	`sha256:df5e27cf34de98f0be79b2a727e3c2da86dacee9f363226057f4c8a389db58d2`  
		Last Modified: Wed, 23 Jan 2019 13:35:21 GMT  
		Size: 92.5 MB (92450655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
