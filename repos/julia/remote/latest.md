## `julia:latest`

```console
$ docker pull julia@sha256:b118268b185881957040ac30763c5db0ab54b72b483d12b52da0ad812f3be7f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	windows version 10.0.14393.2363; amd64
	-	windows version 10.0.16299.547; amd64

### `julia:latest` - linux; amd64

```console
$ docker pull julia@sha256:ab3e7fb945713f1eda0431843f3ac8c4f90829255cb5c70edfd82fb38d864514
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.8 MB (124816028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e773bf0c961804d9d7de53fd68bc16dc8e80e6989e0a7ef2fa0a5174dc3c6618`
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
# Tue, 17 Jul 2018 03:10:53 GMT
ENV JULIA_VERSION=0.6.3
# Tue, 17 Jul 2018 03:11:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 17 Jul 2018 03:11:15 GMT
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
	-	`sha256:63a9f4a06a95c38b239943fcb5fe5a4f9dae48fbfd9b7f3a7a470bffda03e1bc`  
		Last Modified: Tue, 17 Jul 2018 03:13:27 GMT  
		Size: 70.1 MB (70052036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - linux; arm variant v7

```console
$ docker pull julia@sha256:972dfd17f09e5094f9b6b00f778c2443f83e5a0a3e3a2fa06db63e6ac7aea2e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.2 MB (112170710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3510d6c59cacd7c741e1c6f8cbc06e9f8b545ea309798bdd2479472b6c81a85`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 12:05:25 GMT
ADD file:77cbe27c4436cc4c9d81bee6c5ae0fee0c6d1708813d34abd2af2d3ebd7d96a5 in / 
# Tue, 17 Jul 2018 12:05:26 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:34:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:34:23 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 17 Jul 2018 14:34:23 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 14:34:23 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 17 Jul 2018 14:34:23 GMT
ENV JULIA_VERSION=0.6.3
# Tue, 17 Jul 2018 14:35:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 17 Jul 2018 14:35:06 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:a92bc499a4699bc1d9bd6631daec00b7b440346221ce91af635e3460f7d4d70b`  
		Last Modified: Tue, 17 Jul 2018 12:17:32 GMT  
		Size: 42.1 MB (42060835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad12a8525f9534d09ff81494d9586c287903f898fccb40830247c49027eb1553`  
		Last Modified: Tue, 17 Jul 2018 14:36:47 GMT  
		Size: 8.2 MB (8178461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1a624beebb6b2e83b16cf394724c8233f01e4336eb47c4ad341af5175481be`  
		Last Modified: Tue, 17 Jul 2018 14:37:09 GMT  
		Size: 61.9 MB (61931414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:ad9e522002043fdb07a56f2116fc29209b4d172aa654f1f7d15ad02e55587936
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.7 MB (111681078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad7ae6813e41c8889bd57fa064afdacf926c40e9463748916e78af659d154c03`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:50:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:50:31 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 17 Jul 2018 15:50:32 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 15:50:33 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 17 Jul 2018 15:50:34 GMT
ENV JULIA_VERSION=0.6.3
# Tue, 17 Jul 2018 15:51:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 17 Jul 2018 15:51:19 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31908d31e0a8159272fb1b68664beeb2ac5ccc470f28cb7b14a36d2c56ba04b`  
		Last Modified: Tue, 17 Jul 2018 15:51:53 GMT  
		Size: 8.4 MB (8415986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b9b196fee52abddf9b2d135a1baf99b229d035d7040137c1095e14cf903795`  
		Last Modified: Tue, 17 Jul 2018 15:52:20 GMT  
		Size: 60.1 MB (60141524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - linux; 386

```console
$ docker pull julia@sha256:074eacd396657b3fbf1fc9a50dce7eb1d07e66f078ed77a29f9ac871eefce757
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.9 MB (122879484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:468089eed868345f85ab22e46e04efaa8e9957ff867d5f6769113e12433a437c`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:13:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:13:30 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 17 Jul 2018 15:13:30 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 15:13:31 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 17 Jul 2018 15:13:32 GMT
ENV JULIA_VERSION=0.6.3
# Tue, 17 Jul 2018 15:14:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 17 Jul 2018 15:14:20 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d401e0b24d1238625d5d1dbc6687c9b978449b8c573d46f17023b4ca681711`  
		Last Modified: Tue, 17 Jul 2018 15:16:52 GMT  
		Size: 9.5 MB (9458395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeacf10dcc8ce1ce3d3ac934e9e68cdf949177814c523f021b0b6497c08736a5`  
		Last Modified: Tue, 17 Jul 2018 15:17:13 GMT  
		Size: 67.4 MB (67383567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - windows version 10.0.14393.2363; amd64

```console
$ docker pull julia@sha256:0f1efd4b59cc2878d6ae72aa46475252b95aeb5d76e99879e933569a9e4b51d3
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5569962530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1386639a5e2e3d820407280d21df05d88292ddf174a7d904163c31323b6c7ec5`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 10 Jul 2018 21:16:33 GMT
RUN Install update 10.0.14393.2363
# Wed, 11 Jul 2018 09:36:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 21 Jul 2018 10:03:05 GMT
ENV JULIA_VERSION=0.6.3
# Sat, 21 Jul 2018 10:03:06 GMT
ENV JULIA_SHA256=e6eef263bbe6d95d2def300407edb6a624e77166d73f423cd7fc895f8464cffd
# Sat, 21 Jul 2018 10:05:35 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION -replace '[.-][^.-]+$', ''));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 21 Jul 2018 10:05:37 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fb1ebf2c42b6ac63b874d36a405b413fdf6c314131c3605d77e3cee6f485881f`  
		Last Modified: Tue, 10 Jul 2018 21:16:33 GMT  
		Size: 1.4 GB (1419298293 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b678e902d6e9a27ab4d61bef7b26997ea26fdec2575d1317c9eab3b31c61fd9b`  
		Last Modified: Wed, 11 Jul 2018 09:53:57 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7f417d10fd886f470dc6648ab2f930c17f5cbb5ecb9143925979c867659c4a`  
		Last Modified: Sat, 21 Jul 2018 10:08:06 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91c94ab37817672bc9616ebd86f69d18f1d91a2569879f22bc605ac02510ab74`  
		Last Modified: Sat, 21 Jul 2018 10:08:06 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d88763f700724055717afbd2033c7a85562e45af4e0d815abb1d2ec193127feb`  
		Last Modified: Sat, 21 Jul 2018 10:08:28 GMT  
		Size: 80.7 MB (80673556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcdc042116ba0c8851c1cf55a1d72b6c6e3fc83c672571c3a7c4280b0abb5212`  
		Last Modified: Sat, 21 Jul 2018 10:08:07 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - windows version 10.0.16299.547; amd64

```console
$ docker pull julia@sha256:00a06907c08c20f3bed595a728904a3a264e010fc8cefbb91f3eece7668c841c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3181315393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7ae9261ec10b3e0909616aa23c9e860a8b31e8b6bf46d2d846180a386487ac2`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Jul 2018 18:10:50 GMT
RUN Install update 10.0.16299.547
# Wed, 11 Jul 2018 09:41:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 21 Jul 2018 10:05:47 GMT
ENV JULIA_VERSION=0.6.3
# Sat, 21 Jul 2018 10:05:47 GMT
ENV JULIA_SHA256=e6eef263bbe6d95d2def300407edb6a624e77166d73f423cd7fc895f8464cffd
# Sat, 21 Jul 2018 10:07:51 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION -replace '[.-][^.-]+$', ''));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 21 Jul 2018 10:07:52 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a01c2a39b5bdf158508b424626efbcede4aa9da21f2d4f6ffbd5bff4deb0fb01`  
		Last Modified: Tue, 10 Jul 2018 23:36:17 GMT  
		Size: 831.1 MB (831119569 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5c935a79e71d79bf144e02b94352e10d483d43e5c3f4a3491874c5d6d72deda3`  
		Last Modified: Wed, 11 Jul 2018 09:55:02 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e86232848a6e3ff1c419ed6d45b408183e25c1efa86ff686a4c0dc6bb7b07e2`  
		Last Modified: Sat, 21 Jul 2018 10:08:45 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064d98da81db1f62c81fec69e173c4548b31380f4cd03e2e9ab848320297e409`  
		Last Modified: Sat, 21 Jul 2018 10:08:46 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfdb87617e458f991cdc9661be8f92db57a0f768de52d3a52b187ae41b9a47fa`  
		Last Modified: Sat, 21 Jul 2018 10:09:05 GMT  
		Size: 75.9 MB (75890474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:280c0c847b1eb0d5c2bfe9f270fcb06afde3a47716f95eb03b5716145b3d0af6`  
		Last Modified: Sat, 21 Jul 2018 10:08:46 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
