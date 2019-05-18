<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `julia`

-	[`julia:1`](#julia1)
-	[`julia:1.0`](#julia10)
-	[`julia:1.0.4`](#julia104)
-	[`julia:1.0.4-stretch`](#julia104-stretch)
-	[`julia:1.0.4-windowsservercore-1803`](#julia104-windowsservercore-1803)
-	[`julia:1.0.4-windowsservercore-ltsc2016`](#julia104-windowsservercore-ltsc2016)
-	[`julia:1.0-stretch`](#julia10-stretch)
-	[`julia:1.0-windowsservercore-1803`](#julia10-windowsservercore-1803)
-	[`julia:1.0-windowsservercore-ltsc2016`](#julia10-windowsservercore-ltsc2016)
-	[`julia:1.1`](#julia11)
-	[`julia:1.1.1`](#julia111)
-	[`julia:1.1.1-stretch`](#julia111-stretch)
-	[`julia:1.1.1-windowsservercore-1803`](#julia111-windowsservercore-1803)
-	[`julia:1.1.1-windowsservercore-ltsc2016`](#julia111-windowsservercore-ltsc2016)
-	[`julia:1.1-stretch`](#julia11-stretch)
-	[`julia:1.1-windowsservercore-1803`](#julia11-windowsservercore-1803)
-	[`julia:1.1-windowsservercore-ltsc2016`](#julia11-windowsservercore-ltsc2016)
-	[`julia:1-stretch`](#julia1-stretch)
-	[`julia:1-windowsservercore-1803`](#julia1-windowsservercore-1803)
-	[`julia:1-windowsservercore-ltsc2016`](#julia1-windowsservercore-ltsc2016)
-	[`julia:latest`](#julialatest)
-	[`julia:stretch`](#juliastretch)
-	[`julia:windowsservercore-1803`](#juliawindowsservercore-1803)
-	[`julia:windowsservercore-ltsc2016`](#juliawindowsservercore-ltsc2016)

## `julia:1`

```console
$ docker pull julia@sha256:8dc4f7de8610d1e5d6407436e2303f294818e3633070414b7d30b4903f5d1698
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	windows version 10.0.14393.2969; amd64
	-	windows version 10.0.17134.765; amd64

### `julia:1` - linux; amd64

```console
$ docker pull julia@sha256:b3e38a6c07db51f95c8df0204b4c702740a409f6d0ad4166806e68eec63b5343
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.5 MB (151540875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5962892f8ae5f870e48b86d382bb0e3cca2d933deb58f9132c238031c7e3f240`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:09:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 02:09:25 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 08 May 2019 02:09:25 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 02:09:25 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 23:19:34 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 23:19:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='f0a83a139a89a2ccf2316814e5ee1c0c809fca02cbaf4baf3c1fd8eb71594f06' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='3d9ba9c2204ea920006b3a91ecd2803cac808b29250f2120000e29fc0384099a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6941326522ac4bc34c5663c2c5752417e92677ff9befc56ba264eb283f37f1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 23:19:54 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4afdb09021f95e504e5adca5fef8d3f76fdcd8f8875d5972f5abf8e5160f703`  
		Last Modified: Wed, 08 May 2019 02:10:21 GMT  
		Size: 9.5 MB (9497513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca9ea75da0861485d4df9d96df261c0d9fca7bd154c40c290e63020616e4a6a`  
		Last Modified: Fri, 17 May 2019 23:20:47 GMT  
		Size: 96.7 MB (96704048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:068562d5cf78120185b2508d7bd44bc979c5e4e62befdfbbcaee4b7a7c3c739f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132501614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f22d74b24042f30eccab1ca5263491badeacb376f02646b8ec72cf29eeb58239`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Fri, 17 May 2019 22:40:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 17 May 2019 22:40:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 17 May 2019 22:40:08 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 May 2019 22:40:08 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 22:40:09 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 22:40:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='f0a83a139a89a2ccf2316814e5ee1c0c809fca02cbaf4baf3c1fd8eb71594f06' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='3d9ba9c2204ea920006b3a91ecd2803cac808b29250f2120000e29fc0384099a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6941326522ac4bc34c5663c2c5752417e92677ff9befc56ba264eb283f37f1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 22:40:33 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6502085a5f36d50a9e5add80fd8f9251c6cabc20399e0b8b88948599fb429d2`  
		Last Modified: Fri, 17 May 2019 22:41:30 GMT  
		Size: 8.5 MB (8465608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e12ea7b27f1fb4f9ca7e1ddb343724e10cfda46d32ed4c49a108c3e05e2ea47`  
		Last Modified: Fri, 17 May 2019 22:41:55 GMT  
		Size: 80.9 MB (80894051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1` - linux; 386

```console
$ docker pull julia@sha256:b1d63523919bf77e2f3ad4ea26dae4a701965515e7e5211aed55f2578295b316
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.4 MB (149417108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b75c0794a27d4c2ea994e00c3055ad6fec43993dd0fc83429a8601ed428bff5a`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 10:49:19 GMT
ADD file:fde8cf5700c66c38b88d4b3254ec1544d09194e06568c23fe3989f7eaa1f5785 in / 
# Wed, 08 May 2019 10:49:20 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:30:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:30:25 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 08 May 2019 19:30:25 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 19:30:25 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 22:38:32 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 22:38:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='f0a83a139a89a2ccf2316814e5ee1c0c809fca02cbaf4baf3c1fd8eb71594f06' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='3d9ba9c2204ea920006b3a91ecd2803cac808b29250f2120000e29fc0384099a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6941326522ac4bc34c5663c2c5752417e92677ff9befc56ba264eb283f37f1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 22:38:54 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b5d586ad7adeab23f6ff0b7ec90785dc757eaccd445976fda3f6d7db64d20585`  
		Last Modified: Wed, 08 May 2019 10:57:26 GMT  
		Size: 46.1 MB (46063371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cadea6066c9d4abd4e2517501b2035006b24b3bc5ec419dc2caab63824d70d`  
		Last Modified: Wed, 08 May 2019 19:31:25 GMT  
		Size: 9.5 MB (9505199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a113dfc032a62b23b45e95e1704b0c750f0c901b518e7e1668c4899ec76eb88a`  
		Last Modified: Fri, 17 May 2019 22:39:52 GMT  
		Size: 93.8 MB (93848538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1` - windows version 10.0.14393.2969; amd64

```console
$ docker pull julia@sha256:1711e64884ed83c07f2709de42ab88a2cde651ad5e7f5063d817d403116d6674
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5811030225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c628045512a090de695d169930d5301fac7559af1bb9a6b8e200cea6986e291`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 12:35:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 17 May 2019 23:17:27 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 23:17:28 GMT
ENV JULIA_SHA256=26f980a1dd0d93a38c4a5b7e397210a761efed1f87caadc1a7066bb8ab12efab
# Fri, 17 May 2019 23:20:43 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Fri, 17 May 2019 23:20:44 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b48eb2d408a626a484fe196b9b128fc9d49431157edd27f53c27b86a3f2c4af4`  
		Last Modified: Wed, 15 May 2019 13:04:30 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c77091f9d8c25e01f69cedc20b72d14b0796436f2a7006bfdf73a96ae7cc031`  
		Last Modified: Fri, 17 May 2019 23:30:53 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65062a85f74c873eea53dd5f51da498cc66de1d22e7aac017ded327689241fc2`  
		Last Modified: Fri, 17 May 2019 23:30:54 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f974bfe0a23c8ad09af384194e810b4a1a932f240a4c8d314a41078b6631813`  
		Last Modified: Fri, 17 May 2019 23:31:23 GMT  
		Size: 108.9 MB (108904531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8399b52467149a13148a2dff09861f777515d244f59b420dbaa6aed9a678ec5c`  
		Last Modified: Fri, 17 May 2019 23:30:54 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1` - windows version 10.0.17134.765; amd64

```console
$ docker pull julia@sha256:023d40f4d3ad40442229496de75d20362e0e3978ab651cb58b91ed7710b2667e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2406216306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6414d18dc4fc1c8db3e7ced7cec5fd7b1f6fbe28d63bb7069bbf64355ac7ac7e`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 12:45:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 17 May 2019 23:20:56 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 23:20:57 GMT
ENV JULIA_SHA256=26f980a1dd0d93a38c4a5b7e397210a761efed1f87caadc1a7066bb8ab12efab
# Fri, 17 May 2019 23:23:38 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Fri, 17 May 2019 23:23:39 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:58d321368bbf68a108d3298dd40a5ce2d47e3b2d59969e159f05e4fac7b4c259`  
		Last Modified: Wed, 15 May 2019 13:06:15 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6602e91a3f32987808d224ec1037c4d67aeec5f9b19cacdb3bf98a2be27b39a`  
		Last Modified: Fri, 17 May 2019 23:31:48 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38da23b82d5b787f2ac2097619f5a740da1edeae0740d18b227aca31b42d281`  
		Last Modified: Fri, 17 May 2019 23:31:48 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e46069ca43641548fb0e608a613b0545995777611e450afa60b998f799a5f3`  
		Last Modified: Fri, 17 May 2019 23:32:15 GMT  
		Size: 104.0 MB (103961370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c570bc1617177a62dcd4260c17e61b2726055f5b7ec8993f62a09c48fbf78ca`  
		Last Modified: Fri, 17 May 2019 23:31:48 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.0`

```console
$ docker pull julia@sha256:d81092ceca22b83ff6eab05c59ef2f65ca3a9cf2c3a13c54bff4e6e990ac8144
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	windows version 10.0.14393.2969; amd64
	-	windows version 10.0.17134.765; amd64

### `julia:1.0` - linux; amd64

```console
$ docker pull julia@sha256:d7ec23eda6f5f11edbce0bb6cc5da8b678a484de7f26f2fe6251b31b1b3314bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.5 MB (150512380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb913407e31c3a951ccbddbce7fb3eaf3ca533473dd7f00b0c2d8fb0fb529c3`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:09:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 02:09:25 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 08 May 2019 02:09:25 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 02:09:25 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 23:19:57 GMT
ENV JULIA_VERSION=1.0.4
# Fri, 17 May 2019 23:20:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bb9e33d95f47e703d9199f0358c038c61259e2ff9f3fd515c919729ace89443c' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='2e742f4ddf5ac21779b6943ef210d73dc02f1c6de23836b352336a3dcbb18ae6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='7614d4239702c497330c043f37d99600b41e87caa8b92742c7104915eb54648a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='89b71a3558aa4f515becfd21d19651035d909f5f2e3177ccaec77aee01f962b7' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 23:20:15 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4afdb09021f95e504e5adca5fef8d3f76fdcd8f8875d5972f5abf8e5160f703`  
		Last Modified: Wed, 08 May 2019 02:10:21 GMT  
		Size: 9.5 MB (9497513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b489b28beaa5446afa1195bae7346cfd5dc965325d77c1c28f36c81f89c27131`  
		Last Modified: Fri, 17 May 2019 23:21:11 GMT  
		Size: 95.7 MB (95675553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0` - linux; arm variant v7

```console
$ docker pull julia@sha256:af4a546a760ae592dba8880f656530a1bc1936603c0b18f0db63756194652668
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137532616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c13d7dfd5fbff61b0c84b4003b13e3e6262f7a02584b514df7abc00b8edb7be0`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 12:03:26 GMT
ADD file:7e8dcc40e246d53b86266855a2de8080d26e6b4ed9f594c1acc565784405735b in / 
# Wed, 08 May 2019 12:03:27 GMT
CMD ["bash"]
# Wed, 08 May 2019 15:04:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 15:04:03 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 08 May 2019 15:04:03 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 15:04:04 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 22:57:41 GMT
ENV JULIA_VERSION=1.0.4
# Fri, 17 May 2019 22:58:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bb9e33d95f47e703d9199f0358c038c61259e2ff9f3fd515c919729ace89443c' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='2e742f4ddf5ac21779b6943ef210d73dc02f1c6de23836b352336a3dcbb18ae6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='7614d4239702c497330c043f37d99600b41e87caa8b92742c7104915eb54648a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='89b71a3558aa4f515becfd21d19651035d909f5f2e3177ccaec77aee01f962b7' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 22:58:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:f2a2fd7c1ab35cd1b5ea6fcc2b801f3877852797e2698ecdb9556e0dee3accb5`  
		Last Modified: Wed, 08 May 2019 12:09:40 GMT  
		Size: 42.1 MB (42082604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3399c1c5181d22f9a42fc2d00361ccdbb50772190a6fcd02f29cf227386312b5`  
		Last Modified: Wed, 08 May 2019 15:04:47 GMT  
		Size: 8.2 MB (8223471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a246ede3322a411a5e9d76ba293d2eb9774f46b923fb2ea73e63d69db4b0a57d`  
		Last Modified: Fri, 17 May 2019 22:58:49 GMT  
		Size: 87.2 MB (87226541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:761e8a436ab0cee3ee510273446d8b4af33236170caec6764a795a1ce8bbb8b5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.5 MB (131538839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c22b5375bb25a875416db2a605972f787a205b33ae900d86fea285916f25318a`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Fri, 17 May 2019 22:40:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 17 May 2019 22:40:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 17 May 2019 22:40:08 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 May 2019 22:40:08 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 22:40:44 GMT
ENV JULIA_VERSION=1.0.4
# Fri, 17 May 2019 22:41:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bb9e33d95f47e703d9199f0358c038c61259e2ff9f3fd515c919729ace89443c' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='2e742f4ddf5ac21779b6943ef210d73dc02f1c6de23836b352336a3dcbb18ae6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='7614d4239702c497330c043f37d99600b41e87caa8b92742c7104915eb54648a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='89b71a3558aa4f515becfd21d19651035d909f5f2e3177ccaec77aee01f962b7' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 22:41:09 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6502085a5f36d50a9e5add80fd8f9251c6cabc20399e0b8b88948599fb429d2`  
		Last Modified: Fri, 17 May 2019 22:41:30 GMT  
		Size: 8.5 MB (8465608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e54be9481544c798dac7a079d53b63ae888f0ff8f13897cc86da70c3a2d81a4`  
		Last Modified: Fri, 17 May 2019 22:42:58 GMT  
		Size: 79.9 MB (79931276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0` - linux; 386

```console
$ docker pull julia@sha256:9710a8ddf7f13331b030a8eeda7570745aaea521e5c69d440cd59e613d749676
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.2 MB (148172745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ba26b9be668ed8597b03a74955dcf5bedd7dfb9cb8965c749371a2d39daf14e`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 10:49:19 GMT
ADD file:fde8cf5700c66c38b88d4b3254ec1544d09194e06568c23fe3989f7eaa1f5785 in / 
# Wed, 08 May 2019 10:49:20 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:30:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:30:25 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 08 May 2019 19:30:25 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 19:30:25 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 22:38:59 GMT
ENV JULIA_VERSION=1.0.4
# Fri, 17 May 2019 22:39:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bb9e33d95f47e703d9199f0358c038c61259e2ff9f3fd515c919729ace89443c' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='2e742f4ddf5ac21779b6943ef210d73dc02f1c6de23836b352336a3dcbb18ae6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='7614d4239702c497330c043f37d99600b41e87caa8b92742c7104915eb54648a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='89b71a3558aa4f515becfd21d19651035d909f5f2e3177ccaec77aee01f962b7' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 22:39:18 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b5d586ad7adeab23f6ff0b7ec90785dc757eaccd445976fda3f6d7db64d20585`  
		Last Modified: Wed, 08 May 2019 10:57:26 GMT  
		Size: 46.1 MB (46063371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cadea6066c9d4abd4e2517501b2035006b24b3bc5ec419dc2caab63824d70d`  
		Last Modified: Wed, 08 May 2019 19:31:25 GMT  
		Size: 9.5 MB (9505199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef2272240ba6f542f61227cc89b00d54316a2ce201461ff8d94e98b4b1054d4`  
		Last Modified: Fri, 17 May 2019 22:40:30 GMT  
		Size: 92.6 MB (92604175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0` - windows version 10.0.14393.2969; amd64

```console
$ docker pull julia@sha256:57f4f463840f9a4e7c3eeca43e7d330593cb3ceb73ae7a7890ef3b8ba6d7ba32
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5820140895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce0bd791deec92ff42cee6050b88b3e57ac412c73bfc12daa76b4d62825eedf3`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 12:35:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 17 May 2019 23:23:53 GMT
ENV JULIA_VERSION=1.0.4
# Fri, 17 May 2019 23:23:55 GMT
ENV JULIA_SHA256=8d26ac8181b2be109ec811767ea87d45afc6e3bc45c56c3cb78df14ca6d8c829
# Fri, 17 May 2019 23:27:20 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Fri, 17 May 2019 23:27:22 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b48eb2d408a626a484fe196b9b128fc9d49431157edd27f53c27b86a3f2c4af4`  
		Last Modified: Wed, 15 May 2019 13:04:30 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc35cfd70a35faf67b64094061e6fd78b653f30af1d43f86ae63217908a74b84`  
		Last Modified: Fri, 17 May 2019 23:32:38 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b083adefe9012b813e9820237d08f950b66d12f34bd5e2770708cca62f8c56af`  
		Last Modified: Fri, 17 May 2019 23:32:38 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7382ea6d152edbf49a5770bc510fc5d102e6c06fee42fd6b7e39b82de6a2a70`  
		Last Modified: Fri, 17 May 2019 23:33:25 GMT  
		Size: 118.0 MB (118015206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12565d88b365857dd35813e38c1e6737358bc4f3583b971c9a4d2afc6adc7841`  
		Last Modified: Fri, 17 May 2019 23:32:38 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0` - windows version 10.0.17134.765; amd64

```console
$ docker pull julia@sha256:ccbaa9d18a5eef2f1302bd6aea0c26a69648b5a407089696ca567a3520f0f79b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2415324771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:926aba363a3bbbc22e8891ef980d8e731560e23c50caf5bf5cf791f21997ed45`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 12:45:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 17 May 2019 23:27:38 GMT
ENV JULIA_VERSION=1.0.4
# Fri, 17 May 2019 23:27:39 GMT
ENV JULIA_SHA256=8d26ac8181b2be109ec811767ea87d45afc6e3bc45c56c3cb78df14ca6d8c829
# Fri, 17 May 2019 23:30:23 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Fri, 17 May 2019 23:30:25 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:58d321368bbf68a108d3298dd40a5ce2d47e3b2d59969e159f05e4fac7b4c259`  
		Last Modified: Wed, 15 May 2019 13:06:15 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf193072ff2917b9c84bd852eb0234de45e2b761ca6d8918ac0bb921ef0b4fb6`  
		Last Modified: Fri, 17 May 2019 23:33:39 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b8fdb4b70f8684571643f3841cddcef469fcf96580f48d3768a25f2706268a`  
		Last Modified: Fri, 17 May 2019 23:33:40 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278ec0575dc35a8bf5fa8ad2568e8695d1da7b6042318436e471e38125abced6`  
		Last Modified: Fri, 17 May 2019 23:34:54 GMT  
		Size: 113.1 MB (113069814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d58dbef6b87deca5a0d9c0d1d63a0b1afb0eb5dd74beda794b317f927d58526`  
		Last Modified: Fri, 17 May 2019 23:33:39 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.0.4`

```console
$ docker pull julia@sha256:d81092ceca22b83ff6eab05c59ef2f65ca3a9cf2c3a13c54bff4e6e990ac8144
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	windows version 10.0.14393.2969; amd64
	-	windows version 10.0.17134.765; amd64

### `julia:1.0.4` - linux; amd64

```console
$ docker pull julia@sha256:d7ec23eda6f5f11edbce0bb6cc5da8b678a484de7f26f2fe6251b31b1b3314bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.5 MB (150512380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb913407e31c3a951ccbddbce7fb3eaf3ca533473dd7f00b0c2d8fb0fb529c3`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:09:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 02:09:25 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 08 May 2019 02:09:25 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 02:09:25 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 23:19:57 GMT
ENV JULIA_VERSION=1.0.4
# Fri, 17 May 2019 23:20:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bb9e33d95f47e703d9199f0358c038c61259e2ff9f3fd515c919729ace89443c' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='2e742f4ddf5ac21779b6943ef210d73dc02f1c6de23836b352336a3dcbb18ae6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='7614d4239702c497330c043f37d99600b41e87caa8b92742c7104915eb54648a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='89b71a3558aa4f515becfd21d19651035d909f5f2e3177ccaec77aee01f962b7' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 23:20:15 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4afdb09021f95e504e5adca5fef8d3f76fdcd8f8875d5972f5abf8e5160f703`  
		Last Modified: Wed, 08 May 2019 02:10:21 GMT  
		Size: 9.5 MB (9497513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b489b28beaa5446afa1195bae7346cfd5dc965325d77c1c28f36c81f89c27131`  
		Last Modified: Fri, 17 May 2019 23:21:11 GMT  
		Size: 95.7 MB (95675553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0.4` - linux; arm variant v7

```console
$ docker pull julia@sha256:af4a546a760ae592dba8880f656530a1bc1936603c0b18f0db63756194652668
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137532616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c13d7dfd5fbff61b0c84b4003b13e3e6262f7a02584b514df7abc00b8edb7be0`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 12:03:26 GMT
ADD file:7e8dcc40e246d53b86266855a2de8080d26e6b4ed9f594c1acc565784405735b in / 
# Wed, 08 May 2019 12:03:27 GMT
CMD ["bash"]
# Wed, 08 May 2019 15:04:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 15:04:03 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 08 May 2019 15:04:03 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 15:04:04 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 22:57:41 GMT
ENV JULIA_VERSION=1.0.4
# Fri, 17 May 2019 22:58:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bb9e33d95f47e703d9199f0358c038c61259e2ff9f3fd515c919729ace89443c' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='2e742f4ddf5ac21779b6943ef210d73dc02f1c6de23836b352336a3dcbb18ae6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='7614d4239702c497330c043f37d99600b41e87caa8b92742c7104915eb54648a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='89b71a3558aa4f515becfd21d19651035d909f5f2e3177ccaec77aee01f962b7' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 22:58:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:f2a2fd7c1ab35cd1b5ea6fcc2b801f3877852797e2698ecdb9556e0dee3accb5`  
		Last Modified: Wed, 08 May 2019 12:09:40 GMT  
		Size: 42.1 MB (42082604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3399c1c5181d22f9a42fc2d00361ccdbb50772190a6fcd02f29cf227386312b5`  
		Last Modified: Wed, 08 May 2019 15:04:47 GMT  
		Size: 8.2 MB (8223471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a246ede3322a411a5e9d76ba293d2eb9774f46b923fb2ea73e63d69db4b0a57d`  
		Last Modified: Fri, 17 May 2019 22:58:49 GMT  
		Size: 87.2 MB (87226541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0.4` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:761e8a436ab0cee3ee510273446d8b4af33236170caec6764a795a1ce8bbb8b5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.5 MB (131538839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c22b5375bb25a875416db2a605972f787a205b33ae900d86fea285916f25318a`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Fri, 17 May 2019 22:40:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 17 May 2019 22:40:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 17 May 2019 22:40:08 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 May 2019 22:40:08 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 22:40:44 GMT
ENV JULIA_VERSION=1.0.4
# Fri, 17 May 2019 22:41:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bb9e33d95f47e703d9199f0358c038c61259e2ff9f3fd515c919729ace89443c' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='2e742f4ddf5ac21779b6943ef210d73dc02f1c6de23836b352336a3dcbb18ae6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='7614d4239702c497330c043f37d99600b41e87caa8b92742c7104915eb54648a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='89b71a3558aa4f515becfd21d19651035d909f5f2e3177ccaec77aee01f962b7' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 22:41:09 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6502085a5f36d50a9e5add80fd8f9251c6cabc20399e0b8b88948599fb429d2`  
		Last Modified: Fri, 17 May 2019 22:41:30 GMT  
		Size: 8.5 MB (8465608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e54be9481544c798dac7a079d53b63ae888f0ff8f13897cc86da70c3a2d81a4`  
		Last Modified: Fri, 17 May 2019 22:42:58 GMT  
		Size: 79.9 MB (79931276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0.4` - linux; 386

```console
$ docker pull julia@sha256:9710a8ddf7f13331b030a8eeda7570745aaea521e5c69d440cd59e613d749676
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.2 MB (148172745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ba26b9be668ed8597b03a74955dcf5bedd7dfb9cb8965c749371a2d39daf14e`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 10:49:19 GMT
ADD file:fde8cf5700c66c38b88d4b3254ec1544d09194e06568c23fe3989f7eaa1f5785 in / 
# Wed, 08 May 2019 10:49:20 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:30:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:30:25 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 08 May 2019 19:30:25 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 19:30:25 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 22:38:59 GMT
ENV JULIA_VERSION=1.0.4
# Fri, 17 May 2019 22:39:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bb9e33d95f47e703d9199f0358c038c61259e2ff9f3fd515c919729ace89443c' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='2e742f4ddf5ac21779b6943ef210d73dc02f1c6de23836b352336a3dcbb18ae6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='7614d4239702c497330c043f37d99600b41e87caa8b92742c7104915eb54648a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='89b71a3558aa4f515becfd21d19651035d909f5f2e3177ccaec77aee01f962b7' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 22:39:18 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b5d586ad7adeab23f6ff0b7ec90785dc757eaccd445976fda3f6d7db64d20585`  
		Last Modified: Wed, 08 May 2019 10:57:26 GMT  
		Size: 46.1 MB (46063371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cadea6066c9d4abd4e2517501b2035006b24b3bc5ec419dc2caab63824d70d`  
		Last Modified: Wed, 08 May 2019 19:31:25 GMT  
		Size: 9.5 MB (9505199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef2272240ba6f542f61227cc89b00d54316a2ce201461ff8d94e98b4b1054d4`  
		Last Modified: Fri, 17 May 2019 22:40:30 GMT  
		Size: 92.6 MB (92604175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0.4` - windows version 10.0.14393.2969; amd64

```console
$ docker pull julia@sha256:57f4f463840f9a4e7c3eeca43e7d330593cb3ceb73ae7a7890ef3b8ba6d7ba32
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5820140895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce0bd791deec92ff42cee6050b88b3e57ac412c73bfc12daa76b4d62825eedf3`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 12:35:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 17 May 2019 23:23:53 GMT
ENV JULIA_VERSION=1.0.4
# Fri, 17 May 2019 23:23:55 GMT
ENV JULIA_SHA256=8d26ac8181b2be109ec811767ea87d45afc6e3bc45c56c3cb78df14ca6d8c829
# Fri, 17 May 2019 23:27:20 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Fri, 17 May 2019 23:27:22 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b48eb2d408a626a484fe196b9b128fc9d49431157edd27f53c27b86a3f2c4af4`  
		Last Modified: Wed, 15 May 2019 13:04:30 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc35cfd70a35faf67b64094061e6fd78b653f30af1d43f86ae63217908a74b84`  
		Last Modified: Fri, 17 May 2019 23:32:38 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b083adefe9012b813e9820237d08f950b66d12f34bd5e2770708cca62f8c56af`  
		Last Modified: Fri, 17 May 2019 23:32:38 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7382ea6d152edbf49a5770bc510fc5d102e6c06fee42fd6b7e39b82de6a2a70`  
		Last Modified: Fri, 17 May 2019 23:33:25 GMT  
		Size: 118.0 MB (118015206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12565d88b365857dd35813e38c1e6737358bc4f3583b971c9a4d2afc6adc7841`  
		Last Modified: Fri, 17 May 2019 23:32:38 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0.4` - windows version 10.0.17134.765; amd64

```console
$ docker pull julia@sha256:ccbaa9d18a5eef2f1302bd6aea0c26a69648b5a407089696ca567a3520f0f79b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2415324771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:926aba363a3bbbc22e8891ef980d8e731560e23c50caf5bf5cf791f21997ed45`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 12:45:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 17 May 2019 23:27:38 GMT
ENV JULIA_VERSION=1.0.4
# Fri, 17 May 2019 23:27:39 GMT
ENV JULIA_SHA256=8d26ac8181b2be109ec811767ea87d45afc6e3bc45c56c3cb78df14ca6d8c829
# Fri, 17 May 2019 23:30:23 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Fri, 17 May 2019 23:30:25 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:58d321368bbf68a108d3298dd40a5ce2d47e3b2d59969e159f05e4fac7b4c259`  
		Last Modified: Wed, 15 May 2019 13:06:15 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf193072ff2917b9c84bd852eb0234de45e2b761ca6d8918ac0bb921ef0b4fb6`  
		Last Modified: Fri, 17 May 2019 23:33:39 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b8fdb4b70f8684571643f3841cddcef469fcf96580f48d3768a25f2706268a`  
		Last Modified: Fri, 17 May 2019 23:33:40 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278ec0575dc35a8bf5fa8ad2568e8695d1da7b6042318436e471e38125abced6`  
		Last Modified: Fri, 17 May 2019 23:34:54 GMT  
		Size: 113.1 MB (113069814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d58dbef6b87deca5a0d9c0d1d63a0b1afb0eb5dd74beda794b317f927d58526`  
		Last Modified: Fri, 17 May 2019 23:33:39 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.0.4-stretch`

```console
$ docker pull julia@sha256:67458cd412515c5a2599252a1ab3dd4130eb10f73ee27e4554dc7ce2fef648bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `julia:1.0.4-stretch` - linux; amd64

```console
$ docker pull julia@sha256:d7ec23eda6f5f11edbce0bb6cc5da8b678a484de7f26f2fe6251b31b1b3314bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.5 MB (150512380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb913407e31c3a951ccbddbce7fb3eaf3ca533473dd7f00b0c2d8fb0fb529c3`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:09:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 02:09:25 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 08 May 2019 02:09:25 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 02:09:25 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 23:19:57 GMT
ENV JULIA_VERSION=1.0.4
# Fri, 17 May 2019 23:20:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bb9e33d95f47e703d9199f0358c038c61259e2ff9f3fd515c919729ace89443c' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='2e742f4ddf5ac21779b6943ef210d73dc02f1c6de23836b352336a3dcbb18ae6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='7614d4239702c497330c043f37d99600b41e87caa8b92742c7104915eb54648a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='89b71a3558aa4f515becfd21d19651035d909f5f2e3177ccaec77aee01f962b7' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 23:20:15 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4afdb09021f95e504e5adca5fef8d3f76fdcd8f8875d5972f5abf8e5160f703`  
		Last Modified: Wed, 08 May 2019 02:10:21 GMT  
		Size: 9.5 MB (9497513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b489b28beaa5446afa1195bae7346cfd5dc965325d77c1c28f36c81f89c27131`  
		Last Modified: Fri, 17 May 2019 23:21:11 GMT  
		Size: 95.7 MB (95675553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0.4-stretch` - linux; arm variant v7

```console
$ docker pull julia@sha256:af4a546a760ae592dba8880f656530a1bc1936603c0b18f0db63756194652668
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137532616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c13d7dfd5fbff61b0c84b4003b13e3e6262f7a02584b514df7abc00b8edb7be0`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 12:03:26 GMT
ADD file:7e8dcc40e246d53b86266855a2de8080d26e6b4ed9f594c1acc565784405735b in / 
# Wed, 08 May 2019 12:03:27 GMT
CMD ["bash"]
# Wed, 08 May 2019 15:04:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 15:04:03 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 08 May 2019 15:04:03 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 15:04:04 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 22:57:41 GMT
ENV JULIA_VERSION=1.0.4
# Fri, 17 May 2019 22:58:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bb9e33d95f47e703d9199f0358c038c61259e2ff9f3fd515c919729ace89443c' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='2e742f4ddf5ac21779b6943ef210d73dc02f1c6de23836b352336a3dcbb18ae6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='7614d4239702c497330c043f37d99600b41e87caa8b92742c7104915eb54648a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='89b71a3558aa4f515becfd21d19651035d909f5f2e3177ccaec77aee01f962b7' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 22:58:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:f2a2fd7c1ab35cd1b5ea6fcc2b801f3877852797e2698ecdb9556e0dee3accb5`  
		Last Modified: Wed, 08 May 2019 12:09:40 GMT  
		Size: 42.1 MB (42082604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3399c1c5181d22f9a42fc2d00361ccdbb50772190a6fcd02f29cf227386312b5`  
		Last Modified: Wed, 08 May 2019 15:04:47 GMT  
		Size: 8.2 MB (8223471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a246ede3322a411a5e9d76ba293d2eb9774f46b923fb2ea73e63d69db4b0a57d`  
		Last Modified: Fri, 17 May 2019 22:58:49 GMT  
		Size: 87.2 MB (87226541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0.4-stretch` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:761e8a436ab0cee3ee510273446d8b4af33236170caec6764a795a1ce8bbb8b5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.5 MB (131538839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c22b5375bb25a875416db2a605972f787a205b33ae900d86fea285916f25318a`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Fri, 17 May 2019 22:40:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 17 May 2019 22:40:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 17 May 2019 22:40:08 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 May 2019 22:40:08 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 22:40:44 GMT
ENV JULIA_VERSION=1.0.4
# Fri, 17 May 2019 22:41:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bb9e33d95f47e703d9199f0358c038c61259e2ff9f3fd515c919729ace89443c' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='2e742f4ddf5ac21779b6943ef210d73dc02f1c6de23836b352336a3dcbb18ae6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='7614d4239702c497330c043f37d99600b41e87caa8b92742c7104915eb54648a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='89b71a3558aa4f515becfd21d19651035d909f5f2e3177ccaec77aee01f962b7' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 22:41:09 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6502085a5f36d50a9e5add80fd8f9251c6cabc20399e0b8b88948599fb429d2`  
		Last Modified: Fri, 17 May 2019 22:41:30 GMT  
		Size: 8.5 MB (8465608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e54be9481544c798dac7a079d53b63ae888f0ff8f13897cc86da70c3a2d81a4`  
		Last Modified: Fri, 17 May 2019 22:42:58 GMT  
		Size: 79.9 MB (79931276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0.4-stretch` - linux; 386

```console
$ docker pull julia@sha256:9710a8ddf7f13331b030a8eeda7570745aaea521e5c69d440cd59e613d749676
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.2 MB (148172745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ba26b9be668ed8597b03a74955dcf5bedd7dfb9cb8965c749371a2d39daf14e`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 10:49:19 GMT
ADD file:fde8cf5700c66c38b88d4b3254ec1544d09194e06568c23fe3989f7eaa1f5785 in / 
# Wed, 08 May 2019 10:49:20 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:30:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:30:25 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 08 May 2019 19:30:25 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 19:30:25 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 22:38:59 GMT
ENV JULIA_VERSION=1.0.4
# Fri, 17 May 2019 22:39:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bb9e33d95f47e703d9199f0358c038c61259e2ff9f3fd515c919729ace89443c' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='2e742f4ddf5ac21779b6943ef210d73dc02f1c6de23836b352336a3dcbb18ae6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='7614d4239702c497330c043f37d99600b41e87caa8b92742c7104915eb54648a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='89b71a3558aa4f515becfd21d19651035d909f5f2e3177ccaec77aee01f962b7' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 22:39:18 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b5d586ad7adeab23f6ff0b7ec90785dc757eaccd445976fda3f6d7db64d20585`  
		Last Modified: Wed, 08 May 2019 10:57:26 GMT  
		Size: 46.1 MB (46063371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cadea6066c9d4abd4e2517501b2035006b24b3bc5ec419dc2caab63824d70d`  
		Last Modified: Wed, 08 May 2019 19:31:25 GMT  
		Size: 9.5 MB (9505199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef2272240ba6f542f61227cc89b00d54316a2ce201461ff8d94e98b4b1054d4`  
		Last Modified: Fri, 17 May 2019 22:40:30 GMT  
		Size: 92.6 MB (92604175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.0.4-windowsservercore-1803`

```console
$ docker pull julia@sha256:150d9dbcb00439b9687c1e9888e4a1c0c3a3538607b48cc62a127633236c076f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.765; amd64

### `julia:1.0.4-windowsservercore-1803` - windows version 10.0.17134.765; amd64

```console
$ docker pull julia@sha256:ccbaa9d18a5eef2f1302bd6aea0c26a69648b5a407089696ca567a3520f0f79b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2415324771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:926aba363a3bbbc22e8891ef980d8e731560e23c50caf5bf5cf791f21997ed45`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 12:45:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 17 May 2019 23:27:38 GMT
ENV JULIA_VERSION=1.0.4
# Fri, 17 May 2019 23:27:39 GMT
ENV JULIA_SHA256=8d26ac8181b2be109ec811767ea87d45afc6e3bc45c56c3cb78df14ca6d8c829
# Fri, 17 May 2019 23:30:23 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Fri, 17 May 2019 23:30:25 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:58d321368bbf68a108d3298dd40a5ce2d47e3b2d59969e159f05e4fac7b4c259`  
		Last Modified: Wed, 15 May 2019 13:06:15 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf193072ff2917b9c84bd852eb0234de45e2b761ca6d8918ac0bb921ef0b4fb6`  
		Last Modified: Fri, 17 May 2019 23:33:39 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b8fdb4b70f8684571643f3841cddcef469fcf96580f48d3768a25f2706268a`  
		Last Modified: Fri, 17 May 2019 23:33:40 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278ec0575dc35a8bf5fa8ad2568e8695d1da7b6042318436e471e38125abced6`  
		Last Modified: Fri, 17 May 2019 23:34:54 GMT  
		Size: 113.1 MB (113069814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d58dbef6b87deca5a0d9c0d1d63a0b1afb0eb5dd74beda794b317f927d58526`  
		Last Modified: Fri, 17 May 2019 23:33:39 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.0.4-windowsservercore-ltsc2016`

```console
$ docker pull julia@sha256:be7c5d7888cf23a498d2ba2f444a19386a6806f448586be50afabcc8fe5732af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64

### `julia:1.0.4-windowsservercore-ltsc2016` - windows version 10.0.14393.2969; amd64

```console
$ docker pull julia@sha256:57f4f463840f9a4e7c3eeca43e7d330593cb3ceb73ae7a7890ef3b8ba6d7ba32
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5820140895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce0bd791deec92ff42cee6050b88b3e57ac412c73bfc12daa76b4d62825eedf3`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 12:35:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 17 May 2019 23:23:53 GMT
ENV JULIA_VERSION=1.0.4
# Fri, 17 May 2019 23:23:55 GMT
ENV JULIA_SHA256=8d26ac8181b2be109ec811767ea87d45afc6e3bc45c56c3cb78df14ca6d8c829
# Fri, 17 May 2019 23:27:20 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Fri, 17 May 2019 23:27:22 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b48eb2d408a626a484fe196b9b128fc9d49431157edd27f53c27b86a3f2c4af4`  
		Last Modified: Wed, 15 May 2019 13:04:30 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc35cfd70a35faf67b64094061e6fd78b653f30af1d43f86ae63217908a74b84`  
		Last Modified: Fri, 17 May 2019 23:32:38 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b083adefe9012b813e9820237d08f950b66d12f34bd5e2770708cca62f8c56af`  
		Last Modified: Fri, 17 May 2019 23:32:38 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7382ea6d152edbf49a5770bc510fc5d102e6c06fee42fd6b7e39b82de6a2a70`  
		Last Modified: Fri, 17 May 2019 23:33:25 GMT  
		Size: 118.0 MB (118015206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12565d88b365857dd35813e38c1e6737358bc4f3583b971c9a4d2afc6adc7841`  
		Last Modified: Fri, 17 May 2019 23:32:38 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.0-stretch`

```console
$ docker pull julia@sha256:67458cd412515c5a2599252a1ab3dd4130eb10f73ee27e4554dc7ce2fef648bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `julia:1.0-stretch` - linux; amd64

```console
$ docker pull julia@sha256:d7ec23eda6f5f11edbce0bb6cc5da8b678a484de7f26f2fe6251b31b1b3314bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.5 MB (150512380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb913407e31c3a951ccbddbce7fb3eaf3ca533473dd7f00b0c2d8fb0fb529c3`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:09:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 02:09:25 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 08 May 2019 02:09:25 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 02:09:25 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 23:19:57 GMT
ENV JULIA_VERSION=1.0.4
# Fri, 17 May 2019 23:20:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bb9e33d95f47e703d9199f0358c038c61259e2ff9f3fd515c919729ace89443c' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='2e742f4ddf5ac21779b6943ef210d73dc02f1c6de23836b352336a3dcbb18ae6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='7614d4239702c497330c043f37d99600b41e87caa8b92742c7104915eb54648a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='89b71a3558aa4f515becfd21d19651035d909f5f2e3177ccaec77aee01f962b7' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 23:20:15 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4afdb09021f95e504e5adca5fef8d3f76fdcd8f8875d5972f5abf8e5160f703`  
		Last Modified: Wed, 08 May 2019 02:10:21 GMT  
		Size: 9.5 MB (9497513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b489b28beaa5446afa1195bae7346cfd5dc965325d77c1c28f36c81f89c27131`  
		Last Modified: Fri, 17 May 2019 23:21:11 GMT  
		Size: 95.7 MB (95675553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0-stretch` - linux; arm variant v7

```console
$ docker pull julia@sha256:af4a546a760ae592dba8880f656530a1bc1936603c0b18f0db63756194652668
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137532616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c13d7dfd5fbff61b0c84b4003b13e3e6262f7a02584b514df7abc00b8edb7be0`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 12:03:26 GMT
ADD file:7e8dcc40e246d53b86266855a2de8080d26e6b4ed9f594c1acc565784405735b in / 
# Wed, 08 May 2019 12:03:27 GMT
CMD ["bash"]
# Wed, 08 May 2019 15:04:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 15:04:03 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 08 May 2019 15:04:03 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 15:04:04 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 22:57:41 GMT
ENV JULIA_VERSION=1.0.4
# Fri, 17 May 2019 22:58:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bb9e33d95f47e703d9199f0358c038c61259e2ff9f3fd515c919729ace89443c' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='2e742f4ddf5ac21779b6943ef210d73dc02f1c6de23836b352336a3dcbb18ae6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='7614d4239702c497330c043f37d99600b41e87caa8b92742c7104915eb54648a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='89b71a3558aa4f515becfd21d19651035d909f5f2e3177ccaec77aee01f962b7' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 22:58:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:f2a2fd7c1ab35cd1b5ea6fcc2b801f3877852797e2698ecdb9556e0dee3accb5`  
		Last Modified: Wed, 08 May 2019 12:09:40 GMT  
		Size: 42.1 MB (42082604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3399c1c5181d22f9a42fc2d00361ccdbb50772190a6fcd02f29cf227386312b5`  
		Last Modified: Wed, 08 May 2019 15:04:47 GMT  
		Size: 8.2 MB (8223471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a246ede3322a411a5e9d76ba293d2eb9774f46b923fb2ea73e63d69db4b0a57d`  
		Last Modified: Fri, 17 May 2019 22:58:49 GMT  
		Size: 87.2 MB (87226541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0-stretch` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:761e8a436ab0cee3ee510273446d8b4af33236170caec6764a795a1ce8bbb8b5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.5 MB (131538839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c22b5375bb25a875416db2a605972f787a205b33ae900d86fea285916f25318a`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Fri, 17 May 2019 22:40:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 17 May 2019 22:40:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 17 May 2019 22:40:08 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 May 2019 22:40:08 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 22:40:44 GMT
ENV JULIA_VERSION=1.0.4
# Fri, 17 May 2019 22:41:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bb9e33d95f47e703d9199f0358c038c61259e2ff9f3fd515c919729ace89443c' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='2e742f4ddf5ac21779b6943ef210d73dc02f1c6de23836b352336a3dcbb18ae6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='7614d4239702c497330c043f37d99600b41e87caa8b92742c7104915eb54648a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='89b71a3558aa4f515becfd21d19651035d909f5f2e3177ccaec77aee01f962b7' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 22:41:09 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6502085a5f36d50a9e5add80fd8f9251c6cabc20399e0b8b88948599fb429d2`  
		Last Modified: Fri, 17 May 2019 22:41:30 GMT  
		Size: 8.5 MB (8465608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e54be9481544c798dac7a079d53b63ae888f0ff8f13897cc86da70c3a2d81a4`  
		Last Modified: Fri, 17 May 2019 22:42:58 GMT  
		Size: 79.9 MB (79931276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0-stretch` - linux; 386

```console
$ docker pull julia@sha256:9710a8ddf7f13331b030a8eeda7570745aaea521e5c69d440cd59e613d749676
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.2 MB (148172745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ba26b9be668ed8597b03a74955dcf5bedd7dfb9cb8965c749371a2d39daf14e`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 10:49:19 GMT
ADD file:fde8cf5700c66c38b88d4b3254ec1544d09194e06568c23fe3989f7eaa1f5785 in / 
# Wed, 08 May 2019 10:49:20 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:30:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:30:25 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 08 May 2019 19:30:25 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 19:30:25 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 22:38:59 GMT
ENV JULIA_VERSION=1.0.4
# Fri, 17 May 2019 22:39:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bb9e33d95f47e703d9199f0358c038c61259e2ff9f3fd515c919729ace89443c' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='2e742f4ddf5ac21779b6943ef210d73dc02f1c6de23836b352336a3dcbb18ae6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='7614d4239702c497330c043f37d99600b41e87caa8b92742c7104915eb54648a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='89b71a3558aa4f515becfd21d19651035d909f5f2e3177ccaec77aee01f962b7' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 22:39:18 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b5d586ad7adeab23f6ff0b7ec90785dc757eaccd445976fda3f6d7db64d20585`  
		Last Modified: Wed, 08 May 2019 10:57:26 GMT  
		Size: 46.1 MB (46063371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cadea6066c9d4abd4e2517501b2035006b24b3bc5ec419dc2caab63824d70d`  
		Last Modified: Wed, 08 May 2019 19:31:25 GMT  
		Size: 9.5 MB (9505199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef2272240ba6f542f61227cc89b00d54316a2ce201461ff8d94e98b4b1054d4`  
		Last Modified: Fri, 17 May 2019 22:40:30 GMT  
		Size: 92.6 MB (92604175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.0-windowsservercore-1803`

```console
$ docker pull julia@sha256:150d9dbcb00439b9687c1e9888e4a1c0c3a3538607b48cc62a127633236c076f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.765; amd64

### `julia:1.0-windowsservercore-1803` - windows version 10.0.17134.765; amd64

```console
$ docker pull julia@sha256:ccbaa9d18a5eef2f1302bd6aea0c26a69648b5a407089696ca567a3520f0f79b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2415324771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:926aba363a3bbbc22e8891ef980d8e731560e23c50caf5bf5cf791f21997ed45`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 12:45:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 17 May 2019 23:27:38 GMT
ENV JULIA_VERSION=1.0.4
# Fri, 17 May 2019 23:27:39 GMT
ENV JULIA_SHA256=8d26ac8181b2be109ec811767ea87d45afc6e3bc45c56c3cb78df14ca6d8c829
# Fri, 17 May 2019 23:30:23 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Fri, 17 May 2019 23:30:25 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:58d321368bbf68a108d3298dd40a5ce2d47e3b2d59969e159f05e4fac7b4c259`  
		Last Modified: Wed, 15 May 2019 13:06:15 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf193072ff2917b9c84bd852eb0234de45e2b761ca6d8918ac0bb921ef0b4fb6`  
		Last Modified: Fri, 17 May 2019 23:33:39 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b8fdb4b70f8684571643f3841cddcef469fcf96580f48d3768a25f2706268a`  
		Last Modified: Fri, 17 May 2019 23:33:40 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278ec0575dc35a8bf5fa8ad2568e8695d1da7b6042318436e471e38125abced6`  
		Last Modified: Fri, 17 May 2019 23:34:54 GMT  
		Size: 113.1 MB (113069814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d58dbef6b87deca5a0d9c0d1d63a0b1afb0eb5dd74beda794b317f927d58526`  
		Last Modified: Fri, 17 May 2019 23:33:39 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.0-windowsservercore-ltsc2016`

```console
$ docker pull julia@sha256:be7c5d7888cf23a498d2ba2f444a19386a6806f448586be50afabcc8fe5732af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64

### `julia:1.0-windowsservercore-ltsc2016` - windows version 10.0.14393.2969; amd64

```console
$ docker pull julia@sha256:57f4f463840f9a4e7c3eeca43e7d330593cb3ceb73ae7a7890ef3b8ba6d7ba32
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5820140895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce0bd791deec92ff42cee6050b88b3e57ac412c73bfc12daa76b4d62825eedf3`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 12:35:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 17 May 2019 23:23:53 GMT
ENV JULIA_VERSION=1.0.4
# Fri, 17 May 2019 23:23:55 GMT
ENV JULIA_SHA256=8d26ac8181b2be109ec811767ea87d45afc6e3bc45c56c3cb78df14ca6d8c829
# Fri, 17 May 2019 23:27:20 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Fri, 17 May 2019 23:27:22 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b48eb2d408a626a484fe196b9b128fc9d49431157edd27f53c27b86a3f2c4af4`  
		Last Modified: Wed, 15 May 2019 13:04:30 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc35cfd70a35faf67b64094061e6fd78b653f30af1d43f86ae63217908a74b84`  
		Last Modified: Fri, 17 May 2019 23:32:38 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b083adefe9012b813e9820237d08f950b66d12f34bd5e2770708cca62f8c56af`  
		Last Modified: Fri, 17 May 2019 23:32:38 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7382ea6d152edbf49a5770bc510fc5d102e6c06fee42fd6b7e39b82de6a2a70`  
		Last Modified: Fri, 17 May 2019 23:33:25 GMT  
		Size: 118.0 MB (118015206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12565d88b365857dd35813e38c1e6737358bc4f3583b971c9a4d2afc6adc7841`  
		Last Modified: Fri, 17 May 2019 23:32:38 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.1`

```console
$ docker pull julia@sha256:8dc4f7de8610d1e5d6407436e2303f294818e3633070414b7d30b4903f5d1698
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	windows version 10.0.14393.2969; amd64
	-	windows version 10.0.17134.765; amd64

### `julia:1.1` - linux; amd64

```console
$ docker pull julia@sha256:b3e38a6c07db51f95c8df0204b4c702740a409f6d0ad4166806e68eec63b5343
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.5 MB (151540875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5962892f8ae5f870e48b86d382bb0e3cca2d933deb58f9132c238031c7e3f240`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:09:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 02:09:25 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 08 May 2019 02:09:25 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 02:09:25 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 23:19:34 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 23:19:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='f0a83a139a89a2ccf2316814e5ee1c0c809fca02cbaf4baf3c1fd8eb71594f06' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='3d9ba9c2204ea920006b3a91ecd2803cac808b29250f2120000e29fc0384099a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6941326522ac4bc34c5663c2c5752417e92677ff9befc56ba264eb283f37f1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 23:19:54 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4afdb09021f95e504e5adca5fef8d3f76fdcd8f8875d5972f5abf8e5160f703`  
		Last Modified: Wed, 08 May 2019 02:10:21 GMT  
		Size: 9.5 MB (9497513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca9ea75da0861485d4df9d96df261c0d9fca7bd154c40c290e63020616e4a6a`  
		Last Modified: Fri, 17 May 2019 23:20:47 GMT  
		Size: 96.7 MB (96704048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.1` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:068562d5cf78120185b2508d7bd44bc979c5e4e62befdfbbcaee4b7a7c3c739f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132501614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f22d74b24042f30eccab1ca5263491badeacb376f02646b8ec72cf29eeb58239`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Fri, 17 May 2019 22:40:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 17 May 2019 22:40:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 17 May 2019 22:40:08 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 May 2019 22:40:08 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 22:40:09 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 22:40:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='f0a83a139a89a2ccf2316814e5ee1c0c809fca02cbaf4baf3c1fd8eb71594f06' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='3d9ba9c2204ea920006b3a91ecd2803cac808b29250f2120000e29fc0384099a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6941326522ac4bc34c5663c2c5752417e92677ff9befc56ba264eb283f37f1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 22:40:33 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6502085a5f36d50a9e5add80fd8f9251c6cabc20399e0b8b88948599fb429d2`  
		Last Modified: Fri, 17 May 2019 22:41:30 GMT  
		Size: 8.5 MB (8465608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e12ea7b27f1fb4f9ca7e1ddb343724e10cfda46d32ed4c49a108c3e05e2ea47`  
		Last Modified: Fri, 17 May 2019 22:41:55 GMT  
		Size: 80.9 MB (80894051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.1` - linux; 386

```console
$ docker pull julia@sha256:b1d63523919bf77e2f3ad4ea26dae4a701965515e7e5211aed55f2578295b316
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.4 MB (149417108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b75c0794a27d4c2ea994e00c3055ad6fec43993dd0fc83429a8601ed428bff5a`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 10:49:19 GMT
ADD file:fde8cf5700c66c38b88d4b3254ec1544d09194e06568c23fe3989f7eaa1f5785 in / 
# Wed, 08 May 2019 10:49:20 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:30:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:30:25 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 08 May 2019 19:30:25 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 19:30:25 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 22:38:32 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 22:38:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='f0a83a139a89a2ccf2316814e5ee1c0c809fca02cbaf4baf3c1fd8eb71594f06' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='3d9ba9c2204ea920006b3a91ecd2803cac808b29250f2120000e29fc0384099a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6941326522ac4bc34c5663c2c5752417e92677ff9befc56ba264eb283f37f1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 22:38:54 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b5d586ad7adeab23f6ff0b7ec90785dc757eaccd445976fda3f6d7db64d20585`  
		Last Modified: Wed, 08 May 2019 10:57:26 GMT  
		Size: 46.1 MB (46063371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cadea6066c9d4abd4e2517501b2035006b24b3bc5ec419dc2caab63824d70d`  
		Last Modified: Wed, 08 May 2019 19:31:25 GMT  
		Size: 9.5 MB (9505199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a113dfc032a62b23b45e95e1704b0c750f0c901b518e7e1668c4899ec76eb88a`  
		Last Modified: Fri, 17 May 2019 22:39:52 GMT  
		Size: 93.8 MB (93848538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.1` - windows version 10.0.14393.2969; amd64

```console
$ docker pull julia@sha256:1711e64884ed83c07f2709de42ab88a2cde651ad5e7f5063d817d403116d6674
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5811030225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c628045512a090de695d169930d5301fac7559af1bb9a6b8e200cea6986e291`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 12:35:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 17 May 2019 23:17:27 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 23:17:28 GMT
ENV JULIA_SHA256=26f980a1dd0d93a38c4a5b7e397210a761efed1f87caadc1a7066bb8ab12efab
# Fri, 17 May 2019 23:20:43 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Fri, 17 May 2019 23:20:44 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b48eb2d408a626a484fe196b9b128fc9d49431157edd27f53c27b86a3f2c4af4`  
		Last Modified: Wed, 15 May 2019 13:04:30 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c77091f9d8c25e01f69cedc20b72d14b0796436f2a7006bfdf73a96ae7cc031`  
		Last Modified: Fri, 17 May 2019 23:30:53 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65062a85f74c873eea53dd5f51da498cc66de1d22e7aac017ded327689241fc2`  
		Last Modified: Fri, 17 May 2019 23:30:54 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f974bfe0a23c8ad09af384194e810b4a1a932f240a4c8d314a41078b6631813`  
		Last Modified: Fri, 17 May 2019 23:31:23 GMT  
		Size: 108.9 MB (108904531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8399b52467149a13148a2dff09861f777515d244f59b420dbaa6aed9a678ec5c`  
		Last Modified: Fri, 17 May 2019 23:30:54 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.1` - windows version 10.0.17134.765; amd64

```console
$ docker pull julia@sha256:023d40f4d3ad40442229496de75d20362e0e3978ab651cb58b91ed7710b2667e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2406216306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6414d18dc4fc1c8db3e7ced7cec5fd7b1f6fbe28d63bb7069bbf64355ac7ac7e`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 12:45:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 17 May 2019 23:20:56 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 23:20:57 GMT
ENV JULIA_SHA256=26f980a1dd0d93a38c4a5b7e397210a761efed1f87caadc1a7066bb8ab12efab
# Fri, 17 May 2019 23:23:38 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Fri, 17 May 2019 23:23:39 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:58d321368bbf68a108d3298dd40a5ce2d47e3b2d59969e159f05e4fac7b4c259`  
		Last Modified: Wed, 15 May 2019 13:06:15 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6602e91a3f32987808d224ec1037c4d67aeec5f9b19cacdb3bf98a2be27b39a`  
		Last Modified: Fri, 17 May 2019 23:31:48 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38da23b82d5b787f2ac2097619f5a740da1edeae0740d18b227aca31b42d281`  
		Last Modified: Fri, 17 May 2019 23:31:48 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e46069ca43641548fb0e608a613b0545995777611e450afa60b998f799a5f3`  
		Last Modified: Fri, 17 May 2019 23:32:15 GMT  
		Size: 104.0 MB (103961370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c570bc1617177a62dcd4260c17e61b2726055f5b7ec8993f62a09c48fbf78ca`  
		Last Modified: Fri, 17 May 2019 23:31:48 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.1.1`

```console
$ docker pull julia@sha256:8dc4f7de8610d1e5d6407436e2303f294818e3633070414b7d30b4903f5d1698
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	windows version 10.0.14393.2969; amd64
	-	windows version 10.0.17134.765; amd64

### `julia:1.1.1` - linux; amd64

```console
$ docker pull julia@sha256:b3e38a6c07db51f95c8df0204b4c702740a409f6d0ad4166806e68eec63b5343
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.5 MB (151540875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5962892f8ae5f870e48b86d382bb0e3cca2d933deb58f9132c238031c7e3f240`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:09:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 02:09:25 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 08 May 2019 02:09:25 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 02:09:25 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 23:19:34 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 23:19:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='f0a83a139a89a2ccf2316814e5ee1c0c809fca02cbaf4baf3c1fd8eb71594f06' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='3d9ba9c2204ea920006b3a91ecd2803cac808b29250f2120000e29fc0384099a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6941326522ac4bc34c5663c2c5752417e92677ff9befc56ba264eb283f37f1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 23:19:54 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4afdb09021f95e504e5adca5fef8d3f76fdcd8f8875d5972f5abf8e5160f703`  
		Last Modified: Wed, 08 May 2019 02:10:21 GMT  
		Size: 9.5 MB (9497513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca9ea75da0861485d4df9d96df261c0d9fca7bd154c40c290e63020616e4a6a`  
		Last Modified: Fri, 17 May 2019 23:20:47 GMT  
		Size: 96.7 MB (96704048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.1.1` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:068562d5cf78120185b2508d7bd44bc979c5e4e62befdfbbcaee4b7a7c3c739f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132501614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f22d74b24042f30eccab1ca5263491badeacb376f02646b8ec72cf29eeb58239`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Fri, 17 May 2019 22:40:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 17 May 2019 22:40:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 17 May 2019 22:40:08 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 May 2019 22:40:08 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 22:40:09 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 22:40:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='f0a83a139a89a2ccf2316814e5ee1c0c809fca02cbaf4baf3c1fd8eb71594f06' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='3d9ba9c2204ea920006b3a91ecd2803cac808b29250f2120000e29fc0384099a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6941326522ac4bc34c5663c2c5752417e92677ff9befc56ba264eb283f37f1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 22:40:33 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6502085a5f36d50a9e5add80fd8f9251c6cabc20399e0b8b88948599fb429d2`  
		Last Modified: Fri, 17 May 2019 22:41:30 GMT  
		Size: 8.5 MB (8465608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e12ea7b27f1fb4f9ca7e1ddb343724e10cfda46d32ed4c49a108c3e05e2ea47`  
		Last Modified: Fri, 17 May 2019 22:41:55 GMT  
		Size: 80.9 MB (80894051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.1.1` - linux; 386

```console
$ docker pull julia@sha256:b1d63523919bf77e2f3ad4ea26dae4a701965515e7e5211aed55f2578295b316
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.4 MB (149417108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b75c0794a27d4c2ea994e00c3055ad6fec43993dd0fc83429a8601ed428bff5a`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 10:49:19 GMT
ADD file:fde8cf5700c66c38b88d4b3254ec1544d09194e06568c23fe3989f7eaa1f5785 in / 
# Wed, 08 May 2019 10:49:20 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:30:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:30:25 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 08 May 2019 19:30:25 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 19:30:25 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 22:38:32 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 22:38:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='f0a83a139a89a2ccf2316814e5ee1c0c809fca02cbaf4baf3c1fd8eb71594f06' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='3d9ba9c2204ea920006b3a91ecd2803cac808b29250f2120000e29fc0384099a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6941326522ac4bc34c5663c2c5752417e92677ff9befc56ba264eb283f37f1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 22:38:54 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b5d586ad7adeab23f6ff0b7ec90785dc757eaccd445976fda3f6d7db64d20585`  
		Last Modified: Wed, 08 May 2019 10:57:26 GMT  
		Size: 46.1 MB (46063371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cadea6066c9d4abd4e2517501b2035006b24b3bc5ec419dc2caab63824d70d`  
		Last Modified: Wed, 08 May 2019 19:31:25 GMT  
		Size: 9.5 MB (9505199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a113dfc032a62b23b45e95e1704b0c750f0c901b518e7e1668c4899ec76eb88a`  
		Last Modified: Fri, 17 May 2019 22:39:52 GMT  
		Size: 93.8 MB (93848538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.1.1` - windows version 10.0.14393.2969; amd64

```console
$ docker pull julia@sha256:1711e64884ed83c07f2709de42ab88a2cde651ad5e7f5063d817d403116d6674
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5811030225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c628045512a090de695d169930d5301fac7559af1bb9a6b8e200cea6986e291`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 12:35:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 17 May 2019 23:17:27 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 23:17:28 GMT
ENV JULIA_SHA256=26f980a1dd0d93a38c4a5b7e397210a761efed1f87caadc1a7066bb8ab12efab
# Fri, 17 May 2019 23:20:43 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Fri, 17 May 2019 23:20:44 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b48eb2d408a626a484fe196b9b128fc9d49431157edd27f53c27b86a3f2c4af4`  
		Last Modified: Wed, 15 May 2019 13:04:30 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c77091f9d8c25e01f69cedc20b72d14b0796436f2a7006bfdf73a96ae7cc031`  
		Last Modified: Fri, 17 May 2019 23:30:53 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65062a85f74c873eea53dd5f51da498cc66de1d22e7aac017ded327689241fc2`  
		Last Modified: Fri, 17 May 2019 23:30:54 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f974bfe0a23c8ad09af384194e810b4a1a932f240a4c8d314a41078b6631813`  
		Last Modified: Fri, 17 May 2019 23:31:23 GMT  
		Size: 108.9 MB (108904531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8399b52467149a13148a2dff09861f777515d244f59b420dbaa6aed9a678ec5c`  
		Last Modified: Fri, 17 May 2019 23:30:54 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.1.1` - windows version 10.0.17134.765; amd64

```console
$ docker pull julia@sha256:023d40f4d3ad40442229496de75d20362e0e3978ab651cb58b91ed7710b2667e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2406216306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6414d18dc4fc1c8db3e7ced7cec5fd7b1f6fbe28d63bb7069bbf64355ac7ac7e`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 12:45:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 17 May 2019 23:20:56 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 23:20:57 GMT
ENV JULIA_SHA256=26f980a1dd0d93a38c4a5b7e397210a761efed1f87caadc1a7066bb8ab12efab
# Fri, 17 May 2019 23:23:38 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Fri, 17 May 2019 23:23:39 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:58d321368bbf68a108d3298dd40a5ce2d47e3b2d59969e159f05e4fac7b4c259`  
		Last Modified: Wed, 15 May 2019 13:06:15 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6602e91a3f32987808d224ec1037c4d67aeec5f9b19cacdb3bf98a2be27b39a`  
		Last Modified: Fri, 17 May 2019 23:31:48 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38da23b82d5b787f2ac2097619f5a740da1edeae0740d18b227aca31b42d281`  
		Last Modified: Fri, 17 May 2019 23:31:48 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e46069ca43641548fb0e608a613b0545995777611e450afa60b998f799a5f3`  
		Last Modified: Fri, 17 May 2019 23:32:15 GMT  
		Size: 104.0 MB (103961370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c570bc1617177a62dcd4260c17e61b2726055f5b7ec8993f62a09c48fbf78ca`  
		Last Modified: Fri, 17 May 2019 23:31:48 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.1.1-stretch`

```console
$ docker pull julia@sha256:d6f1bf4ff4449278428580d9626ffec139ec3ea0c6d511d9d9c5f077cbe4b948
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `julia:1.1.1-stretch` - linux; amd64

```console
$ docker pull julia@sha256:b3e38a6c07db51f95c8df0204b4c702740a409f6d0ad4166806e68eec63b5343
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.5 MB (151540875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5962892f8ae5f870e48b86d382bb0e3cca2d933deb58f9132c238031c7e3f240`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:09:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 02:09:25 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 08 May 2019 02:09:25 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 02:09:25 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 23:19:34 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 23:19:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='f0a83a139a89a2ccf2316814e5ee1c0c809fca02cbaf4baf3c1fd8eb71594f06' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='3d9ba9c2204ea920006b3a91ecd2803cac808b29250f2120000e29fc0384099a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6941326522ac4bc34c5663c2c5752417e92677ff9befc56ba264eb283f37f1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 23:19:54 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4afdb09021f95e504e5adca5fef8d3f76fdcd8f8875d5972f5abf8e5160f703`  
		Last Modified: Wed, 08 May 2019 02:10:21 GMT  
		Size: 9.5 MB (9497513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca9ea75da0861485d4df9d96df261c0d9fca7bd154c40c290e63020616e4a6a`  
		Last Modified: Fri, 17 May 2019 23:20:47 GMT  
		Size: 96.7 MB (96704048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.1.1-stretch` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:068562d5cf78120185b2508d7bd44bc979c5e4e62befdfbbcaee4b7a7c3c739f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132501614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f22d74b24042f30eccab1ca5263491badeacb376f02646b8ec72cf29eeb58239`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Fri, 17 May 2019 22:40:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 17 May 2019 22:40:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 17 May 2019 22:40:08 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 May 2019 22:40:08 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 22:40:09 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 22:40:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='f0a83a139a89a2ccf2316814e5ee1c0c809fca02cbaf4baf3c1fd8eb71594f06' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='3d9ba9c2204ea920006b3a91ecd2803cac808b29250f2120000e29fc0384099a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6941326522ac4bc34c5663c2c5752417e92677ff9befc56ba264eb283f37f1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 22:40:33 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6502085a5f36d50a9e5add80fd8f9251c6cabc20399e0b8b88948599fb429d2`  
		Last Modified: Fri, 17 May 2019 22:41:30 GMT  
		Size: 8.5 MB (8465608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e12ea7b27f1fb4f9ca7e1ddb343724e10cfda46d32ed4c49a108c3e05e2ea47`  
		Last Modified: Fri, 17 May 2019 22:41:55 GMT  
		Size: 80.9 MB (80894051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.1.1-stretch` - linux; 386

```console
$ docker pull julia@sha256:b1d63523919bf77e2f3ad4ea26dae4a701965515e7e5211aed55f2578295b316
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.4 MB (149417108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b75c0794a27d4c2ea994e00c3055ad6fec43993dd0fc83429a8601ed428bff5a`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 10:49:19 GMT
ADD file:fde8cf5700c66c38b88d4b3254ec1544d09194e06568c23fe3989f7eaa1f5785 in / 
# Wed, 08 May 2019 10:49:20 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:30:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:30:25 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 08 May 2019 19:30:25 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 19:30:25 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 22:38:32 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 22:38:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='f0a83a139a89a2ccf2316814e5ee1c0c809fca02cbaf4baf3c1fd8eb71594f06' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='3d9ba9c2204ea920006b3a91ecd2803cac808b29250f2120000e29fc0384099a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6941326522ac4bc34c5663c2c5752417e92677ff9befc56ba264eb283f37f1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 22:38:54 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b5d586ad7adeab23f6ff0b7ec90785dc757eaccd445976fda3f6d7db64d20585`  
		Last Modified: Wed, 08 May 2019 10:57:26 GMT  
		Size: 46.1 MB (46063371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cadea6066c9d4abd4e2517501b2035006b24b3bc5ec419dc2caab63824d70d`  
		Last Modified: Wed, 08 May 2019 19:31:25 GMT  
		Size: 9.5 MB (9505199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a113dfc032a62b23b45e95e1704b0c750f0c901b518e7e1668c4899ec76eb88a`  
		Last Modified: Fri, 17 May 2019 22:39:52 GMT  
		Size: 93.8 MB (93848538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.1.1-windowsservercore-1803`

```console
$ docker pull julia@sha256:eef8bfb2fe8e2e393db7e28fedff3722e1bab24774a4571ed1326d29b0dec37d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.765; amd64

### `julia:1.1.1-windowsservercore-1803` - windows version 10.0.17134.765; amd64

```console
$ docker pull julia@sha256:023d40f4d3ad40442229496de75d20362e0e3978ab651cb58b91ed7710b2667e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2406216306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6414d18dc4fc1c8db3e7ced7cec5fd7b1f6fbe28d63bb7069bbf64355ac7ac7e`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 12:45:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 17 May 2019 23:20:56 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 23:20:57 GMT
ENV JULIA_SHA256=26f980a1dd0d93a38c4a5b7e397210a761efed1f87caadc1a7066bb8ab12efab
# Fri, 17 May 2019 23:23:38 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Fri, 17 May 2019 23:23:39 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:58d321368bbf68a108d3298dd40a5ce2d47e3b2d59969e159f05e4fac7b4c259`  
		Last Modified: Wed, 15 May 2019 13:06:15 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6602e91a3f32987808d224ec1037c4d67aeec5f9b19cacdb3bf98a2be27b39a`  
		Last Modified: Fri, 17 May 2019 23:31:48 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38da23b82d5b787f2ac2097619f5a740da1edeae0740d18b227aca31b42d281`  
		Last Modified: Fri, 17 May 2019 23:31:48 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e46069ca43641548fb0e608a613b0545995777611e450afa60b998f799a5f3`  
		Last Modified: Fri, 17 May 2019 23:32:15 GMT  
		Size: 104.0 MB (103961370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c570bc1617177a62dcd4260c17e61b2726055f5b7ec8993f62a09c48fbf78ca`  
		Last Modified: Fri, 17 May 2019 23:31:48 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.1.1-windowsservercore-ltsc2016`

```console
$ docker pull julia@sha256:40b0f0d5eb18c0d04274dd9e7b0691cccf5cd78d4ccd1dcce1124193d4fe077e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64

### `julia:1.1.1-windowsservercore-ltsc2016` - windows version 10.0.14393.2969; amd64

```console
$ docker pull julia@sha256:1711e64884ed83c07f2709de42ab88a2cde651ad5e7f5063d817d403116d6674
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5811030225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c628045512a090de695d169930d5301fac7559af1bb9a6b8e200cea6986e291`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 12:35:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 17 May 2019 23:17:27 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 23:17:28 GMT
ENV JULIA_SHA256=26f980a1dd0d93a38c4a5b7e397210a761efed1f87caadc1a7066bb8ab12efab
# Fri, 17 May 2019 23:20:43 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Fri, 17 May 2019 23:20:44 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b48eb2d408a626a484fe196b9b128fc9d49431157edd27f53c27b86a3f2c4af4`  
		Last Modified: Wed, 15 May 2019 13:04:30 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c77091f9d8c25e01f69cedc20b72d14b0796436f2a7006bfdf73a96ae7cc031`  
		Last Modified: Fri, 17 May 2019 23:30:53 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65062a85f74c873eea53dd5f51da498cc66de1d22e7aac017ded327689241fc2`  
		Last Modified: Fri, 17 May 2019 23:30:54 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f974bfe0a23c8ad09af384194e810b4a1a932f240a4c8d314a41078b6631813`  
		Last Modified: Fri, 17 May 2019 23:31:23 GMT  
		Size: 108.9 MB (108904531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8399b52467149a13148a2dff09861f777515d244f59b420dbaa6aed9a678ec5c`  
		Last Modified: Fri, 17 May 2019 23:30:54 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.1-stretch`

```console
$ docker pull julia@sha256:d6f1bf4ff4449278428580d9626ffec139ec3ea0c6d511d9d9c5f077cbe4b948
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `julia:1.1-stretch` - linux; amd64

```console
$ docker pull julia@sha256:b3e38a6c07db51f95c8df0204b4c702740a409f6d0ad4166806e68eec63b5343
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.5 MB (151540875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5962892f8ae5f870e48b86d382bb0e3cca2d933deb58f9132c238031c7e3f240`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:09:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 02:09:25 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 08 May 2019 02:09:25 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 02:09:25 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 23:19:34 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 23:19:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='f0a83a139a89a2ccf2316814e5ee1c0c809fca02cbaf4baf3c1fd8eb71594f06' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='3d9ba9c2204ea920006b3a91ecd2803cac808b29250f2120000e29fc0384099a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6941326522ac4bc34c5663c2c5752417e92677ff9befc56ba264eb283f37f1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 23:19:54 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4afdb09021f95e504e5adca5fef8d3f76fdcd8f8875d5972f5abf8e5160f703`  
		Last Modified: Wed, 08 May 2019 02:10:21 GMT  
		Size: 9.5 MB (9497513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca9ea75da0861485d4df9d96df261c0d9fca7bd154c40c290e63020616e4a6a`  
		Last Modified: Fri, 17 May 2019 23:20:47 GMT  
		Size: 96.7 MB (96704048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.1-stretch` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:068562d5cf78120185b2508d7bd44bc979c5e4e62befdfbbcaee4b7a7c3c739f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132501614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f22d74b24042f30eccab1ca5263491badeacb376f02646b8ec72cf29eeb58239`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Fri, 17 May 2019 22:40:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 17 May 2019 22:40:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 17 May 2019 22:40:08 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 May 2019 22:40:08 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 22:40:09 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 22:40:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='f0a83a139a89a2ccf2316814e5ee1c0c809fca02cbaf4baf3c1fd8eb71594f06' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='3d9ba9c2204ea920006b3a91ecd2803cac808b29250f2120000e29fc0384099a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6941326522ac4bc34c5663c2c5752417e92677ff9befc56ba264eb283f37f1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 22:40:33 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6502085a5f36d50a9e5add80fd8f9251c6cabc20399e0b8b88948599fb429d2`  
		Last Modified: Fri, 17 May 2019 22:41:30 GMT  
		Size: 8.5 MB (8465608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e12ea7b27f1fb4f9ca7e1ddb343724e10cfda46d32ed4c49a108c3e05e2ea47`  
		Last Modified: Fri, 17 May 2019 22:41:55 GMT  
		Size: 80.9 MB (80894051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.1-stretch` - linux; 386

```console
$ docker pull julia@sha256:b1d63523919bf77e2f3ad4ea26dae4a701965515e7e5211aed55f2578295b316
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.4 MB (149417108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b75c0794a27d4c2ea994e00c3055ad6fec43993dd0fc83429a8601ed428bff5a`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 10:49:19 GMT
ADD file:fde8cf5700c66c38b88d4b3254ec1544d09194e06568c23fe3989f7eaa1f5785 in / 
# Wed, 08 May 2019 10:49:20 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:30:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:30:25 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 08 May 2019 19:30:25 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 19:30:25 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 22:38:32 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 22:38:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='f0a83a139a89a2ccf2316814e5ee1c0c809fca02cbaf4baf3c1fd8eb71594f06' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='3d9ba9c2204ea920006b3a91ecd2803cac808b29250f2120000e29fc0384099a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6941326522ac4bc34c5663c2c5752417e92677ff9befc56ba264eb283f37f1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 22:38:54 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b5d586ad7adeab23f6ff0b7ec90785dc757eaccd445976fda3f6d7db64d20585`  
		Last Modified: Wed, 08 May 2019 10:57:26 GMT  
		Size: 46.1 MB (46063371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cadea6066c9d4abd4e2517501b2035006b24b3bc5ec419dc2caab63824d70d`  
		Last Modified: Wed, 08 May 2019 19:31:25 GMT  
		Size: 9.5 MB (9505199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a113dfc032a62b23b45e95e1704b0c750f0c901b518e7e1668c4899ec76eb88a`  
		Last Modified: Fri, 17 May 2019 22:39:52 GMT  
		Size: 93.8 MB (93848538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.1-windowsservercore-1803`

```console
$ docker pull julia@sha256:eef8bfb2fe8e2e393db7e28fedff3722e1bab24774a4571ed1326d29b0dec37d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.765; amd64

### `julia:1.1-windowsservercore-1803` - windows version 10.0.17134.765; amd64

```console
$ docker pull julia@sha256:023d40f4d3ad40442229496de75d20362e0e3978ab651cb58b91ed7710b2667e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2406216306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6414d18dc4fc1c8db3e7ced7cec5fd7b1f6fbe28d63bb7069bbf64355ac7ac7e`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 12:45:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 17 May 2019 23:20:56 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 23:20:57 GMT
ENV JULIA_SHA256=26f980a1dd0d93a38c4a5b7e397210a761efed1f87caadc1a7066bb8ab12efab
# Fri, 17 May 2019 23:23:38 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Fri, 17 May 2019 23:23:39 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:58d321368bbf68a108d3298dd40a5ce2d47e3b2d59969e159f05e4fac7b4c259`  
		Last Modified: Wed, 15 May 2019 13:06:15 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6602e91a3f32987808d224ec1037c4d67aeec5f9b19cacdb3bf98a2be27b39a`  
		Last Modified: Fri, 17 May 2019 23:31:48 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38da23b82d5b787f2ac2097619f5a740da1edeae0740d18b227aca31b42d281`  
		Last Modified: Fri, 17 May 2019 23:31:48 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e46069ca43641548fb0e608a613b0545995777611e450afa60b998f799a5f3`  
		Last Modified: Fri, 17 May 2019 23:32:15 GMT  
		Size: 104.0 MB (103961370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c570bc1617177a62dcd4260c17e61b2726055f5b7ec8993f62a09c48fbf78ca`  
		Last Modified: Fri, 17 May 2019 23:31:48 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.1-windowsservercore-ltsc2016`

```console
$ docker pull julia@sha256:40b0f0d5eb18c0d04274dd9e7b0691cccf5cd78d4ccd1dcce1124193d4fe077e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64

### `julia:1.1-windowsservercore-ltsc2016` - windows version 10.0.14393.2969; amd64

```console
$ docker pull julia@sha256:1711e64884ed83c07f2709de42ab88a2cde651ad5e7f5063d817d403116d6674
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5811030225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c628045512a090de695d169930d5301fac7559af1bb9a6b8e200cea6986e291`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 12:35:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 17 May 2019 23:17:27 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 23:17:28 GMT
ENV JULIA_SHA256=26f980a1dd0d93a38c4a5b7e397210a761efed1f87caadc1a7066bb8ab12efab
# Fri, 17 May 2019 23:20:43 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Fri, 17 May 2019 23:20:44 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b48eb2d408a626a484fe196b9b128fc9d49431157edd27f53c27b86a3f2c4af4`  
		Last Modified: Wed, 15 May 2019 13:04:30 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c77091f9d8c25e01f69cedc20b72d14b0796436f2a7006bfdf73a96ae7cc031`  
		Last Modified: Fri, 17 May 2019 23:30:53 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65062a85f74c873eea53dd5f51da498cc66de1d22e7aac017ded327689241fc2`  
		Last Modified: Fri, 17 May 2019 23:30:54 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f974bfe0a23c8ad09af384194e810b4a1a932f240a4c8d314a41078b6631813`  
		Last Modified: Fri, 17 May 2019 23:31:23 GMT  
		Size: 108.9 MB (108904531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8399b52467149a13148a2dff09861f777515d244f59b420dbaa6aed9a678ec5c`  
		Last Modified: Fri, 17 May 2019 23:30:54 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1-stretch`

```console
$ docker pull julia@sha256:d6f1bf4ff4449278428580d9626ffec139ec3ea0c6d511d9d9c5f077cbe4b948
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `julia:1-stretch` - linux; amd64

```console
$ docker pull julia@sha256:b3e38a6c07db51f95c8df0204b4c702740a409f6d0ad4166806e68eec63b5343
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.5 MB (151540875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5962892f8ae5f870e48b86d382bb0e3cca2d933deb58f9132c238031c7e3f240`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:09:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 02:09:25 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 08 May 2019 02:09:25 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 02:09:25 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 23:19:34 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 23:19:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='f0a83a139a89a2ccf2316814e5ee1c0c809fca02cbaf4baf3c1fd8eb71594f06' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='3d9ba9c2204ea920006b3a91ecd2803cac808b29250f2120000e29fc0384099a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6941326522ac4bc34c5663c2c5752417e92677ff9befc56ba264eb283f37f1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 23:19:54 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4afdb09021f95e504e5adca5fef8d3f76fdcd8f8875d5972f5abf8e5160f703`  
		Last Modified: Wed, 08 May 2019 02:10:21 GMT  
		Size: 9.5 MB (9497513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca9ea75da0861485d4df9d96df261c0d9fca7bd154c40c290e63020616e4a6a`  
		Last Modified: Fri, 17 May 2019 23:20:47 GMT  
		Size: 96.7 MB (96704048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1-stretch` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:068562d5cf78120185b2508d7bd44bc979c5e4e62befdfbbcaee4b7a7c3c739f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132501614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f22d74b24042f30eccab1ca5263491badeacb376f02646b8ec72cf29eeb58239`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Fri, 17 May 2019 22:40:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 17 May 2019 22:40:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 17 May 2019 22:40:08 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 May 2019 22:40:08 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 22:40:09 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 22:40:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='f0a83a139a89a2ccf2316814e5ee1c0c809fca02cbaf4baf3c1fd8eb71594f06' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='3d9ba9c2204ea920006b3a91ecd2803cac808b29250f2120000e29fc0384099a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6941326522ac4bc34c5663c2c5752417e92677ff9befc56ba264eb283f37f1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 22:40:33 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6502085a5f36d50a9e5add80fd8f9251c6cabc20399e0b8b88948599fb429d2`  
		Last Modified: Fri, 17 May 2019 22:41:30 GMT  
		Size: 8.5 MB (8465608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e12ea7b27f1fb4f9ca7e1ddb343724e10cfda46d32ed4c49a108c3e05e2ea47`  
		Last Modified: Fri, 17 May 2019 22:41:55 GMT  
		Size: 80.9 MB (80894051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1-stretch` - linux; 386

```console
$ docker pull julia@sha256:b1d63523919bf77e2f3ad4ea26dae4a701965515e7e5211aed55f2578295b316
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.4 MB (149417108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b75c0794a27d4c2ea994e00c3055ad6fec43993dd0fc83429a8601ed428bff5a`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 10:49:19 GMT
ADD file:fde8cf5700c66c38b88d4b3254ec1544d09194e06568c23fe3989f7eaa1f5785 in / 
# Wed, 08 May 2019 10:49:20 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:30:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:30:25 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 08 May 2019 19:30:25 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 19:30:25 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 22:38:32 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 22:38:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='f0a83a139a89a2ccf2316814e5ee1c0c809fca02cbaf4baf3c1fd8eb71594f06' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='3d9ba9c2204ea920006b3a91ecd2803cac808b29250f2120000e29fc0384099a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6941326522ac4bc34c5663c2c5752417e92677ff9befc56ba264eb283f37f1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 22:38:54 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b5d586ad7adeab23f6ff0b7ec90785dc757eaccd445976fda3f6d7db64d20585`  
		Last Modified: Wed, 08 May 2019 10:57:26 GMT  
		Size: 46.1 MB (46063371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cadea6066c9d4abd4e2517501b2035006b24b3bc5ec419dc2caab63824d70d`  
		Last Modified: Wed, 08 May 2019 19:31:25 GMT  
		Size: 9.5 MB (9505199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a113dfc032a62b23b45e95e1704b0c750f0c901b518e7e1668c4899ec76eb88a`  
		Last Modified: Fri, 17 May 2019 22:39:52 GMT  
		Size: 93.8 MB (93848538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1-windowsservercore-1803`

```console
$ docker pull julia@sha256:eef8bfb2fe8e2e393db7e28fedff3722e1bab24774a4571ed1326d29b0dec37d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.765; amd64

### `julia:1-windowsservercore-1803` - windows version 10.0.17134.765; amd64

```console
$ docker pull julia@sha256:023d40f4d3ad40442229496de75d20362e0e3978ab651cb58b91ed7710b2667e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2406216306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6414d18dc4fc1c8db3e7ced7cec5fd7b1f6fbe28d63bb7069bbf64355ac7ac7e`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 12:45:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 17 May 2019 23:20:56 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 23:20:57 GMT
ENV JULIA_SHA256=26f980a1dd0d93a38c4a5b7e397210a761efed1f87caadc1a7066bb8ab12efab
# Fri, 17 May 2019 23:23:38 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Fri, 17 May 2019 23:23:39 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:58d321368bbf68a108d3298dd40a5ce2d47e3b2d59969e159f05e4fac7b4c259`  
		Last Modified: Wed, 15 May 2019 13:06:15 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6602e91a3f32987808d224ec1037c4d67aeec5f9b19cacdb3bf98a2be27b39a`  
		Last Modified: Fri, 17 May 2019 23:31:48 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38da23b82d5b787f2ac2097619f5a740da1edeae0740d18b227aca31b42d281`  
		Last Modified: Fri, 17 May 2019 23:31:48 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e46069ca43641548fb0e608a613b0545995777611e450afa60b998f799a5f3`  
		Last Modified: Fri, 17 May 2019 23:32:15 GMT  
		Size: 104.0 MB (103961370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c570bc1617177a62dcd4260c17e61b2726055f5b7ec8993f62a09c48fbf78ca`  
		Last Modified: Fri, 17 May 2019 23:31:48 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1-windowsservercore-ltsc2016`

```console
$ docker pull julia@sha256:40b0f0d5eb18c0d04274dd9e7b0691cccf5cd78d4ccd1dcce1124193d4fe077e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64

### `julia:1-windowsservercore-ltsc2016` - windows version 10.0.14393.2969; amd64

```console
$ docker pull julia@sha256:1711e64884ed83c07f2709de42ab88a2cde651ad5e7f5063d817d403116d6674
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5811030225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c628045512a090de695d169930d5301fac7559af1bb9a6b8e200cea6986e291`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 12:35:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 17 May 2019 23:17:27 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 23:17:28 GMT
ENV JULIA_SHA256=26f980a1dd0d93a38c4a5b7e397210a761efed1f87caadc1a7066bb8ab12efab
# Fri, 17 May 2019 23:20:43 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Fri, 17 May 2019 23:20:44 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b48eb2d408a626a484fe196b9b128fc9d49431157edd27f53c27b86a3f2c4af4`  
		Last Modified: Wed, 15 May 2019 13:04:30 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c77091f9d8c25e01f69cedc20b72d14b0796436f2a7006bfdf73a96ae7cc031`  
		Last Modified: Fri, 17 May 2019 23:30:53 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65062a85f74c873eea53dd5f51da498cc66de1d22e7aac017ded327689241fc2`  
		Last Modified: Fri, 17 May 2019 23:30:54 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f974bfe0a23c8ad09af384194e810b4a1a932f240a4c8d314a41078b6631813`  
		Last Modified: Fri, 17 May 2019 23:31:23 GMT  
		Size: 108.9 MB (108904531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8399b52467149a13148a2dff09861f777515d244f59b420dbaa6aed9a678ec5c`  
		Last Modified: Fri, 17 May 2019 23:30:54 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:latest`

```console
$ docker pull julia@sha256:8dc4f7de8610d1e5d6407436e2303f294818e3633070414b7d30b4903f5d1698
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	windows version 10.0.14393.2969; amd64
	-	windows version 10.0.17134.765; amd64

### `julia:latest` - linux; amd64

```console
$ docker pull julia@sha256:b3e38a6c07db51f95c8df0204b4c702740a409f6d0ad4166806e68eec63b5343
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.5 MB (151540875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5962892f8ae5f870e48b86d382bb0e3cca2d933deb58f9132c238031c7e3f240`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:09:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 02:09:25 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 08 May 2019 02:09:25 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 02:09:25 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 23:19:34 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 23:19:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='f0a83a139a89a2ccf2316814e5ee1c0c809fca02cbaf4baf3c1fd8eb71594f06' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='3d9ba9c2204ea920006b3a91ecd2803cac808b29250f2120000e29fc0384099a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6941326522ac4bc34c5663c2c5752417e92677ff9befc56ba264eb283f37f1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 23:19:54 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4afdb09021f95e504e5adca5fef8d3f76fdcd8f8875d5972f5abf8e5160f703`  
		Last Modified: Wed, 08 May 2019 02:10:21 GMT  
		Size: 9.5 MB (9497513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca9ea75da0861485d4df9d96df261c0d9fca7bd154c40c290e63020616e4a6a`  
		Last Modified: Fri, 17 May 2019 23:20:47 GMT  
		Size: 96.7 MB (96704048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:068562d5cf78120185b2508d7bd44bc979c5e4e62befdfbbcaee4b7a7c3c739f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132501614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f22d74b24042f30eccab1ca5263491badeacb376f02646b8ec72cf29eeb58239`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Fri, 17 May 2019 22:40:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 17 May 2019 22:40:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 17 May 2019 22:40:08 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 May 2019 22:40:08 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 22:40:09 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 22:40:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='f0a83a139a89a2ccf2316814e5ee1c0c809fca02cbaf4baf3c1fd8eb71594f06' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='3d9ba9c2204ea920006b3a91ecd2803cac808b29250f2120000e29fc0384099a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6941326522ac4bc34c5663c2c5752417e92677ff9befc56ba264eb283f37f1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 22:40:33 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6502085a5f36d50a9e5add80fd8f9251c6cabc20399e0b8b88948599fb429d2`  
		Last Modified: Fri, 17 May 2019 22:41:30 GMT  
		Size: 8.5 MB (8465608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e12ea7b27f1fb4f9ca7e1ddb343724e10cfda46d32ed4c49a108c3e05e2ea47`  
		Last Modified: Fri, 17 May 2019 22:41:55 GMT  
		Size: 80.9 MB (80894051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - linux; 386

```console
$ docker pull julia@sha256:b1d63523919bf77e2f3ad4ea26dae4a701965515e7e5211aed55f2578295b316
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.4 MB (149417108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b75c0794a27d4c2ea994e00c3055ad6fec43993dd0fc83429a8601ed428bff5a`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 10:49:19 GMT
ADD file:fde8cf5700c66c38b88d4b3254ec1544d09194e06568c23fe3989f7eaa1f5785 in / 
# Wed, 08 May 2019 10:49:20 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:30:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:30:25 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 08 May 2019 19:30:25 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 19:30:25 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 22:38:32 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 22:38:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='f0a83a139a89a2ccf2316814e5ee1c0c809fca02cbaf4baf3c1fd8eb71594f06' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='3d9ba9c2204ea920006b3a91ecd2803cac808b29250f2120000e29fc0384099a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6941326522ac4bc34c5663c2c5752417e92677ff9befc56ba264eb283f37f1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 22:38:54 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b5d586ad7adeab23f6ff0b7ec90785dc757eaccd445976fda3f6d7db64d20585`  
		Last Modified: Wed, 08 May 2019 10:57:26 GMT  
		Size: 46.1 MB (46063371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cadea6066c9d4abd4e2517501b2035006b24b3bc5ec419dc2caab63824d70d`  
		Last Modified: Wed, 08 May 2019 19:31:25 GMT  
		Size: 9.5 MB (9505199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a113dfc032a62b23b45e95e1704b0c750f0c901b518e7e1668c4899ec76eb88a`  
		Last Modified: Fri, 17 May 2019 22:39:52 GMT  
		Size: 93.8 MB (93848538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - windows version 10.0.14393.2969; amd64

```console
$ docker pull julia@sha256:1711e64884ed83c07f2709de42ab88a2cde651ad5e7f5063d817d403116d6674
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5811030225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c628045512a090de695d169930d5301fac7559af1bb9a6b8e200cea6986e291`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 12:35:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 17 May 2019 23:17:27 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 23:17:28 GMT
ENV JULIA_SHA256=26f980a1dd0d93a38c4a5b7e397210a761efed1f87caadc1a7066bb8ab12efab
# Fri, 17 May 2019 23:20:43 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Fri, 17 May 2019 23:20:44 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b48eb2d408a626a484fe196b9b128fc9d49431157edd27f53c27b86a3f2c4af4`  
		Last Modified: Wed, 15 May 2019 13:04:30 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c77091f9d8c25e01f69cedc20b72d14b0796436f2a7006bfdf73a96ae7cc031`  
		Last Modified: Fri, 17 May 2019 23:30:53 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65062a85f74c873eea53dd5f51da498cc66de1d22e7aac017ded327689241fc2`  
		Last Modified: Fri, 17 May 2019 23:30:54 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f974bfe0a23c8ad09af384194e810b4a1a932f240a4c8d314a41078b6631813`  
		Last Modified: Fri, 17 May 2019 23:31:23 GMT  
		Size: 108.9 MB (108904531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8399b52467149a13148a2dff09861f777515d244f59b420dbaa6aed9a678ec5c`  
		Last Modified: Fri, 17 May 2019 23:30:54 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - windows version 10.0.17134.765; amd64

```console
$ docker pull julia@sha256:023d40f4d3ad40442229496de75d20362e0e3978ab651cb58b91ed7710b2667e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2406216306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6414d18dc4fc1c8db3e7ced7cec5fd7b1f6fbe28d63bb7069bbf64355ac7ac7e`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 12:45:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 17 May 2019 23:20:56 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 23:20:57 GMT
ENV JULIA_SHA256=26f980a1dd0d93a38c4a5b7e397210a761efed1f87caadc1a7066bb8ab12efab
# Fri, 17 May 2019 23:23:38 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Fri, 17 May 2019 23:23:39 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:58d321368bbf68a108d3298dd40a5ce2d47e3b2d59969e159f05e4fac7b4c259`  
		Last Modified: Wed, 15 May 2019 13:06:15 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6602e91a3f32987808d224ec1037c4d67aeec5f9b19cacdb3bf98a2be27b39a`  
		Last Modified: Fri, 17 May 2019 23:31:48 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38da23b82d5b787f2ac2097619f5a740da1edeae0740d18b227aca31b42d281`  
		Last Modified: Fri, 17 May 2019 23:31:48 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e46069ca43641548fb0e608a613b0545995777611e450afa60b998f799a5f3`  
		Last Modified: Fri, 17 May 2019 23:32:15 GMT  
		Size: 104.0 MB (103961370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c570bc1617177a62dcd4260c17e61b2726055f5b7ec8993f62a09c48fbf78ca`  
		Last Modified: Fri, 17 May 2019 23:31:48 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:stretch`

```console
$ docker pull julia@sha256:d6f1bf4ff4449278428580d9626ffec139ec3ea0c6d511d9d9c5f077cbe4b948
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `julia:stretch` - linux; amd64

```console
$ docker pull julia@sha256:b3e38a6c07db51f95c8df0204b4c702740a409f6d0ad4166806e68eec63b5343
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.5 MB (151540875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5962892f8ae5f870e48b86d382bb0e3cca2d933deb58f9132c238031c7e3f240`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:09:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 02:09:25 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 08 May 2019 02:09:25 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 02:09:25 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 23:19:34 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 23:19:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='f0a83a139a89a2ccf2316814e5ee1c0c809fca02cbaf4baf3c1fd8eb71594f06' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='3d9ba9c2204ea920006b3a91ecd2803cac808b29250f2120000e29fc0384099a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6941326522ac4bc34c5663c2c5752417e92677ff9befc56ba264eb283f37f1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 23:19:54 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4afdb09021f95e504e5adca5fef8d3f76fdcd8f8875d5972f5abf8e5160f703`  
		Last Modified: Wed, 08 May 2019 02:10:21 GMT  
		Size: 9.5 MB (9497513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca9ea75da0861485d4df9d96df261c0d9fca7bd154c40c290e63020616e4a6a`  
		Last Modified: Fri, 17 May 2019 23:20:47 GMT  
		Size: 96.7 MB (96704048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:stretch` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:068562d5cf78120185b2508d7bd44bc979c5e4e62befdfbbcaee4b7a7c3c739f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132501614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f22d74b24042f30eccab1ca5263491badeacb376f02646b8ec72cf29eeb58239`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Fri, 17 May 2019 22:40:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 17 May 2019 22:40:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 17 May 2019 22:40:08 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 May 2019 22:40:08 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 22:40:09 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 22:40:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='f0a83a139a89a2ccf2316814e5ee1c0c809fca02cbaf4baf3c1fd8eb71594f06' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='3d9ba9c2204ea920006b3a91ecd2803cac808b29250f2120000e29fc0384099a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6941326522ac4bc34c5663c2c5752417e92677ff9befc56ba264eb283f37f1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 22:40:33 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6502085a5f36d50a9e5add80fd8f9251c6cabc20399e0b8b88948599fb429d2`  
		Last Modified: Fri, 17 May 2019 22:41:30 GMT  
		Size: 8.5 MB (8465608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e12ea7b27f1fb4f9ca7e1ddb343724e10cfda46d32ed4c49a108c3e05e2ea47`  
		Last Modified: Fri, 17 May 2019 22:41:55 GMT  
		Size: 80.9 MB (80894051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:stretch` - linux; 386

```console
$ docker pull julia@sha256:b1d63523919bf77e2f3ad4ea26dae4a701965515e7e5211aed55f2578295b316
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.4 MB (149417108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b75c0794a27d4c2ea994e00c3055ad6fec43993dd0fc83429a8601ed428bff5a`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 08 May 2019 10:49:19 GMT
ADD file:fde8cf5700c66c38b88d4b3254ec1544d09194e06568c23fe3989f7eaa1f5785 in / 
# Wed, 08 May 2019 10:49:20 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:30:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:30:25 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 08 May 2019 19:30:25 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 19:30:25 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 17 May 2019 22:38:32 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 22:38:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='f0a83a139a89a2ccf2316814e5ee1c0c809fca02cbaf4baf3c1fd8eb71594f06' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='3d9ba9c2204ea920006b3a91ecd2803cac808b29250f2120000e29fc0384099a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6941326522ac4bc34c5663c2c5752417e92677ff9befc56ba264eb283f37f1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 17 May 2019 22:38:54 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b5d586ad7adeab23f6ff0b7ec90785dc757eaccd445976fda3f6d7db64d20585`  
		Last Modified: Wed, 08 May 2019 10:57:26 GMT  
		Size: 46.1 MB (46063371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cadea6066c9d4abd4e2517501b2035006b24b3bc5ec419dc2caab63824d70d`  
		Last Modified: Wed, 08 May 2019 19:31:25 GMT  
		Size: 9.5 MB (9505199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a113dfc032a62b23b45e95e1704b0c750f0c901b518e7e1668c4899ec76eb88a`  
		Last Modified: Fri, 17 May 2019 22:39:52 GMT  
		Size: 93.8 MB (93848538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:windowsservercore-1803`

```console
$ docker pull julia@sha256:eef8bfb2fe8e2e393db7e28fedff3722e1bab24774a4571ed1326d29b0dec37d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.765; amd64

### `julia:windowsservercore-1803` - windows version 10.0.17134.765; amd64

```console
$ docker pull julia@sha256:023d40f4d3ad40442229496de75d20362e0e3978ab651cb58b91ed7710b2667e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2406216306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6414d18dc4fc1c8db3e7ced7cec5fd7b1f6fbe28d63bb7069bbf64355ac7ac7e`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 12:45:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 17 May 2019 23:20:56 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 23:20:57 GMT
ENV JULIA_SHA256=26f980a1dd0d93a38c4a5b7e397210a761efed1f87caadc1a7066bb8ab12efab
# Fri, 17 May 2019 23:23:38 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Fri, 17 May 2019 23:23:39 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:58d321368bbf68a108d3298dd40a5ce2d47e3b2d59969e159f05e4fac7b4c259`  
		Last Modified: Wed, 15 May 2019 13:06:15 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6602e91a3f32987808d224ec1037c4d67aeec5f9b19cacdb3bf98a2be27b39a`  
		Last Modified: Fri, 17 May 2019 23:31:48 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38da23b82d5b787f2ac2097619f5a740da1edeae0740d18b227aca31b42d281`  
		Last Modified: Fri, 17 May 2019 23:31:48 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e46069ca43641548fb0e608a613b0545995777611e450afa60b998f799a5f3`  
		Last Modified: Fri, 17 May 2019 23:32:15 GMT  
		Size: 104.0 MB (103961370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c570bc1617177a62dcd4260c17e61b2726055f5b7ec8993f62a09c48fbf78ca`  
		Last Modified: Fri, 17 May 2019 23:31:48 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:windowsservercore-ltsc2016`

```console
$ docker pull julia@sha256:40b0f0d5eb18c0d04274dd9e7b0691cccf5cd78d4ccd1dcce1124193d4fe077e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64

### `julia:windowsservercore-ltsc2016` - windows version 10.0.14393.2969; amd64

```console
$ docker pull julia@sha256:1711e64884ed83c07f2709de42ab88a2cde651ad5e7f5063d817d403116d6674
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5811030225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c628045512a090de695d169930d5301fac7559af1bb9a6b8e200cea6986e291`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 12:35:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 17 May 2019 23:17:27 GMT
ENV JULIA_VERSION=1.1.1
# Fri, 17 May 2019 23:17:28 GMT
ENV JULIA_SHA256=26f980a1dd0d93a38c4a5b7e397210a761efed1f87caadc1a7066bb8ab12efab
# Fri, 17 May 2019 23:20:43 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Fri, 17 May 2019 23:20:44 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b48eb2d408a626a484fe196b9b128fc9d49431157edd27f53c27b86a3f2c4af4`  
		Last Modified: Wed, 15 May 2019 13:04:30 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c77091f9d8c25e01f69cedc20b72d14b0796436f2a7006bfdf73a96ae7cc031`  
		Last Modified: Fri, 17 May 2019 23:30:53 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65062a85f74c873eea53dd5f51da498cc66de1d22e7aac017ded327689241fc2`  
		Last Modified: Fri, 17 May 2019 23:30:54 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f974bfe0a23c8ad09af384194e810b4a1a932f240a4c8d314a41078b6631813`  
		Last Modified: Fri, 17 May 2019 23:31:23 GMT  
		Size: 108.9 MB (108904531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8399b52467149a13148a2dff09861f777515d244f59b420dbaa6aed9a678ec5c`  
		Last Modified: Fri, 17 May 2019 23:30:54 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
