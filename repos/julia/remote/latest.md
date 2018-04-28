## `julia:latest`

```console
$ docker pull julia@sha256:485793a783312339d5b885ba6f098c5fe8e9c259c6412abfdd740f143e29e56e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `julia:latest` - linux; amd64

```console
$ docker pull julia@sha256:e8d98b1f75a4b9d9814c53835a175407ed0cb2e152b6fbb95b5b428507039ed4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.4 MB (128351770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c445929575aab8d1358e36d5cf664466b05435cd663a48a4e9544b6aaf3c95ac`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 23:56:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 23:56:45 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 14 Mar 2018 23:56:46 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 14 Mar 2018 23:56:46 GMT
ENV JULIA_VERSION=0.6.2
# Wed, 14 Mar 2018 23:56:54 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='dc6ec0b13551ce78083a5849268b20684421d46a7ec46b17ec1fab88a5078580' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='1c37aa7cba7372d949a91de53f53609b1b0c9cbeca436eb2fe7f5083d9f62c82' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='19a8945bdb3d35b7bf0432a9e066fb7831d11d1c1acfe56abd8fcabbf1ebddb4' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='099e39ad958aff2ef63841a812f5df62f8553aafc6dd33abb0eb0c67142c5e49' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Wed, 14 Mar 2018 23:56:54 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 23:56:55 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43db1ed84ae1d5c9c07fba3a10f9417049c25dd25e9a060a6b75e2fb7da51a3b`  
		Last Modified: Wed, 14 Mar 2018 23:57:18 GMT  
		Size: 6.7 MB (6730521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43903022229a94399e5545355f0844d6ce1d0797ddcc59181be9da8aa4d0aeb1`  
		Last Modified: Wed, 14 Mar 2018 23:57:29 GMT  
		Size: 69.0 MB (69012730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - linux; arm variant v7

```console
$ docker pull julia@sha256:5ee3e5e22991a7971b9d98f2bfbd5f48d3417dd079a38606d9ecf22b204ce9b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116040304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e4e88e3b3b96c305de810b8ba47493a7e696813595432055283df4dc5a9bf5`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 14 Mar 2018 12:26:45 GMT
ADD file:61187374d52790eaf655b56fcca85d392ef4a9d0844161f18ea519a8f6acb1bb in / 
# Wed, 14 Mar 2018 12:26:46 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 15:58:40 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 15:58:45 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 14 Mar 2018 15:58:46 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 14 Mar 2018 15:58:46 GMT
ENV JULIA_VERSION=0.6.2
# Wed, 14 Mar 2018 15:59:00 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='dc6ec0b13551ce78083a5849268b20684421d46a7ec46b17ec1fab88a5078580' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='1c37aa7cba7372d949a91de53f53609b1b0c9cbeca436eb2fe7f5083d9f62c82' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='19a8945bdb3d35b7bf0432a9e066fb7831d11d1c1acfe56abd8fcabbf1ebddb4' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='099e39ad958aff2ef63841a812f5df62f8553aafc6dd33abb0eb0c67142c5e49' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Wed, 14 Mar 2018 15:59:00 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 15:59:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:01f50fb86130a0959fcc95157f9f911daf27a42f88c23a55ad8ad827eb4d7124`  
		Last Modified: Wed, 14 Mar 2018 12:38:17 GMT  
		Size: 48.7 MB (48702073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8dcd263c224a8f6d7ddf7e56ce95c6d75056990be2c1c54713608f2c4d71c3`  
		Last Modified: Wed, 14 Mar 2018 15:59:44 GMT  
		Size: 6.1 MB (6077144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8deef6e67382dc0fda554dda5add883bf37c038cadf251020d0797e693e01f41`  
		Last Modified: Wed, 14 Mar 2018 16:00:05 GMT  
		Size: 61.3 MB (61261087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:23270fde9240c4f401add8c82a6dc1a523b2185562f92229c57596ad4d50ca1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115660335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:281324320328706543e6d2fd641ffc49fd3b0f732150b8fae161ba353d30dd66`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 19:29:44 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 19:29:46 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 14 Mar 2018 19:29:46 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 14 Mar 2018 19:29:47 GMT
ENV JULIA_VERSION=0.6.2
# Wed, 14 Mar 2018 19:30:28 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='dc6ec0b13551ce78083a5849268b20684421d46a7ec46b17ec1fab88a5078580' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='1c37aa7cba7372d949a91de53f53609b1b0c9cbeca436eb2fe7f5083d9f62c82' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='19a8945bdb3d35b7bf0432a9e066fb7831d11d1c1acfe56abd8fcabbf1ebddb4' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='099e39ad958aff2ef63841a812f5df62f8553aafc6dd33abb0eb0c67142c5e49' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Wed, 14 Mar 2018 19:30:29 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 19:30:30 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1816fd2ee69851badba54b074ebf40fedeb09a4d8ac1d768d73cc0ffcded20`  
		Last Modified: Wed, 14 Mar 2018 19:31:16 GMT  
		Size: 6.2 MB (6234172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb2ebb799858b1682f2de3767a2e8b7a09d197fd1aff33a5d1dbcd2d9f28b7ef`  
		Last Modified: Wed, 14 Mar 2018 19:31:47 GMT  
		Size: 59.5 MB (59492700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - linux; 386

```console
$ docker pull julia@sha256:6d9e3bc4d24c280e5c4077e5ba8d2368ed36967eff7427a468afd5429eb6757f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.8 MB (128776679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c7737671790424a38d769b41f76b9a1fa5c44b9ff310b9f3f8d253f499f8bda`
-	Default Command: `["julia"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:32 GMT
ADD file:ce5174f2b2c155a2421fac3ff37a02d9551d5d79e31a541189bcfd2416a6903a in / 
# Sat, 28 Apr 2018 10:39:32 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:57:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:57:22 GMT
ENV JULIA_PATH=/usr/local/julia
# Sat, 28 Apr 2018 12:57:22 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Sat, 28 Apr 2018 12:57:22 GMT
ENV JULIA_VERSION=0.6.2
# Sat, 28 Apr 2018 12:57:32 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='dc6ec0b13551ce78083a5849268b20684421d46a7ec46b17ec1fab88a5078580' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='1c37aa7cba7372d949a91de53f53609b1b0c9cbeca436eb2fe7f5083d9f62c82' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='19a8945bdb3d35b7bf0432a9e066fb7831d11d1c1acfe56abd8fcabbf1ebddb4' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='099e39ad958aff2ef63841a812f5df62f8553aafc6dd33abb0eb0c67142c5e49' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Sat, 28 Apr 2018 12:57:32 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 12:57:32 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:05b419d667f793c8c2edf0ff0aec14fc4d66733cdb89957ac89e8bfbeaddd0fa`  
		Last Modified: Sat, 28 Apr 2018 10:44:20 GMT  
		Size: 54.5 MB (54486782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6559fde6c859cb3e1a70e9e4599afa2afb56ba9ce6bbca8f3544d9a4650f9c1d`  
		Last Modified: Sat, 28 Apr 2018 12:57:44 GMT  
		Size: 7.2 MB (7235179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6901de9c3eeb19f78fb83b3acc10019e28643c2b7905ea78406fe6f752761208`  
		Last Modified: Sat, 28 Apr 2018 12:58:01 GMT  
		Size: 67.1 MB (67054718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
