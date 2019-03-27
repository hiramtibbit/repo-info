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
$ docker pull julia@sha256:e9740b9aa47db0cc1e3e5a8182752369c6b3391964aab7b1165abcaf54898565
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
$ docker pull julia@sha256:3f5ee7a18d386bcb3ce1da478ff5c31458a86be6df86a6df66333fcc21343126
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.4 MB (151437404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4c9686d85da26cf36b0fb7b946eb96f2ce4f7854e9a0e2f4604c2b5d0c62454`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:10:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:10:54 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 26 Mar 2019 23:10:54 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Mar 2019 23:10:54 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 26 Mar 2019 23:10:54 GMT
ENV JULIA_VERSION=1.1.0
# Tue, 26 Mar 2019 23:11:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='80cfd013e526b5145ec3254920afd89bb459f1db7a2a3f21849125af20c05471' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='9efd7ffd4a246311f544cf0031682f4dcf946b2377abaa285684526071272fe5' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 26 Mar 2019 23:11:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bd9a2e11e5d8053571bdfd57da96e0718093bf3e42cf3b9dbf136162a39f76`  
		Last Modified: Tue, 26 Mar 2019 23:11:43 GMT  
		Size: 9.5 MB (9495510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f2a717f9ed41d8dff2023939855a84e431fc4ee5e9455c972a6bfa6a95faff5`  
		Last Modified: Tue, 26 Mar 2019 23:12:01 GMT  
		Size: 96.6 MB (96599295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1` - linux; 386

```console
$ docker pull julia@sha256:0a0a02d7d30b3f5ea494818b06f2a1c08ef61e9a2ea7607bf50c26351d40af53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.3 MB (149273070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32e5f3ac9f43ab8bfe538f1dd5cc8b812041a06a6d2009f8ae5e26e1e654c839`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:21 GMT
ADD file:8ba178590335bfae47e507ed2dac195379232d7a419502dbb643ed765eeda051 in / 
# Tue, 05 Mar 2019 11:45:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 15:51:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 05 Mar 2019 15:51:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 15:51:07 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 05 Mar 2019 15:51:07 GMT
ENV JULIA_VERSION=1.1.0
# Tue, 05 Mar 2019 15:51:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='80cfd013e526b5145ec3254920afd89bb459f1db7a2a3f21849125af20c05471' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='9efd7ffd4a246311f544cf0031682f4dcf946b2377abaa285684526071272fe5' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 05 Mar 2019 15:51:26 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:8672e33776e7a43de892193a6f53164416d0b0a3dcbb0f96c502e1d15a4dcbff`  
		Last Modified: Tue, 05 Mar 2019 11:54:52 GMT  
		Size: 46.1 MB (46064419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48dd83446219733487b292f9bde94db76324fe6d0f1bff25dc0b89369de9ae3`  
		Last Modified: Tue, 05 Mar 2019 15:51:59 GMT  
		Size: 9.5 MB (9502105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c8feb7118b6130cb17b1282b994624932be678da4482d36899aafcdbb593fc`  
		Last Modified: Tue, 05 Mar 2019 15:52:18 GMT  
		Size: 93.7 MB (93706546 bytes)  
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
$ docker pull julia@sha256:48874b468ca658797f0e6aac49f2c14d03d394bc46efbb13a330ff27e3e323d3
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
$ docker pull julia@sha256:46952df975f14b7e5f03e27985965cdc4005839387953cf98e8c24251bfa46b9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.5 MB (150466831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c38408b7265c51de94b74de7a120c6624a0c702661400d9bb10f82532f04fb5`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:10:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:10:54 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 26 Mar 2019 23:10:54 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Mar 2019 23:10:54 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 26 Mar 2019 23:11:15 GMT
ENV JULIA_VERSION=1.0.3
# Tue, 26 Mar 2019 23:11:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='362ba867d2df5d4a64f824e103f19cffc3b61cf9d5a9066c657f1c5b73c87117' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='87c489ed92b1a17b231988ce59d64151b1e68700e6d503ded6085829d5587bc6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='75f43df36d71cb2bf3106b9e16670cc152e2a31f8ea6d761a6fe1d630ead05c3' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='6c8cc02d63a602870f78e66d0fdeb7e26e75b3eba558a133a86420e1273bbdc1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 26 Mar 2019 23:11:31 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bd9a2e11e5d8053571bdfd57da96e0718093bf3e42cf3b9dbf136162a39f76`  
		Last Modified: Tue, 26 Mar 2019 23:11:43 GMT  
		Size: 9.5 MB (9495510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c055f50213d20f97b7c79054300cd21bc540714319a18c8393c9fb5861ae1e2e`  
		Last Modified: Tue, 26 Mar 2019 23:12:26 GMT  
		Size: 95.6 MB (95628722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0` - linux; arm variant v7

```console
$ docker pull julia@sha256:171c6277cbe79e40e053ba6a72ada504debb54b3245122bd24252ab1a8c007ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137517185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc706856c97cbaa7711433af3d4383a9e7d29019fa38c0ac1736e9c96af1f504`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:23 GMT
ADD file:bb82b6b8aa709ab4455c13e7e19562bc1ddbd415015cd576612b0fc51c4e7007 in / 
# Wed, 27 Mar 2019 12:07:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:37:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:37:20 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 27 Mar 2019 12:37:21 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 12:37:21 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 27 Mar 2019 12:37:22 GMT
ENV JULIA_VERSION=1.0.3
# Wed, 27 Mar 2019 12:37:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='362ba867d2df5d4a64f824e103f19cffc3b61cf9d5a9066c657f1c5b73c87117' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='87c489ed92b1a17b231988ce59d64151b1e68700e6d503ded6085829d5587bc6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='75f43df36d71cb2bf3106b9e16670cc152e2a31f8ea6d761a6fe1d630ead05c3' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='6c8cc02d63a602870f78e66d0fdeb7e26e75b3eba558a133a86420e1273bbdc1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 27 Mar 2019 12:37:50 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:f6e94265067157e7d769560dc94116366784ddea686f6d20c9f3e67ba72940f9`  
		Last Modified: Wed, 27 Mar 2019 12:12:58 GMT  
		Size: 42.1 MB (42075164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef9651d7adbf937b9c024a04c976e9f1fcd77eb075302e07dd7a9ce92e23f4e`  
		Last Modified: Wed, 27 Mar 2019 12:38:02 GMT  
		Size: 8.2 MB (8222229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbbc5c36fc6e4a64669d6c8d6bf216ad66c6fa1923b3545915c9d069072b4196`  
		Last Modified: Wed, 27 Mar 2019 12:38:31 GMT  
		Size: 87.2 MB (87219792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:04412310d06fa6d7f32120a1e613415107d09b7c8c281bec8da8eb2fc7013bcd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131435029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43cf3df4b712a583de714e49cbecf3bc9d4fad56bab6298a7aa3c3af4d17f45e`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:57:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 11:57:03 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 27 Mar 2019 11:57:03 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 11:57:04 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 27 Mar 2019 11:57:04 GMT
ENV JULIA_VERSION=1.0.3
# Wed, 27 Mar 2019 11:57:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='362ba867d2df5d4a64f824e103f19cffc3b61cf9d5a9066c657f1c5b73c87117' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='87c489ed92b1a17b231988ce59d64151b1e68700e6d503ded6085829d5587bc6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='75f43df36d71cb2bf3106b9e16670cc152e2a31f8ea6d761a6fe1d630ead05c3' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='6c8cc02d63a602870f78e66d0fdeb7e26e75b3eba558a133a86420e1273bbdc1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 27 Mar 2019 11:57:51 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da75ce6cb36622bff0191de4b315692ad485bbb8cd2bd422eace1ea52b205e17`  
		Last Modified: Wed, 27 Mar 2019 11:58:19 GMT  
		Size: 8.5 MB (8464503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46280e74c5815151f7f369e1e4588a2e86edb5206bb3d2a6970ebddaa0ca28f`  
		Last Modified: Wed, 27 Mar 2019 11:58:48 GMT  
		Size: 79.8 MB (79838526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0` - linux; 386

```console
$ docker pull julia@sha256:d5bda72c57d1e1c600b5988b0866b65a089ce4a83d5aa4d6fe06726b64538f74
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.0 MB (148017237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b246f5ba6e3411a0e611abbe500e6c91bc1b36effb6e7795b31306a873bbe1b`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:21 GMT
ADD file:8ba178590335bfae47e507ed2dac195379232d7a419502dbb643ed765eeda051 in / 
# Tue, 05 Mar 2019 11:45:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 15:51:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 05 Mar 2019 15:51:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 15:51:07 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 05 Mar 2019 15:51:30 GMT
ENV JULIA_VERSION=1.0.3
# Tue, 05 Mar 2019 15:51:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='362ba867d2df5d4a64f824e103f19cffc3b61cf9d5a9066c657f1c5b73c87117' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='87c489ed92b1a17b231988ce59d64151b1e68700e6d503ded6085829d5587bc6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='75f43df36d71cb2bf3106b9e16670cc152e2a31f8ea6d761a6fe1d630ead05c3' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='6c8cc02d63a602870f78e66d0fdeb7e26e75b3eba558a133a86420e1273bbdc1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 05 Mar 2019 15:51:48 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:8672e33776e7a43de892193a6f53164416d0b0a3dcbb0f96c502e1d15a4dcbff`  
		Last Modified: Tue, 05 Mar 2019 11:54:52 GMT  
		Size: 46.1 MB (46064419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48dd83446219733487b292f9bde94db76324fe6d0f1bff25dc0b89369de9ae3`  
		Last Modified: Tue, 05 Mar 2019 15:51:59 GMT  
		Size: 9.5 MB (9502105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94165a14a9a509274f738db03e24d0cd19cc6b7aef93d80fbd3eea59d68607bf`  
		Last Modified: Tue, 05 Mar 2019 15:52:45 GMT  
		Size: 92.5 MB (92450713 bytes)  
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
$ docker pull julia@sha256:48874b468ca658797f0e6aac49f2c14d03d394bc46efbb13a330ff27e3e323d3
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
$ docker pull julia@sha256:46952df975f14b7e5f03e27985965cdc4005839387953cf98e8c24251bfa46b9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.5 MB (150466831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c38408b7265c51de94b74de7a120c6624a0c702661400d9bb10f82532f04fb5`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:10:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:10:54 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 26 Mar 2019 23:10:54 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Mar 2019 23:10:54 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 26 Mar 2019 23:11:15 GMT
ENV JULIA_VERSION=1.0.3
# Tue, 26 Mar 2019 23:11:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='362ba867d2df5d4a64f824e103f19cffc3b61cf9d5a9066c657f1c5b73c87117' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='87c489ed92b1a17b231988ce59d64151b1e68700e6d503ded6085829d5587bc6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='75f43df36d71cb2bf3106b9e16670cc152e2a31f8ea6d761a6fe1d630ead05c3' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='6c8cc02d63a602870f78e66d0fdeb7e26e75b3eba558a133a86420e1273bbdc1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 26 Mar 2019 23:11:31 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bd9a2e11e5d8053571bdfd57da96e0718093bf3e42cf3b9dbf136162a39f76`  
		Last Modified: Tue, 26 Mar 2019 23:11:43 GMT  
		Size: 9.5 MB (9495510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c055f50213d20f97b7c79054300cd21bc540714319a18c8393c9fb5861ae1e2e`  
		Last Modified: Tue, 26 Mar 2019 23:12:26 GMT  
		Size: 95.6 MB (95628722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0.3` - linux; arm variant v7

```console
$ docker pull julia@sha256:171c6277cbe79e40e053ba6a72ada504debb54b3245122bd24252ab1a8c007ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137517185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc706856c97cbaa7711433af3d4383a9e7d29019fa38c0ac1736e9c96af1f504`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:23 GMT
ADD file:bb82b6b8aa709ab4455c13e7e19562bc1ddbd415015cd576612b0fc51c4e7007 in / 
# Wed, 27 Mar 2019 12:07:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:37:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:37:20 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 27 Mar 2019 12:37:21 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 12:37:21 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 27 Mar 2019 12:37:22 GMT
ENV JULIA_VERSION=1.0.3
# Wed, 27 Mar 2019 12:37:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='362ba867d2df5d4a64f824e103f19cffc3b61cf9d5a9066c657f1c5b73c87117' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='87c489ed92b1a17b231988ce59d64151b1e68700e6d503ded6085829d5587bc6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='75f43df36d71cb2bf3106b9e16670cc152e2a31f8ea6d761a6fe1d630ead05c3' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='6c8cc02d63a602870f78e66d0fdeb7e26e75b3eba558a133a86420e1273bbdc1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 27 Mar 2019 12:37:50 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:f6e94265067157e7d769560dc94116366784ddea686f6d20c9f3e67ba72940f9`  
		Last Modified: Wed, 27 Mar 2019 12:12:58 GMT  
		Size: 42.1 MB (42075164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef9651d7adbf937b9c024a04c976e9f1fcd77eb075302e07dd7a9ce92e23f4e`  
		Last Modified: Wed, 27 Mar 2019 12:38:02 GMT  
		Size: 8.2 MB (8222229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbbc5c36fc6e4a64669d6c8d6bf216ad66c6fa1923b3545915c9d069072b4196`  
		Last Modified: Wed, 27 Mar 2019 12:38:31 GMT  
		Size: 87.2 MB (87219792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0.3` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:04412310d06fa6d7f32120a1e613415107d09b7c8c281bec8da8eb2fc7013bcd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131435029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43cf3df4b712a583de714e49cbecf3bc9d4fad56bab6298a7aa3c3af4d17f45e`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:57:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 11:57:03 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 27 Mar 2019 11:57:03 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 11:57:04 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 27 Mar 2019 11:57:04 GMT
ENV JULIA_VERSION=1.0.3
# Wed, 27 Mar 2019 11:57:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='362ba867d2df5d4a64f824e103f19cffc3b61cf9d5a9066c657f1c5b73c87117' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='87c489ed92b1a17b231988ce59d64151b1e68700e6d503ded6085829d5587bc6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='75f43df36d71cb2bf3106b9e16670cc152e2a31f8ea6d761a6fe1d630ead05c3' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='6c8cc02d63a602870f78e66d0fdeb7e26e75b3eba558a133a86420e1273bbdc1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 27 Mar 2019 11:57:51 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da75ce6cb36622bff0191de4b315692ad485bbb8cd2bd422eace1ea52b205e17`  
		Last Modified: Wed, 27 Mar 2019 11:58:19 GMT  
		Size: 8.5 MB (8464503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46280e74c5815151f7f369e1e4588a2e86edb5206bb3d2a6970ebddaa0ca28f`  
		Last Modified: Wed, 27 Mar 2019 11:58:48 GMT  
		Size: 79.8 MB (79838526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0.3` - linux; 386

```console
$ docker pull julia@sha256:d5bda72c57d1e1c600b5988b0866b65a089ce4a83d5aa4d6fe06726b64538f74
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.0 MB (148017237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b246f5ba6e3411a0e611abbe500e6c91bc1b36effb6e7795b31306a873bbe1b`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:21 GMT
ADD file:8ba178590335bfae47e507ed2dac195379232d7a419502dbb643ed765eeda051 in / 
# Tue, 05 Mar 2019 11:45:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 15:51:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 05 Mar 2019 15:51:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 15:51:07 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 05 Mar 2019 15:51:30 GMT
ENV JULIA_VERSION=1.0.3
# Tue, 05 Mar 2019 15:51:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='362ba867d2df5d4a64f824e103f19cffc3b61cf9d5a9066c657f1c5b73c87117' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='87c489ed92b1a17b231988ce59d64151b1e68700e6d503ded6085829d5587bc6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='75f43df36d71cb2bf3106b9e16670cc152e2a31f8ea6d761a6fe1d630ead05c3' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='6c8cc02d63a602870f78e66d0fdeb7e26e75b3eba558a133a86420e1273bbdc1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 05 Mar 2019 15:51:48 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:8672e33776e7a43de892193a6f53164416d0b0a3dcbb0f96c502e1d15a4dcbff`  
		Last Modified: Tue, 05 Mar 2019 11:54:52 GMT  
		Size: 46.1 MB (46064419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48dd83446219733487b292f9bde94db76324fe6d0f1bff25dc0b89369de9ae3`  
		Last Modified: Tue, 05 Mar 2019 15:51:59 GMT  
		Size: 9.5 MB (9502105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94165a14a9a509274f738db03e24d0cd19cc6b7aef93d80fbd3eea59d68607bf`  
		Last Modified: Tue, 05 Mar 2019 15:52:45 GMT  
		Size: 92.5 MB (92450713 bytes)  
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
$ docker pull julia@sha256:6b2f127e057d8d281acfbd8c960f0c8ad9f5689ba638b1a65403c36a7b9d94ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `julia:1.0.3-stretch` - linux; amd64

```console
$ docker pull julia@sha256:46952df975f14b7e5f03e27985965cdc4005839387953cf98e8c24251bfa46b9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.5 MB (150466831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c38408b7265c51de94b74de7a120c6624a0c702661400d9bb10f82532f04fb5`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:10:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:10:54 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 26 Mar 2019 23:10:54 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Mar 2019 23:10:54 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 26 Mar 2019 23:11:15 GMT
ENV JULIA_VERSION=1.0.3
# Tue, 26 Mar 2019 23:11:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='362ba867d2df5d4a64f824e103f19cffc3b61cf9d5a9066c657f1c5b73c87117' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='87c489ed92b1a17b231988ce59d64151b1e68700e6d503ded6085829d5587bc6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='75f43df36d71cb2bf3106b9e16670cc152e2a31f8ea6d761a6fe1d630ead05c3' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='6c8cc02d63a602870f78e66d0fdeb7e26e75b3eba558a133a86420e1273bbdc1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 26 Mar 2019 23:11:31 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bd9a2e11e5d8053571bdfd57da96e0718093bf3e42cf3b9dbf136162a39f76`  
		Last Modified: Tue, 26 Mar 2019 23:11:43 GMT  
		Size: 9.5 MB (9495510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c055f50213d20f97b7c79054300cd21bc540714319a18c8393c9fb5861ae1e2e`  
		Last Modified: Tue, 26 Mar 2019 23:12:26 GMT  
		Size: 95.6 MB (95628722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0.3-stretch` - linux; arm variant v7

```console
$ docker pull julia@sha256:171c6277cbe79e40e053ba6a72ada504debb54b3245122bd24252ab1a8c007ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137517185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc706856c97cbaa7711433af3d4383a9e7d29019fa38c0ac1736e9c96af1f504`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:23 GMT
ADD file:bb82b6b8aa709ab4455c13e7e19562bc1ddbd415015cd576612b0fc51c4e7007 in / 
# Wed, 27 Mar 2019 12:07:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:37:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:37:20 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 27 Mar 2019 12:37:21 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 12:37:21 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 27 Mar 2019 12:37:22 GMT
ENV JULIA_VERSION=1.0.3
# Wed, 27 Mar 2019 12:37:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='362ba867d2df5d4a64f824e103f19cffc3b61cf9d5a9066c657f1c5b73c87117' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='87c489ed92b1a17b231988ce59d64151b1e68700e6d503ded6085829d5587bc6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='75f43df36d71cb2bf3106b9e16670cc152e2a31f8ea6d761a6fe1d630ead05c3' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='6c8cc02d63a602870f78e66d0fdeb7e26e75b3eba558a133a86420e1273bbdc1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 27 Mar 2019 12:37:50 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:f6e94265067157e7d769560dc94116366784ddea686f6d20c9f3e67ba72940f9`  
		Last Modified: Wed, 27 Mar 2019 12:12:58 GMT  
		Size: 42.1 MB (42075164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef9651d7adbf937b9c024a04c976e9f1fcd77eb075302e07dd7a9ce92e23f4e`  
		Last Modified: Wed, 27 Mar 2019 12:38:02 GMT  
		Size: 8.2 MB (8222229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbbc5c36fc6e4a64669d6c8d6bf216ad66c6fa1923b3545915c9d069072b4196`  
		Last Modified: Wed, 27 Mar 2019 12:38:31 GMT  
		Size: 87.2 MB (87219792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0.3-stretch` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:04412310d06fa6d7f32120a1e613415107d09b7c8c281bec8da8eb2fc7013bcd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131435029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43cf3df4b712a583de714e49cbecf3bc9d4fad56bab6298a7aa3c3af4d17f45e`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:57:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 11:57:03 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 27 Mar 2019 11:57:03 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 11:57:04 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 27 Mar 2019 11:57:04 GMT
ENV JULIA_VERSION=1.0.3
# Wed, 27 Mar 2019 11:57:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='362ba867d2df5d4a64f824e103f19cffc3b61cf9d5a9066c657f1c5b73c87117' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='87c489ed92b1a17b231988ce59d64151b1e68700e6d503ded6085829d5587bc6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='75f43df36d71cb2bf3106b9e16670cc152e2a31f8ea6d761a6fe1d630ead05c3' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='6c8cc02d63a602870f78e66d0fdeb7e26e75b3eba558a133a86420e1273bbdc1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 27 Mar 2019 11:57:51 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da75ce6cb36622bff0191de4b315692ad485bbb8cd2bd422eace1ea52b205e17`  
		Last Modified: Wed, 27 Mar 2019 11:58:19 GMT  
		Size: 8.5 MB (8464503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46280e74c5815151f7f369e1e4588a2e86edb5206bb3d2a6970ebddaa0ca28f`  
		Last Modified: Wed, 27 Mar 2019 11:58:48 GMT  
		Size: 79.8 MB (79838526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0.3-stretch` - linux; 386

```console
$ docker pull julia@sha256:d5bda72c57d1e1c600b5988b0866b65a089ce4a83d5aa4d6fe06726b64538f74
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.0 MB (148017237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b246f5ba6e3411a0e611abbe500e6c91bc1b36effb6e7795b31306a873bbe1b`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:21 GMT
ADD file:8ba178590335bfae47e507ed2dac195379232d7a419502dbb643ed765eeda051 in / 
# Tue, 05 Mar 2019 11:45:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 15:51:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 05 Mar 2019 15:51:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 15:51:07 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 05 Mar 2019 15:51:30 GMT
ENV JULIA_VERSION=1.0.3
# Tue, 05 Mar 2019 15:51:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='362ba867d2df5d4a64f824e103f19cffc3b61cf9d5a9066c657f1c5b73c87117' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='87c489ed92b1a17b231988ce59d64151b1e68700e6d503ded6085829d5587bc6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='75f43df36d71cb2bf3106b9e16670cc152e2a31f8ea6d761a6fe1d630ead05c3' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='6c8cc02d63a602870f78e66d0fdeb7e26e75b3eba558a133a86420e1273bbdc1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 05 Mar 2019 15:51:48 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:8672e33776e7a43de892193a6f53164416d0b0a3dcbb0f96c502e1d15a4dcbff`  
		Last Modified: Tue, 05 Mar 2019 11:54:52 GMT  
		Size: 46.1 MB (46064419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48dd83446219733487b292f9bde94db76324fe6d0f1bff25dc0b89369de9ae3`  
		Last Modified: Tue, 05 Mar 2019 15:51:59 GMT  
		Size: 9.5 MB (9502105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94165a14a9a509274f738db03e24d0cd19cc6b7aef93d80fbd3eea59d68607bf`  
		Last Modified: Tue, 05 Mar 2019 15:52:45 GMT  
		Size: 92.5 MB (92450713 bytes)  
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
$ docker pull julia@sha256:6b2f127e057d8d281acfbd8c960f0c8ad9f5689ba638b1a65403c36a7b9d94ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `julia:1.0-stretch` - linux; amd64

```console
$ docker pull julia@sha256:46952df975f14b7e5f03e27985965cdc4005839387953cf98e8c24251bfa46b9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.5 MB (150466831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c38408b7265c51de94b74de7a120c6624a0c702661400d9bb10f82532f04fb5`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:10:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:10:54 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 26 Mar 2019 23:10:54 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Mar 2019 23:10:54 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 26 Mar 2019 23:11:15 GMT
ENV JULIA_VERSION=1.0.3
# Tue, 26 Mar 2019 23:11:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='362ba867d2df5d4a64f824e103f19cffc3b61cf9d5a9066c657f1c5b73c87117' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='87c489ed92b1a17b231988ce59d64151b1e68700e6d503ded6085829d5587bc6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='75f43df36d71cb2bf3106b9e16670cc152e2a31f8ea6d761a6fe1d630ead05c3' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='6c8cc02d63a602870f78e66d0fdeb7e26e75b3eba558a133a86420e1273bbdc1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 26 Mar 2019 23:11:31 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bd9a2e11e5d8053571bdfd57da96e0718093bf3e42cf3b9dbf136162a39f76`  
		Last Modified: Tue, 26 Mar 2019 23:11:43 GMT  
		Size: 9.5 MB (9495510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c055f50213d20f97b7c79054300cd21bc540714319a18c8393c9fb5861ae1e2e`  
		Last Modified: Tue, 26 Mar 2019 23:12:26 GMT  
		Size: 95.6 MB (95628722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0-stretch` - linux; arm variant v7

```console
$ docker pull julia@sha256:171c6277cbe79e40e053ba6a72ada504debb54b3245122bd24252ab1a8c007ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137517185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc706856c97cbaa7711433af3d4383a9e7d29019fa38c0ac1736e9c96af1f504`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:23 GMT
ADD file:bb82b6b8aa709ab4455c13e7e19562bc1ddbd415015cd576612b0fc51c4e7007 in / 
# Wed, 27 Mar 2019 12:07:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:37:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:37:20 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 27 Mar 2019 12:37:21 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 12:37:21 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 27 Mar 2019 12:37:22 GMT
ENV JULIA_VERSION=1.0.3
# Wed, 27 Mar 2019 12:37:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='362ba867d2df5d4a64f824e103f19cffc3b61cf9d5a9066c657f1c5b73c87117' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='87c489ed92b1a17b231988ce59d64151b1e68700e6d503ded6085829d5587bc6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='75f43df36d71cb2bf3106b9e16670cc152e2a31f8ea6d761a6fe1d630ead05c3' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='6c8cc02d63a602870f78e66d0fdeb7e26e75b3eba558a133a86420e1273bbdc1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 27 Mar 2019 12:37:50 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:f6e94265067157e7d769560dc94116366784ddea686f6d20c9f3e67ba72940f9`  
		Last Modified: Wed, 27 Mar 2019 12:12:58 GMT  
		Size: 42.1 MB (42075164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef9651d7adbf937b9c024a04c976e9f1fcd77eb075302e07dd7a9ce92e23f4e`  
		Last Modified: Wed, 27 Mar 2019 12:38:02 GMT  
		Size: 8.2 MB (8222229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbbc5c36fc6e4a64669d6c8d6bf216ad66c6fa1923b3545915c9d069072b4196`  
		Last Modified: Wed, 27 Mar 2019 12:38:31 GMT  
		Size: 87.2 MB (87219792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0-stretch` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:04412310d06fa6d7f32120a1e613415107d09b7c8c281bec8da8eb2fc7013bcd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131435029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43cf3df4b712a583de714e49cbecf3bc9d4fad56bab6298a7aa3c3af4d17f45e`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:57:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 11:57:03 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 27 Mar 2019 11:57:03 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 11:57:04 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 27 Mar 2019 11:57:04 GMT
ENV JULIA_VERSION=1.0.3
# Wed, 27 Mar 2019 11:57:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='362ba867d2df5d4a64f824e103f19cffc3b61cf9d5a9066c657f1c5b73c87117' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='87c489ed92b1a17b231988ce59d64151b1e68700e6d503ded6085829d5587bc6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='75f43df36d71cb2bf3106b9e16670cc152e2a31f8ea6d761a6fe1d630ead05c3' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='6c8cc02d63a602870f78e66d0fdeb7e26e75b3eba558a133a86420e1273bbdc1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 27 Mar 2019 11:57:51 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da75ce6cb36622bff0191de4b315692ad485bbb8cd2bd422eace1ea52b205e17`  
		Last Modified: Wed, 27 Mar 2019 11:58:19 GMT  
		Size: 8.5 MB (8464503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46280e74c5815151f7f369e1e4588a2e86edb5206bb3d2a6970ebddaa0ca28f`  
		Last Modified: Wed, 27 Mar 2019 11:58:48 GMT  
		Size: 79.8 MB (79838526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0-stretch` - linux; 386

```console
$ docker pull julia@sha256:d5bda72c57d1e1c600b5988b0866b65a089ce4a83d5aa4d6fe06726b64538f74
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.0 MB (148017237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b246f5ba6e3411a0e611abbe500e6c91bc1b36effb6e7795b31306a873bbe1b`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:21 GMT
ADD file:8ba178590335bfae47e507ed2dac195379232d7a419502dbb643ed765eeda051 in / 
# Tue, 05 Mar 2019 11:45:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 15:51:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 05 Mar 2019 15:51:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 15:51:07 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 05 Mar 2019 15:51:30 GMT
ENV JULIA_VERSION=1.0.3
# Tue, 05 Mar 2019 15:51:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='362ba867d2df5d4a64f824e103f19cffc3b61cf9d5a9066c657f1c5b73c87117' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='87c489ed92b1a17b231988ce59d64151b1e68700e6d503ded6085829d5587bc6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='75f43df36d71cb2bf3106b9e16670cc152e2a31f8ea6d761a6fe1d630ead05c3' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='6c8cc02d63a602870f78e66d0fdeb7e26e75b3eba558a133a86420e1273bbdc1' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 05 Mar 2019 15:51:48 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:8672e33776e7a43de892193a6f53164416d0b0a3dcbb0f96c502e1d15a4dcbff`  
		Last Modified: Tue, 05 Mar 2019 11:54:52 GMT  
		Size: 46.1 MB (46064419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48dd83446219733487b292f9bde94db76324fe6d0f1bff25dc0b89369de9ae3`  
		Last Modified: Tue, 05 Mar 2019 15:51:59 GMT  
		Size: 9.5 MB (9502105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94165a14a9a509274f738db03e24d0cd19cc6b7aef93d80fbd3eea59d68607bf`  
		Last Modified: Tue, 05 Mar 2019 15:52:45 GMT  
		Size: 92.5 MB (92450713 bytes)  
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
$ docker pull julia@sha256:e9740b9aa47db0cc1e3e5a8182752369c6b3391964aab7b1165abcaf54898565
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
$ docker pull julia@sha256:3f5ee7a18d386bcb3ce1da478ff5c31458a86be6df86a6df66333fcc21343126
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.4 MB (151437404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4c9686d85da26cf36b0fb7b946eb96f2ce4f7854e9a0e2f4604c2b5d0c62454`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:10:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:10:54 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 26 Mar 2019 23:10:54 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Mar 2019 23:10:54 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 26 Mar 2019 23:10:54 GMT
ENV JULIA_VERSION=1.1.0
# Tue, 26 Mar 2019 23:11:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='80cfd013e526b5145ec3254920afd89bb459f1db7a2a3f21849125af20c05471' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='9efd7ffd4a246311f544cf0031682f4dcf946b2377abaa285684526071272fe5' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 26 Mar 2019 23:11:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bd9a2e11e5d8053571bdfd57da96e0718093bf3e42cf3b9dbf136162a39f76`  
		Last Modified: Tue, 26 Mar 2019 23:11:43 GMT  
		Size: 9.5 MB (9495510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f2a717f9ed41d8dff2023939855a84e431fc4ee5e9455c972a6bfa6a95faff5`  
		Last Modified: Tue, 26 Mar 2019 23:12:01 GMT  
		Size: 96.6 MB (96599295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.1` - linux; 386

```console
$ docker pull julia@sha256:0a0a02d7d30b3f5ea494818b06f2a1c08ef61e9a2ea7607bf50c26351d40af53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.3 MB (149273070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32e5f3ac9f43ab8bfe538f1dd5cc8b812041a06a6d2009f8ae5e26e1e654c839`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:21 GMT
ADD file:8ba178590335bfae47e507ed2dac195379232d7a419502dbb643ed765eeda051 in / 
# Tue, 05 Mar 2019 11:45:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 15:51:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 05 Mar 2019 15:51:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 15:51:07 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 05 Mar 2019 15:51:07 GMT
ENV JULIA_VERSION=1.1.0
# Tue, 05 Mar 2019 15:51:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='80cfd013e526b5145ec3254920afd89bb459f1db7a2a3f21849125af20c05471' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='9efd7ffd4a246311f544cf0031682f4dcf946b2377abaa285684526071272fe5' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 05 Mar 2019 15:51:26 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:8672e33776e7a43de892193a6f53164416d0b0a3dcbb0f96c502e1d15a4dcbff`  
		Last Modified: Tue, 05 Mar 2019 11:54:52 GMT  
		Size: 46.1 MB (46064419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48dd83446219733487b292f9bde94db76324fe6d0f1bff25dc0b89369de9ae3`  
		Last Modified: Tue, 05 Mar 2019 15:51:59 GMT  
		Size: 9.5 MB (9502105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c8feb7118b6130cb17b1282b994624932be678da4482d36899aafcdbb593fc`  
		Last Modified: Tue, 05 Mar 2019 15:52:18 GMT  
		Size: 93.7 MB (93706546 bytes)  
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
$ docker pull julia@sha256:e9740b9aa47db0cc1e3e5a8182752369c6b3391964aab7b1165abcaf54898565
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
$ docker pull julia@sha256:3f5ee7a18d386bcb3ce1da478ff5c31458a86be6df86a6df66333fcc21343126
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.4 MB (151437404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4c9686d85da26cf36b0fb7b946eb96f2ce4f7854e9a0e2f4604c2b5d0c62454`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:10:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:10:54 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 26 Mar 2019 23:10:54 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Mar 2019 23:10:54 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 26 Mar 2019 23:10:54 GMT
ENV JULIA_VERSION=1.1.0
# Tue, 26 Mar 2019 23:11:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='80cfd013e526b5145ec3254920afd89bb459f1db7a2a3f21849125af20c05471' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='9efd7ffd4a246311f544cf0031682f4dcf946b2377abaa285684526071272fe5' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 26 Mar 2019 23:11:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bd9a2e11e5d8053571bdfd57da96e0718093bf3e42cf3b9dbf136162a39f76`  
		Last Modified: Tue, 26 Mar 2019 23:11:43 GMT  
		Size: 9.5 MB (9495510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f2a717f9ed41d8dff2023939855a84e431fc4ee5e9455c972a6bfa6a95faff5`  
		Last Modified: Tue, 26 Mar 2019 23:12:01 GMT  
		Size: 96.6 MB (96599295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.1.0` - linux; 386

```console
$ docker pull julia@sha256:0a0a02d7d30b3f5ea494818b06f2a1c08ef61e9a2ea7607bf50c26351d40af53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.3 MB (149273070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32e5f3ac9f43ab8bfe538f1dd5cc8b812041a06a6d2009f8ae5e26e1e654c839`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:21 GMT
ADD file:8ba178590335bfae47e507ed2dac195379232d7a419502dbb643ed765eeda051 in / 
# Tue, 05 Mar 2019 11:45:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 15:51:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 05 Mar 2019 15:51:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 15:51:07 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 05 Mar 2019 15:51:07 GMT
ENV JULIA_VERSION=1.1.0
# Tue, 05 Mar 2019 15:51:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='80cfd013e526b5145ec3254920afd89bb459f1db7a2a3f21849125af20c05471' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='9efd7ffd4a246311f544cf0031682f4dcf946b2377abaa285684526071272fe5' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 05 Mar 2019 15:51:26 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:8672e33776e7a43de892193a6f53164416d0b0a3dcbb0f96c502e1d15a4dcbff`  
		Last Modified: Tue, 05 Mar 2019 11:54:52 GMT  
		Size: 46.1 MB (46064419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48dd83446219733487b292f9bde94db76324fe6d0f1bff25dc0b89369de9ae3`  
		Last Modified: Tue, 05 Mar 2019 15:51:59 GMT  
		Size: 9.5 MB (9502105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c8feb7118b6130cb17b1282b994624932be678da4482d36899aafcdbb593fc`  
		Last Modified: Tue, 05 Mar 2019 15:52:18 GMT  
		Size: 93.7 MB (93706546 bytes)  
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
$ docker pull julia@sha256:4a28a20ea222a26d1b7f062b9ba424f57482895facf3dab93cb4edd996d9fa77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `julia:1.1.0-stretch` - linux; amd64

```console
$ docker pull julia@sha256:3f5ee7a18d386bcb3ce1da478ff5c31458a86be6df86a6df66333fcc21343126
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.4 MB (151437404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4c9686d85da26cf36b0fb7b946eb96f2ce4f7854e9a0e2f4604c2b5d0c62454`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:10:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:10:54 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 26 Mar 2019 23:10:54 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Mar 2019 23:10:54 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 26 Mar 2019 23:10:54 GMT
ENV JULIA_VERSION=1.1.0
# Tue, 26 Mar 2019 23:11:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='80cfd013e526b5145ec3254920afd89bb459f1db7a2a3f21849125af20c05471' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='9efd7ffd4a246311f544cf0031682f4dcf946b2377abaa285684526071272fe5' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 26 Mar 2019 23:11:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bd9a2e11e5d8053571bdfd57da96e0718093bf3e42cf3b9dbf136162a39f76`  
		Last Modified: Tue, 26 Mar 2019 23:11:43 GMT  
		Size: 9.5 MB (9495510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f2a717f9ed41d8dff2023939855a84e431fc4ee5e9455c972a6bfa6a95faff5`  
		Last Modified: Tue, 26 Mar 2019 23:12:01 GMT  
		Size: 96.6 MB (96599295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.1.0-stretch` - linux; 386

```console
$ docker pull julia@sha256:0a0a02d7d30b3f5ea494818b06f2a1c08ef61e9a2ea7607bf50c26351d40af53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.3 MB (149273070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32e5f3ac9f43ab8bfe538f1dd5cc8b812041a06a6d2009f8ae5e26e1e654c839`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:21 GMT
ADD file:8ba178590335bfae47e507ed2dac195379232d7a419502dbb643ed765eeda051 in / 
# Tue, 05 Mar 2019 11:45:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 15:51:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 05 Mar 2019 15:51:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 15:51:07 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 05 Mar 2019 15:51:07 GMT
ENV JULIA_VERSION=1.1.0
# Tue, 05 Mar 2019 15:51:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='80cfd013e526b5145ec3254920afd89bb459f1db7a2a3f21849125af20c05471' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='9efd7ffd4a246311f544cf0031682f4dcf946b2377abaa285684526071272fe5' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 05 Mar 2019 15:51:26 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:8672e33776e7a43de892193a6f53164416d0b0a3dcbb0f96c502e1d15a4dcbff`  
		Last Modified: Tue, 05 Mar 2019 11:54:52 GMT  
		Size: 46.1 MB (46064419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48dd83446219733487b292f9bde94db76324fe6d0f1bff25dc0b89369de9ae3`  
		Last Modified: Tue, 05 Mar 2019 15:51:59 GMT  
		Size: 9.5 MB (9502105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c8feb7118b6130cb17b1282b994624932be678da4482d36899aafcdbb593fc`  
		Last Modified: Tue, 05 Mar 2019 15:52:18 GMT  
		Size: 93.7 MB (93706546 bytes)  
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
$ docker pull julia@sha256:4a28a20ea222a26d1b7f062b9ba424f57482895facf3dab93cb4edd996d9fa77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `julia:1.1-stretch` - linux; amd64

```console
$ docker pull julia@sha256:3f5ee7a18d386bcb3ce1da478ff5c31458a86be6df86a6df66333fcc21343126
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.4 MB (151437404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4c9686d85da26cf36b0fb7b946eb96f2ce4f7854e9a0e2f4604c2b5d0c62454`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:10:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:10:54 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 26 Mar 2019 23:10:54 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Mar 2019 23:10:54 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 26 Mar 2019 23:10:54 GMT
ENV JULIA_VERSION=1.1.0
# Tue, 26 Mar 2019 23:11:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='80cfd013e526b5145ec3254920afd89bb459f1db7a2a3f21849125af20c05471' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='9efd7ffd4a246311f544cf0031682f4dcf946b2377abaa285684526071272fe5' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 26 Mar 2019 23:11:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bd9a2e11e5d8053571bdfd57da96e0718093bf3e42cf3b9dbf136162a39f76`  
		Last Modified: Tue, 26 Mar 2019 23:11:43 GMT  
		Size: 9.5 MB (9495510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f2a717f9ed41d8dff2023939855a84e431fc4ee5e9455c972a6bfa6a95faff5`  
		Last Modified: Tue, 26 Mar 2019 23:12:01 GMT  
		Size: 96.6 MB (96599295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.1-stretch` - linux; 386

```console
$ docker pull julia@sha256:0a0a02d7d30b3f5ea494818b06f2a1c08ef61e9a2ea7607bf50c26351d40af53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.3 MB (149273070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32e5f3ac9f43ab8bfe538f1dd5cc8b812041a06a6d2009f8ae5e26e1e654c839`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:21 GMT
ADD file:8ba178590335bfae47e507ed2dac195379232d7a419502dbb643ed765eeda051 in / 
# Tue, 05 Mar 2019 11:45:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 15:51:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 05 Mar 2019 15:51:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 15:51:07 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 05 Mar 2019 15:51:07 GMT
ENV JULIA_VERSION=1.1.0
# Tue, 05 Mar 2019 15:51:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='80cfd013e526b5145ec3254920afd89bb459f1db7a2a3f21849125af20c05471' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='9efd7ffd4a246311f544cf0031682f4dcf946b2377abaa285684526071272fe5' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 05 Mar 2019 15:51:26 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:8672e33776e7a43de892193a6f53164416d0b0a3dcbb0f96c502e1d15a4dcbff`  
		Last Modified: Tue, 05 Mar 2019 11:54:52 GMT  
		Size: 46.1 MB (46064419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48dd83446219733487b292f9bde94db76324fe6d0f1bff25dc0b89369de9ae3`  
		Last Modified: Tue, 05 Mar 2019 15:51:59 GMT  
		Size: 9.5 MB (9502105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c8feb7118b6130cb17b1282b994624932be678da4482d36899aafcdbb593fc`  
		Last Modified: Tue, 05 Mar 2019 15:52:18 GMT  
		Size: 93.7 MB (93706546 bytes)  
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
$ docker pull julia@sha256:4a28a20ea222a26d1b7f062b9ba424f57482895facf3dab93cb4edd996d9fa77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `julia:1-stretch` - linux; amd64

```console
$ docker pull julia@sha256:3f5ee7a18d386bcb3ce1da478ff5c31458a86be6df86a6df66333fcc21343126
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.4 MB (151437404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4c9686d85da26cf36b0fb7b946eb96f2ce4f7854e9a0e2f4604c2b5d0c62454`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:10:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:10:54 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 26 Mar 2019 23:10:54 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Mar 2019 23:10:54 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 26 Mar 2019 23:10:54 GMT
ENV JULIA_VERSION=1.1.0
# Tue, 26 Mar 2019 23:11:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='80cfd013e526b5145ec3254920afd89bb459f1db7a2a3f21849125af20c05471' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='9efd7ffd4a246311f544cf0031682f4dcf946b2377abaa285684526071272fe5' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 26 Mar 2019 23:11:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bd9a2e11e5d8053571bdfd57da96e0718093bf3e42cf3b9dbf136162a39f76`  
		Last Modified: Tue, 26 Mar 2019 23:11:43 GMT  
		Size: 9.5 MB (9495510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f2a717f9ed41d8dff2023939855a84e431fc4ee5e9455c972a6bfa6a95faff5`  
		Last Modified: Tue, 26 Mar 2019 23:12:01 GMT  
		Size: 96.6 MB (96599295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1-stretch` - linux; 386

```console
$ docker pull julia@sha256:0a0a02d7d30b3f5ea494818b06f2a1c08ef61e9a2ea7607bf50c26351d40af53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.3 MB (149273070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32e5f3ac9f43ab8bfe538f1dd5cc8b812041a06a6d2009f8ae5e26e1e654c839`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:21 GMT
ADD file:8ba178590335bfae47e507ed2dac195379232d7a419502dbb643ed765eeda051 in / 
# Tue, 05 Mar 2019 11:45:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 15:51:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 05 Mar 2019 15:51:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 15:51:07 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 05 Mar 2019 15:51:07 GMT
ENV JULIA_VERSION=1.1.0
# Tue, 05 Mar 2019 15:51:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='80cfd013e526b5145ec3254920afd89bb459f1db7a2a3f21849125af20c05471' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='9efd7ffd4a246311f544cf0031682f4dcf946b2377abaa285684526071272fe5' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 05 Mar 2019 15:51:26 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:8672e33776e7a43de892193a6f53164416d0b0a3dcbb0f96c502e1d15a4dcbff`  
		Last Modified: Tue, 05 Mar 2019 11:54:52 GMT  
		Size: 46.1 MB (46064419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48dd83446219733487b292f9bde94db76324fe6d0f1bff25dc0b89369de9ae3`  
		Last Modified: Tue, 05 Mar 2019 15:51:59 GMT  
		Size: 9.5 MB (9502105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c8feb7118b6130cb17b1282b994624932be678da4482d36899aafcdbb593fc`  
		Last Modified: Tue, 05 Mar 2019 15:52:18 GMT  
		Size: 93.7 MB (93706546 bytes)  
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
$ docker pull julia@sha256:e9740b9aa47db0cc1e3e5a8182752369c6b3391964aab7b1165abcaf54898565
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
$ docker pull julia@sha256:3f5ee7a18d386bcb3ce1da478ff5c31458a86be6df86a6df66333fcc21343126
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.4 MB (151437404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4c9686d85da26cf36b0fb7b946eb96f2ce4f7854e9a0e2f4604c2b5d0c62454`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:10:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:10:54 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 26 Mar 2019 23:10:54 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Mar 2019 23:10:54 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 26 Mar 2019 23:10:54 GMT
ENV JULIA_VERSION=1.1.0
# Tue, 26 Mar 2019 23:11:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='80cfd013e526b5145ec3254920afd89bb459f1db7a2a3f21849125af20c05471' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='9efd7ffd4a246311f544cf0031682f4dcf946b2377abaa285684526071272fe5' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 26 Mar 2019 23:11:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bd9a2e11e5d8053571bdfd57da96e0718093bf3e42cf3b9dbf136162a39f76`  
		Last Modified: Tue, 26 Mar 2019 23:11:43 GMT  
		Size: 9.5 MB (9495510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f2a717f9ed41d8dff2023939855a84e431fc4ee5e9455c972a6bfa6a95faff5`  
		Last Modified: Tue, 26 Mar 2019 23:12:01 GMT  
		Size: 96.6 MB (96599295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - linux; 386

```console
$ docker pull julia@sha256:0a0a02d7d30b3f5ea494818b06f2a1c08ef61e9a2ea7607bf50c26351d40af53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.3 MB (149273070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32e5f3ac9f43ab8bfe538f1dd5cc8b812041a06a6d2009f8ae5e26e1e654c839`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:21 GMT
ADD file:8ba178590335bfae47e507ed2dac195379232d7a419502dbb643ed765eeda051 in / 
# Tue, 05 Mar 2019 11:45:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 15:51:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 05 Mar 2019 15:51:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 15:51:07 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 05 Mar 2019 15:51:07 GMT
ENV JULIA_VERSION=1.1.0
# Tue, 05 Mar 2019 15:51:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='80cfd013e526b5145ec3254920afd89bb459f1db7a2a3f21849125af20c05471' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='9efd7ffd4a246311f544cf0031682f4dcf946b2377abaa285684526071272fe5' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 05 Mar 2019 15:51:26 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:8672e33776e7a43de892193a6f53164416d0b0a3dcbb0f96c502e1d15a4dcbff`  
		Last Modified: Tue, 05 Mar 2019 11:54:52 GMT  
		Size: 46.1 MB (46064419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48dd83446219733487b292f9bde94db76324fe6d0f1bff25dc0b89369de9ae3`  
		Last Modified: Tue, 05 Mar 2019 15:51:59 GMT  
		Size: 9.5 MB (9502105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c8feb7118b6130cb17b1282b994624932be678da4482d36899aafcdbb593fc`  
		Last Modified: Tue, 05 Mar 2019 15:52:18 GMT  
		Size: 93.7 MB (93706546 bytes)  
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
$ docker pull julia@sha256:4a28a20ea222a26d1b7f062b9ba424f57482895facf3dab93cb4edd996d9fa77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `julia:stretch` - linux; amd64

```console
$ docker pull julia@sha256:3f5ee7a18d386bcb3ce1da478ff5c31458a86be6df86a6df66333fcc21343126
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.4 MB (151437404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4c9686d85da26cf36b0fb7b946eb96f2ce4f7854e9a0e2f4604c2b5d0c62454`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:10:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:10:54 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 26 Mar 2019 23:10:54 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Mar 2019 23:10:54 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 26 Mar 2019 23:10:54 GMT
ENV JULIA_VERSION=1.1.0
# Tue, 26 Mar 2019 23:11:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='80cfd013e526b5145ec3254920afd89bb459f1db7a2a3f21849125af20c05471' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='9efd7ffd4a246311f544cf0031682f4dcf946b2377abaa285684526071272fe5' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 26 Mar 2019 23:11:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bd9a2e11e5d8053571bdfd57da96e0718093bf3e42cf3b9dbf136162a39f76`  
		Last Modified: Tue, 26 Mar 2019 23:11:43 GMT  
		Size: 9.5 MB (9495510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f2a717f9ed41d8dff2023939855a84e431fc4ee5e9455c972a6bfa6a95faff5`  
		Last Modified: Tue, 26 Mar 2019 23:12:01 GMT  
		Size: 96.6 MB (96599295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:stretch` - linux; 386

```console
$ docker pull julia@sha256:0a0a02d7d30b3f5ea494818b06f2a1c08ef61e9a2ea7607bf50c26351d40af53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.3 MB (149273070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32e5f3ac9f43ab8bfe538f1dd5cc8b812041a06a6d2009f8ae5e26e1e654c839`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:21 GMT
ADD file:8ba178590335bfae47e507ed2dac195379232d7a419502dbb643ed765eeda051 in / 
# Tue, 05 Mar 2019 11:45:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 15:51:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 05 Mar 2019 15:51:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 15:51:07 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 05 Mar 2019 15:51:07 GMT
ENV JULIA_VERSION=1.1.0
# Tue, 05 Mar 2019 15:51:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='80cfd013e526b5145ec3254920afd89bb459f1db7a2a3f21849125af20c05471' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='9efd7ffd4a246311f544cf0031682f4dcf946b2377abaa285684526071272fe5' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 05 Mar 2019 15:51:26 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:8672e33776e7a43de892193a6f53164416d0b0a3dcbb0f96c502e1d15a4dcbff`  
		Last Modified: Tue, 05 Mar 2019 11:54:52 GMT  
		Size: 46.1 MB (46064419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48dd83446219733487b292f9bde94db76324fe6d0f1bff25dc0b89369de9ae3`  
		Last Modified: Tue, 05 Mar 2019 15:51:59 GMT  
		Size: 9.5 MB (9502105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c8feb7118b6130cb17b1282b994624932be678da4482d36899aafcdbb593fc`  
		Last Modified: Tue, 05 Mar 2019 15:52:18 GMT  
		Size: 93.7 MB (93706546 bytes)  
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
