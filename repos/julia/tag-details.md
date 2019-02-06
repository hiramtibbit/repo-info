<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `julia`

-	[`julia:1`](#julia1)
-	[`julia:1.0`](#julia10)
-	[`julia:1.0.3`](#julia103)
-	[`julia:1.0.3-stretch`](#julia103-stretch)
-	[`julia:1.0.3-windowsservercore-1709`](#julia103-windowsservercore-1709)
-	[`julia:1.0.3-windowsservercore-1803`](#julia103-windowsservercore-1803)
-	[`julia:1.0.3-windowsservercore-ltsc2016`](#julia103-windowsservercore-ltsc2016)
-	[`julia:1.0-stretch`](#julia10-stretch)
-	[`julia:1.0-windowsservercore-1709`](#julia10-windowsservercore-1709)
-	[`julia:1.0-windowsservercore-1803`](#julia10-windowsservercore-1803)
-	[`julia:1.0-windowsservercore-ltsc2016`](#julia10-windowsservercore-ltsc2016)
-	[`julia:1.1`](#julia11)
-	[`julia:1.1.0`](#julia110)
-	[`julia:1.1.0-stretch`](#julia110-stretch)
-	[`julia:1.1.0-windowsservercore-1709`](#julia110-windowsservercore-1709)
-	[`julia:1.1.0-windowsservercore-1803`](#julia110-windowsservercore-1803)
-	[`julia:1.1.0-windowsservercore-ltsc2016`](#julia110-windowsservercore-ltsc2016)
-	[`julia:1.1-stretch`](#julia11-stretch)
-	[`julia:1.1-windowsservercore-1709`](#julia11-windowsservercore-1709)
-	[`julia:1.1-windowsservercore-1803`](#julia11-windowsservercore-1803)
-	[`julia:1.1-windowsservercore-ltsc2016`](#julia11-windowsservercore-ltsc2016)
-	[`julia:1-stretch`](#julia1-stretch)
-	[`julia:1-windowsservercore-1709`](#julia1-windowsservercore-1709)
-	[`julia:1-windowsservercore-1803`](#julia1-windowsservercore-1803)
-	[`julia:1-windowsservercore-ltsc2016`](#julia1-windowsservercore-ltsc2016)
-	[`julia:latest`](#julialatest)
-	[`julia:stretch`](#juliastretch)
-	[`julia:windowsservercore-1709`](#juliawindowsservercore-1709)
-	[`julia:windowsservercore-1803`](#juliawindowsservercore-1803)
-	[`julia:windowsservercore-ltsc2016`](#juliawindowsservercore-ltsc2016)

## `julia:1`

```console
$ docker pull julia@sha256:74fff204e1bae851ffcbd176d0eb44c028c808c18aea1330900ee104c1482eed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	windows version 10.0.14393.2724; amd64
	-	windows version 10.0.16299.904; amd64
	-	windows version 10.0.17134.523; amd64

### `julia:1` - linux; amd64

```console
$ docker pull julia@sha256:3fa7855f260c4063e15d4f42692b6cf047938ab3fda488d3ec6c0e71c25e4ee9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.4 MB (151438743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917093c9b9318ab13172cb568be70135d213ccd67a63fb935297efb925d1116f`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:03:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:03:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 06 Feb 2019 07:03:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 07:03:08 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 06 Feb 2019 07:03:08 GMT
ENV JULIA_VERSION=1.1.0
# Wed, 06 Feb 2019 07:03:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='80cfd013e526b5145ec3254920afd89bb459f1db7a2a3f21849125af20c05471' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='9efd7ffd4a246311f544cf0031682f4dcf946b2377abaa285684526071272fe5' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 06 Feb 2019 07:03:24 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ad57f7f512401da1583400da462433d25cd4866d4a2fb961c62229a1fcfc81`  
		Last Modified: Wed, 06 Feb 2019 07:03:59 GMT  
		Size: 9.5 MB (9495211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:713faba31c4e3403a140914fbef75960252252a6a0a23113d5628d119dc872d5`  
		Last Modified: Wed, 06 Feb 2019 07:04:16 GMT  
		Size: 96.6 MB (96599240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1` - linux; 386

```console
$ docker pull julia@sha256:b8cee0b0a243dd91eb1fd89f18b1586284af8cdd4aa365e4cfbb44011ccd5755
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.3 MB (149275399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:196658eb80886eecda3b971c8402e1bc949ced9faa3cb7faf1b568c4032c1784`
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
# Sat, 26 Jan 2019 12:22:05 GMT
ENV JULIA_VERSION=1.1.0
# Sat, 26 Jan 2019 12:22:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='80cfd013e526b5145ec3254920afd89bb459f1db7a2a3f21849125af20c05471' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='9efd7ffd4a246311f544cf0031682f4dcf946b2377abaa285684526071272fe5' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Sat, 26 Jan 2019 12:22:24 GMT
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
	-	`sha256:c5ab2aed250a381b202ed10c22c56a44b11abb352eea45033310fd4d5e2d89a0`  
		Last Modified: Sat, 26 Jan 2019 12:22:58 GMT  
		Size: 93.7 MB (93706570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1` - windows version 10.0.14393.2724; amd64

```console
$ docker pull julia@sha256:b4b8a43c698d4425df9930b18432ba06184097c2b952614a06c0555e3087ae76
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5743464403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:602a7ae7e07e3e2a3e9e8787bbcb482c4ab9b2227dbd47fe5c5d89a02c77f7a6`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 08 Jan 2019 17:44:44 GMT
RUN Install update 10.0.14393.2724
# Fri, 11 Jan 2019 10:38:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 26 Jan 2019 10:15:27 GMT
ENV JULIA_VERSION=1.1.0
# Sat, 26 Jan 2019 10:15:28 GMT
ENV JULIA_SHA256=15bc552e43f5d83d20e439b6026a95f2fd8d57c32249c602dc836ce2798f4a33
# Sat, 26 Jan 2019 10:18:44 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:18:46 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d0c71fc8924e632b81de72fba055610c4a5259b2f6723e15f70662f7bc328184`  
		Last Modified: Tue, 08 Jan 2019 17:44:44 GMT  
		Size: 1.6 GB (1565830172 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:52e9c8dd86ca94537c9a49c5082ecddcdff7fc266e93f1587ff015c3e463ed51`  
		Last Modified: Fri, 11 Jan 2019 11:28:56 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d9a69815265750e3e05fbe2ccb1c7553f44a56ab427eaa21e4a4d5a05b5a62`  
		Last Modified: Sat, 26 Jan 2019 10:35:46 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ecce8bc81047e2335f9d2ee1c18d8a17210a958d771c12ee5164b8d629a4d1`  
		Last Modified: Sat, 26 Jan 2019 10:35:46 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3d8609d8a98244d2936a7ccf24e9f05d2c7a7d6cfc76f063cc531c847d81d2`  
		Last Modified: Sat, 26 Jan 2019 10:36:26 GMT  
		Size: 107.6 MB (107643512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:363b9d07ae75ddbfa236d59540cde81f3a129551bf03259ec2d7e11239035234`  
		Last Modified: Sat, 26 Jan 2019 10:35:46 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1` - windows version 10.0.16299.904; amd64

```console
$ docker pull julia@sha256:83459bc6720bab0da8543bbca7eb6e85d36b4265c3941c586bbbfdf71342feef
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3249773278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:527381cd6fd65516b35b82c16c14510a6e35bd06e229849e80d98608566cb784`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 03 Jan 2019 04:08:43 GMT
RUN Install update 10.0.16299.904
# Fri, 11 Jan 2019 10:44:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 26 Jan 2019 10:18:54 GMT
ENV JULIA_VERSION=1.1.0
# Sat, 26 Jan 2019 10:18:55 GMT
ENV JULIA_SHA256=15bc552e43f5d83d20e439b6026a95f2fd8d57c32249c602dc836ce2798f4a33
# Sat, 26 Jan 2019 10:22:08 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:22:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ee945370a9b4bb58ea63e33767041df2ecc306b6e73a231fe90d31980e26b05d`  
		Last Modified: Tue, 08 Jan 2019 18:00:22 GMT  
		Size: 872.8 MB (872755280 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:774e51f30ad2e236ae01fce26ad8420164c15c05a9cfbe2509381f0e2e789b85`  
		Last Modified: Fri, 11 Jan 2019 11:30:39 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2f6a095f3863d937898f963b74973d43166855b5a9df4bf238f047e8322621`  
		Last Modified: Sat, 26 Jan 2019 10:36:43 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a440f5bcd08cdb2c5059d3eae8b988314ced4453252e40d40095c0e723d5ea85`  
		Last Modified: Sat, 26 Jan 2019 10:36:43 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b556956629d8e536bfab8808c37b5414f1d04223660ada2ee30dcb9f45d6143d`  
		Last Modified: Sat, 26 Jan 2019 10:37:17 GMT  
		Size: 102.7 MB (102712585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499c35076f035c7a600c3bc05edfce36787bb96c062369d8a0ac889e0dd21e0f`  
		Last Modified: Sat, 26 Jan 2019 10:36:43 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1` - windows version 10.0.17134.523; amd64

```console
$ docker pull julia@sha256:6490787dd0c0838da49278f8bd448318e48c93cf3657c81fb6691799f7a459d5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2348307925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e3ed996cfd2a90e6bf9252bf25f8bf88b1f767a08b9d3938ab8ed0a40ff22d9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 04 Jan 2019 22:40:00 GMT
RUN Install update 10.0.17134.523
# Fri, 11 Jan 2019 10:49:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 26 Jan 2019 10:22:21 GMT
ENV JULIA_VERSION=1.1.0
# Sat, 26 Jan 2019 10:22:22 GMT
ENV JULIA_SHA256=15bc552e43f5d83d20e439b6026a95f2fd8d57c32249c602dc836ce2798f4a33
# Sat, 26 Jan 2019 10:25:16 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:25:18 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:80c309c8f9e2a929c92fe88fafde882006a56d421e9cb306b5a55baefe52c4b6`  
		Last Modified: Tue, 08 Jan 2019 01:38:21 GMT  
		Size: 586.0 MB (585998859 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bfc3888f034fb7d00898fffa324da3e9ccfb30f42ed800fe45bb58da849af364`  
		Last Modified: Fri, 11 Jan 2019 11:31:41 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd122f6a40c3997fa0945263231cdc1b830f9957dc9f56af18d3e7abb75f760`  
		Last Modified: Sat, 26 Jan 2019 10:37:33 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6fc5bd91a97711bf4e4a104c5b6a8fe68fd0b80465fe29cf82c47eedc62242`  
		Last Modified: Sat, 26 Jan 2019 10:37:33 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9518258e986b06945b2678c46de4421f15576926bc0d55446ee7d1d23657515f`  
		Last Modified: Sat, 26 Jan 2019 10:38:01 GMT  
		Size: 102.6 MB (102615981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a463ad1e1c4de4314dee6e4cc44fcc2fd2a25989ba668049407afa8dc39705`  
		Last Modified: Sat, 26 Jan 2019 10:37:32 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.0`

```console
$ docker pull julia@sha256:eebbd6d6676acefa754e4978882dbd84c79a9cb31392de6d7514dd42990cf6c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	windows version 10.0.14393.2724; amd64
	-	windows version 10.0.16299.904; amd64
	-	windows version 10.0.17134.523; amd64

### `julia:1.0` - linux; amd64

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

### `julia:1.0` - linux; arm variant v7

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

### `julia:1.0` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:04d043353979a9a50175030ac5effcf0414378c8402387d206a36d2520ce4eec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131428049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea6e783ed1bcdc3e80edfa827301b13411d9eba9bf503448d5cc5ff313f11cb7`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 23 Jan 2019 10:03:54 GMT
ADD file:8e97108c1e48b9197ff71d26fbf0d9c12372f7197eace7801dd05a1b34e56e65 in / 
# Wed, 23 Jan 2019 10:03:55 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 03:18:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 25 Jan 2019 03:19:10 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 25 Jan 2019 03:19:39 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Jan 2019 03:19:43 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 25 Jan 2019 03:19:49 GMT
ENV JULIA_VERSION=1.0.3
# Fri, 25 Jan 2019 03:21:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='362ba867d2df5d4a64f824e103f19cffc3b61cf9d5a9066c657f1c5b73c87117' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='87c489ed92b1a17b231988ce59d64151b1e68700e6d503ded6085829d5587bc6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='75f43df36d71cb2bf3106b9e16670cc152e2a31f8ea6d761a6fe1d630ead05c3' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='6c8cc02d63a602870f78e66d0fdeb7e26e75b3eba558a133a86420e1273bbdc1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 25 Jan 2019 03:21:42 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:8c20612220f39dab58625e39fe6985d91acf6a5359517e82621d51d28bf82e05`  
		Last Modified: Wed, 23 Jan 2019 10:11:07 GMT  
		Size: 43.1 MB (43125634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a513fc263184651e07837c97c0090941b4a04b97e74a9a8cfb0d800e4b759f`  
		Last Modified: Fri, 25 Jan 2019 03:22:16 GMT  
		Size: 8.5 MB (8463607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae35007938881be4493887b700052e035063f25dc7a8ce315cc2f8c3edf7f0e7`  
		Last Modified: Fri, 25 Jan 2019 03:22:45 GMT  
		Size: 79.8 MB (79838808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0` - linux; 386

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

### `julia:1.0` - windows version 10.0.14393.2724; amd64

```console
$ docker pull julia@sha256:9e1a5a9bb07a3e27f632923eafabcb52bfd55bc989145b75eefd98b8bbdcb32a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5752711191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:398904eaddf21ce893903ada980798367373b82426fdc16623734cb95a49929c`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 08 Jan 2019 17:44:44 GMT
RUN Install update 10.0.14393.2724
# Fri, 11 Jan 2019 10:38:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 26 Jan 2019 10:25:33 GMT
ENV JULIA_VERSION=1.0.3
# Sat, 26 Jan 2019 10:25:34 GMT
ENV JULIA_SHA256=e62d2755e38dcd100a76bb88b895e3ca3fde586b6bf4b38ea6e801d9b8066ce2
# Sat, 26 Jan 2019 10:28:55 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:28:57 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d0c71fc8924e632b81de72fba055610c4a5259b2f6723e15f70662f7bc328184`  
		Last Modified: Tue, 08 Jan 2019 17:44:44 GMT  
		Size: 1.6 GB (1565830172 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:52e9c8dd86ca94537c9a49c5082ecddcdff7fc266e93f1587ff015c3e463ed51`  
		Last Modified: Fri, 11 Jan 2019 11:28:56 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c611a9c8d0c3de29816de7817fe32b6bb3168b7d04c53d7b338a254342d75b`  
		Last Modified: Sat, 26 Jan 2019 10:38:19 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85280e2e0c96ade629877ce3dc4f99c8f01987470b18cac0ba24ab0868bc0f54`  
		Last Modified: Sat, 26 Jan 2019 10:38:18 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bcf62d06626c9e02147efc14cf31bd8d641c4456ccca9833b17aef953309c41`  
		Last Modified: Sat, 26 Jan 2019 10:40:32 GMT  
		Size: 116.9 MB (116890283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ad248a5924b18c4a86ce00624fe83a4814e788247837c12b5e66ecb09e2f36`  
		Last Modified: Sat, 26 Jan 2019 10:38:18 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0` - windows version 10.0.16299.904; amd64

```console
$ docker pull julia@sha256:210e3666fb5581ac30737366edd5c664ca2154621a4f9401e193e258b378f24d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3259015132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10ff1c59fa55bd9f8e200a8bb4f1ee63b1e4b1386f8cc8a5473e2e267908d091`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 03 Jan 2019 04:08:43 GMT
RUN Install update 10.0.16299.904
# Fri, 11 Jan 2019 10:44:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 26 Jan 2019 10:29:15 GMT
ENV JULIA_VERSION=1.0.3
# Sat, 26 Jan 2019 10:29:16 GMT
ENV JULIA_SHA256=e62d2755e38dcd100a76bb88b895e3ca3fde586b6bf4b38ea6e801d9b8066ce2
# Sat, 26 Jan 2019 10:32:19 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:32:21 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ee945370a9b4bb58ea63e33767041df2ecc306b6e73a231fe90d31980e26b05d`  
		Last Modified: Tue, 08 Jan 2019 18:00:22 GMT  
		Size: 872.8 MB (872755280 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:774e51f30ad2e236ae01fce26ad8420164c15c05a9cfbe2509381f0e2e789b85`  
		Last Modified: Fri, 11 Jan 2019 11:30:39 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a36265e40926d1d726447763975b3405ede282bd1b40ba310338d02e72e31cc8`  
		Last Modified: Sat, 26 Jan 2019 10:40:42 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e6db585be0f903fe440634c1ec2befc5a53776466e7db0b26db0116eb9064b`  
		Last Modified: Sat, 26 Jan 2019 10:40:42 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03dc550ae5de0f3a36ec614ef76564dd2445bbd3125d2cf63d6d4c803e5e152a`  
		Last Modified: Sat, 26 Jan 2019 10:41:13 GMT  
		Size: 112.0 MB (111954445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79b7459f99675af3510bed091260b4a1392b240874ff785d028cf4082db9536`  
		Last Modified: Sat, 26 Jan 2019 10:40:42 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0` - windows version 10.0.17134.523; amd64

```console
$ docker pull julia@sha256:a100759bce44c20b5cbeea7bc5ae6d51483d057ea72ad633ddd0ead7439572bb
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2357556122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28c063d72e3ed6fcbc12d9f6600501e4a943898addc89d62a1e2d895d556af28`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 04 Jan 2019 22:40:00 GMT
RUN Install update 10.0.17134.523
# Fri, 11 Jan 2019 10:49:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 26 Jan 2019 10:32:27 GMT
ENV JULIA_VERSION=1.0.3
# Sat, 26 Jan 2019 10:32:28 GMT
ENV JULIA_SHA256=e62d2755e38dcd100a76bb88b895e3ca3fde586b6bf4b38ea6e801d9b8066ce2
# Sat, 26 Jan 2019 10:35:16 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:35:18 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:80c309c8f9e2a929c92fe88fafde882006a56d421e9cb306b5a55baefe52c4b6`  
		Last Modified: Tue, 08 Jan 2019 01:38:21 GMT  
		Size: 586.0 MB (585998859 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bfc3888f034fb7d00898fffa324da3e9ccfb30f42ed800fe45bb58da849af364`  
		Last Modified: Fri, 11 Jan 2019 11:31:41 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:420550d79976ed42283e34f91960e97689c2a089091979b3a200249089394723`  
		Last Modified: Sat, 26 Jan 2019 10:41:23 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cfaadcc3b919097a895314f7a5c564570a88470d908a58d7567a5c42101a3b`  
		Last Modified: Sat, 26 Jan 2019 10:41:23 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea093bf52897dfaefdb7d36a63495fef7f1842394b261374b37f1710788bc3a`  
		Last Modified: Sat, 26 Jan 2019 10:42:07 GMT  
		Size: 111.9 MB (111864164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a46ae14f9775b772a720e7157ddfbf018bf864170bac20cc9c17d074f92f2a2`  
		Last Modified: Sat, 26 Jan 2019 10:41:23 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.0.3`

```console
$ docker pull julia@sha256:eebbd6d6676acefa754e4978882dbd84c79a9cb31392de6d7514dd42990cf6c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	windows version 10.0.14393.2724; amd64
	-	windows version 10.0.16299.904; amd64
	-	windows version 10.0.17134.523; amd64

### `julia:1.0.3` - linux; amd64

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

### `julia:1.0.3` - linux; arm variant v7

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

### `julia:1.0.3` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:04d043353979a9a50175030ac5effcf0414378c8402387d206a36d2520ce4eec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131428049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea6e783ed1bcdc3e80edfa827301b13411d9eba9bf503448d5cc5ff313f11cb7`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 23 Jan 2019 10:03:54 GMT
ADD file:8e97108c1e48b9197ff71d26fbf0d9c12372f7197eace7801dd05a1b34e56e65 in / 
# Wed, 23 Jan 2019 10:03:55 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 03:18:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 25 Jan 2019 03:19:10 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 25 Jan 2019 03:19:39 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Jan 2019 03:19:43 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 25 Jan 2019 03:19:49 GMT
ENV JULIA_VERSION=1.0.3
# Fri, 25 Jan 2019 03:21:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='362ba867d2df5d4a64f824e103f19cffc3b61cf9d5a9066c657f1c5b73c87117' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='87c489ed92b1a17b231988ce59d64151b1e68700e6d503ded6085829d5587bc6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='75f43df36d71cb2bf3106b9e16670cc152e2a31f8ea6d761a6fe1d630ead05c3' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='6c8cc02d63a602870f78e66d0fdeb7e26e75b3eba558a133a86420e1273bbdc1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 25 Jan 2019 03:21:42 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:8c20612220f39dab58625e39fe6985d91acf6a5359517e82621d51d28bf82e05`  
		Last Modified: Wed, 23 Jan 2019 10:11:07 GMT  
		Size: 43.1 MB (43125634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a513fc263184651e07837c97c0090941b4a04b97e74a9a8cfb0d800e4b759f`  
		Last Modified: Fri, 25 Jan 2019 03:22:16 GMT  
		Size: 8.5 MB (8463607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae35007938881be4493887b700052e035063f25dc7a8ce315cc2f8c3edf7f0e7`  
		Last Modified: Fri, 25 Jan 2019 03:22:45 GMT  
		Size: 79.8 MB (79838808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0.3` - linux; 386

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

### `julia:1.0.3` - windows version 10.0.14393.2724; amd64

```console
$ docker pull julia@sha256:9e1a5a9bb07a3e27f632923eafabcb52bfd55bc989145b75eefd98b8bbdcb32a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5752711191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:398904eaddf21ce893903ada980798367373b82426fdc16623734cb95a49929c`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 08 Jan 2019 17:44:44 GMT
RUN Install update 10.0.14393.2724
# Fri, 11 Jan 2019 10:38:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 26 Jan 2019 10:25:33 GMT
ENV JULIA_VERSION=1.0.3
# Sat, 26 Jan 2019 10:25:34 GMT
ENV JULIA_SHA256=e62d2755e38dcd100a76bb88b895e3ca3fde586b6bf4b38ea6e801d9b8066ce2
# Sat, 26 Jan 2019 10:28:55 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:28:57 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d0c71fc8924e632b81de72fba055610c4a5259b2f6723e15f70662f7bc328184`  
		Last Modified: Tue, 08 Jan 2019 17:44:44 GMT  
		Size: 1.6 GB (1565830172 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:52e9c8dd86ca94537c9a49c5082ecddcdff7fc266e93f1587ff015c3e463ed51`  
		Last Modified: Fri, 11 Jan 2019 11:28:56 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c611a9c8d0c3de29816de7817fe32b6bb3168b7d04c53d7b338a254342d75b`  
		Last Modified: Sat, 26 Jan 2019 10:38:19 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85280e2e0c96ade629877ce3dc4f99c8f01987470b18cac0ba24ab0868bc0f54`  
		Last Modified: Sat, 26 Jan 2019 10:38:18 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bcf62d06626c9e02147efc14cf31bd8d641c4456ccca9833b17aef953309c41`  
		Last Modified: Sat, 26 Jan 2019 10:40:32 GMT  
		Size: 116.9 MB (116890283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ad248a5924b18c4a86ce00624fe83a4814e788247837c12b5e66ecb09e2f36`  
		Last Modified: Sat, 26 Jan 2019 10:38:18 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0.3` - windows version 10.0.16299.904; amd64

```console
$ docker pull julia@sha256:210e3666fb5581ac30737366edd5c664ca2154621a4f9401e193e258b378f24d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3259015132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10ff1c59fa55bd9f8e200a8bb4f1ee63b1e4b1386f8cc8a5473e2e267908d091`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 03 Jan 2019 04:08:43 GMT
RUN Install update 10.0.16299.904
# Fri, 11 Jan 2019 10:44:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 26 Jan 2019 10:29:15 GMT
ENV JULIA_VERSION=1.0.3
# Sat, 26 Jan 2019 10:29:16 GMT
ENV JULIA_SHA256=e62d2755e38dcd100a76bb88b895e3ca3fde586b6bf4b38ea6e801d9b8066ce2
# Sat, 26 Jan 2019 10:32:19 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:32:21 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ee945370a9b4bb58ea63e33767041df2ecc306b6e73a231fe90d31980e26b05d`  
		Last Modified: Tue, 08 Jan 2019 18:00:22 GMT  
		Size: 872.8 MB (872755280 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:774e51f30ad2e236ae01fce26ad8420164c15c05a9cfbe2509381f0e2e789b85`  
		Last Modified: Fri, 11 Jan 2019 11:30:39 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a36265e40926d1d726447763975b3405ede282bd1b40ba310338d02e72e31cc8`  
		Last Modified: Sat, 26 Jan 2019 10:40:42 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e6db585be0f903fe440634c1ec2befc5a53776466e7db0b26db0116eb9064b`  
		Last Modified: Sat, 26 Jan 2019 10:40:42 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03dc550ae5de0f3a36ec614ef76564dd2445bbd3125d2cf63d6d4c803e5e152a`  
		Last Modified: Sat, 26 Jan 2019 10:41:13 GMT  
		Size: 112.0 MB (111954445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79b7459f99675af3510bed091260b4a1392b240874ff785d028cf4082db9536`  
		Last Modified: Sat, 26 Jan 2019 10:40:42 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0.3` - windows version 10.0.17134.523; amd64

```console
$ docker pull julia@sha256:a100759bce44c20b5cbeea7bc5ae6d51483d057ea72ad633ddd0ead7439572bb
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2357556122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28c063d72e3ed6fcbc12d9f6600501e4a943898addc89d62a1e2d895d556af28`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 04 Jan 2019 22:40:00 GMT
RUN Install update 10.0.17134.523
# Fri, 11 Jan 2019 10:49:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 26 Jan 2019 10:32:27 GMT
ENV JULIA_VERSION=1.0.3
# Sat, 26 Jan 2019 10:32:28 GMT
ENV JULIA_SHA256=e62d2755e38dcd100a76bb88b895e3ca3fde586b6bf4b38ea6e801d9b8066ce2
# Sat, 26 Jan 2019 10:35:16 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:35:18 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:80c309c8f9e2a929c92fe88fafde882006a56d421e9cb306b5a55baefe52c4b6`  
		Last Modified: Tue, 08 Jan 2019 01:38:21 GMT  
		Size: 586.0 MB (585998859 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bfc3888f034fb7d00898fffa324da3e9ccfb30f42ed800fe45bb58da849af364`  
		Last Modified: Fri, 11 Jan 2019 11:31:41 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:420550d79976ed42283e34f91960e97689c2a089091979b3a200249089394723`  
		Last Modified: Sat, 26 Jan 2019 10:41:23 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cfaadcc3b919097a895314f7a5c564570a88470d908a58d7567a5c42101a3b`  
		Last Modified: Sat, 26 Jan 2019 10:41:23 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea093bf52897dfaefdb7d36a63495fef7f1842394b261374b37f1710788bc3a`  
		Last Modified: Sat, 26 Jan 2019 10:42:07 GMT  
		Size: 111.9 MB (111864164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a46ae14f9775b772a720e7157ddfbf018bf864170bac20cc9c17d074f92f2a2`  
		Last Modified: Sat, 26 Jan 2019 10:41:23 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.0.3-stretch`

```console
$ docker pull julia@sha256:d115ba14d22b455b420db3d7b2982c36046e0d8ce9e4d1469fe1bfe91ce857d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `julia:1.0.3-stretch` - linux; amd64

```console
$ docker pull julia@sha256:b1f38ab828a9da6de7551e2a1c523c986ba83564e6575520b3a96390a2ee2239
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.5 MB (150468088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28d246cc5181f5e8d900041ad351daa4f430e06d1c0cc0d6368a12d33c208e91`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:03:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:03:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 06 Feb 2019 07:03:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 07:03:08 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 06 Feb 2019 07:03:29 GMT
ENV JULIA_VERSION=1.0.3
# Wed, 06 Feb 2019 07:03:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='362ba867d2df5d4a64f824e103f19cffc3b61cf9d5a9066c657f1c5b73c87117' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='87c489ed92b1a17b231988ce59d64151b1e68700e6d503ded6085829d5587bc6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='75f43df36d71cb2bf3106b9e16670cc152e2a31f8ea6d761a6fe1d630ead05c3' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='6c8cc02d63a602870f78e66d0fdeb7e26e75b3eba558a133a86420e1273bbdc1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 06 Feb 2019 07:03:46 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ad57f7f512401da1583400da462433d25cd4866d4a2fb961c62229a1fcfc81`  
		Last Modified: Wed, 06 Feb 2019 07:03:59 GMT  
		Size: 9.5 MB (9495211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3d78a412d8ac103ab1c38cf6bf21d85e923b278305c5b4232860097ed71a5e`  
		Last Modified: Wed, 06 Feb 2019 07:04:43 GMT  
		Size: 95.6 MB (95628585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0.3-stretch` - linux; arm variant v7

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

### `julia:1.0.3-stretch` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:04d043353979a9a50175030ac5effcf0414378c8402387d206a36d2520ce4eec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131428049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea6e783ed1bcdc3e80edfa827301b13411d9eba9bf503448d5cc5ff313f11cb7`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 23 Jan 2019 10:03:54 GMT
ADD file:8e97108c1e48b9197ff71d26fbf0d9c12372f7197eace7801dd05a1b34e56e65 in / 
# Wed, 23 Jan 2019 10:03:55 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 03:18:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 25 Jan 2019 03:19:10 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 25 Jan 2019 03:19:39 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Jan 2019 03:19:43 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 25 Jan 2019 03:19:49 GMT
ENV JULIA_VERSION=1.0.3
# Fri, 25 Jan 2019 03:21:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='362ba867d2df5d4a64f824e103f19cffc3b61cf9d5a9066c657f1c5b73c87117' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='87c489ed92b1a17b231988ce59d64151b1e68700e6d503ded6085829d5587bc6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='75f43df36d71cb2bf3106b9e16670cc152e2a31f8ea6d761a6fe1d630ead05c3' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='6c8cc02d63a602870f78e66d0fdeb7e26e75b3eba558a133a86420e1273bbdc1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 25 Jan 2019 03:21:42 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:8c20612220f39dab58625e39fe6985d91acf6a5359517e82621d51d28bf82e05`  
		Last Modified: Wed, 23 Jan 2019 10:11:07 GMT  
		Size: 43.1 MB (43125634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a513fc263184651e07837c97c0090941b4a04b97e74a9a8cfb0d800e4b759f`  
		Last Modified: Fri, 25 Jan 2019 03:22:16 GMT  
		Size: 8.5 MB (8463607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae35007938881be4493887b700052e035063f25dc7a8ce315cc2f8c3edf7f0e7`  
		Last Modified: Fri, 25 Jan 2019 03:22:45 GMT  
		Size: 79.8 MB (79838808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0.3-stretch` - linux; 386

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

## `julia:1.0.3-windowsservercore-1709`

```console
$ docker pull julia@sha256:6156cf66b818dfe5f809ec91b1616cb25e38c14775e43d85b126c465af7c2341
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.904; amd64

### `julia:1.0.3-windowsservercore-1709` - windows version 10.0.16299.904; amd64

```console
$ docker pull julia@sha256:210e3666fb5581ac30737366edd5c664ca2154621a4f9401e193e258b378f24d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3259015132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10ff1c59fa55bd9f8e200a8bb4f1ee63b1e4b1386f8cc8a5473e2e267908d091`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 03 Jan 2019 04:08:43 GMT
RUN Install update 10.0.16299.904
# Fri, 11 Jan 2019 10:44:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 26 Jan 2019 10:29:15 GMT
ENV JULIA_VERSION=1.0.3
# Sat, 26 Jan 2019 10:29:16 GMT
ENV JULIA_SHA256=e62d2755e38dcd100a76bb88b895e3ca3fde586b6bf4b38ea6e801d9b8066ce2
# Sat, 26 Jan 2019 10:32:19 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:32:21 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ee945370a9b4bb58ea63e33767041df2ecc306b6e73a231fe90d31980e26b05d`  
		Last Modified: Tue, 08 Jan 2019 18:00:22 GMT  
		Size: 872.8 MB (872755280 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:774e51f30ad2e236ae01fce26ad8420164c15c05a9cfbe2509381f0e2e789b85`  
		Last Modified: Fri, 11 Jan 2019 11:30:39 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a36265e40926d1d726447763975b3405ede282bd1b40ba310338d02e72e31cc8`  
		Last Modified: Sat, 26 Jan 2019 10:40:42 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e6db585be0f903fe440634c1ec2befc5a53776466e7db0b26db0116eb9064b`  
		Last Modified: Sat, 26 Jan 2019 10:40:42 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03dc550ae5de0f3a36ec614ef76564dd2445bbd3125d2cf63d6d4c803e5e152a`  
		Last Modified: Sat, 26 Jan 2019 10:41:13 GMT  
		Size: 112.0 MB (111954445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79b7459f99675af3510bed091260b4a1392b240874ff785d028cf4082db9536`  
		Last Modified: Sat, 26 Jan 2019 10:40:42 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.0.3-windowsservercore-1803`

```console
$ docker pull julia@sha256:04c4da3327b0d2b1fae3e80c401a68478a0dfea07ddfb3b24db5d61c4a8df23a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.523; amd64

### `julia:1.0.3-windowsservercore-1803` - windows version 10.0.17134.523; amd64

```console
$ docker pull julia@sha256:a100759bce44c20b5cbeea7bc5ae6d51483d057ea72ad633ddd0ead7439572bb
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2357556122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28c063d72e3ed6fcbc12d9f6600501e4a943898addc89d62a1e2d895d556af28`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 04 Jan 2019 22:40:00 GMT
RUN Install update 10.0.17134.523
# Fri, 11 Jan 2019 10:49:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 26 Jan 2019 10:32:27 GMT
ENV JULIA_VERSION=1.0.3
# Sat, 26 Jan 2019 10:32:28 GMT
ENV JULIA_SHA256=e62d2755e38dcd100a76bb88b895e3ca3fde586b6bf4b38ea6e801d9b8066ce2
# Sat, 26 Jan 2019 10:35:16 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:35:18 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:80c309c8f9e2a929c92fe88fafde882006a56d421e9cb306b5a55baefe52c4b6`  
		Last Modified: Tue, 08 Jan 2019 01:38:21 GMT  
		Size: 586.0 MB (585998859 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bfc3888f034fb7d00898fffa324da3e9ccfb30f42ed800fe45bb58da849af364`  
		Last Modified: Fri, 11 Jan 2019 11:31:41 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:420550d79976ed42283e34f91960e97689c2a089091979b3a200249089394723`  
		Last Modified: Sat, 26 Jan 2019 10:41:23 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cfaadcc3b919097a895314f7a5c564570a88470d908a58d7567a5c42101a3b`  
		Last Modified: Sat, 26 Jan 2019 10:41:23 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea093bf52897dfaefdb7d36a63495fef7f1842394b261374b37f1710788bc3a`  
		Last Modified: Sat, 26 Jan 2019 10:42:07 GMT  
		Size: 111.9 MB (111864164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a46ae14f9775b772a720e7157ddfbf018bf864170bac20cc9c17d074f92f2a2`  
		Last Modified: Sat, 26 Jan 2019 10:41:23 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.0.3-windowsservercore-ltsc2016`

```console
$ docker pull julia@sha256:cbec7955fdc02daa385cf1e3334ead354d76a9bcaf0d48a7dbfa0b141c55934d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2724; amd64

### `julia:1.0.3-windowsservercore-ltsc2016` - windows version 10.0.14393.2724; amd64

```console
$ docker pull julia@sha256:9e1a5a9bb07a3e27f632923eafabcb52bfd55bc989145b75eefd98b8bbdcb32a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5752711191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:398904eaddf21ce893903ada980798367373b82426fdc16623734cb95a49929c`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 08 Jan 2019 17:44:44 GMT
RUN Install update 10.0.14393.2724
# Fri, 11 Jan 2019 10:38:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 26 Jan 2019 10:25:33 GMT
ENV JULIA_VERSION=1.0.3
# Sat, 26 Jan 2019 10:25:34 GMT
ENV JULIA_SHA256=e62d2755e38dcd100a76bb88b895e3ca3fde586b6bf4b38ea6e801d9b8066ce2
# Sat, 26 Jan 2019 10:28:55 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:28:57 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d0c71fc8924e632b81de72fba055610c4a5259b2f6723e15f70662f7bc328184`  
		Last Modified: Tue, 08 Jan 2019 17:44:44 GMT  
		Size: 1.6 GB (1565830172 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:52e9c8dd86ca94537c9a49c5082ecddcdff7fc266e93f1587ff015c3e463ed51`  
		Last Modified: Fri, 11 Jan 2019 11:28:56 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c611a9c8d0c3de29816de7817fe32b6bb3168b7d04c53d7b338a254342d75b`  
		Last Modified: Sat, 26 Jan 2019 10:38:19 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85280e2e0c96ade629877ce3dc4f99c8f01987470b18cac0ba24ab0868bc0f54`  
		Last Modified: Sat, 26 Jan 2019 10:38:18 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bcf62d06626c9e02147efc14cf31bd8d641c4456ccca9833b17aef953309c41`  
		Last Modified: Sat, 26 Jan 2019 10:40:32 GMT  
		Size: 116.9 MB (116890283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ad248a5924b18c4a86ce00624fe83a4814e788247837c12b5e66ecb09e2f36`  
		Last Modified: Sat, 26 Jan 2019 10:38:18 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.0-stretch`

```console
$ docker pull julia@sha256:d115ba14d22b455b420db3d7b2982c36046e0d8ce9e4d1469fe1bfe91ce857d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `julia:1.0-stretch` - linux; amd64

```console
$ docker pull julia@sha256:b1f38ab828a9da6de7551e2a1c523c986ba83564e6575520b3a96390a2ee2239
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.5 MB (150468088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28d246cc5181f5e8d900041ad351daa4f430e06d1c0cc0d6368a12d33c208e91`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:03:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:03:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 06 Feb 2019 07:03:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 07:03:08 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 06 Feb 2019 07:03:29 GMT
ENV JULIA_VERSION=1.0.3
# Wed, 06 Feb 2019 07:03:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='362ba867d2df5d4a64f824e103f19cffc3b61cf9d5a9066c657f1c5b73c87117' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='87c489ed92b1a17b231988ce59d64151b1e68700e6d503ded6085829d5587bc6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='75f43df36d71cb2bf3106b9e16670cc152e2a31f8ea6d761a6fe1d630ead05c3' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='6c8cc02d63a602870f78e66d0fdeb7e26e75b3eba558a133a86420e1273bbdc1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 06 Feb 2019 07:03:46 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ad57f7f512401da1583400da462433d25cd4866d4a2fb961c62229a1fcfc81`  
		Last Modified: Wed, 06 Feb 2019 07:03:59 GMT  
		Size: 9.5 MB (9495211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3d78a412d8ac103ab1c38cf6bf21d85e923b278305c5b4232860097ed71a5e`  
		Last Modified: Wed, 06 Feb 2019 07:04:43 GMT  
		Size: 95.6 MB (95628585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0-stretch` - linux; arm variant v7

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

### `julia:1.0-stretch` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:04d043353979a9a50175030ac5effcf0414378c8402387d206a36d2520ce4eec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131428049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea6e783ed1bcdc3e80edfa827301b13411d9eba9bf503448d5cc5ff313f11cb7`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 23 Jan 2019 10:03:54 GMT
ADD file:8e97108c1e48b9197ff71d26fbf0d9c12372f7197eace7801dd05a1b34e56e65 in / 
# Wed, 23 Jan 2019 10:03:55 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 03:18:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 25 Jan 2019 03:19:10 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 25 Jan 2019 03:19:39 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Jan 2019 03:19:43 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 25 Jan 2019 03:19:49 GMT
ENV JULIA_VERSION=1.0.3
# Fri, 25 Jan 2019 03:21:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='362ba867d2df5d4a64f824e103f19cffc3b61cf9d5a9066c657f1c5b73c87117' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='87c489ed92b1a17b231988ce59d64151b1e68700e6d503ded6085829d5587bc6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='75f43df36d71cb2bf3106b9e16670cc152e2a31f8ea6d761a6fe1d630ead05c3' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='6c8cc02d63a602870f78e66d0fdeb7e26e75b3eba558a133a86420e1273bbdc1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 25 Jan 2019 03:21:42 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:8c20612220f39dab58625e39fe6985d91acf6a5359517e82621d51d28bf82e05`  
		Last Modified: Wed, 23 Jan 2019 10:11:07 GMT  
		Size: 43.1 MB (43125634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a513fc263184651e07837c97c0090941b4a04b97e74a9a8cfb0d800e4b759f`  
		Last Modified: Fri, 25 Jan 2019 03:22:16 GMT  
		Size: 8.5 MB (8463607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae35007938881be4493887b700052e035063f25dc7a8ce315cc2f8c3edf7f0e7`  
		Last Modified: Fri, 25 Jan 2019 03:22:45 GMT  
		Size: 79.8 MB (79838808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0-stretch` - linux; 386

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

## `julia:1.0-windowsservercore-1709`

```console
$ docker pull julia@sha256:6156cf66b818dfe5f809ec91b1616cb25e38c14775e43d85b126c465af7c2341
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.904; amd64

### `julia:1.0-windowsservercore-1709` - windows version 10.0.16299.904; amd64

```console
$ docker pull julia@sha256:210e3666fb5581ac30737366edd5c664ca2154621a4f9401e193e258b378f24d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3259015132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10ff1c59fa55bd9f8e200a8bb4f1ee63b1e4b1386f8cc8a5473e2e267908d091`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 03 Jan 2019 04:08:43 GMT
RUN Install update 10.0.16299.904
# Fri, 11 Jan 2019 10:44:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 26 Jan 2019 10:29:15 GMT
ENV JULIA_VERSION=1.0.3
# Sat, 26 Jan 2019 10:29:16 GMT
ENV JULIA_SHA256=e62d2755e38dcd100a76bb88b895e3ca3fde586b6bf4b38ea6e801d9b8066ce2
# Sat, 26 Jan 2019 10:32:19 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:32:21 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ee945370a9b4bb58ea63e33767041df2ecc306b6e73a231fe90d31980e26b05d`  
		Last Modified: Tue, 08 Jan 2019 18:00:22 GMT  
		Size: 872.8 MB (872755280 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:774e51f30ad2e236ae01fce26ad8420164c15c05a9cfbe2509381f0e2e789b85`  
		Last Modified: Fri, 11 Jan 2019 11:30:39 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a36265e40926d1d726447763975b3405ede282bd1b40ba310338d02e72e31cc8`  
		Last Modified: Sat, 26 Jan 2019 10:40:42 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e6db585be0f903fe440634c1ec2befc5a53776466e7db0b26db0116eb9064b`  
		Last Modified: Sat, 26 Jan 2019 10:40:42 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03dc550ae5de0f3a36ec614ef76564dd2445bbd3125d2cf63d6d4c803e5e152a`  
		Last Modified: Sat, 26 Jan 2019 10:41:13 GMT  
		Size: 112.0 MB (111954445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79b7459f99675af3510bed091260b4a1392b240874ff785d028cf4082db9536`  
		Last Modified: Sat, 26 Jan 2019 10:40:42 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.0-windowsservercore-1803`

```console
$ docker pull julia@sha256:04c4da3327b0d2b1fae3e80c401a68478a0dfea07ddfb3b24db5d61c4a8df23a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.523; amd64

### `julia:1.0-windowsservercore-1803` - windows version 10.0.17134.523; amd64

```console
$ docker pull julia@sha256:a100759bce44c20b5cbeea7bc5ae6d51483d057ea72ad633ddd0ead7439572bb
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2357556122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28c063d72e3ed6fcbc12d9f6600501e4a943898addc89d62a1e2d895d556af28`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 04 Jan 2019 22:40:00 GMT
RUN Install update 10.0.17134.523
# Fri, 11 Jan 2019 10:49:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 26 Jan 2019 10:32:27 GMT
ENV JULIA_VERSION=1.0.3
# Sat, 26 Jan 2019 10:32:28 GMT
ENV JULIA_SHA256=e62d2755e38dcd100a76bb88b895e3ca3fde586b6bf4b38ea6e801d9b8066ce2
# Sat, 26 Jan 2019 10:35:16 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:35:18 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:80c309c8f9e2a929c92fe88fafde882006a56d421e9cb306b5a55baefe52c4b6`  
		Last Modified: Tue, 08 Jan 2019 01:38:21 GMT  
		Size: 586.0 MB (585998859 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bfc3888f034fb7d00898fffa324da3e9ccfb30f42ed800fe45bb58da849af364`  
		Last Modified: Fri, 11 Jan 2019 11:31:41 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:420550d79976ed42283e34f91960e97689c2a089091979b3a200249089394723`  
		Last Modified: Sat, 26 Jan 2019 10:41:23 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cfaadcc3b919097a895314f7a5c564570a88470d908a58d7567a5c42101a3b`  
		Last Modified: Sat, 26 Jan 2019 10:41:23 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea093bf52897dfaefdb7d36a63495fef7f1842394b261374b37f1710788bc3a`  
		Last Modified: Sat, 26 Jan 2019 10:42:07 GMT  
		Size: 111.9 MB (111864164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a46ae14f9775b772a720e7157ddfbf018bf864170bac20cc9c17d074f92f2a2`  
		Last Modified: Sat, 26 Jan 2019 10:41:23 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.0-windowsservercore-ltsc2016`

```console
$ docker pull julia@sha256:cbec7955fdc02daa385cf1e3334ead354d76a9bcaf0d48a7dbfa0b141c55934d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2724; amd64

### `julia:1.0-windowsservercore-ltsc2016` - windows version 10.0.14393.2724; amd64

```console
$ docker pull julia@sha256:9e1a5a9bb07a3e27f632923eafabcb52bfd55bc989145b75eefd98b8bbdcb32a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5752711191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:398904eaddf21ce893903ada980798367373b82426fdc16623734cb95a49929c`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 08 Jan 2019 17:44:44 GMT
RUN Install update 10.0.14393.2724
# Fri, 11 Jan 2019 10:38:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 26 Jan 2019 10:25:33 GMT
ENV JULIA_VERSION=1.0.3
# Sat, 26 Jan 2019 10:25:34 GMT
ENV JULIA_SHA256=e62d2755e38dcd100a76bb88b895e3ca3fde586b6bf4b38ea6e801d9b8066ce2
# Sat, 26 Jan 2019 10:28:55 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:28:57 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d0c71fc8924e632b81de72fba055610c4a5259b2f6723e15f70662f7bc328184`  
		Last Modified: Tue, 08 Jan 2019 17:44:44 GMT  
		Size: 1.6 GB (1565830172 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:52e9c8dd86ca94537c9a49c5082ecddcdff7fc266e93f1587ff015c3e463ed51`  
		Last Modified: Fri, 11 Jan 2019 11:28:56 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c611a9c8d0c3de29816de7817fe32b6bb3168b7d04c53d7b338a254342d75b`  
		Last Modified: Sat, 26 Jan 2019 10:38:19 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85280e2e0c96ade629877ce3dc4f99c8f01987470b18cac0ba24ab0868bc0f54`  
		Last Modified: Sat, 26 Jan 2019 10:38:18 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bcf62d06626c9e02147efc14cf31bd8d641c4456ccca9833b17aef953309c41`  
		Last Modified: Sat, 26 Jan 2019 10:40:32 GMT  
		Size: 116.9 MB (116890283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ad248a5924b18c4a86ce00624fe83a4814e788247837c12b5e66ecb09e2f36`  
		Last Modified: Sat, 26 Jan 2019 10:38:18 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.1`

```console
$ docker pull julia@sha256:74fff204e1bae851ffcbd176d0eb44c028c808c18aea1330900ee104c1482eed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	windows version 10.0.14393.2724; amd64
	-	windows version 10.0.16299.904; amd64
	-	windows version 10.0.17134.523; amd64

### `julia:1.1` - linux; amd64

```console
$ docker pull julia@sha256:3fa7855f260c4063e15d4f42692b6cf047938ab3fda488d3ec6c0e71c25e4ee9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.4 MB (151438743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917093c9b9318ab13172cb568be70135d213ccd67a63fb935297efb925d1116f`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:03:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:03:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 06 Feb 2019 07:03:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 07:03:08 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 06 Feb 2019 07:03:08 GMT
ENV JULIA_VERSION=1.1.0
# Wed, 06 Feb 2019 07:03:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='80cfd013e526b5145ec3254920afd89bb459f1db7a2a3f21849125af20c05471' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='9efd7ffd4a246311f544cf0031682f4dcf946b2377abaa285684526071272fe5' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 06 Feb 2019 07:03:24 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ad57f7f512401da1583400da462433d25cd4866d4a2fb961c62229a1fcfc81`  
		Last Modified: Wed, 06 Feb 2019 07:03:59 GMT  
		Size: 9.5 MB (9495211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:713faba31c4e3403a140914fbef75960252252a6a0a23113d5628d119dc872d5`  
		Last Modified: Wed, 06 Feb 2019 07:04:16 GMT  
		Size: 96.6 MB (96599240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.1` - linux; 386

```console
$ docker pull julia@sha256:b8cee0b0a243dd91eb1fd89f18b1586284af8cdd4aa365e4cfbb44011ccd5755
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.3 MB (149275399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:196658eb80886eecda3b971c8402e1bc949ced9faa3cb7faf1b568c4032c1784`
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
# Sat, 26 Jan 2019 12:22:05 GMT
ENV JULIA_VERSION=1.1.0
# Sat, 26 Jan 2019 12:22:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='80cfd013e526b5145ec3254920afd89bb459f1db7a2a3f21849125af20c05471' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='9efd7ffd4a246311f544cf0031682f4dcf946b2377abaa285684526071272fe5' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Sat, 26 Jan 2019 12:22:24 GMT
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
	-	`sha256:c5ab2aed250a381b202ed10c22c56a44b11abb352eea45033310fd4d5e2d89a0`  
		Last Modified: Sat, 26 Jan 2019 12:22:58 GMT  
		Size: 93.7 MB (93706570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.1` - windows version 10.0.14393.2724; amd64

```console
$ docker pull julia@sha256:b4b8a43c698d4425df9930b18432ba06184097c2b952614a06c0555e3087ae76
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5743464403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:602a7ae7e07e3e2a3e9e8787bbcb482c4ab9b2227dbd47fe5c5d89a02c77f7a6`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 08 Jan 2019 17:44:44 GMT
RUN Install update 10.0.14393.2724
# Fri, 11 Jan 2019 10:38:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 26 Jan 2019 10:15:27 GMT
ENV JULIA_VERSION=1.1.0
# Sat, 26 Jan 2019 10:15:28 GMT
ENV JULIA_SHA256=15bc552e43f5d83d20e439b6026a95f2fd8d57c32249c602dc836ce2798f4a33
# Sat, 26 Jan 2019 10:18:44 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:18:46 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d0c71fc8924e632b81de72fba055610c4a5259b2f6723e15f70662f7bc328184`  
		Last Modified: Tue, 08 Jan 2019 17:44:44 GMT  
		Size: 1.6 GB (1565830172 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:52e9c8dd86ca94537c9a49c5082ecddcdff7fc266e93f1587ff015c3e463ed51`  
		Last Modified: Fri, 11 Jan 2019 11:28:56 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d9a69815265750e3e05fbe2ccb1c7553f44a56ab427eaa21e4a4d5a05b5a62`  
		Last Modified: Sat, 26 Jan 2019 10:35:46 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ecce8bc81047e2335f9d2ee1c18d8a17210a958d771c12ee5164b8d629a4d1`  
		Last Modified: Sat, 26 Jan 2019 10:35:46 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3d8609d8a98244d2936a7ccf24e9f05d2c7a7d6cfc76f063cc531c847d81d2`  
		Last Modified: Sat, 26 Jan 2019 10:36:26 GMT  
		Size: 107.6 MB (107643512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:363b9d07ae75ddbfa236d59540cde81f3a129551bf03259ec2d7e11239035234`  
		Last Modified: Sat, 26 Jan 2019 10:35:46 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.1` - windows version 10.0.16299.904; amd64

```console
$ docker pull julia@sha256:83459bc6720bab0da8543bbca7eb6e85d36b4265c3941c586bbbfdf71342feef
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3249773278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:527381cd6fd65516b35b82c16c14510a6e35bd06e229849e80d98608566cb784`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 03 Jan 2019 04:08:43 GMT
RUN Install update 10.0.16299.904
# Fri, 11 Jan 2019 10:44:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 26 Jan 2019 10:18:54 GMT
ENV JULIA_VERSION=1.1.0
# Sat, 26 Jan 2019 10:18:55 GMT
ENV JULIA_SHA256=15bc552e43f5d83d20e439b6026a95f2fd8d57c32249c602dc836ce2798f4a33
# Sat, 26 Jan 2019 10:22:08 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:22:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ee945370a9b4bb58ea63e33767041df2ecc306b6e73a231fe90d31980e26b05d`  
		Last Modified: Tue, 08 Jan 2019 18:00:22 GMT  
		Size: 872.8 MB (872755280 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:774e51f30ad2e236ae01fce26ad8420164c15c05a9cfbe2509381f0e2e789b85`  
		Last Modified: Fri, 11 Jan 2019 11:30:39 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2f6a095f3863d937898f963b74973d43166855b5a9df4bf238f047e8322621`  
		Last Modified: Sat, 26 Jan 2019 10:36:43 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a440f5bcd08cdb2c5059d3eae8b988314ced4453252e40d40095c0e723d5ea85`  
		Last Modified: Sat, 26 Jan 2019 10:36:43 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b556956629d8e536bfab8808c37b5414f1d04223660ada2ee30dcb9f45d6143d`  
		Last Modified: Sat, 26 Jan 2019 10:37:17 GMT  
		Size: 102.7 MB (102712585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499c35076f035c7a600c3bc05edfce36787bb96c062369d8a0ac889e0dd21e0f`  
		Last Modified: Sat, 26 Jan 2019 10:36:43 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.1` - windows version 10.0.17134.523; amd64

```console
$ docker pull julia@sha256:6490787dd0c0838da49278f8bd448318e48c93cf3657c81fb6691799f7a459d5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2348307925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e3ed996cfd2a90e6bf9252bf25f8bf88b1f767a08b9d3938ab8ed0a40ff22d9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 04 Jan 2019 22:40:00 GMT
RUN Install update 10.0.17134.523
# Fri, 11 Jan 2019 10:49:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 26 Jan 2019 10:22:21 GMT
ENV JULIA_VERSION=1.1.0
# Sat, 26 Jan 2019 10:22:22 GMT
ENV JULIA_SHA256=15bc552e43f5d83d20e439b6026a95f2fd8d57c32249c602dc836ce2798f4a33
# Sat, 26 Jan 2019 10:25:16 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:25:18 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:80c309c8f9e2a929c92fe88fafde882006a56d421e9cb306b5a55baefe52c4b6`  
		Last Modified: Tue, 08 Jan 2019 01:38:21 GMT  
		Size: 586.0 MB (585998859 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bfc3888f034fb7d00898fffa324da3e9ccfb30f42ed800fe45bb58da849af364`  
		Last Modified: Fri, 11 Jan 2019 11:31:41 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd122f6a40c3997fa0945263231cdc1b830f9957dc9f56af18d3e7abb75f760`  
		Last Modified: Sat, 26 Jan 2019 10:37:33 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6fc5bd91a97711bf4e4a104c5b6a8fe68fd0b80465fe29cf82c47eedc62242`  
		Last Modified: Sat, 26 Jan 2019 10:37:33 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9518258e986b06945b2678c46de4421f15576926bc0d55446ee7d1d23657515f`  
		Last Modified: Sat, 26 Jan 2019 10:38:01 GMT  
		Size: 102.6 MB (102615981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a463ad1e1c4de4314dee6e4cc44fcc2fd2a25989ba668049407afa8dc39705`  
		Last Modified: Sat, 26 Jan 2019 10:37:32 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.1.0`

```console
$ docker pull julia@sha256:74fff204e1bae851ffcbd176d0eb44c028c808c18aea1330900ee104c1482eed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	windows version 10.0.14393.2724; amd64
	-	windows version 10.0.16299.904; amd64
	-	windows version 10.0.17134.523; amd64

### `julia:1.1.0` - linux; amd64

```console
$ docker pull julia@sha256:3fa7855f260c4063e15d4f42692b6cf047938ab3fda488d3ec6c0e71c25e4ee9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.4 MB (151438743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917093c9b9318ab13172cb568be70135d213ccd67a63fb935297efb925d1116f`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:03:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:03:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 06 Feb 2019 07:03:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 07:03:08 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 06 Feb 2019 07:03:08 GMT
ENV JULIA_VERSION=1.1.0
# Wed, 06 Feb 2019 07:03:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='80cfd013e526b5145ec3254920afd89bb459f1db7a2a3f21849125af20c05471' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='9efd7ffd4a246311f544cf0031682f4dcf946b2377abaa285684526071272fe5' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 06 Feb 2019 07:03:24 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ad57f7f512401da1583400da462433d25cd4866d4a2fb961c62229a1fcfc81`  
		Last Modified: Wed, 06 Feb 2019 07:03:59 GMT  
		Size: 9.5 MB (9495211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:713faba31c4e3403a140914fbef75960252252a6a0a23113d5628d119dc872d5`  
		Last Modified: Wed, 06 Feb 2019 07:04:16 GMT  
		Size: 96.6 MB (96599240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.1.0` - linux; 386

```console
$ docker pull julia@sha256:b8cee0b0a243dd91eb1fd89f18b1586284af8cdd4aa365e4cfbb44011ccd5755
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.3 MB (149275399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:196658eb80886eecda3b971c8402e1bc949ced9faa3cb7faf1b568c4032c1784`
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
# Sat, 26 Jan 2019 12:22:05 GMT
ENV JULIA_VERSION=1.1.0
# Sat, 26 Jan 2019 12:22:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='80cfd013e526b5145ec3254920afd89bb459f1db7a2a3f21849125af20c05471' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='9efd7ffd4a246311f544cf0031682f4dcf946b2377abaa285684526071272fe5' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Sat, 26 Jan 2019 12:22:24 GMT
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
	-	`sha256:c5ab2aed250a381b202ed10c22c56a44b11abb352eea45033310fd4d5e2d89a0`  
		Last Modified: Sat, 26 Jan 2019 12:22:58 GMT  
		Size: 93.7 MB (93706570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.1.0` - windows version 10.0.14393.2724; amd64

```console
$ docker pull julia@sha256:b4b8a43c698d4425df9930b18432ba06184097c2b952614a06c0555e3087ae76
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5743464403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:602a7ae7e07e3e2a3e9e8787bbcb482c4ab9b2227dbd47fe5c5d89a02c77f7a6`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 08 Jan 2019 17:44:44 GMT
RUN Install update 10.0.14393.2724
# Fri, 11 Jan 2019 10:38:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 26 Jan 2019 10:15:27 GMT
ENV JULIA_VERSION=1.1.0
# Sat, 26 Jan 2019 10:15:28 GMT
ENV JULIA_SHA256=15bc552e43f5d83d20e439b6026a95f2fd8d57c32249c602dc836ce2798f4a33
# Sat, 26 Jan 2019 10:18:44 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:18:46 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d0c71fc8924e632b81de72fba055610c4a5259b2f6723e15f70662f7bc328184`  
		Last Modified: Tue, 08 Jan 2019 17:44:44 GMT  
		Size: 1.6 GB (1565830172 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:52e9c8dd86ca94537c9a49c5082ecddcdff7fc266e93f1587ff015c3e463ed51`  
		Last Modified: Fri, 11 Jan 2019 11:28:56 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d9a69815265750e3e05fbe2ccb1c7553f44a56ab427eaa21e4a4d5a05b5a62`  
		Last Modified: Sat, 26 Jan 2019 10:35:46 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ecce8bc81047e2335f9d2ee1c18d8a17210a958d771c12ee5164b8d629a4d1`  
		Last Modified: Sat, 26 Jan 2019 10:35:46 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3d8609d8a98244d2936a7ccf24e9f05d2c7a7d6cfc76f063cc531c847d81d2`  
		Last Modified: Sat, 26 Jan 2019 10:36:26 GMT  
		Size: 107.6 MB (107643512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:363b9d07ae75ddbfa236d59540cde81f3a129551bf03259ec2d7e11239035234`  
		Last Modified: Sat, 26 Jan 2019 10:35:46 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.1.0` - windows version 10.0.16299.904; amd64

```console
$ docker pull julia@sha256:83459bc6720bab0da8543bbca7eb6e85d36b4265c3941c586bbbfdf71342feef
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3249773278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:527381cd6fd65516b35b82c16c14510a6e35bd06e229849e80d98608566cb784`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 03 Jan 2019 04:08:43 GMT
RUN Install update 10.0.16299.904
# Fri, 11 Jan 2019 10:44:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 26 Jan 2019 10:18:54 GMT
ENV JULIA_VERSION=1.1.0
# Sat, 26 Jan 2019 10:18:55 GMT
ENV JULIA_SHA256=15bc552e43f5d83d20e439b6026a95f2fd8d57c32249c602dc836ce2798f4a33
# Sat, 26 Jan 2019 10:22:08 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:22:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ee945370a9b4bb58ea63e33767041df2ecc306b6e73a231fe90d31980e26b05d`  
		Last Modified: Tue, 08 Jan 2019 18:00:22 GMT  
		Size: 872.8 MB (872755280 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:774e51f30ad2e236ae01fce26ad8420164c15c05a9cfbe2509381f0e2e789b85`  
		Last Modified: Fri, 11 Jan 2019 11:30:39 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2f6a095f3863d937898f963b74973d43166855b5a9df4bf238f047e8322621`  
		Last Modified: Sat, 26 Jan 2019 10:36:43 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a440f5bcd08cdb2c5059d3eae8b988314ced4453252e40d40095c0e723d5ea85`  
		Last Modified: Sat, 26 Jan 2019 10:36:43 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b556956629d8e536bfab8808c37b5414f1d04223660ada2ee30dcb9f45d6143d`  
		Last Modified: Sat, 26 Jan 2019 10:37:17 GMT  
		Size: 102.7 MB (102712585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499c35076f035c7a600c3bc05edfce36787bb96c062369d8a0ac889e0dd21e0f`  
		Last Modified: Sat, 26 Jan 2019 10:36:43 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.1.0` - windows version 10.0.17134.523; amd64

```console
$ docker pull julia@sha256:6490787dd0c0838da49278f8bd448318e48c93cf3657c81fb6691799f7a459d5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2348307925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e3ed996cfd2a90e6bf9252bf25f8bf88b1f767a08b9d3938ab8ed0a40ff22d9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 04 Jan 2019 22:40:00 GMT
RUN Install update 10.0.17134.523
# Fri, 11 Jan 2019 10:49:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 26 Jan 2019 10:22:21 GMT
ENV JULIA_VERSION=1.1.0
# Sat, 26 Jan 2019 10:22:22 GMT
ENV JULIA_SHA256=15bc552e43f5d83d20e439b6026a95f2fd8d57c32249c602dc836ce2798f4a33
# Sat, 26 Jan 2019 10:25:16 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:25:18 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:80c309c8f9e2a929c92fe88fafde882006a56d421e9cb306b5a55baefe52c4b6`  
		Last Modified: Tue, 08 Jan 2019 01:38:21 GMT  
		Size: 586.0 MB (585998859 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bfc3888f034fb7d00898fffa324da3e9ccfb30f42ed800fe45bb58da849af364`  
		Last Modified: Fri, 11 Jan 2019 11:31:41 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd122f6a40c3997fa0945263231cdc1b830f9957dc9f56af18d3e7abb75f760`  
		Last Modified: Sat, 26 Jan 2019 10:37:33 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6fc5bd91a97711bf4e4a104c5b6a8fe68fd0b80465fe29cf82c47eedc62242`  
		Last Modified: Sat, 26 Jan 2019 10:37:33 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9518258e986b06945b2678c46de4421f15576926bc0d55446ee7d1d23657515f`  
		Last Modified: Sat, 26 Jan 2019 10:38:01 GMT  
		Size: 102.6 MB (102615981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a463ad1e1c4de4314dee6e4cc44fcc2fd2a25989ba668049407afa8dc39705`  
		Last Modified: Sat, 26 Jan 2019 10:37:32 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.1.0-stretch`

```console
$ docker pull julia@sha256:55491325a3367cdf5ba400342ae6d196a8b970a9af8951be0ff624f2ca826a6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `julia:1.1.0-stretch` - linux; amd64

```console
$ docker pull julia@sha256:3fa7855f260c4063e15d4f42692b6cf047938ab3fda488d3ec6c0e71c25e4ee9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.4 MB (151438743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917093c9b9318ab13172cb568be70135d213ccd67a63fb935297efb925d1116f`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:03:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:03:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 06 Feb 2019 07:03:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 07:03:08 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 06 Feb 2019 07:03:08 GMT
ENV JULIA_VERSION=1.1.0
# Wed, 06 Feb 2019 07:03:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='80cfd013e526b5145ec3254920afd89bb459f1db7a2a3f21849125af20c05471' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='9efd7ffd4a246311f544cf0031682f4dcf946b2377abaa285684526071272fe5' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 06 Feb 2019 07:03:24 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ad57f7f512401da1583400da462433d25cd4866d4a2fb961c62229a1fcfc81`  
		Last Modified: Wed, 06 Feb 2019 07:03:59 GMT  
		Size: 9.5 MB (9495211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:713faba31c4e3403a140914fbef75960252252a6a0a23113d5628d119dc872d5`  
		Last Modified: Wed, 06 Feb 2019 07:04:16 GMT  
		Size: 96.6 MB (96599240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.1.0-stretch` - linux; 386

```console
$ docker pull julia@sha256:b8cee0b0a243dd91eb1fd89f18b1586284af8cdd4aa365e4cfbb44011ccd5755
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.3 MB (149275399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:196658eb80886eecda3b971c8402e1bc949ced9faa3cb7faf1b568c4032c1784`
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
# Sat, 26 Jan 2019 12:22:05 GMT
ENV JULIA_VERSION=1.1.0
# Sat, 26 Jan 2019 12:22:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='80cfd013e526b5145ec3254920afd89bb459f1db7a2a3f21849125af20c05471' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='9efd7ffd4a246311f544cf0031682f4dcf946b2377abaa285684526071272fe5' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Sat, 26 Jan 2019 12:22:24 GMT
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
	-	`sha256:c5ab2aed250a381b202ed10c22c56a44b11abb352eea45033310fd4d5e2d89a0`  
		Last Modified: Sat, 26 Jan 2019 12:22:58 GMT  
		Size: 93.7 MB (93706570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.1.0-windowsservercore-1709`

```console
$ docker pull julia@sha256:054a9ac4eccae6c28c8c48ebd2e5741f5081a849e2abc9ae1f62b7e3c593b3e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.904; amd64

### `julia:1.1.0-windowsservercore-1709` - windows version 10.0.16299.904; amd64

```console
$ docker pull julia@sha256:83459bc6720bab0da8543bbca7eb6e85d36b4265c3941c586bbbfdf71342feef
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3249773278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:527381cd6fd65516b35b82c16c14510a6e35bd06e229849e80d98608566cb784`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 03 Jan 2019 04:08:43 GMT
RUN Install update 10.0.16299.904
# Fri, 11 Jan 2019 10:44:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 26 Jan 2019 10:18:54 GMT
ENV JULIA_VERSION=1.1.0
# Sat, 26 Jan 2019 10:18:55 GMT
ENV JULIA_SHA256=15bc552e43f5d83d20e439b6026a95f2fd8d57c32249c602dc836ce2798f4a33
# Sat, 26 Jan 2019 10:22:08 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:22:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ee945370a9b4bb58ea63e33767041df2ecc306b6e73a231fe90d31980e26b05d`  
		Last Modified: Tue, 08 Jan 2019 18:00:22 GMT  
		Size: 872.8 MB (872755280 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:774e51f30ad2e236ae01fce26ad8420164c15c05a9cfbe2509381f0e2e789b85`  
		Last Modified: Fri, 11 Jan 2019 11:30:39 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2f6a095f3863d937898f963b74973d43166855b5a9df4bf238f047e8322621`  
		Last Modified: Sat, 26 Jan 2019 10:36:43 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a440f5bcd08cdb2c5059d3eae8b988314ced4453252e40d40095c0e723d5ea85`  
		Last Modified: Sat, 26 Jan 2019 10:36:43 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b556956629d8e536bfab8808c37b5414f1d04223660ada2ee30dcb9f45d6143d`  
		Last Modified: Sat, 26 Jan 2019 10:37:17 GMT  
		Size: 102.7 MB (102712585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499c35076f035c7a600c3bc05edfce36787bb96c062369d8a0ac889e0dd21e0f`  
		Last Modified: Sat, 26 Jan 2019 10:36:43 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.1.0-windowsservercore-1803`

```console
$ docker pull julia@sha256:8152a102ab508d7dc3e9831a7c4cc2d62efae65cff3b6340857628cb8fdc02b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.523; amd64

### `julia:1.1.0-windowsservercore-1803` - windows version 10.0.17134.523; amd64

```console
$ docker pull julia@sha256:6490787dd0c0838da49278f8bd448318e48c93cf3657c81fb6691799f7a459d5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2348307925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e3ed996cfd2a90e6bf9252bf25f8bf88b1f767a08b9d3938ab8ed0a40ff22d9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 04 Jan 2019 22:40:00 GMT
RUN Install update 10.0.17134.523
# Fri, 11 Jan 2019 10:49:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 26 Jan 2019 10:22:21 GMT
ENV JULIA_VERSION=1.1.0
# Sat, 26 Jan 2019 10:22:22 GMT
ENV JULIA_SHA256=15bc552e43f5d83d20e439b6026a95f2fd8d57c32249c602dc836ce2798f4a33
# Sat, 26 Jan 2019 10:25:16 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:25:18 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:80c309c8f9e2a929c92fe88fafde882006a56d421e9cb306b5a55baefe52c4b6`  
		Last Modified: Tue, 08 Jan 2019 01:38:21 GMT  
		Size: 586.0 MB (585998859 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bfc3888f034fb7d00898fffa324da3e9ccfb30f42ed800fe45bb58da849af364`  
		Last Modified: Fri, 11 Jan 2019 11:31:41 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd122f6a40c3997fa0945263231cdc1b830f9957dc9f56af18d3e7abb75f760`  
		Last Modified: Sat, 26 Jan 2019 10:37:33 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6fc5bd91a97711bf4e4a104c5b6a8fe68fd0b80465fe29cf82c47eedc62242`  
		Last Modified: Sat, 26 Jan 2019 10:37:33 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9518258e986b06945b2678c46de4421f15576926bc0d55446ee7d1d23657515f`  
		Last Modified: Sat, 26 Jan 2019 10:38:01 GMT  
		Size: 102.6 MB (102615981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a463ad1e1c4de4314dee6e4cc44fcc2fd2a25989ba668049407afa8dc39705`  
		Last Modified: Sat, 26 Jan 2019 10:37:32 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.1.0-windowsservercore-ltsc2016`

```console
$ docker pull julia@sha256:695d5aa8a573b9ba05c9f8bb65680d8765a4c43f6a3bf3d78c96a7421f6bb87c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2724; amd64

### `julia:1.1.0-windowsservercore-ltsc2016` - windows version 10.0.14393.2724; amd64

```console
$ docker pull julia@sha256:b4b8a43c698d4425df9930b18432ba06184097c2b952614a06c0555e3087ae76
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5743464403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:602a7ae7e07e3e2a3e9e8787bbcb482c4ab9b2227dbd47fe5c5d89a02c77f7a6`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 08 Jan 2019 17:44:44 GMT
RUN Install update 10.0.14393.2724
# Fri, 11 Jan 2019 10:38:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 26 Jan 2019 10:15:27 GMT
ENV JULIA_VERSION=1.1.0
# Sat, 26 Jan 2019 10:15:28 GMT
ENV JULIA_SHA256=15bc552e43f5d83d20e439b6026a95f2fd8d57c32249c602dc836ce2798f4a33
# Sat, 26 Jan 2019 10:18:44 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:18:46 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d0c71fc8924e632b81de72fba055610c4a5259b2f6723e15f70662f7bc328184`  
		Last Modified: Tue, 08 Jan 2019 17:44:44 GMT  
		Size: 1.6 GB (1565830172 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:52e9c8dd86ca94537c9a49c5082ecddcdff7fc266e93f1587ff015c3e463ed51`  
		Last Modified: Fri, 11 Jan 2019 11:28:56 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d9a69815265750e3e05fbe2ccb1c7553f44a56ab427eaa21e4a4d5a05b5a62`  
		Last Modified: Sat, 26 Jan 2019 10:35:46 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ecce8bc81047e2335f9d2ee1c18d8a17210a958d771c12ee5164b8d629a4d1`  
		Last Modified: Sat, 26 Jan 2019 10:35:46 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3d8609d8a98244d2936a7ccf24e9f05d2c7a7d6cfc76f063cc531c847d81d2`  
		Last Modified: Sat, 26 Jan 2019 10:36:26 GMT  
		Size: 107.6 MB (107643512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:363b9d07ae75ddbfa236d59540cde81f3a129551bf03259ec2d7e11239035234`  
		Last Modified: Sat, 26 Jan 2019 10:35:46 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.1-stretch`

```console
$ docker pull julia@sha256:55491325a3367cdf5ba400342ae6d196a8b970a9af8951be0ff624f2ca826a6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `julia:1.1-stretch` - linux; amd64

```console
$ docker pull julia@sha256:3fa7855f260c4063e15d4f42692b6cf047938ab3fda488d3ec6c0e71c25e4ee9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.4 MB (151438743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917093c9b9318ab13172cb568be70135d213ccd67a63fb935297efb925d1116f`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:03:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:03:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 06 Feb 2019 07:03:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 07:03:08 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 06 Feb 2019 07:03:08 GMT
ENV JULIA_VERSION=1.1.0
# Wed, 06 Feb 2019 07:03:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='80cfd013e526b5145ec3254920afd89bb459f1db7a2a3f21849125af20c05471' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='9efd7ffd4a246311f544cf0031682f4dcf946b2377abaa285684526071272fe5' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 06 Feb 2019 07:03:24 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ad57f7f512401da1583400da462433d25cd4866d4a2fb961c62229a1fcfc81`  
		Last Modified: Wed, 06 Feb 2019 07:03:59 GMT  
		Size: 9.5 MB (9495211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:713faba31c4e3403a140914fbef75960252252a6a0a23113d5628d119dc872d5`  
		Last Modified: Wed, 06 Feb 2019 07:04:16 GMT  
		Size: 96.6 MB (96599240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.1-stretch` - linux; 386

```console
$ docker pull julia@sha256:b8cee0b0a243dd91eb1fd89f18b1586284af8cdd4aa365e4cfbb44011ccd5755
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.3 MB (149275399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:196658eb80886eecda3b971c8402e1bc949ced9faa3cb7faf1b568c4032c1784`
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
# Sat, 26 Jan 2019 12:22:05 GMT
ENV JULIA_VERSION=1.1.0
# Sat, 26 Jan 2019 12:22:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='80cfd013e526b5145ec3254920afd89bb459f1db7a2a3f21849125af20c05471' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='9efd7ffd4a246311f544cf0031682f4dcf946b2377abaa285684526071272fe5' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Sat, 26 Jan 2019 12:22:24 GMT
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
	-	`sha256:c5ab2aed250a381b202ed10c22c56a44b11abb352eea45033310fd4d5e2d89a0`  
		Last Modified: Sat, 26 Jan 2019 12:22:58 GMT  
		Size: 93.7 MB (93706570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.1-windowsservercore-1709`

```console
$ docker pull julia@sha256:054a9ac4eccae6c28c8c48ebd2e5741f5081a849e2abc9ae1f62b7e3c593b3e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.904; amd64

### `julia:1.1-windowsservercore-1709` - windows version 10.0.16299.904; amd64

```console
$ docker pull julia@sha256:83459bc6720bab0da8543bbca7eb6e85d36b4265c3941c586bbbfdf71342feef
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3249773278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:527381cd6fd65516b35b82c16c14510a6e35bd06e229849e80d98608566cb784`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 03 Jan 2019 04:08:43 GMT
RUN Install update 10.0.16299.904
# Fri, 11 Jan 2019 10:44:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 26 Jan 2019 10:18:54 GMT
ENV JULIA_VERSION=1.1.0
# Sat, 26 Jan 2019 10:18:55 GMT
ENV JULIA_SHA256=15bc552e43f5d83d20e439b6026a95f2fd8d57c32249c602dc836ce2798f4a33
# Sat, 26 Jan 2019 10:22:08 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:22:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ee945370a9b4bb58ea63e33767041df2ecc306b6e73a231fe90d31980e26b05d`  
		Last Modified: Tue, 08 Jan 2019 18:00:22 GMT  
		Size: 872.8 MB (872755280 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:774e51f30ad2e236ae01fce26ad8420164c15c05a9cfbe2509381f0e2e789b85`  
		Last Modified: Fri, 11 Jan 2019 11:30:39 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2f6a095f3863d937898f963b74973d43166855b5a9df4bf238f047e8322621`  
		Last Modified: Sat, 26 Jan 2019 10:36:43 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a440f5bcd08cdb2c5059d3eae8b988314ced4453252e40d40095c0e723d5ea85`  
		Last Modified: Sat, 26 Jan 2019 10:36:43 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b556956629d8e536bfab8808c37b5414f1d04223660ada2ee30dcb9f45d6143d`  
		Last Modified: Sat, 26 Jan 2019 10:37:17 GMT  
		Size: 102.7 MB (102712585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499c35076f035c7a600c3bc05edfce36787bb96c062369d8a0ac889e0dd21e0f`  
		Last Modified: Sat, 26 Jan 2019 10:36:43 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.1-windowsservercore-1803`

```console
$ docker pull julia@sha256:8152a102ab508d7dc3e9831a7c4cc2d62efae65cff3b6340857628cb8fdc02b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.523; amd64

### `julia:1.1-windowsservercore-1803` - windows version 10.0.17134.523; amd64

```console
$ docker pull julia@sha256:6490787dd0c0838da49278f8bd448318e48c93cf3657c81fb6691799f7a459d5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2348307925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e3ed996cfd2a90e6bf9252bf25f8bf88b1f767a08b9d3938ab8ed0a40ff22d9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 04 Jan 2019 22:40:00 GMT
RUN Install update 10.0.17134.523
# Fri, 11 Jan 2019 10:49:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 26 Jan 2019 10:22:21 GMT
ENV JULIA_VERSION=1.1.0
# Sat, 26 Jan 2019 10:22:22 GMT
ENV JULIA_SHA256=15bc552e43f5d83d20e439b6026a95f2fd8d57c32249c602dc836ce2798f4a33
# Sat, 26 Jan 2019 10:25:16 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:25:18 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:80c309c8f9e2a929c92fe88fafde882006a56d421e9cb306b5a55baefe52c4b6`  
		Last Modified: Tue, 08 Jan 2019 01:38:21 GMT  
		Size: 586.0 MB (585998859 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bfc3888f034fb7d00898fffa324da3e9ccfb30f42ed800fe45bb58da849af364`  
		Last Modified: Fri, 11 Jan 2019 11:31:41 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd122f6a40c3997fa0945263231cdc1b830f9957dc9f56af18d3e7abb75f760`  
		Last Modified: Sat, 26 Jan 2019 10:37:33 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6fc5bd91a97711bf4e4a104c5b6a8fe68fd0b80465fe29cf82c47eedc62242`  
		Last Modified: Sat, 26 Jan 2019 10:37:33 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9518258e986b06945b2678c46de4421f15576926bc0d55446ee7d1d23657515f`  
		Last Modified: Sat, 26 Jan 2019 10:38:01 GMT  
		Size: 102.6 MB (102615981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a463ad1e1c4de4314dee6e4cc44fcc2fd2a25989ba668049407afa8dc39705`  
		Last Modified: Sat, 26 Jan 2019 10:37:32 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.1-windowsservercore-ltsc2016`

```console
$ docker pull julia@sha256:695d5aa8a573b9ba05c9f8bb65680d8765a4c43f6a3bf3d78c96a7421f6bb87c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2724; amd64

### `julia:1.1-windowsservercore-ltsc2016` - windows version 10.0.14393.2724; amd64

```console
$ docker pull julia@sha256:b4b8a43c698d4425df9930b18432ba06184097c2b952614a06c0555e3087ae76
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5743464403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:602a7ae7e07e3e2a3e9e8787bbcb482c4ab9b2227dbd47fe5c5d89a02c77f7a6`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 08 Jan 2019 17:44:44 GMT
RUN Install update 10.0.14393.2724
# Fri, 11 Jan 2019 10:38:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 26 Jan 2019 10:15:27 GMT
ENV JULIA_VERSION=1.1.0
# Sat, 26 Jan 2019 10:15:28 GMT
ENV JULIA_SHA256=15bc552e43f5d83d20e439b6026a95f2fd8d57c32249c602dc836ce2798f4a33
# Sat, 26 Jan 2019 10:18:44 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:18:46 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d0c71fc8924e632b81de72fba055610c4a5259b2f6723e15f70662f7bc328184`  
		Last Modified: Tue, 08 Jan 2019 17:44:44 GMT  
		Size: 1.6 GB (1565830172 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:52e9c8dd86ca94537c9a49c5082ecddcdff7fc266e93f1587ff015c3e463ed51`  
		Last Modified: Fri, 11 Jan 2019 11:28:56 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d9a69815265750e3e05fbe2ccb1c7553f44a56ab427eaa21e4a4d5a05b5a62`  
		Last Modified: Sat, 26 Jan 2019 10:35:46 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ecce8bc81047e2335f9d2ee1c18d8a17210a958d771c12ee5164b8d629a4d1`  
		Last Modified: Sat, 26 Jan 2019 10:35:46 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3d8609d8a98244d2936a7ccf24e9f05d2c7a7d6cfc76f063cc531c847d81d2`  
		Last Modified: Sat, 26 Jan 2019 10:36:26 GMT  
		Size: 107.6 MB (107643512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:363b9d07ae75ddbfa236d59540cde81f3a129551bf03259ec2d7e11239035234`  
		Last Modified: Sat, 26 Jan 2019 10:35:46 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1-stretch`

```console
$ docker pull julia@sha256:55491325a3367cdf5ba400342ae6d196a8b970a9af8951be0ff624f2ca826a6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `julia:1-stretch` - linux; amd64

```console
$ docker pull julia@sha256:3fa7855f260c4063e15d4f42692b6cf047938ab3fda488d3ec6c0e71c25e4ee9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.4 MB (151438743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917093c9b9318ab13172cb568be70135d213ccd67a63fb935297efb925d1116f`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:03:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:03:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 06 Feb 2019 07:03:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 07:03:08 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 06 Feb 2019 07:03:08 GMT
ENV JULIA_VERSION=1.1.0
# Wed, 06 Feb 2019 07:03:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='80cfd013e526b5145ec3254920afd89bb459f1db7a2a3f21849125af20c05471' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='9efd7ffd4a246311f544cf0031682f4dcf946b2377abaa285684526071272fe5' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 06 Feb 2019 07:03:24 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ad57f7f512401da1583400da462433d25cd4866d4a2fb961c62229a1fcfc81`  
		Last Modified: Wed, 06 Feb 2019 07:03:59 GMT  
		Size: 9.5 MB (9495211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:713faba31c4e3403a140914fbef75960252252a6a0a23113d5628d119dc872d5`  
		Last Modified: Wed, 06 Feb 2019 07:04:16 GMT  
		Size: 96.6 MB (96599240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1-stretch` - linux; 386

```console
$ docker pull julia@sha256:b8cee0b0a243dd91eb1fd89f18b1586284af8cdd4aa365e4cfbb44011ccd5755
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.3 MB (149275399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:196658eb80886eecda3b971c8402e1bc949ced9faa3cb7faf1b568c4032c1784`
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
# Sat, 26 Jan 2019 12:22:05 GMT
ENV JULIA_VERSION=1.1.0
# Sat, 26 Jan 2019 12:22:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='80cfd013e526b5145ec3254920afd89bb459f1db7a2a3f21849125af20c05471' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='9efd7ffd4a246311f544cf0031682f4dcf946b2377abaa285684526071272fe5' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Sat, 26 Jan 2019 12:22:24 GMT
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
	-	`sha256:c5ab2aed250a381b202ed10c22c56a44b11abb352eea45033310fd4d5e2d89a0`  
		Last Modified: Sat, 26 Jan 2019 12:22:58 GMT  
		Size: 93.7 MB (93706570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1-windowsservercore-1709`

```console
$ docker pull julia@sha256:054a9ac4eccae6c28c8c48ebd2e5741f5081a849e2abc9ae1f62b7e3c593b3e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.904; amd64

### `julia:1-windowsservercore-1709` - windows version 10.0.16299.904; amd64

```console
$ docker pull julia@sha256:83459bc6720bab0da8543bbca7eb6e85d36b4265c3941c586bbbfdf71342feef
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3249773278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:527381cd6fd65516b35b82c16c14510a6e35bd06e229849e80d98608566cb784`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 03 Jan 2019 04:08:43 GMT
RUN Install update 10.0.16299.904
# Fri, 11 Jan 2019 10:44:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 26 Jan 2019 10:18:54 GMT
ENV JULIA_VERSION=1.1.0
# Sat, 26 Jan 2019 10:18:55 GMT
ENV JULIA_SHA256=15bc552e43f5d83d20e439b6026a95f2fd8d57c32249c602dc836ce2798f4a33
# Sat, 26 Jan 2019 10:22:08 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:22:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ee945370a9b4bb58ea63e33767041df2ecc306b6e73a231fe90d31980e26b05d`  
		Last Modified: Tue, 08 Jan 2019 18:00:22 GMT  
		Size: 872.8 MB (872755280 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:774e51f30ad2e236ae01fce26ad8420164c15c05a9cfbe2509381f0e2e789b85`  
		Last Modified: Fri, 11 Jan 2019 11:30:39 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2f6a095f3863d937898f963b74973d43166855b5a9df4bf238f047e8322621`  
		Last Modified: Sat, 26 Jan 2019 10:36:43 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a440f5bcd08cdb2c5059d3eae8b988314ced4453252e40d40095c0e723d5ea85`  
		Last Modified: Sat, 26 Jan 2019 10:36:43 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b556956629d8e536bfab8808c37b5414f1d04223660ada2ee30dcb9f45d6143d`  
		Last Modified: Sat, 26 Jan 2019 10:37:17 GMT  
		Size: 102.7 MB (102712585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499c35076f035c7a600c3bc05edfce36787bb96c062369d8a0ac889e0dd21e0f`  
		Last Modified: Sat, 26 Jan 2019 10:36:43 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1-windowsservercore-1803`

```console
$ docker pull julia@sha256:8152a102ab508d7dc3e9831a7c4cc2d62efae65cff3b6340857628cb8fdc02b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.523; amd64

### `julia:1-windowsservercore-1803` - windows version 10.0.17134.523; amd64

```console
$ docker pull julia@sha256:6490787dd0c0838da49278f8bd448318e48c93cf3657c81fb6691799f7a459d5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2348307925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e3ed996cfd2a90e6bf9252bf25f8bf88b1f767a08b9d3938ab8ed0a40ff22d9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 04 Jan 2019 22:40:00 GMT
RUN Install update 10.0.17134.523
# Fri, 11 Jan 2019 10:49:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 26 Jan 2019 10:22:21 GMT
ENV JULIA_VERSION=1.1.0
# Sat, 26 Jan 2019 10:22:22 GMT
ENV JULIA_SHA256=15bc552e43f5d83d20e439b6026a95f2fd8d57c32249c602dc836ce2798f4a33
# Sat, 26 Jan 2019 10:25:16 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:25:18 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:80c309c8f9e2a929c92fe88fafde882006a56d421e9cb306b5a55baefe52c4b6`  
		Last Modified: Tue, 08 Jan 2019 01:38:21 GMT  
		Size: 586.0 MB (585998859 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bfc3888f034fb7d00898fffa324da3e9ccfb30f42ed800fe45bb58da849af364`  
		Last Modified: Fri, 11 Jan 2019 11:31:41 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd122f6a40c3997fa0945263231cdc1b830f9957dc9f56af18d3e7abb75f760`  
		Last Modified: Sat, 26 Jan 2019 10:37:33 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6fc5bd91a97711bf4e4a104c5b6a8fe68fd0b80465fe29cf82c47eedc62242`  
		Last Modified: Sat, 26 Jan 2019 10:37:33 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9518258e986b06945b2678c46de4421f15576926bc0d55446ee7d1d23657515f`  
		Last Modified: Sat, 26 Jan 2019 10:38:01 GMT  
		Size: 102.6 MB (102615981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a463ad1e1c4de4314dee6e4cc44fcc2fd2a25989ba668049407afa8dc39705`  
		Last Modified: Sat, 26 Jan 2019 10:37:32 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1-windowsservercore-ltsc2016`

```console
$ docker pull julia@sha256:695d5aa8a573b9ba05c9f8bb65680d8765a4c43f6a3bf3d78c96a7421f6bb87c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2724; amd64

### `julia:1-windowsservercore-ltsc2016` - windows version 10.0.14393.2724; amd64

```console
$ docker pull julia@sha256:b4b8a43c698d4425df9930b18432ba06184097c2b952614a06c0555e3087ae76
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5743464403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:602a7ae7e07e3e2a3e9e8787bbcb482c4ab9b2227dbd47fe5c5d89a02c77f7a6`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 08 Jan 2019 17:44:44 GMT
RUN Install update 10.0.14393.2724
# Fri, 11 Jan 2019 10:38:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 26 Jan 2019 10:15:27 GMT
ENV JULIA_VERSION=1.1.0
# Sat, 26 Jan 2019 10:15:28 GMT
ENV JULIA_SHA256=15bc552e43f5d83d20e439b6026a95f2fd8d57c32249c602dc836ce2798f4a33
# Sat, 26 Jan 2019 10:18:44 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:18:46 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d0c71fc8924e632b81de72fba055610c4a5259b2f6723e15f70662f7bc328184`  
		Last Modified: Tue, 08 Jan 2019 17:44:44 GMT  
		Size: 1.6 GB (1565830172 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:52e9c8dd86ca94537c9a49c5082ecddcdff7fc266e93f1587ff015c3e463ed51`  
		Last Modified: Fri, 11 Jan 2019 11:28:56 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d9a69815265750e3e05fbe2ccb1c7553f44a56ab427eaa21e4a4d5a05b5a62`  
		Last Modified: Sat, 26 Jan 2019 10:35:46 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ecce8bc81047e2335f9d2ee1c18d8a17210a958d771c12ee5164b8d629a4d1`  
		Last Modified: Sat, 26 Jan 2019 10:35:46 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3d8609d8a98244d2936a7ccf24e9f05d2c7a7d6cfc76f063cc531c847d81d2`  
		Last Modified: Sat, 26 Jan 2019 10:36:26 GMT  
		Size: 107.6 MB (107643512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:363b9d07ae75ddbfa236d59540cde81f3a129551bf03259ec2d7e11239035234`  
		Last Modified: Sat, 26 Jan 2019 10:35:46 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:latest`

```console
$ docker pull julia@sha256:03faf7f9a8d602889569f4780c56b7e9e73d4c0e558784862eb2f0c300ccff84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	windows version 10.0.14393.2724; amd64
	-	windows version 10.0.16299.904; amd64
	-	windows version 10.0.17134.523; amd64

### `julia:latest` - linux; amd64

```console
$ docker pull julia@sha256:749ae6d291aac923dd2a1230168a27ddcccb326c6be6e22cc1f4d8ee26c38aa0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.4 MB (151439290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f43e77476a36923fe5cce670048ca42e6df96e249258e7c4ee62610979081fd7`
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
# Sat, 26 Jan 2019 01:20:44 GMT
ENV JULIA_VERSION=1.1.0
# Sat, 26 Jan 2019 01:21:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='80cfd013e526b5145ec3254920afd89bb459f1db7a2a3f21849125af20c05471' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='9efd7ffd4a246311f544cf0031682f4dcf946b2377abaa285684526071272fe5' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Sat, 26 Jan 2019 01:21:04 GMT
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
	-	`sha256:90495334b2c4d0b6a3d0c8f89ed024e815964ea5b7bdbec9dc6d342b549e6de4`  
		Last Modified: Sat, 26 Jan 2019 01:21:39 GMT  
		Size: 96.6 MB (96599306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - linux; 386

```console
$ docker pull julia@sha256:b8cee0b0a243dd91eb1fd89f18b1586284af8cdd4aa365e4cfbb44011ccd5755
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.3 MB (149275399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:196658eb80886eecda3b971c8402e1bc949ced9faa3cb7faf1b568c4032c1784`
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
# Sat, 26 Jan 2019 12:22:05 GMT
ENV JULIA_VERSION=1.1.0
# Sat, 26 Jan 2019 12:22:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='80cfd013e526b5145ec3254920afd89bb459f1db7a2a3f21849125af20c05471' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='9efd7ffd4a246311f544cf0031682f4dcf946b2377abaa285684526071272fe5' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Sat, 26 Jan 2019 12:22:24 GMT
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
	-	`sha256:c5ab2aed250a381b202ed10c22c56a44b11abb352eea45033310fd4d5e2d89a0`  
		Last Modified: Sat, 26 Jan 2019 12:22:58 GMT  
		Size: 93.7 MB (93706570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - windows version 10.0.14393.2724; amd64

```console
$ docker pull julia@sha256:b4b8a43c698d4425df9930b18432ba06184097c2b952614a06c0555e3087ae76
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5743464403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:602a7ae7e07e3e2a3e9e8787bbcb482c4ab9b2227dbd47fe5c5d89a02c77f7a6`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 08 Jan 2019 17:44:44 GMT
RUN Install update 10.0.14393.2724
# Fri, 11 Jan 2019 10:38:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 26 Jan 2019 10:15:27 GMT
ENV JULIA_VERSION=1.1.0
# Sat, 26 Jan 2019 10:15:28 GMT
ENV JULIA_SHA256=15bc552e43f5d83d20e439b6026a95f2fd8d57c32249c602dc836ce2798f4a33
# Sat, 26 Jan 2019 10:18:44 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:18:46 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d0c71fc8924e632b81de72fba055610c4a5259b2f6723e15f70662f7bc328184`  
		Last Modified: Tue, 08 Jan 2019 17:44:44 GMT  
		Size: 1.6 GB (1565830172 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:52e9c8dd86ca94537c9a49c5082ecddcdff7fc266e93f1587ff015c3e463ed51`  
		Last Modified: Fri, 11 Jan 2019 11:28:56 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d9a69815265750e3e05fbe2ccb1c7553f44a56ab427eaa21e4a4d5a05b5a62`  
		Last Modified: Sat, 26 Jan 2019 10:35:46 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ecce8bc81047e2335f9d2ee1c18d8a17210a958d771c12ee5164b8d629a4d1`  
		Last Modified: Sat, 26 Jan 2019 10:35:46 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3d8609d8a98244d2936a7ccf24e9f05d2c7a7d6cfc76f063cc531c847d81d2`  
		Last Modified: Sat, 26 Jan 2019 10:36:26 GMT  
		Size: 107.6 MB (107643512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:363b9d07ae75ddbfa236d59540cde81f3a129551bf03259ec2d7e11239035234`  
		Last Modified: Sat, 26 Jan 2019 10:35:46 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - windows version 10.0.16299.904; amd64

```console
$ docker pull julia@sha256:83459bc6720bab0da8543bbca7eb6e85d36b4265c3941c586bbbfdf71342feef
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3249773278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:527381cd6fd65516b35b82c16c14510a6e35bd06e229849e80d98608566cb784`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 03 Jan 2019 04:08:43 GMT
RUN Install update 10.0.16299.904
# Fri, 11 Jan 2019 10:44:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 26 Jan 2019 10:18:54 GMT
ENV JULIA_VERSION=1.1.0
# Sat, 26 Jan 2019 10:18:55 GMT
ENV JULIA_SHA256=15bc552e43f5d83d20e439b6026a95f2fd8d57c32249c602dc836ce2798f4a33
# Sat, 26 Jan 2019 10:22:08 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:22:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ee945370a9b4bb58ea63e33767041df2ecc306b6e73a231fe90d31980e26b05d`  
		Last Modified: Tue, 08 Jan 2019 18:00:22 GMT  
		Size: 872.8 MB (872755280 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:774e51f30ad2e236ae01fce26ad8420164c15c05a9cfbe2509381f0e2e789b85`  
		Last Modified: Fri, 11 Jan 2019 11:30:39 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2f6a095f3863d937898f963b74973d43166855b5a9df4bf238f047e8322621`  
		Last Modified: Sat, 26 Jan 2019 10:36:43 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a440f5bcd08cdb2c5059d3eae8b988314ced4453252e40d40095c0e723d5ea85`  
		Last Modified: Sat, 26 Jan 2019 10:36:43 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b556956629d8e536bfab8808c37b5414f1d04223660ada2ee30dcb9f45d6143d`  
		Last Modified: Sat, 26 Jan 2019 10:37:17 GMT  
		Size: 102.7 MB (102712585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499c35076f035c7a600c3bc05edfce36787bb96c062369d8a0ac889e0dd21e0f`  
		Last Modified: Sat, 26 Jan 2019 10:36:43 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - windows version 10.0.17134.523; amd64

```console
$ docker pull julia@sha256:6490787dd0c0838da49278f8bd448318e48c93cf3657c81fb6691799f7a459d5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2348307925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e3ed996cfd2a90e6bf9252bf25f8bf88b1f767a08b9d3938ab8ed0a40ff22d9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 04 Jan 2019 22:40:00 GMT
RUN Install update 10.0.17134.523
# Fri, 11 Jan 2019 10:49:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 26 Jan 2019 10:22:21 GMT
ENV JULIA_VERSION=1.1.0
# Sat, 26 Jan 2019 10:22:22 GMT
ENV JULIA_SHA256=15bc552e43f5d83d20e439b6026a95f2fd8d57c32249c602dc836ce2798f4a33
# Sat, 26 Jan 2019 10:25:16 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:25:18 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:80c309c8f9e2a929c92fe88fafde882006a56d421e9cb306b5a55baefe52c4b6`  
		Last Modified: Tue, 08 Jan 2019 01:38:21 GMT  
		Size: 586.0 MB (585998859 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bfc3888f034fb7d00898fffa324da3e9ccfb30f42ed800fe45bb58da849af364`  
		Last Modified: Fri, 11 Jan 2019 11:31:41 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd122f6a40c3997fa0945263231cdc1b830f9957dc9f56af18d3e7abb75f760`  
		Last Modified: Sat, 26 Jan 2019 10:37:33 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6fc5bd91a97711bf4e4a104c5b6a8fe68fd0b80465fe29cf82c47eedc62242`  
		Last Modified: Sat, 26 Jan 2019 10:37:33 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9518258e986b06945b2678c46de4421f15576926bc0d55446ee7d1d23657515f`  
		Last Modified: Sat, 26 Jan 2019 10:38:01 GMT  
		Size: 102.6 MB (102615981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a463ad1e1c4de4314dee6e4cc44fcc2fd2a25989ba668049407afa8dc39705`  
		Last Modified: Sat, 26 Jan 2019 10:37:32 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:stretch`

```console
$ docker pull julia@sha256:55491325a3367cdf5ba400342ae6d196a8b970a9af8951be0ff624f2ca826a6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `julia:stretch` - linux; amd64

```console
$ docker pull julia@sha256:3fa7855f260c4063e15d4f42692b6cf047938ab3fda488d3ec6c0e71c25e4ee9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.4 MB (151438743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917093c9b9318ab13172cb568be70135d213ccd67a63fb935297efb925d1116f`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:03:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:03:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 06 Feb 2019 07:03:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 07:03:08 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 06 Feb 2019 07:03:08 GMT
ENV JULIA_VERSION=1.1.0
# Wed, 06 Feb 2019 07:03:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='80cfd013e526b5145ec3254920afd89bb459f1db7a2a3f21849125af20c05471' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='9efd7ffd4a246311f544cf0031682f4dcf946b2377abaa285684526071272fe5' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 06 Feb 2019 07:03:24 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ad57f7f512401da1583400da462433d25cd4866d4a2fb961c62229a1fcfc81`  
		Last Modified: Wed, 06 Feb 2019 07:03:59 GMT  
		Size: 9.5 MB (9495211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:713faba31c4e3403a140914fbef75960252252a6a0a23113d5628d119dc872d5`  
		Last Modified: Wed, 06 Feb 2019 07:04:16 GMT  
		Size: 96.6 MB (96599240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:stretch` - linux; 386

```console
$ docker pull julia@sha256:b8cee0b0a243dd91eb1fd89f18b1586284af8cdd4aa365e4cfbb44011ccd5755
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.3 MB (149275399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:196658eb80886eecda3b971c8402e1bc949ced9faa3cb7faf1b568c4032c1784`
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
# Sat, 26 Jan 2019 12:22:05 GMT
ENV JULIA_VERSION=1.1.0
# Sat, 26 Jan 2019 12:22:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='80cfd013e526b5145ec3254920afd89bb459f1db7a2a3f21849125af20c05471' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='9efd7ffd4a246311f544cf0031682f4dcf946b2377abaa285684526071272fe5' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Sat, 26 Jan 2019 12:22:24 GMT
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
	-	`sha256:c5ab2aed250a381b202ed10c22c56a44b11abb352eea45033310fd4d5e2d89a0`  
		Last Modified: Sat, 26 Jan 2019 12:22:58 GMT  
		Size: 93.7 MB (93706570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:windowsservercore-1709`

```console
$ docker pull julia@sha256:054a9ac4eccae6c28c8c48ebd2e5741f5081a849e2abc9ae1f62b7e3c593b3e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.904; amd64

### `julia:windowsservercore-1709` - windows version 10.0.16299.904; amd64

```console
$ docker pull julia@sha256:83459bc6720bab0da8543bbca7eb6e85d36b4265c3941c586bbbfdf71342feef
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3249773278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:527381cd6fd65516b35b82c16c14510a6e35bd06e229849e80d98608566cb784`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 03 Jan 2019 04:08:43 GMT
RUN Install update 10.0.16299.904
# Fri, 11 Jan 2019 10:44:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 26 Jan 2019 10:18:54 GMT
ENV JULIA_VERSION=1.1.0
# Sat, 26 Jan 2019 10:18:55 GMT
ENV JULIA_SHA256=15bc552e43f5d83d20e439b6026a95f2fd8d57c32249c602dc836ce2798f4a33
# Sat, 26 Jan 2019 10:22:08 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:22:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ee945370a9b4bb58ea63e33767041df2ecc306b6e73a231fe90d31980e26b05d`  
		Last Modified: Tue, 08 Jan 2019 18:00:22 GMT  
		Size: 872.8 MB (872755280 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:774e51f30ad2e236ae01fce26ad8420164c15c05a9cfbe2509381f0e2e789b85`  
		Last Modified: Fri, 11 Jan 2019 11:30:39 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2f6a095f3863d937898f963b74973d43166855b5a9df4bf238f047e8322621`  
		Last Modified: Sat, 26 Jan 2019 10:36:43 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a440f5bcd08cdb2c5059d3eae8b988314ced4453252e40d40095c0e723d5ea85`  
		Last Modified: Sat, 26 Jan 2019 10:36:43 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b556956629d8e536bfab8808c37b5414f1d04223660ada2ee30dcb9f45d6143d`  
		Last Modified: Sat, 26 Jan 2019 10:37:17 GMT  
		Size: 102.7 MB (102712585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499c35076f035c7a600c3bc05edfce36787bb96c062369d8a0ac889e0dd21e0f`  
		Last Modified: Sat, 26 Jan 2019 10:36:43 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:windowsservercore-1803`

```console
$ docker pull julia@sha256:8152a102ab508d7dc3e9831a7c4cc2d62efae65cff3b6340857628cb8fdc02b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.523; amd64

### `julia:windowsservercore-1803` - windows version 10.0.17134.523; amd64

```console
$ docker pull julia@sha256:6490787dd0c0838da49278f8bd448318e48c93cf3657c81fb6691799f7a459d5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2348307925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e3ed996cfd2a90e6bf9252bf25f8bf88b1f767a08b9d3938ab8ed0a40ff22d9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 04 Jan 2019 22:40:00 GMT
RUN Install update 10.0.17134.523
# Fri, 11 Jan 2019 10:49:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 26 Jan 2019 10:22:21 GMT
ENV JULIA_VERSION=1.1.0
# Sat, 26 Jan 2019 10:22:22 GMT
ENV JULIA_SHA256=15bc552e43f5d83d20e439b6026a95f2fd8d57c32249c602dc836ce2798f4a33
# Sat, 26 Jan 2019 10:25:16 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:25:18 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:80c309c8f9e2a929c92fe88fafde882006a56d421e9cb306b5a55baefe52c4b6`  
		Last Modified: Tue, 08 Jan 2019 01:38:21 GMT  
		Size: 586.0 MB (585998859 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bfc3888f034fb7d00898fffa324da3e9ccfb30f42ed800fe45bb58da849af364`  
		Last Modified: Fri, 11 Jan 2019 11:31:41 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd122f6a40c3997fa0945263231cdc1b830f9957dc9f56af18d3e7abb75f760`  
		Last Modified: Sat, 26 Jan 2019 10:37:33 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6fc5bd91a97711bf4e4a104c5b6a8fe68fd0b80465fe29cf82c47eedc62242`  
		Last Modified: Sat, 26 Jan 2019 10:37:33 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9518258e986b06945b2678c46de4421f15576926bc0d55446ee7d1d23657515f`  
		Last Modified: Sat, 26 Jan 2019 10:38:01 GMT  
		Size: 102.6 MB (102615981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a463ad1e1c4de4314dee6e4cc44fcc2fd2a25989ba668049407afa8dc39705`  
		Last Modified: Sat, 26 Jan 2019 10:37:32 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:windowsservercore-ltsc2016`

```console
$ docker pull julia@sha256:695d5aa8a573b9ba05c9f8bb65680d8765a4c43f6a3bf3d78c96a7421f6bb87c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2724; amd64

### `julia:windowsservercore-ltsc2016` - windows version 10.0.14393.2724; amd64

```console
$ docker pull julia@sha256:b4b8a43c698d4425df9930b18432ba06184097c2b952614a06c0555e3087ae76
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5743464403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:602a7ae7e07e3e2a3e9e8787bbcb482c4ab9b2227dbd47fe5c5d89a02c77f7a6`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 08 Jan 2019 17:44:44 GMT
RUN Install update 10.0.14393.2724
# Fri, 11 Jan 2019 10:38:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 26 Jan 2019 10:15:27 GMT
ENV JULIA_VERSION=1.1.0
# Sat, 26 Jan 2019 10:15:28 GMT
ENV JULIA_SHA256=15bc552e43f5d83d20e439b6026a95f2fd8d57c32249c602dc836ce2798f4a33
# Sat, 26 Jan 2019 10:18:44 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:18:46 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d0c71fc8924e632b81de72fba055610c4a5259b2f6723e15f70662f7bc328184`  
		Last Modified: Tue, 08 Jan 2019 17:44:44 GMT  
		Size: 1.6 GB (1565830172 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:52e9c8dd86ca94537c9a49c5082ecddcdff7fc266e93f1587ff015c3e463ed51`  
		Last Modified: Fri, 11 Jan 2019 11:28:56 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d9a69815265750e3e05fbe2ccb1c7553f44a56ab427eaa21e4a4d5a05b5a62`  
		Last Modified: Sat, 26 Jan 2019 10:35:46 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ecce8bc81047e2335f9d2ee1c18d8a17210a958d771c12ee5164b8d629a4d1`  
		Last Modified: Sat, 26 Jan 2019 10:35:46 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3d8609d8a98244d2936a7ccf24e9f05d2c7a7d6cfc76f063cc531c847d81d2`  
		Last Modified: Sat, 26 Jan 2019 10:36:26 GMT  
		Size: 107.6 MB (107643512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:363b9d07ae75ddbfa236d59540cde81f3a129551bf03259ec2d7e11239035234`  
		Last Modified: Sat, 26 Jan 2019 10:35:46 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
