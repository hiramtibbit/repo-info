## `julia:0-stretch`

```console
$ docker pull julia@sha256:874a871e3bfe6850c648d7e745646c60bdcbdd2469639bda984f58fc24de0ce5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `julia:0-stretch` - linux; amd64

```console
$ docker pull julia@sha256:faa4ea5e5654211810b5b04972f30505c75f1929c509d8081fd71660a5dd317a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.9 MB (124856846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56529690c5b1ada793fefe541cb94868550d892f9da8ba6fdbb1f6eeb990149b`
-	Default Command: `["julia"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Mon, 14 May 2018 22:19:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 14 May 2018 22:19:58 GMT
ENV JULIA_PATH=/usr/local/julia
# Mon, 14 May 2018 22:19:58 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 14 May 2018 22:19:58 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 06 Jun 2018 18:22:35 GMT
ENV JULIA_VERSION=0.6.3
# Wed, 06 Jun 2018 18:22:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 06 Jun 2018 18:22:54 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b1db3ff51210b2be8e85c6068c447ea5276650013069ac5bfe9adcd7e7e9cb`  
		Last Modified: Mon, 14 May 2018 22:21:16 GMT  
		Size: 9.5 MB (9486387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0207fd763cfe687572b15fbb3b55e18bc541a941267c73e093c6c0d090a71fca`  
		Last Modified: Wed, 06 Jun 2018 18:23:45 GMT  
		Size: 70.1 MB (70052300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0-stretch` - linux; arm variant v7

```console
$ docker pull julia@sha256:c94d795e2fba17708ca723207f3087a0625a66f5cfca5faa16527b9c00ecb913
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.2 MB (112205748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0064dbebf3d26916eb3964cb9664393a2023e10f19d634cf582920337611c3f`
-	Default Command: `["julia"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Tue, 15 May 2018 11:58:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 11:58:05 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 15 May 2018 11:58:05 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 11:58:06 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 08 Jun 2018 11:59:01 GMT
ENV JULIA_VERSION=0.6.3
# Fri, 08 Jun 2018 11:59:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 08 Jun 2018 11:59:34 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a45cbe60b7a173e7a1f717da29a04a7618989e83e045fd094c287d5a1cbb5c9`  
		Last Modified: Tue, 15 May 2018 12:01:10 GMT  
		Size: 8.2 MB (8210299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875f9a7a3d37065c1525776af58cb07b0f0eac6c860a52d382ca760ea2b21560`  
		Last Modified: Fri, 08 Jun 2018 12:00:39 GMT  
		Size: 61.9 MB (61931712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0-stretch` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:b2b4bfccdd3dd3a8f4ed1c83d46ed28fe417b06cc140c1d1517be47d08ccacc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.7 MB (111698820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:163ff4c69c663debb13d50863a45f26dedf84c70a863cf293de1e8c5bd58619f`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 15 May 2018 08:40:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 08:40:24 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 15 May 2018 08:40:25 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 08:40:26 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 07 Jun 2018 08:42:44 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 08:43:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 07 Jun 2018 08:43:45 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a61c987f0521ac6b8079119c48145f12a3b346cdbd4084b50637995592cf0f`  
		Last Modified: Tue, 15 May 2018 08:43:29 GMT  
		Size: 8.4 MB (8447636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0113361af86e83cbe143e97f113284fe699d443da230e48fb3ed36aeab54433`  
		Last Modified: Thu, 07 Jun 2018 08:45:29 GMT  
		Size: 60.1 MB (60141835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0-stretch` - linux; 386

```console
$ docker pull julia@sha256:6f7a9e51f6f5cf93a942b6187764c5210a366311eb134a87764e37719f5f7552
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.9 MB (122917963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea8f419cde3d56d787ce72b6891cc0a6f2139512a985a94ff63b6fe68bd2959a`
-	Default Command: `["julia"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Thu, 07 Jun 2018 10:41:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Jun 2018 10:41:23 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 07 Jun 2018 10:41:23 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Jun 2018 10:41:23 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 07 Jun 2018 10:41:24 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 10:41:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 07 Jun 2018 10:41:59 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5492f7e41d454d495d06adbb70e6fb67b0864bdcff8d8d64b4289a9ebee37854`  
		Last Modified: Thu, 07 Jun 2018 10:44:24 GMT  
		Size: 9.5 MB (9489356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b7f3f4ffd636fe026e46d0bccb956d086f4f6096a6af92d86a8902b17bbbbc`  
		Last Modified: Thu, 07 Jun 2018 10:44:58 GMT  
		Size: 67.4 MB (67383722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
