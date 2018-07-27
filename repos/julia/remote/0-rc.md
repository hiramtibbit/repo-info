## `julia:0-rc`

```console
$ docker pull julia@sha256:84b6dcb0f20e78c7a295d2e868f333292e3aaf1a3c6278fd93cd32422d85f9bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `julia:0-rc` - linux; amd64

```console
$ docker pull julia@sha256:0e30856907b3faaae7237edadf71d1576fe258a8f4fc047103f6563ff7f1a94d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.5 MB (152537025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fea6a8f66f9ba44b0ec003cce8a8812cdbb76b1484c7b80d4497cf5d8b39884d`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:10:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:10:53 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 17 Jul 2018 03:10:53 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 03:10:53 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 27 Jul 2018 22:19:48 GMT
ENV JULIA_VERSION=0.7.0-beta2
# Fri, 27 Jul 2018 22:20:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='ea136f417d84ffb4b6bf58fcf534d839dc1c2e9f10696b355fc795dbe99e9d58' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='366584fa7c04edd018b6e310b6b4fbe9eb375819518f8500078113f54eb5159b' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='4017c1fb4d135239274390f51ec2cfce0573534807cf95c63dd54b33337897de' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 27 Jul 2018 22:20:33 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0293350860a4c4d4be5f5e524ab4b733fcab37b5f9d2256bcd6224d6e2f9d842`  
		Last Modified: Tue, 17 Jul 2018 03:13:04 GMT  
		Size: 9.5 MB (9453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84df2f901cda3952cec5e35e54b4a2dba8c80e95859ad0b479d67b1924a5511`  
		Last Modified: Fri, 27 Jul 2018 22:23:18 GMT  
		Size: 97.8 MB (97773033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
