<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `julia`

-	[`julia:0`](#julia0)
-	[`julia:0.6`](#julia06)
-	[`julia:0.6.2`](#julia062)
-	[`julia:latest`](#julialatest)

## `julia:0`

```console
$ docker pull julia@sha256:a3d301001a56d810c6d88e76909fe5cef1c284e723f59a661681d00ddbbedc1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `julia:0` - linux; amd64

```console
$ docker pull julia@sha256:cecb43ec0d95a40b85a1257fd38d8828e3c636120a810a1caa6b04bf2953f6ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.4 MB (128351422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41ae667bf2161572f7f5e9efd464beda5f21a0f6c7ca0320ae8088029d3db8d8`
-	Default Command: `["julia"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 09:38:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 09:38:38 GMT
ENV JULIA_PATH=/usr/local/julia
# Sat, 17 Feb 2018 09:38:38 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Sat, 17 Feb 2018 09:38:38 GMT
ENV JULIA_VERSION=0.6.2
# Sat, 17 Feb 2018 09:38:48 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='dc6ec0b13551ce78083a5849268b20684421d46a7ec46b17ec1fab88a5078580' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='1c37aa7cba7372d949a91de53f53609b1b0c9cbeca436eb2fe7f5083d9f62c82' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='19a8945bdb3d35b7bf0432a9e066fb7831d11d1c1acfe56abd8fcabbf1ebddb4' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='099e39ad958aff2ef63841a812f5df62f8553aafc6dd33abb0eb0c67142c5e49' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Sat, 17 Feb 2018 09:38:48 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 09:38:48 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f6a32139b785bb818c4dd7f9f7363b7f943d32157a424da7a70f13e6c5dff8`  
		Last Modified: Sat, 17 Feb 2018 09:39:19 GMT  
		Size: 6.7 MB (6730435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f727c52e0db0c7a8e585f67f3deffdcff0c43b544efa5d7e16209a205578e496`  
		Last Modified: Sat, 17 Feb 2018 09:39:31 GMT  
		Size: 69.0 MB (69012702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0` - linux; arm variant v7

```console
$ docker pull julia@sha256:f3a2ba8888ab308c6d6f2c81339c20ed2be01cafe34da7b33f806782a78c762c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116039833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0503a9eeebfa46fa95282907280e853524af742c9436a3375b338718f2e7c1ab`
-	Default Command: `["julia"]`

```dockerfile
# Thu, 15 Feb 2018 13:26:29 GMT
ADD file:eb41e6f5be28a0581f56f72301ee93af1a27010f58b8eb6a759af7d673cc37f8 in / 
# Thu, 15 Feb 2018 13:26:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:19:40 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:19:43 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 15 Feb 2018 14:19:46 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 15 Feb 2018 14:19:51 GMT
ENV JULIA_VERSION=0.6.2
# Thu, 15 Feb 2018 14:20:08 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='dc6ec0b13551ce78083a5849268b20684421d46a7ec46b17ec1fab88a5078580' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='1c37aa7cba7372d949a91de53f53609b1b0c9cbeca436eb2fe7f5083d9f62c82' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='19a8945bdb3d35b7bf0432a9e066fb7831d11d1c1acfe56abd8fcabbf1ebddb4' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='099e39ad958aff2ef63841a812f5df62f8553aafc6dd33abb0eb0c67142c5e49' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Thu, 15 Feb 2018 14:20:09 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 14:20:09 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:6b0aacdd0080a4b5904034a1714e4c1553acbed305ce7a3b1689a35d0bb6e4a0`  
		Last Modified: Thu, 15 Feb 2018 13:35:36 GMT  
		Size: 48.7 MB (48701400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec6531a7e7f3503de0be77700389ec984629ad17ce3ddf85ca041ba04efe934`  
		Last Modified: Thu, 15 Feb 2018 14:20:34 GMT  
		Size: 6.1 MB (6077356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0231044fe496c6c340fee1b99037745aaf4d87eba604b598ef69117b90e4311d`  
		Last Modified: Thu, 15 Feb 2018 14:20:55 GMT  
		Size: 61.3 MB (61261077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:b9e17a4f6af04624093ff0b5c08401aac0673426dd8bcfed2c4354ca30ecd3e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115660894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a33fc79c1c66b04e1d1675e60f5daa96fccaf206aab92781b88370d08d2333d8`
-	Default Command: `["julia"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:13:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:13:28 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 15 Feb 2018 19:13:29 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 15 Feb 2018 19:13:31 GMT
ENV JULIA_VERSION=0.6.2
# Thu, 15 Feb 2018 19:14:03 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='dc6ec0b13551ce78083a5849268b20684421d46a7ec46b17ec1fab88a5078580' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='1c37aa7cba7372d949a91de53f53609b1b0c9cbeca436eb2fe7f5083d9f62c82' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='19a8945bdb3d35b7bf0432a9e066fb7831d11d1c1acfe56abd8fcabbf1ebddb4' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='099e39ad958aff2ef63841a812f5df62f8553aafc6dd33abb0eb0c67142c5e49' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Thu, 15 Feb 2018 19:14:05 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 19:14:07 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9f5fb24f6a56d40154efa93c8e4b67355c3a564056912cc647bc17155d821b`  
		Last Modified: Thu, 15 Feb 2018 19:14:30 GMT  
		Size: 6.2 MB (6234351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f97d16c759399b9b565baa71b6d687f8ae9998bb367629625bf339f5f6b178ab`  
		Last Modified: Thu, 15 Feb 2018 19:14:50 GMT  
		Size: 59.5 MB (59492697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0` - linux; 386

```console
$ docker pull julia@sha256:f4137e716815c8854990dbcab45edbd28e5e29d2eca6566f4744092bf455b218
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.8 MB (128766388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a9f90085f0763f9cc6de50fcf93c516127ddabde91ccab29cf28410917e5d30`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:29:16 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:33:42 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 12 Dec 2017 17:33:42 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 20 Dec 2017 05:14:34 GMT
ENV JULIA_VERSION=0.6.2
# Wed, 20 Dec 2017 05:14:53 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='dc6ec0b13551ce78083a5849268b20684421d46a7ec46b17ec1fab88a5078580' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='1c37aa7cba7372d949a91de53f53609b1b0c9cbeca436eb2fe7f5083d9f62c82' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='19a8945bdb3d35b7bf0432a9e066fb7831d11d1c1acfe56abd8fcabbf1ebddb4' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='099e39ad958aff2ef63841a812f5df62f8553aafc6dd33abb0eb0c67142c5e49' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Wed, 20 Dec 2017 05:14:54 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 20 Dec 2017 05:14:54 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76624f3b0f970f9e7741b0cb10299016048249522d5f78acbc9f80aac461e3de`  
		Last Modified: Tue, 12 Dec 2017 17:34:26 GMT  
		Size: 8.9 MB (8934276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740ce79dba252f5e80d901cc18657453b8378e93c6401ea2f81c5f053f11997a`  
		Last Modified: Wed, 20 Dec 2017 05:15:26 GMT  
		Size: 67.1 MB (67054743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.6`

```console
$ docker pull julia@sha256:a3d301001a56d810c6d88e76909fe5cef1c284e723f59a661681d00ddbbedc1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `julia:0.6` - linux; amd64

```console
$ docker pull julia@sha256:cecb43ec0d95a40b85a1257fd38d8828e3c636120a810a1caa6b04bf2953f6ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.4 MB (128351422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41ae667bf2161572f7f5e9efd464beda5f21a0f6c7ca0320ae8088029d3db8d8`
-	Default Command: `["julia"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 09:38:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 09:38:38 GMT
ENV JULIA_PATH=/usr/local/julia
# Sat, 17 Feb 2018 09:38:38 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Sat, 17 Feb 2018 09:38:38 GMT
ENV JULIA_VERSION=0.6.2
# Sat, 17 Feb 2018 09:38:48 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='dc6ec0b13551ce78083a5849268b20684421d46a7ec46b17ec1fab88a5078580' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='1c37aa7cba7372d949a91de53f53609b1b0c9cbeca436eb2fe7f5083d9f62c82' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='19a8945bdb3d35b7bf0432a9e066fb7831d11d1c1acfe56abd8fcabbf1ebddb4' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='099e39ad958aff2ef63841a812f5df62f8553aafc6dd33abb0eb0c67142c5e49' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Sat, 17 Feb 2018 09:38:48 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 09:38:48 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f6a32139b785bb818c4dd7f9f7363b7f943d32157a424da7a70f13e6c5dff8`  
		Last Modified: Sat, 17 Feb 2018 09:39:19 GMT  
		Size: 6.7 MB (6730435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f727c52e0db0c7a8e585f67f3deffdcff0c43b544efa5d7e16209a205578e496`  
		Last Modified: Sat, 17 Feb 2018 09:39:31 GMT  
		Size: 69.0 MB (69012702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6` - linux; arm variant v7

```console
$ docker pull julia@sha256:f3a2ba8888ab308c6d6f2c81339c20ed2be01cafe34da7b33f806782a78c762c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116039833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0503a9eeebfa46fa95282907280e853524af742c9436a3375b338718f2e7c1ab`
-	Default Command: `["julia"]`

```dockerfile
# Thu, 15 Feb 2018 13:26:29 GMT
ADD file:eb41e6f5be28a0581f56f72301ee93af1a27010f58b8eb6a759af7d673cc37f8 in / 
# Thu, 15 Feb 2018 13:26:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:19:40 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:19:43 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 15 Feb 2018 14:19:46 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 15 Feb 2018 14:19:51 GMT
ENV JULIA_VERSION=0.6.2
# Thu, 15 Feb 2018 14:20:08 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='dc6ec0b13551ce78083a5849268b20684421d46a7ec46b17ec1fab88a5078580' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='1c37aa7cba7372d949a91de53f53609b1b0c9cbeca436eb2fe7f5083d9f62c82' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='19a8945bdb3d35b7bf0432a9e066fb7831d11d1c1acfe56abd8fcabbf1ebddb4' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='099e39ad958aff2ef63841a812f5df62f8553aafc6dd33abb0eb0c67142c5e49' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Thu, 15 Feb 2018 14:20:09 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 14:20:09 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:6b0aacdd0080a4b5904034a1714e4c1553acbed305ce7a3b1689a35d0bb6e4a0`  
		Last Modified: Thu, 15 Feb 2018 13:35:36 GMT  
		Size: 48.7 MB (48701400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec6531a7e7f3503de0be77700389ec984629ad17ce3ddf85ca041ba04efe934`  
		Last Modified: Thu, 15 Feb 2018 14:20:34 GMT  
		Size: 6.1 MB (6077356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0231044fe496c6c340fee1b99037745aaf4d87eba604b598ef69117b90e4311d`  
		Last Modified: Thu, 15 Feb 2018 14:20:55 GMT  
		Size: 61.3 MB (61261077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:b9e17a4f6af04624093ff0b5c08401aac0673426dd8bcfed2c4354ca30ecd3e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115660894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a33fc79c1c66b04e1d1675e60f5daa96fccaf206aab92781b88370d08d2333d8`
-	Default Command: `["julia"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:13:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:13:28 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 15 Feb 2018 19:13:29 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 15 Feb 2018 19:13:31 GMT
ENV JULIA_VERSION=0.6.2
# Thu, 15 Feb 2018 19:14:03 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='dc6ec0b13551ce78083a5849268b20684421d46a7ec46b17ec1fab88a5078580' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='1c37aa7cba7372d949a91de53f53609b1b0c9cbeca436eb2fe7f5083d9f62c82' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='19a8945bdb3d35b7bf0432a9e066fb7831d11d1c1acfe56abd8fcabbf1ebddb4' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='099e39ad958aff2ef63841a812f5df62f8553aafc6dd33abb0eb0c67142c5e49' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Thu, 15 Feb 2018 19:14:05 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 19:14:07 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9f5fb24f6a56d40154efa93c8e4b67355c3a564056912cc647bc17155d821b`  
		Last Modified: Thu, 15 Feb 2018 19:14:30 GMT  
		Size: 6.2 MB (6234351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f97d16c759399b9b565baa71b6d687f8ae9998bb367629625bf339f5f6b178ab`  
		Last Modified: Thu, 15 Feb 2018 19:14:50 GMT  
		Size: 59.5 MB (59492697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6` - linux; 386

```console
$ docker pull julia@sha256:f4137e716815c8854990dbcab45edbd28e5e29d2eca6566f4744092bf455b218
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.8 MB (128766388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a9f90085f0763f9cc6de50fcf93c516127ddabde91ccab29cf28410917e5d30`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:29:16 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:33:42 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 12 Dec 2017 17:33:42 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 20 Dec 2017 05:14:34 GMT
ENV JULIA_VERSION=0.6.2
# Wed, 20 Dec 2017 05:14:53 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='dc6ec0b13551ce78083a5849268b20684421d46a7ec46b17ec1fab88a5078580' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='1c37aa7cba7372d949a91de53f53609b1b0c9cbeca436eb2fe7f5083d9f62c82' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='19a8945bdb3d35b7bf0432a9e066fb7831d11d1c1acfe56abd8fcabbf1ebddb4' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='099e39ad958aff2ef63841a812f5df62f8553aafc6dd33abb0eb0c67142c5e49' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Wed, 20 Dec 2017 05:14:54 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 20 Dec 2017 05:14:54 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76624f3b0f970f9e7741b0cb10299016048249522d5f78acbc9f80aac461e3de`  
		Last Modified: Tue, 12 Dec 2017 17:34:26 GMT  
		Size: 8.9 MB (8934276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740ce79dba252f5e80d901cc18657453b8378e93c6401ea2f81c5f053f11997a`  
		Last Modified: Wed, 20 Dec 2017 05:15:26 GMT  
		Size: 67.1 MB (67054743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.6.2`

```console
$ docker pull julia@sha256:a3d301001a56d810c6d88e76909fe5cef1c284e723f59a661681d00ddbbedc1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `julia:0.6.2` - linux; amd64

```console
$ docker pull julia@sha256:cecb43ec0d95a40b85a1257fd38d8828e3c636120a810a1caa6b04bf2953f6ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.4 MB (128351422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41ae667bf2161572f7f5e9efd464beda5f21a0f6c7ca0320ae8088029d3db8d8`
-	Default Command: `["julia"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 09:38:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 09:38:38 GMT
ENV JULIA_PATH=/usr/local/julia
# Sat, 17 Feb 2018 09:38:38 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Sat, 17 Feb 2018 09:38:38 GMT
ENV JULIA_VERSION=0.6.2
# Sat, 17 Feb 2018 09:38:48 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='dc6ec0b13551ce78083a5849268b20684421d46a7ec46b17ec1fab88a5078580' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='1c37aa7cba7372d949a91de53f53609b1b0c9cbeca436eb2fe7f5083d9f62c82' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='19a8945bdb3d35b7bf0432a9e066fb7831d11d1c1acfe56abd8fcabbf1ebddb4' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='099e39ad958aff2ef63841a812f5df62f8553aafc6dd33abb0eb0c67142c5e49' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Sat, 17 Feb 2018 09:38:48 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 09:38:48 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f6a32139b785bb818c4dd7f9f7363b7f943d32157a424da7a70f13e6c5dff8`  
		Last Modified: Sat, 17 Feb 2018 09:39:19 GMT  
		Size: 6.7 MB (6730435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f727c52e0db0c7a8e585f67f3deffdcff0c43b544efa5d7e16209a205578e496`  
		Last Modified: Sat, 17 Feb 2018 09:39:31 GMT  
		Size: 69.0 MB (69012702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6.2` - linux; arm variant v7

```console
$ docker pull julia@sha256:f3a2ba8888ab308c6d6f2c81339c20ed2be01cafe34da7b33f806782a78c762c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116039833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0503a9eeebfa46fa95282907280e853524af742c9436a3375b338718f2e7c1ab`
-	Default Command: `["julia"]`

```dockerfile
# Thu, 15 Feb 2018 13:26:29 GMT
ADD file:eb41e6f5be28a0581f56f72301ee93af1a27010f58b8eb6a759af7d673cc37f8 in / 
# Thu, 15 Feb 2018 13:26:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:19:40 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:19:43 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 15 Feb 2018 14:19:46 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 15 Feb 2018 14:19:51 GMT
ENV JULIA_VERSION=0.6.2
# Thu, 15 Feb 2018 14:20:08 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='dc6ec0b13551ce78083a5849268b20684421d46a7ec46b17ec1fab88a5078580' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='1c37aa7cba7372d949a91de53f53609b1b0c9cbeca436eb2fe7f5083d9f62c82' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='19a8945bdb3d35b7bf0432a9e066fb7831d11d1c1acfe56abd8fcabbf1ebddb4' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='099e39ad958aff2ef63841a812f5df62f8553aafc6dd33abb0eb0c67142c5e49' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Thu, 15 Feb 2018 14:20:09 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 14:20:09 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:6b0aacdd0080a4b5904034a1714e4c1553acbed305ce7a3b1689a35d0bb6e4a0`  
		Last Modified: Thu, 15 Feb 2018 13:35:36 GMT  
		Size: 48.7 MB (48701400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec6531a7e7f3503de0be77700389ec984629ad17ce3ddf85ca041ba04efe934`  
		Last Modified: Thu, 15 Feb 2018 14:20:34 GMT  
		Size: 6.1 MB (6077356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0231044fe496c6c340fee1b99037745aaf4d87eba604b598ef69117b90e4311d`  
		Last Modified: Thu, 15 Feb 2018 14:20:55 GMT  
		Size: 61.3 MB (61261077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6.2` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:b9e17a4f6af04624093ff0b5c08401aac0673426dd8bcfed2c4354ca30ecd3e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115660894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a33fc79c1c66b04e1d1675e60f5daa96fccaf206aab92781b88370d08d2333d8`
-	Default Command: `["julia"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:13:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:13:28 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 15 Feb 2018 19:13:29 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 15 Feb 2018 19:13:31 GMT
ENV JULIA_VERSION=0.6.2
# Thu, 15 Feb 2018 19:14:03 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='dc6ec0b13551ce78083a5849268b20684421d46a7ec46b17ec1fab88a5078580' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='1c37aa7cba7372d949a91de53f53609b1b0c9cbeca436eb2fe7f5083d9f62c82' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='19a8945bdb3d35b7bf0432a9e066fb7831d11d1c1acfe56abd8fcabbf1ebddb4' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='099e39ad958aff2ef63841a812f5df62f8553aafc6dd33abb0eb0c67142c5e49' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Thu, 15 Feb 2018 19:14:05 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 19:14:07 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9f5fb24f6a56d40154efa93c8e4b67355c3a564056912cc647bc17155d821b`  
		Last Modified: Thu, 15 Feb 2018 19:14:30 GMT  
		Size: 6.2 MB (6234351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f97d16c759399b9b565baa71b6d687f8ae9998bb367629625bf339f5f6b178ab`  
		Last Modified: Thu, 15 Feb 2018 19:14:50 GMT  
		Size: 59.5 MB (59492697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6.2` - linux; 386

```console
$ docker pull julia@sha256:f4137e716815c8854990dbcab45edbd28e5e29d2eca6566f4744092bf455b218
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.8 MB (128766388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a9f90085f0763f9cc6de50fcf93c516127ddabde91ccab29cf28410917e5d30`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:29:16 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:33:42 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 12 Dec 2017 17:33:42 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 20 Dec 2017 05:14:34 GMT
ENV JULIA_VERSION=0.6.2
# Wed, 20 Dec 2017 05:14:53 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='dc6ec0b13551ce78083a5849268b20684421d46a7ec46b17ec1fab88a5078580' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='1c37aa7cba7372d949a91de53f53609b1b0c9cbeca436eb2fe7f5083d9f62c82' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='19a8945bdb3d35b7bf0432a9e066fb7831d11d1c1acfe56abd8fcabbf1ebddb4' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='099e39ad958aff2ef63841a812f5df62f8553aafc6dd33abb0eb0c67142c5e49' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Wed, 20 Dec 2017 05:14:54 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 20 Dec 2017 05:14:54 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76624f3b0f970f9e7741b0cb10299016048249522d5f78acbc9f80aac461e3de`  
		Last Modified: Tue, 12 Dec 2017 17:34:26 GMT  
		Size: 8.9 MB (8934276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740ce79dba252f5e80d901cc18657453b8378e93c6401ea2f81c5f053f11997a`  
		Last Modified: Wed, 20 Dec 2017 05:15:26 GMT  
		Size: 67.1 MB (67054743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:latest`

```console
$ docker pull julia@sha256:a3d301001a56d810c6d88e76909fe5cef1c284e723f59a661681d00ddbbedc1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `julia:latest` - linux; amd64

```console
$ docker pull julia@sha256:cecb43ec0d95a40b85a1257fd38d8828e3c636120a810a1caa6b04bf2953f6ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.4 MB (128351422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41ae667bf2161572f7f5e9efd464beda5f21a0f6c7ca0320ae8088029d3db8d8`
-	Default Command: `["julia"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 09:38:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 09:38:38 GMT
ENV JULIA_PATH=/usr/local/julia
# Sat, 17 Feb 2018 09:38:38 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Sat, 17 Feb 2018 09:38:38 GMT
ENV JULIA_VERSION=0.6.2
# Sat, 17 Feb 2018 09:38:48 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='dc6ec0b13551ce78083a5849268b20684421d46a7ec46b17ec1fab88a5078580' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='1c37aa7cba7372d949a91de53f53609b1b0c9cbeca436eb2fe7f5083d9f62c82' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='19a8945bdb3d35b7bf0432a9e066fb7831d11d1c1acfe56abd8fcabbf1ebddb4' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='099e39ad958aff2ef63841a812f5df62f8553aafc6dd33abb0eb0c67142c5e49' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Sat, 17 Feb 2018 09:38:48 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 09:38:48 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f6a32139b785bb818c4dd7f9f7363b7f943d32157a424da7a70f13e6c5dff8`  
		Last Modified: Sat, 17 Feb 2018 09:39:19 GMT  
		Size: 6.7 MB (6730435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f727c52e0db0c7a8e585f67f3deffdcff0c43b544efa5d7e16209a205578e496`  
		Last Modified: Sat, 17 Feb 2018 09:39:31 GMT  
		Size: 69.0 MB (69012702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - linux; arm variant v7

```console
$ docker pull julia@sha256:f3a2ba8888ab308c6d6f2c81339c20ed2be01cafe34da7b33f806782a78c762c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116039833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0503a9eeebfa46fa95282907280e853524af742c9436a3375b338718f2e7c1ab`
-	Default Command: `["julia"]`

```dockerfile
# Thu, 15 Feb 2018 13:26:29 GMT
ADD file:eb41e6f5be28a0581f56f72301ee93af1a27010f58b8eb6a759af7d673cc37f8 in / 
# Thu, 15 Feb 2018 13:26:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:19:40 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:19:43 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 15 Feb 2018 14:19:46 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 15 Feb 2018 14:19:51 GMT
ENV JULIA_VERSION=0.6.2
# Thu, 15 Feb 2018 14:20:08 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='dc6ec0b13551ce78083a5849268b20684421d46a7ec46b17ec1fab88a5078580' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='1c37aa7cba7372d949a91de53f53609b1b0c9cbeca436eb2fe7f5083d9f62c82' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='19a8945bdb3d35b7bf0432a9e066fb7831d11d1c1acfe56abd8fcabbf1ebddb4' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='099e39ad958aff2ef63841a812f5df62f8553aafc6dd33abb0eb0c67142c5e49' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Thu, 15 Feb 2018 14:20:09 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 14:20:09 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:6b0aacdd0080a4b5904034a1714e4c1553acbed305ce7a3b1689a35d0bb6e4a0`  
		Last Modified: Thu, 15 Feb 2018 13:35:36 GMT  
		Size: 48.7 MB (48701400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec6531a7e7f3503de0be77700389ec984629ad17ce3ddf85ca041ba04efe934`  
		Last Modified: Thu, 15 Feb 2018 14:20:34 GMT  
		Size: 6.1 MB (6077356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0231044fe496c6c340fee1b99037745aaf4d87eba604b598ef69117b90e4311d`  
		Last Modified: Thu, 15 Feb 2018 14:20:55 GMT  
		Size: 61.3 MB (61261077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:b9e17a4f6af04624093ff0b5c08401aac0673426dd8bcfed2c4354ca30ecd3e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115660894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a33fc79c1c66b04e1d1675e60f5daa96fccaf206aab92781b88370d08d2333d8`
-	Default Command: `["julia"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:13:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:13:28 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 15 Feb 2018 19:13:29 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 15 Feb 2018 19:13:31 GMT
ENV JULIA_VERSION=0.6.2
# Thu, 15 Feb 2018 19:14:03 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='dc6ec0b13551ce78083a5849268b20684421d46a7ec46b17ec1fab88a5078580' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='1c37aa7cba7372d949a91de53f53609b1b0c9cbeca436eb2fe7f5083d9f62c82' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='19a8945bdb3d35b7bf0432a9e066fb7831d11d1c1acfe56abd8fcabbf1ebddb4' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='099e39ad958aff2ef63841a812f5df62f8553aafc6dd33abb0eb0c67142c5e49' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Thu, 15 Feb 2018 19:14:05 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 19:14:07 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9f5fb24f6a56d40154efa93c8e4b67355c3a564056912cc647bc17155d821b`  
		Last Modified: Thu, 15 Feb 2018 19:14:30 GMT  
		Size: 6.2 MB (6234351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f97d16c759399b9b565baa71b6d687f8ae9998bb367629625bf339f5f6b178ab`  
		Last Modified: Thu, 15 Feb 2018 19:14:50 GMT  
		Size: 59.5 MB (59492697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - linux; 386

```console
$ docker pull julia@sha256:f4137e716815c8854990dbcab45edbd28e5e29d2eca6566f4744092bf455b218
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.8 MB (128766388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a9f90085f0763f9cc6de50fcf93c516127ddabde91ccab29cf28410917e5d30`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:29:16 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:33:42 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 12 Dec 2017 17:33:42 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 20 Dec 2017 05:14:34 GMT
ENV JULIA_VERSION=0.6.2
# Wed, 20 Dec 2017 05:14:53 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='dc6ec0b13551ce78083a5849268b20684421d46a7ec46b17ec1fab88a5078580' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='1c37aa7cba7372d949a91de53f53609b1b0c9cbeca436eb2fe7f5083d9f62c82' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='19a8945bdb3d35b7bf0432a9e066fb7831d11d1c1acfe56abd8fcabbf1ebddb4' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='099e39ad958aff2ef63841a812f5df62f8553aafc6dd33abb0eb0c67142c5e49' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Wed, 20 Dec 2017 05:14:54 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 20 Dec 2017 05:14:54 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76624f3b0f970f9e7741b0cb10299016048249522d5f78acbc9f80aac461e3de`  
		Last Modified: Tue, 12 Dec 2017 17:34:26 GMT  
		Size: 8.9 MB (8934276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740ce79dba252f5e80d901cc18657453b8378e93c6401ea2f81c5f053f11997a`  
		Last Modified: Wed, 20 Dec 2017 05:15:26 GMT  
		Size: 67.1 MB (67054743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
