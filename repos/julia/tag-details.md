<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `julia`

-	[`julia:0`](#julia0)
-	[`julia:0.7`](#julia07)
-	[`julia:0.7.0`](#julia070)
-	[`julia:0.7.0-jessie`](#julia070-jessie)
-	[`julia:0.7.0-stretch`](#julia070-stretch)
-	[`julia:0.7.0-windowsservercore-1709`](#julia070-windowsservercore-1709)
-	[`julia:0.7.0-windowsservercore-ltsc2016`](#julia070-windowsservercore-ltsc2016)
-	[`julia:0.7-jessie`](#julia07-jessie)
-	[`julia:0.7-stretch`](#julia07-stretch)
-	[`julia:0.7-windowsservercore-1709`](#julia07-windowsservercore-1709)
-	[`julia:0.7-windowsservercore-ltsc2016`](#julia07-windowsservercore-ltsc2016)
-	[`julia:0-jessie`](#julia0-jessie)
-	[`julia:0-stretch`](#julia0-stretch)
-	[`julia:0-windowsservercore-1709`](#julia0-windowsservercore-1709)
-	[`julia:0-windowsservercore-ltsc2016`](#julia0-windowsservercore-ltsc2016)
-	[`julia:1`](#julia1)
-	[`julia:1.0`](#julia10)
-	[`julia:1.0.2`](#julia102)
-	[`julia:1.0.2-stretch`](#julia102-stretch)
-	[`julia:1.0.2-windowsservercore-1709`](#julia102-windowsservercore-1709)
-	[`julia:1.0.2-windowsservercore-1803`](#julia102-windowsservercore-1803)
-	[`julia:1.0.2-windowsservercore-ltsc2016`](#julia102-windowsservercore-ltsc2016)
-	[`julia:1.0-stretch`](#julia10-stretch)
-	[`julia:1.0-windowsservercore-1709`](#julia10-windowsservercore-1709)
-	[`julia:1.0-windowsservercore-1803`](#julia10-windowsservercore-1803)
-	[`julia:1.0-windowsservercore-ltsc2016`](#julia10-windowsservercore-ltsc2016)
-	[`julia:1-stretch`](#julia1-stretch)
-	[`julia:1-windowsservercore-1709`](#julia1-windowsservercore-1709)
-	[`julia:1-windowsservercore-1803`](#julia1-windowsservercore-1803)
-	[`julia:1-windowsservercore-ltsc2016`](#julia1-windowsservercore-ltsc2016)
-	[`julia:latest`](#julialatest)
-	[`julia:stretch`](#juliastretch)
-	[`julia:windowsservercore-1709`](#juliawindowsservercore-1709)
-	[`julia:windowsservercore-1803`](#juliawindowsservercore-1803)
-	[`julia:windowsservercore-ltsc2016`](#juliawindowsservercore-ltsc2016)

## `julia:0`

```console
$ docker pull julia@sha256:fa0b3467a7fb545aea4ded62556f7f91af0b15eacb05f5328c66c954b05058e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	windows version 10.0.14393.2608; amd64
	-	windows version 10.0.16299.785; amd64

### `julia:0` - linux; amd64

```console
$ docker pull julia@sha256:bb6bbcbd206a5295b1d56faf363eb97678a4a02f6626fc1c956ebfd323efdc06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152422247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32e5a49e801f9ffe2ad9bc4e9157660be5d3a3b720ae92e2cd0d6b4d7c42f632`
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
# Tue, 16 Oct 2018 04:07:39 GMT
ENV JULIA_VERSION=0.7.0
# Tue, 16 Oct 2018 04:07:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 16 Oct 2018 04:07:57 GMT
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
	-	`sha256:42d5a2e1f8be7e47e83d6c07a066c384b741ea0d70f9d27eba694bbcbd251a1a`  
		Last Modified: Tue, 16 Oct 2018 04:10:39 GMT  
		Size: 97.7 MB (97658254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0` - linux; 386

```console
$ docker pull julia@sha256:eb2fe7690de958d2e4f402bfc75c282ce2e1f05d345713d4b15181048d8335f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.6 MB (150607774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7104e16bd6a5d08347cbe248cfa4f8341b6cbf256ba91bf9b0897571cba2100c`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:18:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:18:19 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 16 Oct 2018 22:18:19 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 22:18:19 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 16 Oct 2018 22:18:47 GMT
ENV JULIA_VERSION=0.7.0
# Tue, 16 Oct 2018 22:19:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 16 Oct 2018 22:19:06 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67646ee095582e950a6897aa23ff101105b6736b5fa9929318f6416bb7072107`  
		Last Modified: Tue, 16 Oct 2018 22:20:31 GMT  
		Size: 9.5 MB (9458396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6afaaaa365fdc53840b55e00047ef09a362d79adbf32b1900b2921979ba1a86`  
		Last Modified: Tue, 16 Oct 2018 22:21:47 GMT  
		Size: 95.1 MB (95110156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0` - windows version 10.0.14393.2608; amd64

```console
$ docker pull julia@sha256:328a396459a8cf459245cb359bc5966f450e90314c5b3ebf3a8d3a724ab5b931
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5751266739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84d32d0abd89b099d281afde6bff21b6111959e53252e20559b1942e810b9bf0`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 12 Nov 2018 20:18:49 GMT
RUN Install update 10.0.14393.2608
# Thu, 15 Nov 2018 10:44:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:55:26 GMT
ENV JULIA_VERSION=0.7.0
# Thu, 15 Nov 2018 10:55:27 GMT
ENV JULIA_SHA256=a42d53d259d1f8f6feefac0da8352c19ca5d9da2303cf1595086867cfb1cd817
# Thu, 15 Nov 2018 10:58:48 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 10:58:49 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:900b07d4317229a6e17265974aa1dac7af538380b34f978cbe221403c279c09a`  
		Last Modified: Mon, 12 Nov 2018 20:18:49 GMT  
		Size: 1.6 GB (1563935107 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:87926998c696620346cdc0a9a6b8363985c9f433be9759201c3226e8cdf020c1`  
		Last Modified: Thu, 15 Nov 2018 11:02:41 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a45df72d6d8a08a4aea404c18dc3446cd2671eb93c52df200b6e80e92d66b0`  
		Last Modified: Thu, 15 Nov 2018 11:05:14 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37128b38c258c3e43dbc22b1f1ec11044f5f46c80879770d13fff81446eb999a`  
		Last Modified: Thu, 15 Nov 2018 11:05:13 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff9c99fd54b1bc3b1064c6d216ca4666a49eed27ee9a44fe1c3b21b9d1e4a5b6`  
		Last Modified: Thu, 15 Nov 2018 11:05:48 GMT  
		Size: 117.3 MB (117340938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba187f363ac713c54d3887d2982c740beda0cdd6d3ca4fa9ea09e7b11a20b6e5`  
		Last Modified: Thu, 15 Nov 2018 11:05:13 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0` - windows version 10.0.16299.785; amd64

```console
$ docker pull julia@sha256:37e0b685ea18d00d4da4b414f67af83c07f4a0443f175be5e7c753052e4cc440
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3258336315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc220f491c2d87a0baa849f9fad88297d397f77651d83f38d3fe2577ae94d1f7`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 31 Oct 2018 19:38:09 GMT
RUN Install update 10.0.16299.785
# Thu, 15 Nov 2018 10:48:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:59:08 GMT
ENV JULIA_VERSION=0.7.0
# Thu, 15 Nov 2018 10:59:09 GMT
ENV JULIA_SHA256=a42d53d259d1f8f6feefac0da8352c19ca5d9da2303cf1595086867cfb1cd817
# Thu, 15 Nov 2018 11:02:03 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 11:02:04 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:78ada4d5eaa052e2d6ab049ee3371e7d2298a9e3e6dc6e10cf2aa4c0f8704abd`  
		Last Modified: Mon, 12 Nov 2018 20:34:53 GMT  
		Size: 871.6 MB (871606875 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9a5b772c67f53a1d58ffc0a436ed7381268334533ade21d234214327743331f0`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:656552b53724f9068d99df5834bc58f1b81ae27475bc2e0815357733f433b082`  
		Last Modified: Thu, 15 Nov 2018 11:06:03 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650c4670e03462756de34ecc325bfb689d1174200fb39da8db6ab117c9f13b51`  
		Last Modified: Thu, 15 Nov 2018 11:06:03 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cac5f600af3c7551c561a40bbb0677477f66ee760f6141f40a7c5437e2e2820`  
		Last Modified: Thu, 15 Nov 2018 11:06:36 GMT  
		Size: 112.4 MB (112424074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2240233de264837d6d6a63d6dd2dd863584c89ef554b565884a449f40e11cf88`  
		Last Modified: Thu, 15 Nov 2018 11:06:03 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.7`

```console
$ docker pull julia@sha256:fa0b3467a7fb545aea4ded62556f7f91af0b15eacb05f5328c66c954b05058e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	windows version 10.0.14393.2608; amd64
	-	windows version 10.0.16299.785; amd64

### `julia:0.7` - linux; amd64

```console
$ docker pull julia@sha256:bb6bbcbd206a5295b1d56faf363eb97678a4a02f6626fc1c956ebfd323efdc06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152422247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32e5a49e801f9ffe2ad9bc4e9157660be5d3a3b720ae92e2cd0d6b4d7c42f632`
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
# Tue, 16 Oct 2018 04:07:39 GMT
ENV JULIA_VERSION=0.7.0
# Tue, 16 Oct 2018 04:07:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 16 Oct 2018 04:07:57 GMT
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
	-	`sha256:42d5a2e1f8be7e47e83d6c07a066c384b741ea0d70f9d27eba694bbcbd251a1a`  
		Last Modified: Tue, 16 Oct 2018 04:10:39 GMT  
		Size: 97.7 MB (97658254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.7` - linux; 386

```console
$ docker pull julia@sha256:eb2fe7690de958d2e4f402bfc75c282ce2e1f05d345713d4b15181048d8335f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.6 MB (150607774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7104e16bd6a5d08347cbe248cfa4f8341b6cbf256ba91bf9b0897571cba2100c`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:18:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:18:19 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 16 Oct 2018 22:18:19 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 22:18:19 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 16 Oct 2018 22:18:47 GMT
ENV JULIA_VERSION=0.7.0
# Tue, 16 Oct 2018 22:19:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 16 Oct 2018 22:19:06 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67646ee095582e950a6897aa23ff101105b6736b5fa9929318f6416bb7072107`  
		Last Modified: Tue, 16 Oct 2018 22:20:31 GMT  
		Size: 9.5 MB (9458396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6afaaaa365fdc53840b55e00047ef09a362d79adbf32b1900b2921979ba1a86`  
		Last Modified: Tue, 16 Oct 2018 22:21:47 GMT  
		Size: 95.1 MB (95110156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.7` - windows version 10.0.14393.2608; amd64

```console
$ docker pull julia@sha256:328a396459a8cf459245cb359bc5966f450e90314c5b3ebf3a8d3a724ab5b931
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5751266739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84d32d0abd89b099d281afde6bff21b6111959e53252e20559b1942e810b9bf0`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 12 Nov 2018 20:18:49 GMT
RUN Install update 10.0.14393.2608
# Thu, 15 Nov 2018 10:44:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:55:26 GMT
ENV JULIA_VERSION=0.7.0
# Thu, 15 Nov 2018 10:55:27 GMT
ENV JULIA_SHA256=a42d53d259d1f8f6feefac0da8352c19ca5d9da2303cf1595086867cfb1cd817
# Thu, 15 Nov 2018 10:58:48 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 10:58:49 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:900b07d4317229a6e17265974aa1dac7af538380b34f978cbe221403c279c09a`  
		Last Modified: Mon, 12 Nov 2018 20:18:49 GMT  
		Size: 1.6 GB (1563935107 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:87926998c696620346cdc0a9a6b8363985c9f433be9759201c3226e8cdf020c1`  
		Last Modified: Thu, 15 Nov 2018 11:02:41 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a45df72d6d8a08a4aea404c18dc3446cd2671eb93c52df200b6e80e92d66b0`  
		Last Modified: Thu, 15 Nov 2018 11:05:14 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37128b38c258c3e43dbc22b1f1ec11044f5f46c80879770d13fff81446eb999a`  
		Last Modified: Thu, 15 Nov 2018 11:05:13 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff9c99fd54b1bc3b1064c6d216ca4666a49eed27ee9a44fe1c3b21b9d1e4a5b6`  
		Last Modified: Thu, 15 Nov 2018 11:05:48 GMT  
		Size: 117.3 MB (117340938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba187f363ac713c54d3887d2982c740beda0cdd6d3ca4fa9ea09e7b11a20b6e5`  
		Last Modified: Thu, 15 Nov 2018 11:05:13 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.7` - windows version 10.0.16299.785; amd64

```console
$ docker pull julia@sha256:37e0b685ea18d00d4da4b414f67af83c07f4a0443f175be5e7c753052e4cc440
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3258336315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc220f491c2d87a0baa849f9fad88297d397f77651d83f38d3fe2577ae94d1f7`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 31 Oct 2018 19:38:09 GMT
RUN Install update 10.0.16299.785
# Thu, 15 Nov 2018 10:48:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:59:08 GMT
ENV JULIA_VERSION=0.7.0
# Thu, 15 Nov 2018 10:59:09 GMT
ENV JULIA_SHA256=a42d53d259d1f8f6feefac0da8352c19ca5d9da2303cf1595086867cfb1cd817
# Thu, 15 Nov 2018 11:02:03 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 11:02:04 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:78ada4d5eaa052e2d6ab049ee3371e7d2298a9e3e6dc6e10cf2aa4c0f8704abd`  
		Last Modified: Mon, 12 Nov 2018 20:34:53 GMT  
		Size: 871.6 MB (871606875 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9a5b772c67f53a1d58ffc0a436ed7381268334533ade21d234214327743331f0`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:656552b53724f9068d99df5834bc58f1b81ae27475bc2e0815357733f433b082`  
		Last Modified: Thu, 15 Nov 2018 11:06:03 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650c4670e03462756de34ecc325bfb689d1174200fb39da8db6ab117c9f13b51`  
		Last Modified: Thu, 15 Nov 2018 11:06:03 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cac5f600af3c7551c561a40bbb0677477f66ee760f6141f40a7c5437e2e2820`  
		Last Modified: Thu, 15 Nov 2018 11:06:36 GMT  
		Size: 112.4 MB (112424074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2240233de264837d6d6a63d6dd2dd863584c89ef554b565884a449f40e11cf88`  
		Last Modified: Thu, 15 Nov 2018 11:06:03 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.7.0`

```console
$ docker pull julia@sha256:fa0b3467a7fb545aea4ded62556f7f91af0b15eacb05f5328c66c954b05058e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	windows version 10.0.14393.2608; amd64
	-	windows version 10.0.16299.785; amd64

### `julia:0.7.0` - linux; amd64

```console
$ docker pull julia@sha256:bb6bbcbd206a5295b1d56faf363eb97678a4a02f6626fc1c956ebfd323efdc06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152422247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32e5a49e801f9ffe2ad9bc4e9157660be5d3a3b720ae92e2cd0d6b4d7c42f632`
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
# Tue, 16 Oct 2018 04:07:39 GMT
ENV JULIA_VERSION=0.7.0
# Tue, 16 Oct 2018 04:07:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 16 Oct 2018 04:07:57 GMT
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
	-	`sha256:42d5a2e1f8be7e47e83d6c07a066c384b741ea0d70f9d27eba694bbcbd251a1a`  
		Last Modified: Tue, 16 Oct 2018 04:10:39 GMT  
		Size: 97.7 MB (97658254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.7.0` - linux; 386

```console
$ docker pull julia@sha256:eb2fe7690de958d2e4f402bfc75c282ce2e1f05d345713d4b15181048d8335f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.6 MB (150607774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7104e16bd6a5d08347cbe248cfa4f8341b6cbf256ba91bf9b0897571cba2100c`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:18:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:18:19 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 16 Oct 2018 22:18:19 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 22:18:19 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 16 Oct 2018 22:18:47 GMT
ENV JULIA_VERSION=0.7.0
# Tue, 16 Oct 2018 22:19:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 16 Oct 2018 22:19:06 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67646ee095582e950a6897aa23ff101105b6736b5fa9929318f6416bb7072107`  
		Last Modified: Tue, 16 Oct 2018 22:20:31 GMT  
		Size: 9.5 MB (9458396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6afaaaa365fdc53840b55e00047ef09a362d79adbf32b1900b2921979ba1a86`  
		Last Modified: Tue, 16 Oct 2018 22:21:47 GMT  
		Size: 95.1 MB (95110156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.7.0` - windows version 10.0.14393.2608; amd64

```console
$ docker pull julia@sha256:328a396459a8cf459245cb359bc5966f450e90314c5b3ebf3a8d3a724ab5b931
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5751266739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84d32d0abd89b099d281afde6bff21b6111959e53252e20559b1942e810b9bf0`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 12 Nov 2018 20:18:49 GMT
RUN Install update 10.0.14393.2608
# Thu, 15 Nov 2018 10:44:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:55:26 GMT
ENV JULIA_VERSION=0.7.0
# Thu, 15 Nov 2018 10:55:27 GMT
ENV JULIA_SHA256=a42d53d259d1f8f6feefac0da8352c19ca5d9da2303cf1595086867cfb1cd817
# Thu, 15 Nov 2018 10:58:48 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 10:58:49 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:900b07d4317229a6e17265974aa1dac7af538380b34f978cbe221403c279c09a`  
		Last Modified: Mon, 12 Nov 2018 20:18:49 GMT  
		Size: 1.6 GB (1563935107 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:87926998c696620346cdc0a9a6b8363985c9f433be9759201c3226e8cdf020c1`  
		Last Modified: Thu, 15 Nov 2018 11:02:41 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a45df72d6d8a08a4aea404c18dc3446cd2671eb93c52df200b6e80e92d66b0`  
		Last Modified: Thu, 15 Nov 2018 11:05:14 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37128b38c258c3e43dbc22b1f1ec11044f5f46c80879770d13fff81446eb999a`  
		Last Modified: Thu, 15 Nov 2018 11:05:13 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff9c99fd54b1bc3b1064c6d216ca4666a49eed27ee9a44fe1c3b21b9d1e4a5b6`  
		Last Modified: Thu, 15 Nov 2018 11:05:48 GMT  
		Size: 117.3 MB (117340938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba187f363ac713c54d3887d2982c740beda0cdd6d3ca4fa9ea09e7b11a20b6e5`  
		Last Modified: Thu, 15 Nov 2018 11:05:13 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.7.0` - windows version 10.0.16299.785; amd64

```console
$ docker pull julia@sha256:37e0b685ea18d00d4da4b414f67af83c07f4a0443f175be5e7c753052e4cc440
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3258336315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc220f491c2d87a0baa849f9fad88297d397f77651d83f38d3fe2577ae94d1f7`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 31 Oct 2018 19:38:09 GMT
RUN Install update 10.0.16299.785
# Thu, 15 Nov 2018 10:48:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:59:08 GMT
ENV JULIA_VERSION=0.7.0
# Thu, 15 Nov 2018 10:59:09 GMT
ENV JULIA_SHA256=a42d53d259d1f8f6feefac0da8352c19ca5d9da2303cf1595086867cfb1cd817
# Thu, 15 Nov 2018 11:02:03 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 11:02:04 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:78ada4d5eaa052e2d6ab049ee3371e7d2298a9e3e6dc6e10cf2aa4c0f8704abd`  
		Last Modified: Mon, 12 Nov 2018 20:34:53 GMT  
		Size: 871.6 MB (871606875 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9a5b772c67f53a1d58ffc0a436ed7381268334533ade21d234214327743331f0`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:656552b53724f9068d99df5834bc58f1b81ae27475bc2e0815357733f433b082`  
		Last Modified: Thu, 15 Nov 2018 11:06:03 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650c4670e03462756de34ecc325bfb689d1174200fb39da8db6ab117c9f13b51`  
		Last Modified: Thu, 15 Nov 2018 11:06:03 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cac5f600af3c7551c561a40bbb0677477f66ee760f6141f40a7c5437e2e2820`  
		Last Modified: Thu, 15 Nov 2018 11:06:36 GMT  
		Size: 112.4 MB (112424074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2240233de264837d6d6a63d6dd2dd863584c89ef554b565884a449f40e11cf88`  
		Last Modified: Thu, 15 Nov 2018 11:06:03 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.7.0-jessie`

```console
$ docker pull julia@sha256:449c0c45d078090138d91f29fbad0826e99dc0e2c5920610ae863eeeea83966f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `julia:0.7.0-jessie` - linux; amd64

```console
$ docker pull julia@sha256:db43c6368039485a545c00c223b299eb4d2f508f8e9e143a65c3fb82f20d03fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.6 MB (156638167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f351494177d30617294461d2d53f951bfb3c80316ce950f94911275e234fe23a`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:26 GMT
ADD file:28906382f13932b8498c715984587f13905a32cc9427fb4f8779b7f159a68580 in / 
# Mon, 15 Oct 2018 23:20:26 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:08:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:08:39 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 16 Oct 2018 04:08:39 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 04:08:39 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 16 Oct 2018 04:08:39 GMT
ENV JULIA_VERSION=0.7.0
# Tue, 16 Oct 2018 04:08:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 16 Oct 2018 04:08:56 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:61be48634cb9ffcb29c1508fc1c308be81c32f84e95a627de9bdf107a854408c`  
		Last Modified: Mon, 15 Oct 2018 23:28:32 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b74e9a89227b6b937ff2a371c0a5ec352bf33f3363dd03e730f73d6e1591d8a`  
		Last Modified: Tue, 16 Oct 2018 04:11:18 GMT  
		Size: 5.0 MB (5021169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb19692a70901f7c5bee31efb672b836d19ffd77d33b29346a229076a7024dc4`  
		Last Modified: Tue, 16 Oct 2018 04:11:38 GMT  
		Size: 97.4 MB (97364873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.7.0-jessie` - linux; 386

```console
$ docker pull julia@sha256:a2c9322f28c1f67f50291e2c0f119822111358455cfc5be564207f582b518e23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.5 MB (156497863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af79e5c6bbaf6dc20f6573ff9de84dceda1be058e9256227694acf40cb50ca97`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:07 GMT
ADD file:884a15e85725363fbbc2c6e8db4d505681cab38aaccb85d33230096fceb51ad1 in / 
# Tue, 16 Oct 2018 10:41:07 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:19:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:19:51 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 16 Oct 2018 22:19:51 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 22:19:51 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 16 Oct 2018 22:19:51 GMT
ENV JULIA_VERSION=0.7.0
# Tue, 16 Oct 2018 22:20:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 16 Oct 2018 22:20:15 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:58744882a671928d73076405b749948006049d6d70461101d15a64e8b66d1786`  
		Last Modified: Tue, 16 Oct 2018 10:55:45 GMT  
		Size: 54.5 MB (54484289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152bc67d96c93dcfabd8dda24bcb597375ff08f8a9d0efacd1222c9e23fbe207`  
		Last Modified: Tue, 16 Oct 2018 22:22:15 GMT  
		Size: 7.2 MB (7189458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5c55085bd5015d4ad78da55c11840f9a5eab486da90c4afd05bbd6d0845ffe`  
		Last Modified: Tue, 16 Oct 2018 22:22:42 GMT  
		Size: 94.8 MB (94824116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.7.0-stretch`

```console
$ docker pull julia@sha256:3c2af39d82a3dde8f67c018a9ab9ba7a95fcbfc143db148b83468f412414b60f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `julia:0.7.0-stretch` - linux; amd64

```console
$ docker pull julia@sha256:bb6bbcbd206a5295b1d56faf363eb97678a4a02f6626fc1c956ebfd323efdc06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152422247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32e5a49e801f9ffe2ad9bc4e9157660be5d3a3b720ae92e2cd0d6b4d7c42f632`
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
# Tue, 16 Oct 2018 04:07:39 GMT
ENV JULIA_VERSION=0.7.0
# Tue, 16 Oct 2018 04:07:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 16 Oct 2018 04:07:57 GMT
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
	-	`sha256:42d5a2e1f8be7e47e83d6c07a066c384b741ea0d70f9d27eba694bbcbd251a1a`  
		Last Modified: Tue, 16 Oct 2018 04:10:39 GMT  
		Size: 97.7 MB (97658254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.7.0-stretch` - linux; 386

```console
$ docker pull julia@sha256:eb2fe7690de958d2e4f402bfc75c282ce2e1f05d345713d4b15181048d8335f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.6 MB (150607774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7104e16bd6a5d08347cbe248cfa4f8341b6cbf256ba91bf9b0897571cba2100c`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:18:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:18:19 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 16 Oct 2018 22:18:19 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 22:18:19 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 16 Oct 2018 22:18:47 GMT
ENV JULIA_VERSION=0.7.0
# Tue, 16 Oct 2018 22:19:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 16 Oct 2018 22:19:06 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67646ee095582e950a6897aa23ff101105b6736b5fa9929318f6416bb7072107`  
		Last Modified: Tue, 16 Oct 2018 22:20:31 GMT  
		Size: 9.5 MB (9458396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6afaaaa365fdc53840b55e00047ef09a362d79adbf32b1900b2921979ba1a86`  
		Last Modified: Tue, 16 Oct 2018 22:21:47 GMT  
		Size: 95.1 MB (95110156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.7.0-windowsservercore-1709`

```console
$ docker pull julia@sha256:d6982d7249599f016087a612eec3db3570add8533150c6b69bed11df36e3808e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.785; amd64

### `julia:0.7.0-windowsservercore-1709` - windows version 10.0.16299.785; amd64

```console
$ docker pull julia@sha256:37e0b685ea18d00d4da4b414f67af83c07f4a0443f175be5e7c753052e4cc440
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3258336315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc220f491c2d87a0baa849f9fad88297d397f77651d83f38d3fe2577ae94d1f7`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 31 Oct 2018 19:38:09 GMT
RUN Install update 10.0.16299.785
# Thu, 15 Nov 2018 10:48:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:59:08 GMT
ENV JULIA_VERSION=0.7.0
# Thu, 15 Nov 2018 10:59:09 GMT
ENV JULIA_SHA256=a42d53d259d1f8f6feefac0da8352c19ca5d9da2303cf1595086867cfb1cd817
# Thu, 15 Nov 2018 11:02:03 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 11:02:04 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:78ada4d5eaa052e2d6ab049ee3371e7d2298a9e3e6dc6e10cf2aa4c0f8704abd`  
		Last Modified: Mon, 12 Nov 2018 20:34:53 GMT  
		Size: 871.6 MB (871606875 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9a5b772c67f53a1d58ffc0a436ed7381268334533ade21d234214327743331f0`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:656552b53724f9068d99df5834bc58f1b81ae27475bc2e0815357733f433b082`  
		Last Modified: Thu, 15 Nov 2018 11:06:03 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650c4670e03462756de34ecc325bfb689d1174200fb39da8db6ab117c9f13b51`  
		Last Modified: Thu, 15 Nov 2018 11:06:03 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cac5f600af3c7551c561a40bbb0677477f66ee760f6141f40a7c5437e2e2820`  
		Last Modified: Thu, 15 Nov 2018 11:06:36 GMT  
		Size: 112.4 MB (112424074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2240233de264837d6d6a63d6dd2dd863584c89ef554b565884a449f40e11cf88`  
		Last Modified: Thu, 15 Nov 2018 11:06:03 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.7.0-windowsservercore-ltsc2016`

```console
$ docker pull julia@sha256:3188cd6107707bc0fe8e5765a90f099ad052dc6c38112b71987d60040d67632e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2608; amd64

### `julia:0.7.0-windowsservercore-ltsc2016` - windows version 10.0.14393.2608; amd64

```console
$ docker pull julia@sha256:328a396459a8cf459245cb359bc5966f450e90314c5b3ebf3a8d3a724ab5b931
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5751266739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84d32d0abd89b099d281afde6bff21b6111959e53252e20559b1942e810b9bf0`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 12 Nov 2018 20:18:49 GMT
RUN Install update 10.0.14393.2608
# Thu, 15 Nov 2018 10:44:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:55:26 GMT
ENV JULIA_VERSION=0.7.0
# Thu, 15 Nov 2018 10:55:27 GMT
ENV JULIA_SHA256=a42d53d259d1f8f6feefac0da8352c19ca5d9da2303cf1595086867cfb1cd817
# Thu, 15 Nov 2018 10:58:48 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 10:58:49 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:900b07d4317229a6e17265974aa1dac7af538380b34f978cbe221403c279c09a`  
		Last Modified: Mon, 12 Nov 2018 20:18:49 GMT  
		Size: 1.6 GB (1563935107 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:87926998c696620346cdc0a9a6b8363985c9f433be9759201c3226e8cdf020c1`  
		Last Modified: Thu, 15 Nov 2018 11:02:41 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a45df72d6d8a08a4aea404c18dc3446cd2671eb93c52df200b6e80e92d66b0`  
		Last Modified: Thu, 15 Nov 2018 11:05:14 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37128b38c258c3e43dbc22b1f1ec11044f5f46c80879770d13fff81446eb999a`  
		Last Modified: Thu, 15 Nov 2018 11:05:13 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff9c99fd54b1bc3b1064c6d216ca4666a49eed27ee9a44fe1c3b21b9d1e4a5b6`  
		Last Modified: Thu, 15 Nov 2018 11:05:48 GMT  
		Size: 117.3 MB (117340938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba187f363ac713c54d3887d2982c740beda0cdd6d3ca4fa9ea09e7b11a20b6e5`  
		Last Modified: Thu, 15 Nov 2018 11:05:13 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.7-jessie`

```console
$ docker pull julia@sha256:449c0c45d078090138d91f29fbad0826e99dc0e2c5920610ae863eeeea83966f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `julia:0.7-jessie` - linux; amd64

```console
$ docker pull julia@sha256:db43c6368039485a545c00c223b299eb4d2f508f8e9e143a65c3fb82f20d03fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.6 MB (156638167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f351494177d30617294461d2d53f951bfb3c80316ce950f94911275e234fe23a`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:26 GMT
ADD file:28906382f13932b8498c715984587f13905a32cc9427fb4f8779b7f159a68580 in / 
# Mon, 15 Oct 2018 23:20:26 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:08:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:08:39 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 16 Oct 2018 04:08:39 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 04:08:39 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 16 Oct 2018 04:08:39 GMT
ENV JULIA_VERSION=0.7.0
# Tue, 16 Oct 2018 04:08:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 16 Oct 2018 04:08:56 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:61be48634cb9ffcb29c1508fc1c308be81c32f84e95a627de9bdf107a854408c`  
		Last Modified: Mon, 15 Oct 2018 23:28:32 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b74e9a89227b6b937ff2a371c0a5ec352bf33f3363dd03e730f73d6e1591d8a`  
		Last Modified: Tue, 16 Oct 2018 04:11:18 GMT  
		Size: 5.0 MB (5021169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb19692a70901f7c5bee31efb672b836d19ffd77d33b29346a229076a7024dc4`  
		Last Modified: Tue, 16 Oct 2018 04:11:38 GMT  
		Size: 97.4 MB (97364873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.7-jessie` - linux; 386

```console
$ docker pull julia@sha256:a2c9322f28c1f67f50291e2c0f119822111358455cfc5be564207f582b518e23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.5 MB (156497863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af79e5c6bbaf6dc20f6573ff9de84dceda1be058e9256227694acf40cb50ca97`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:07 GMT
ADD file:884a15e85725363fbbc2c6e8db4d505681cab38aaccb85d33230096fceb51ad1 in / 
# Tue, 16 Oct 2018 10:41:07 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:19:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:19:51 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 16 Oct 2018 22:19:51 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 22:19:51 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 16 Oct 2018 22:19:51 GMT
ENV JULIA_VERSION=0.7.0
# Tue, 16 Oct 2018 22:20:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 16 Oct 2018 22:20:15 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:58744882a671928d73076405b749948006049d6d70461101d15a64e8b66d1786`  
		Last Modified: Tue, 16 Oct 2018 10:55:45 GMT  
		Size: 54.5 MB (54484289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152bc67d96c93dcfabd8dda24bcb597375ff08f8a9d0efacd1222c9e23fbe207`  
		Last Modified: Tue, 16 Oct 2018 22:22:15 GMT  
		Size: 7.2 MB (7189458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5c55085bd5015d4ad78da55c11840f9a5eab486da90c4afd05bbd6d0845ffe`  
		Last Modified: Tue, 16 Oct 2018 22:22:42 GMT  
		Size: 94.8 MB (94824116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.7-stretch`

```console
$ docker pull julia@sha256:3c2af39d82a3dde8f67c018a9ab9ba7a95fcbfc143db148b83468f412414b60f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `julia:0.7-stretch` - linux; amd64

```console
$ docker pull julia@sha256:bb6bbcbd206a5295b1d56faf363eb97678a4a02f6626fc1c956ebfd323efdc06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152422247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32e5a49e801f9ffe2ad9bc4e9157660be5d3a3b720ae92e2cd0d6b4d7c42f632`
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
# Tue, 16 Oct 2018 04:07:39 GMT
ENV JULIA_VERSION=0.7.0
# Tue, 16 Oct 2018 04:07:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 16 Oct 2018 04:07:57 GMT
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
	-	`sha256:42d5a2e1f8be7e47e83d6c07a066c384b741ea0d70f9d27eba694bbcbd251a1a`  
		Last Modified: Tue, 16 Oct 2018 04:10:39 GMT  
		Size: 97.7 MB (97658254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.7-stretch` - linux; 386

```console
$ docker pull julia@sha256:eb2fe7690de958d2e4f402bfc75c282ce2e1f05d345713d4b15181048d8335f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.6 MB (150607774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7104e16bd6a5d08347cbe248cfa4f8341b6cbf256ba91bf9b0897571cba2100c`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:18:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:18:19 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 16 Oct 2018 22:18:19 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 22:18:19 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 16 Oct 2018 22:18:47 GMT
ENV JULIA_VERSION=0.7.0
# Tue, 16 Oct 2018 22:19:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 16 Oct 2018 22:19:06 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67646ee095582e950a6897aa23ff101105b6736b5fa9929318f6416bb7072107`  
		Last Modified: Tue, 16 Oct 2018 22:20:31 GMT  
		Size: 9.5 MB (9458396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6afaaaa365fdc53840b55e00047ef09a362d79adbf32b1900b2921979ba1a86`  
		Last Modified: Tue, 16 Oct 2018 22:21:47 GMT  
		Size: 95.1 MB (95110156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.7-windowsservercore-1709`

```console
$ docker pull julia@sha256:d6982d7249599f016087a612eec3db3570add8533150c6b69bed11df36e3808e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.785; amd64

### `julia:0.7-windowsservercore-1709` - windows version 10.0.16299.785; amd64

```console
$ docker pull julia@sha256:37e0b685ea18d00d4da4b414f67af83c07f4a0443f175be5e7c753052e4cc440
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3258336315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc220f491c2d87a0baa849f9fad88297d397f77651d83f38d3fe2577ae94d1f7`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 31 Oct 2018 19:38:09 GMT
RUN Install update 10.0.16299.785
# Thu, 15 Nov 2018 10:48:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:59:08 GMT
ENV JULIA_VERSION=0.7.0
# Thu, 15 Nov 2018 10:59:09 GMT
ENV JULIA_SHA256=a42d53d259d1f8f6feefac0da8352c19ca5d9da2303cf1595086867cfb1cd817
# Thu, 15 Nov 2018 11:02:03 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 11:02:04 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:78ada4d5eaa052e2d6ab049ee3371e7d2298a9e3e6dc6e10cf2aa4c0f8704abd`  
		Last Modified: Mon, 12 Nov 2018 20:34:53 GMT  
		Size: 871.6 MB (871606875 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9a5b772c67f53a1d58ffc0a436ed7381268334533ade21d234214327743331f0`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:656552b53724f9068d99df5834bc58f1b81ae27475bc2e0815357733f433b082`  
		Last Modified: Thu, 15 Nov 2018 11:06:03 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650c4670e03462756de34ecc325bfb689d1174200fb39da8db6ab117c9f13b51`  
		Last Modified: Thu, 15 Nov 2018 11:06:03 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cac5f600af3c7551c561a40bbb0677477f66ee760f6141f40a7c5437e2e2820`  
		Last Modified: Thu, 15 Nov 2018 11:06:36 GMT  
		Size: 112.4 MB (112424074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2240233de264837d6d6a63d6dd2dd863584c89ef554b565884a449f40e11cf88`  
		Last Modified: Thu, 15 Nov 2018 11:06:03 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.7-windowsservercore-ltsc2016`

```console
$ docker pull julia@sha256:3188cd6107707bc0fe8e5765a90f099ad052dc6c38112b71987d60040d67632e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2608; amd64

### `julia:0.7-windowsservercore-ltsc2016` - windows version 10.0.14393.2608; amd64

```console
$ docker pull julia@sha256:328a396459a8cf459245cb359bc5966f450e90314c5b3ebf3a8d3a724ab5b931
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5751266739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84d32d0abd89b099d281afde6bff21b6111959e53252e20559b1942e810b9bf0`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 12 Nov 2018 20:18:49 GMT
RUN Install update 10.0.14393.2608
# Thu, 15 Nov 2018 10:44:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:55:26 GMT
ENV JULIA_VERSION=0.7.0
# Thu, 15 Nov 2018 10:55:27 GMT
ENV JULIA_SHA256=a42d53d259d1f8f6feefac0da8352c19ca5d9da2303cf1595086867cfb1cd817
# Thu, 15 Nov 2018 10:58:48 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 10:58:49 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:900b07d4317229a6e17265974aa1dac7af538380b34f978cbe221403c279c09a`  
		Last Modified: Mon, 12 Nov 2018 20:18:49 GMT  
		Size: 1.6 GB (1563935107 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:87926998c696620346cdc0a9a6b8363985c9f433be9759201c3226e8cdf020c1`  
		Last Modified: Thu, 15 Nov 2018 11:02:41 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a45df72d6d8a08a4aea404c18dc3446cd2671eb93c52df200b6e80e92d66b0`  
		Last Modified: Thu, 15 Nov 2018 11:05:14 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37128b38c258c3e43dbc22b1f1ec11044f5f46c80879770d13fff81446eb999a`  
		Last Modified: Thu, 15 Nov 2018 11:05:13 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff9c99fd54b1bc3b1064c6d216ca4666a49eed27ee9a44fe1c3b21b9d1e4a5b6`  
		Last Modified: Thu, 15 Nov 2018 11:05:48 GMT  
		Size: 117.3 MB (117340938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba187f363ac713c54d3887d2982c740beda0cdd6d3ca4fa9ea09e7b11a20b6e5`  
		Last Modified: Thu, 15 Nov 2018 11:05:13 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0-jessie`

```console
$ docker pull julia@sha256:449c0c45d078090138d91f29fbad0826e99dc0e2c5920610ae863eeeea83966f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `julia:0-jessie` - linux; amd64

```console
$ docker pull julia@sha256:db43c6368039485a545c00c223b299eb4d2f508f8e9e143a65c3fb82f20d03fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.6 MB (156638167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f351494177d30617294461d2d53f951bfb3c80316ce950f94911275e234fe23a`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:26 GMT
ADD file:28906382f13932b8498c715984587f13905a32cc9427fb4f8779b7f159a68580 in / 
# Mon, 15 Oct 2018 23:20:26 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:08:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:08:39 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 16 Oct 2018 04:08:39 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 04:08:39 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 16 Oct 2018 04:08:39 GMT
ENV JULIA_VERSION=0.7.0
# Tue, 16 Oct 2018 04:08:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 16 Oct 2018 04:08:56 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:61be48634cb9ffcb29c1508fc1c308be81c32f84e95a627de9bdf107a854408c`  
		Last Modified: Mon, 15 Oct 2018 23:28:32 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b74e9a89227b6b937ff2a371c0a5ec352bf33f3363dd03e730f73d6e1591d8a`  
		Last Modified: Tue, 16 Oct 2018 04:11:18 GMT  
		Size: 5.0 MB (5021169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb19692a70901f7c5bee31efb672b836d19ffd77d33b29346a229076a7024dc4`  
		Last Modified: Tue, 16 Oct 2018 04:11:38 GMT  
		Size: 97.4 MB (97364873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0-jessie` - linux; 386

```console
$ docker pull julia@sha256:a2c9322f28c1f67f50291e2c0f119822111358455cfc5be564207f582b518e23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.5 MB (156497863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af79e5c6bbaf6dc20f6573ff9de84dceda1be058e9256227694acf40cb50ca97`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:07 GMT
ADD file:884a15e85725363fbbc2c6e8db4d505681cab38aaccb85d33230096fceb51ad1 in / 
# Tue, 16 Oct 2018 10:41:07 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:19:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:19:51 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 16 Oct 2018 22:19:51 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 22:19:51 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 16 Oct 2018 22:19:51 GMT
ENV JULIA_VERSION=0.7.0
# Tue, 16 Oct 2018 22:20:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 16 Oct 2018 22:20:15 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:58744882a671928d73076405b749948006049d6d70461101d15a64e8b66d1786`  
		Last Modified: Tue, 16 Oct 2018 10:55:45 GMT  
		Size: 54.5 MB (54484289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152bc67d96c93dcfabd8dda24bcb597375ff08f8a9d0efacd1222c9e23fbe207`  
		Last Modified: Tue, 16 Oct 2018 22:22:15 GMT  
		Size: 7.2 MB (7189458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5c55085bd5015d4ad78da55c11840f9a5eab486da90c4afd05bbd6d0845ffe`  
		Last Modified: Tue, 16 Oct 2018 22:22:42 GMT  
		Size: 94.8 MB (94824116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0-stretch`

```console
$ docker pull julia@sha256:3c2af39d82a3dde8f67c018a9ab9ba7a95fcbfc143db148b83468f412414b60f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `julia:0-stretch` - linux; amd64

```console
$ docker pull julia@sha256:bb6bbcbd206a5295b1d56faf363eb97678a4a02f6626fc1c956ebfd323efdc06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152422247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32e5a49e801f9ffe2ad9bc4e9157660be5d3a3b720ae92e2cd0d6b4d7c42f632`
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
# Tue, 16 Oct 2018 04:07:39 GMT
ENV JULIA_VERSION=0.7.0
# Tue, 16 Oct 2018 04:07:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 16 Oct 2018 04:07:57 GMT
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
	-	`sha256:42d5a2e1f8be7e47e83d6c07a066c384b741ea0d70f9d27eba694bbcbd251a1a`  
		Last Modified: Tue, 16 Oct 2018 04:10:39 GMT  
		Size: 97.7 MB (97658254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0-stretch` - linux; 386

```console
$ docker pull julia@sha256:eb2fe7690de958d2e4f402bfc75c282ce2e1f05d345713d4b15181048d8335f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.6 MB (150607774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7104e16bd6a5d08347cbe248cfa4f8341b6cbf256ba91bf9b0897571cba2100c`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:18:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:18:19 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 16 Oct 2018 22:18:19 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 22:18:19 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 16 Oct 2018 22:18:47 GMT
ENV JULIA_VERSION=0.7.0
# Tue, 16 Oct 2018 22:19:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 16 Oct 2018 22:19:06 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67646ee095582e950a6897aa23ff101105b6736b5fa9929318f6416bb7072107`  
		Last Modified: Tue, 16 Oct 2018 22:20:31 GMT  
		Size: 9.5 MB (9458396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6afaaaa365fdc53840b55e00047ef09a362d79adbf32b1900b2921979ba1a86`  
		Last Modified: Tue, 16 Oct 2018 22:21:47 GMT  
		Size: 95.1 MB (95110156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0-windowsservercore-1709`

```console
$ docker pull julia@sha256:d6982d7249599f016087a612eec3db3570add8533150c6b69bed11df36e3808e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.785; amd64

### `julia:0-windowsservercore-1709` - windows version 10.0.16299.785; amd64

```console
$ docker pull julia@sha256:37e0b685ea18d00d4da4b414f67af83c07f4a0443f175be5e7c753052e4cc440
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3258336315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc220f491c2d87a0baa849f9fad88297d397f77651d83f38d3fe2577ae94d1f7`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 31 Oct 2018 19:38:09 GMT
RUN Install update 10.0.16299.785
# Thu, 15 Nov 2018 10:48:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:59:08 GMT
ENV JULIA_VERSION=0.7.0
# Thu, 15 Nov 2018 10:59:09 GMT
ENV JULIA_SHA256=a42d53d259d1f8f6feefac0da8352c19ca5d9da2303cf1595086867cfb1cd817
# Thu, 15 Nov 2018 11:02:03 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 11:02:04 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:78ada4d5eaa052e2d6ab049ee3371e7d2298a9e3e6dc6e10cf2aa4c0f8704abd`  
		Last Modified: Mon, 12 Nov 2018 20:34:53 GMT  
		Size: 871.6 MB (871606875 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9a5b772c67f53a1d58ffc0a436ed7381268334533ade21d234214327743331f0`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:656552b53724f9068d99df5834bc58f1b81ae27475bc2e0815357733f433b082`  
		Last Modified: Thu, 15 Nov 2018 11:06:03 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650c4670e03462756de34ecc325bfb689d1174200fb39da8db6ab117c9f13b51`  
		Last Modified: Thu, 15 Nov 2018 11:06:03 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cac5f600af3c7551c561a40bbb0677477f66ee760f6141f40a7c5437e2e2820`  
		Last Modified: Thu, 15 Nov 2018 11:06:36 GMT  
		Size: 112.4 MB (112424074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2240233de264837d6d6a63d6dd2dd863584c89ef554b565884a449f40e11cf88`  
		Last Modified: Thu, 15 Nov 2018 11:06:03 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0-windowsservercore-ltsc2016`

```console
$ docker pull julia@sha256:3188cd6107707bc0fe8e5765a90f099ad052dc6c38112b71987d60040d67632e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2608; amd64

### `julia:0-windowsservercore-ltsc2016` - windows version 10.0.14393.2608; amd64

```console
$ docker pull julia@sha256:328a396459a8cf459245cb359bc5966f450e90314c5b3ebf3a8d3a724ab5b931
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5751266739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84d32d0abd89b099d281afde6bff21b6111959e53252e20559b1942e810b9bf0`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 12 Nov 2018 20:18:49 GMT
RUN Install update 10.0.14393.2608
# Thu, 15 Nov 2018 10:44:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:55:26 GMT
ENV JULIA_VERSION=0.7.0
# Thu, 15 Nov 2018 10:55:27 GMT
ENV JULIA_SHA256=a42d53d259d1f8f6feefac0da8352c19ca5d9da2303cf1595086867cfb1cd817
# Thu, 15 Nov 2018 10:58:48 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 10:58:49 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:900b07d4317229a6e17265974aa1dac7af538380b34f978cbe221403c279c09a`  
		Last Modified: Mon, 12 Nov 2018 20:18:49 GMT  
		Size: 1.6 GB (1563935107 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:87926998c696620346cdc0a9a6b8363985c9f433be9759201c3226e8cdf020c1`  
		Last Modified: Thu, 15 Nov 2018 11:02:41 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a45df72d6d8a08a4aea404c18dc3446cd2671eb93c52df200b6e80e92d66b0`  
		Last Modified: Thu, 15 Nov 2018 11:05:14 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37128b38c258c3e43dbc22b1f1ec11044f5f46c80879770d13fff81446eb999a`  
		Last Modified: Thu, 15 Nov 2018 11:05:13 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff9c99fd54b1bc3b1064c6d216ca4666a49eed27ee9a44fe1c3b21b9d1e4a5b6`  
		Last Modified: Thu, 15 Nov 2018 11:05:48 GMT  
		Size: 117.3 MB (117340938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba187f363ac713c54d3887d2982c740beda0cdd6d3ca4fa9ea09e7b11a20b6e5`  
		Last Modified: Thu, 15 Nov 2018 11:05:13 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1`

```console
$ docker pull julia@sha256:40c509b016096ed6a892bde9d8fff9661fc89df03aa3de63c5307a564c6d6054
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2608; amd64
	-	windows version 10.0.16299.785; amd64
	-	windows version 10.0.17134.407; amd64

### `julia:1` - windows version 10.0.14393.2608; amd64

```console
$ docker pull julia@sha256:7c35bece75d647a717364ee3443af2d9abe1cd33dff0e7ec829e8db9b16c71b0
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5750979309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:192ce7a27d405501167bb72a90ed6fb372ad2bb3ad9e490066c12b9356a148ad`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 12 Nov 2018 20:18:49 GMT
RUN Install update 10.0.14393.2608
# Thu, 15 Nov 2018 10:44:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:44:15 GMT
ENV JULIA_VERSION=1.0.2
# Thu, 15 Nov 2018 10:44:15 GMT
ENV JULIA_SHA256=e7214b93184075cac20ec3a478bbe0fb4b7d9358f604e9f32768c2fd2f031877
# Thu, 15 Nov 2018 10:47:58 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 10:47:59 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:900b07d4317229a6e17265974aa1dac7af538380b34f978cbe221403c279c09a`  
		Last Modified: Mon, 12 Nov 2018 20:18:49 GMT  
		Size: 1.6 GB (1563935107 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:87926998c696620346cdc0a9a6b8363985c9f433be9759201c3226e8cdf020c1`  
		Last Modified: Thu, 15 Nov 2018 11:02:41 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e2bbcec74c7e426dcc6164418c98909ac582864ede1698577e82b0ae82065f0`  
		Last Modified: Thu, 15 Nov 2018 11:02:38 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e93f7fbece3e23b903d85ce86a57e86681806138a286229ed50a7f8b73441e42`  
		Last Modified: Thu, 15 Nov 2018 11:02:38 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0396c724c3a9aada4101800699503aa389dfb848f4109c55450a17af18916db3`  
		Last Modified: Thu, 15 Nov 2018 11:03:12 GMT  
		Size: 117.1 MB (117053502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b986bff62f0e41473926c784b5a6ace152b4fd42ad32f8ee6aafd28892f4fb0`  
		Last Modified: Thu, 15 Nov 2018 11:02:38 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1` - windows version 10.0.16299.785; amd64

```console
$ docker pull julia@sha256:6b442acdcc7fc6c50f0f8c4d7010f950d3c773fd7fb58247e1087f385d8359b6
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3258063927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da0f7d2f91c2e848b2d3eb1bde16d5d703dc9201c9ffbd81719d484c7663b48e`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 31 Oct 2018 19:38:09 GMT
RUN Install update 10.0.16299.785
# Thu, 15 Nov 2018 10:48:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:48:16 GMT
ENV JULIA_VERSION=1.0.2
# Thu, 15 Nov 2018 10:48:17 GMT
ENV JULIA_SHA256=e7214b93184075cac20ec3a478bbe0fb4b7d9358f604e9f32768c2fd2f031877
# Thu, 15 Nov 2018 10:51:37 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 10:51:39 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:78ada4d5eaa052e2d6ab049ee3371e7d2298a9e3e6dc6e10cf2aa4c0f8704abd`  
		Last Modified: Mon, 12 Nov 2018 20:34:53 GMT  
		Size: 871.6 MB (871606875 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9a5b772c67f53a1d58ffc0a436ed7381268334533ade21d234214327743331f0`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd8b3e97cf34385d9ed5454f28fdbdf53a05e978306e38543802b2d93fce5df`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba38c63576ca404efcaf7227f7d61a9ee478e4962ef28813553140ce4533b65e`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aefa5fce4b63810ce36860f4978199e1a568104e688e3f5b7e49266294e67ed2`  
		Last Modified: Thu, 15 Nov 2018 11:04:04 GMT  
		Size: 112.2 MB (112151672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4165a0ee76d2b66314ba79f296c23c7dd296d7e43d617574115a0846af5190`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1` - windows version 10.0.17134.407; amd64

```console
$ docker pull julia@sha256:a1b5897c80532613bc25f906b0249fee9144d2c20f13dc47130fb30789d21322
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2352136148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b7335d56cc539adbaefae3222fb6634c6c63ac5b405c22e5286fcecdc36838a`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 02 Nov 2018 19:42:23 GMT
RUN Install update 10.0.17134.407
# Thu, 15 Nov 2018 10:51:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:51:59 GMT
ENV JULIA_VERSION=1.0.2
# Thu, 15 Nov 2018 10:52:00 GMT
ENV JULIA_SHA256=e7214b93184075cac20ec3a478bbe0fb4b7d9358f604e9f32768c2fd2f031877
# Thu, 15 Nov 2018 10:55:08 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 10:55:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e4486f0b239271cca51d8299e172f9335cefd19e924843676add9d58470b19c7`  
		Last Modified: Mon, 12 Nov 2018 20:42:58 GMT  
		Size: 580.4 MB (580390603 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5221af79f3d95df0fd8a8c9a76ffe05ffea9b48cb861ad43ebd1e8b97932608b`  
		Last Modified: Thu, 15 Nov 2018 11:04:23 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a5f718fee6bee6677189772e43198aee291164836cfc0ef405e1a5834c3fdb`  
		Last Modified: Thu, 15 Nov 2018 11:04:23 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dc2f0e3b02eda6bf52043b5b5418b710f26c4b09ecce9813b31a3f52dbbaf5`  
		Last Modified: Thu, 15 Nov 2018 11:04:24 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd0d2056b6c1cb10d5b2669976dff7fdfd0bd14eb1620c905e82f482de01ac8`  
		Last Modified: Thu, 15 Nov 2018 11:04:55 GMT  
		Size: 112.1 MB (112052494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4fcf4d8ca53908c3253adf10da2826e66538a584ba282038d49c44dd55ef24`  
		Last Modified: Thu, 15 Nov 2018 11:04:25 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.0`

```console
$ docker pull julia@sha256:40c509b016096ed6a892bde9d8fff9661fc89df03aa3de63c5307a564c6d6054
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2608; amd64
	-	windows version 10.0.16299.785; amd64
	-	windows version 10.0.17134.407; amd64

### `julia:1.0` - windows version 10.0.14393.2608; amd64

```console
$ docker pull julia@sha256:7c35bece75d647a717364ee3443af2d9abe1cd33dff0e7ec829e8db9b16c71b0
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5750979309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:192ce7a27d405501167bb72a90ed6fb372ad2bb3ad9e490066c12b9356a148ad`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 12 Nov 2018 20:18:49 GMT
RUN Install update 10.0.14393.2608
# Thu, 15 Nov 2018 10:44:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:44:15 GMT
ENV JULIA_VERSION=1.0.2
# Thu, 15 Nov 2018 10:44:15 GMT
ENV JULIA_SHA256=e7214b93184075cac20ec3a478bbe0fb4b7d9358f604e9f32768c2fd2f031877
# Thu, 15 Nov 2018 10:47:58 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 10:47:59 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:900b07d4317229a6e17265974aa1dac7af538380b34f978cbe221403c279c09a`  
		Last Modified: Mon, 12 Nov 2018 20:18:49 GMT  
		Size: 1.6 GB (1563935107 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:87926998c696620346cdc0a9a6b8363985c9f433be9759201c3226e8cdf020c1`  
		Last Modified: Thu, 15 Nov 2018 11:02:41 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e2bbcec74c7e426dcc6164418c98909ac582864ede1698577e82b0ae82065f0`  
		Last Modified: Thu, 15 Nov 2018 11:02:38 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e93f7fbece3e23b903d85ce86a57e86681806138a286229ed50a7f8b73441e42`  
		Last Modified: Thu, 15 Nov 2018 11:02:38 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0396c724c3a9aada4101800699503aa389dfb848f4109c55450a17af18916db3`  
		Last Modified: Thu, 15 Nov 2018 11:03:12 GMT  
		Size: 117.1 MB (117053502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b986bff62f0e41473926c784b5a6ace152b4fd42ad32f8ee6aafd28892f4fb0`  
		Last Modified: Thu, 15 Nov 2018 11:02:38 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0` - windows version 10.0.16299.785; amd64

```console
$ docker pull julia@sha256:6b442acdcc7fc6c50f0f8c4d7010f950d3c773fd7fb58247e1087f385d8359b6
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3258063927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da0f7d2f91c2e848b2d3eb1bde16d5d703dc9201c9ffbd81719d484c7663b48e`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 31 Oct 2018 19:38:09 GMT
RUN Install update 10.0.16299.785
# Thu, 15 Nov 2018 10:48:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:48:16 GMT
ENV JULIA_VERSION=1.0.2
# Thu, 15 Nov 2018 10:48:17 GMT
ENV JULIA_SHA256=e7214b93184075cac20ec3a478bbe0fb4b7d9358f604e9f32768c2fd2f031877
# Thu, 15 Nov 2018 10:51:37 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 10:51:39 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:78ada4d5eaa052e2d6ab049ee3371e7d2298a9e3e6dc6e10cf2aa4c0f8704abd`  
		Last Modified: Mon, 12 Nov 2018 20:34:53 GMT  
		Size: 871.6 MB (871606875 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9a5b772c67f53a1d58ffc0a436ed7381268334533ade21d234214327743331f0`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd8b3e97cf34385d9ed5454f28fdbdf53a05e978306e38543802b2d93fce5df`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba38c63576ca404efcaf7227f7d61a9ee478e4962ef28813553140ce4533b65e`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aefa5fce4b63810ce36860f4978199e1a568104e688e3f5b7e49266294e67ed2`  
		Last Modified: Thu, 15 Nov 2018 11:04:04 GMT  
		Size: 112.2 MB (112151672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4165a0ee76d2b66314ba79f296c23c7dd296d7e43d617574115a0846af5190`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0` - windows version 10.0.17134.407; amd64

```console
$ docker pull julia@sha256:a1b5897c80532613bc25f906b0249fee9144d2c20f13dc47130fb30789d21322
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2352136148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b7335d56cc539adbaefae3222fb6634c6c63ac5b405c22e5286fcecdc36838a`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 02 Nov 2018 19:42:23 GMT
RUN Install update 10.0.17134.407
# Thu, 15 Nov 2018 10:51:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:51:59 GMT
ENV JULIA_VERSION=1.0.2
# Thu, 15 Nov 2018 10:52:00 GMT
ENV JULIA_SHA256=e7214b93184075cac20ec3a478bbe0fb4b7d9358f604e9f32768c2fd2f031877
# Thu, 15 Nov 2018 10:55:08 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 10:55:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e4486f0b239271cca51d8299e172f9335cefd19e924843676add9d58470b19c7`  
		Last Modified: Mon, 12 Nov 2018 20:42:58 GMT  
		Size: 580.4 MB (580390603 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5221af79f3d95df0fd8a8c9a76ffe05ffea9b48cb861ad43ebd1e8b97932608b`  
		Last Modified: Thu, 15 Nov 2018 11:04:23 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a5f718fee6bee6677189772e43198aee291164836cfc0ef405e1a5834c3fdb`  
		Last Modified: Thu, 15 Nov 2018 11:04:23 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dc2f0e3b02eda6bf52043b5b5418b710f26c4b09ecce9813b31a3f52dbbaf5`  
		Last Modified: Thu, 15 Nov 2018 11:04:24 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd0d2056b6c1cb10d5b2669976dff7fdfd0bd14eb1620c905e82f482de01ac8`  
		Last Modified: Thu, 15 Nov 2018 11:04:55 GMT  
		Size: 112.1 MB (112052494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4fcf4d8ca53908c3253adf10da2826e66538a584ba282038d49c44dd55ef24`  
		Last Modified: Thu, 15 Nov 2018 11:04:25 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.0.2`

```console
$ docker pull julia@sha256:40c509b016096ed6a892bde9d8fff9661fc89df03aa3de63c5307a564c6d6054
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2608; amd64
	-	windows version 10.0.16299.785; amd64
	-	windows version 10.0.17134.407; amd64

### `julia:1.0.2` - windows version 10.0.14393.2608; amd64

```console
$ docker pull julia@sha256:7c35bece75d647a717364ee3443af2d9abe1cd33dff0e7ec829e8db9b16c71b0
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5750979309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:192ce7a27d405501167bb72a90ed6fb372ad2bb3ad9e490066c12b9356a148ad`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 12 Nov 2018 20:18:49 GMT
RUN Install update 10.0.14393.2608
# Thu, 15 Nov 2018 10:44:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:44:15 GMT
ENV JULIA_VERSION=1.0.2
# Thu, 15 Nov 2018 10:44:15 GMT
ENV JULIA_SHA256=e7214b93184075cac20ec3a478bbe0fb4b7d9358f604e9f32768c2fd2f031877
# Thu, 15 Nov 2018 10:47:58 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 10:47:59 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:900b07d4317229a6e17265974aa1dac7af538380b34f978cbe221403c279c09a`  
		Last Modified: Mon, 12 Nov 2018 20:18:49 GMT  
		Size: 1.6 GB (1563935107 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:87926998c696620346cdc0a9a6b8363985c9f433be9759201c3226e8cdf020c1`  
		Last Modified: Thu, 15 Nov 2018 11:02:41 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e2bbcec74c7e426dcc6164418c98909ac582864ede1698577e82b0ae82065f0`  
		Last Modified: Thu, 15 Nov 2018 11:02:38 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e93f7fbece3e23b903d85ce86a57e86681806138a286229ed50a7f8b73441e42`  
		Last Modified: Thu, 15 Nov 2018 11:02:38 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0396c724c3a9aada4101800699503aa389dfb848f4109c55450a17af18916db3`  
		Last Modified: Thu, 15 Nov 2018 11:03:12 GMT  
		Size: 117.1 MB (117053502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b986bff62f0e41473926c784b5a6ace152b4fd42ad32f8ee6aafd28892f4fb0`  
		Last Modified: Thu, 15 Nov 2018 11:02:38 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0.2` - windows version 10.0.16299.785; amd64

```console
$ docker pull julia@sha256:6b442acdcc7fc6c50f0f8c4d7010f950d3c773fd7fb58247e1087f385d8359b6
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3258063927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da0f7d2f91c2e848b2d3eb1bde16d5d703dc9201c9ffbd81719d484c7663b48e`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 31 Oct 2018 19:38:09 GMT
RUN Install update 10.0.16299.785
# Thu, 15 Nov 2018 10:48:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:48:16 GMT
ENV JULIA_VERSION=1.0.2
# Thu, 15 Nov 2018 10:48:17 GMT
ENV JULIA_SHA256=e7214b93184075cac20ec3a478bbe0fb4b7d9358f604e9f32768c2fd2f031877
# Thu, 15 Nov 2018 10:51:37 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 10:51:39 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:78ada4d5eaa052e2d6ab049ee3371e7d2298a9e3e6dc6e10cf2aa4c0f8704abd`  
		Last Modified: Mon, 12 Nov 2018 20:34:53 GMT  
		Size: 871.6 MB (871606875 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9a5b772c67f53a1d58ffc0a436ed7381268334533ade21d234214327743331f0`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd8b3e97cf34385d9ed5454f28fdbdf53a05e978306e38543802b2d93fce5df`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba38c63576ca404efcaf7227f7d61a9ee478e4962ef28813553140ce4533b65e`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aefa5fce4b63810ce36860f4978199e1a568104e688e3f5b7e49266294e67ed2`  
		Last Modified: Thu, 15 Nov 2018 11:04:04 GMT  
		Size: 112.2 MB (112151672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4165a0ee76d2b66314ba79f296c23c7dd296d7e43d617574115a0846af5190`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0.2` - windows version 10.0.17134.407; amd64

```console
$ docker pull julia@sha256:a1b5897c80532613bc25f906b0249fee9144d2c20f13dc47130fb30789d21322
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2352136148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b7335d56cc539adbaefae3222fb6634c6c63ac5b405c22e5286fcecdc36838a`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 02 Nov 2018 19:42:23 GMT
RUN Install update 10.0.17134.407
# Thu, 15 Nov 2018 10:51:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:51:59 GMT
ENV JULIA_VERSION=1.0.2
# Thu, 15 Nov 2018 10:52:00 GMT
ENV JULIA_SHA256=e7214b93184075cac20ec3a478bbe0fb4b7d9358f604e9f32768c2fd2f031877
# Thu, 15 Nov 2018 10:55:08 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 10:55:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e4486f0b239271cca51d8299e172f9335cefd19e924843676add9d58470b19c7`  
		Last Modified: Mon, 12 Nov 2018 20:42:58 GMT  
		Size: 580.4 MB (580390603 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5221af79f3d95df0fd8a8c9a76ffe05ffea9b48cb861ad43ebd1e8b97932608b`  
		Last Modified: Thu, 15 Nov 2018 11:04:23 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a5f718fee6bee6677189772e43198aee291164836cfc0ef405e1a5834c3fdb`  
		Last Modified: Thu, 15 Nov 2018 11:04:23 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dc2f0e3b02eda6bf52043b5b5418b710f26c4b09ecce9813b31a3f52dbbaf5`  
		Last Modified: Thu, 15 Nov 2018 11:04:24 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd0d2056b6c1cb10d5b2669976dff7fdfd0bd14eb1620c905e82f482de01ac8`  
		Last Modified: Thu, 15 Nov 2018 11:04:55 GMT  
		Size: 112.1 MB (112052494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4fcf4d8ca53908c3253adf10da2826e66538a584ba282038d49c44dd55ef24`  
		Last Modified: Thu, 15 Nov 2018 11:04:25 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.0.2-stretch`

**does not exist** (yet?)

## `julia:1.0.2-windowsservercore-1709`

```console
$ docker pull julia@sha256:595fbb4002d010a8f383ce456b37ec5e575b3f5b363d9050859a099148879fa5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.785; amd64

### `julia:1.0.2-windowsservercore-1709` - windows version 10.0.16299.785; amd64

```console
$ docker pull julia@sha256:6b442acdcc7fc6c50f0f8c4d7010f950d3c773fd7fb58247e1087f385d8359b6
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3258063927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da0f7d2f91c2e848b2d3eb1bde16d5d703dc9201c9ffbd81719d484c7663b48e`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 31 Oct 2018 19:38:09 GMT
RUN Install update 10.0.16299.785
# Thu, 15 Nov 2018 10:48:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:48:16 GMT
ENV JULIA_VERSION=1.0.2
# Thu, 15 Nov 2018 10:48:17 GMT
ENV JULIA_SHA256=e7214b93184075cac20ec3a478bbe0fb4b7d9358f604e9f32768c2fd2f031877
# Thu, 15 Nov 2018 10:51:37 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 10:51:39 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:78ada4d5eaa052e2d6ab049ee3371e7d2298a9e3e6dc6e10cf2aa4c0f8704abd`  
		Last Modified: Mon, 12 Nov 2018 20:34:53 GMT  
		Size: 871.6 MB (871606875 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9a5b772c67f53a1d58ffc0a436ed7381268334533ade21d234214327743331f0`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd8b3e97cf34385d9ed5454f28fdbdf53a05e978306e38543802b2d93fce5df`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba38c63576ca404efcaf7227f7d61a9ee478e4962ef28813553140ce4533b65e`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aefa5fce4b63810ce36860f4978199e1a568104e688e3f5b7e49266294e67ed2`  
		Last Modified: Thu, 15 Nov 2018 11:04:04 GMT  
		Size: 112.2 MB (112151672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4165a0ee76d2b66314ba79f296c23c7dd296d7e43d617574115a0846af5190`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.0.2-windowsservercore-1803`

```console
$ docker pull julia@sha256:81f353e3fa4d33a1660e5460692e9d05bcb904bd8fcbbcec6231457d3513277c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.407; amd64

### `julia:1.0.2-windowsservercore-1803` - windows version 10.0.17134.407; amd64

```console
$ docker pull julia@sha256:a1b5897c80532613bc25f906b0249fee9144d2c20f13dc47130fb30789d21322
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2352136148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b7335d56cc539adbaefae3222fb6634c6c63ac5b405c22e5286fcecdc36838a`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 02 Nov 2018 19:42:23 GMT
RUN Install update 10.0.17134.407
# Thu, 15 Nov 2018 10:51:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:51:59 GMT
ENV JULIA_VERSION=1.0.2
# Thu, 15 Nov 2018 10:52:00 GMT
ENV JULIA_SHA256=e7214b93184075cac20ec3a478bbe0fb4b7d9358f604e9f32768c2fd2f031877
# Thu, 15 Nov 2018 10:55:08 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 10:55:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e4486f0b239271cca51d8299e172f9335cefd19e924843676add9d58470b19c7`  
		Last Modified: Mon, 12 Nov 2018 20:42:58 GMT  
		Size: 580.4 MB (580390603 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5221af79f3d95df0fd8a8c9a76ffe05ffea9b48cb861ad43ebd1e8b97932608b`  
		Last Modified: Thu, 15 Nov 2018 11:04:23 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a5f718fee6bee6677189772e43198aee291164836cfc0ef405e1a5834c3fdb`  
		Last Modified: Thu, 15 Nov 2018 11:04:23 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dc2f0e3b02eda6bf52043b5b5418b710f26c4b09ecce9813b31a3f52dbbaf5`  
		Last Modified: Thu, 15 Nov 2018 11:04:24 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd0d2056b6c1cb10d5b2669976dff7fdfd0bd14eb1620c905e82f482de01ac8`  
		Last Modified: Thu, 15 Nov 2018 11:04:55 GMT  
		Size: 112.1 MB (112052494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4fcf4d8ca53908c3253adf10da2826e66538a584ba282038d49c44dd55ef24`  
		Last Modified: Thu, 15 Nov 2018 11:04:25 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.0.2-windowsservercore-ltsc2016`

```console
$ docker pull julia@sha256:4a6acf244cc1fae83789c8d3e28f52ad5572901c0f013e5585925edfae293043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2608; amd64

### `julia:1.0.2-windowsservercore-ltsc2016` - windows version 10.0.14393.2608; amd64

```console
$ docker pull julia@sha256:7c35bece75d647a717364ee3443af2d9abe1cd33dff0e7ec829e8db9b16c71b0
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5750979309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:192ce7a27d405501167bb72a90ed6fb372ad2bb3ad9e490066c12b9356a148ad`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 12 Nov 2018 20:18:49 GMT
RUN Install update 10.0.14393.2608
# Thu, 15 Nov 2018 10:44:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:44:15 GMT
ENV JULIA_VERSION=1.0.2
# Thu, 15 Nov 2018 10:44:15 GMT
ENV JULIA_SHA256=e7214b93184075cac20ec3a478bbe0fb4b7d9358f604e9f32768c2fd2f031877
# Thu, 15 Nov 2018 10:47:58 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 10:47:59 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:900b07d4317229a6e17265974aa1dac7af538380b34f978cbe221403c279c09a`  
		Last Modified: Mon, 12 Nov 2018 20:18:49 GMT  
		Size: 1.6 GB (1563935107 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:87926998c696620346cdc0a9a6b8363985c9f433be9759201c3226e8cdf020c1`  
		Last Modified: Thu, 15 Nov 2018 11:02:41 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e2bbcec74c7e426dcc6164418c98909ac582864ede1698577e82b0ae82065f0`  
		Last Modified: Thu, 15 Nov 2018 11:02:38 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e93f7fbece3e23b903d85ce86a57e86681806138a286229ed50a7f8b73441e42`  
		Last Modified: Thu, 15 Nov 2018 11:02:38 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0396c724c3a9aada4101800699503aa389dfb848f4109c55450a17af18916db3`  
		Last Modified: Thu, 15 Nov 2018 11:03:12 GMT  
		Size: 117.1 MB (117053502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b986bff62f0e41473926c784b5a6ace152b4fd42ad32f8ee6aafd28892f4fb0`  
		Last Modified: Thu, 15 Nov 2018 11:02:38 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.0-stretch`

```console
$ docker pull julia@sha256:c774e0fb44d0a7d01612de0f5c5edb595e23c094ba2563a2bd025dd90cbdc4ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `julia:1.0-stretch` - linux; amd64

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

### `julia:1.0-stretch` - linux; 386

```console
$ docker pull julia@sha256:964afa7d14fc6d7527e7cccb8cd3af26a6110a3cc4661bd210c2a86f925cc818
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.7 MB (147733518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d07e907b931767226005896af99ba1db17628b268f517ed15cda3118ff1b717`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:18:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:18:19 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 16 Oct 2018 22:18:19 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 22:18:19 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 16 Oct 2018 22:18:20 GMT
ENV JULIA_VERSION=1.0.1
# Tue, 16 Oct 2018 22:18:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='9ffbcf7f4a111e13415954caccdd1ce90b5c835cee9f62d6ac708f5b752c87dd' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='e2ce5fa564242c2dbb836f9493166ce6eaaec8f46db9861b4cdad047497dd4c4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 16 Oct 2018 22:18:38 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67646ee095582e950a6897aa23ff101105b6736b5fa9929318f6416bb7072107`  
		Last Modified: Tue, 16 Oct 2018 22:20:31 GMT  
		Size: 9.5 MB (9458396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb2f350f45b31feaf478daade0ec52288d62cb275a5d2162a1b8716785fcbf2`  
		Last Modified: Tue, 16 Oct 2018 22:20:51 GMT  
		Size: 92.2 MB (92235900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.0-windowsservercore-1709`

```console
$ docker pull julia@sha256:595fbb4002d010a8f383ce456b37ec5e575b3f5b363d9050859a099148879fa5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.785; amd64

### `julia:1.0-windowsservercore-1709` - windows version 10.0.16299.785; amd64

```console
$ docker pull julia@sha256:6b442acdcc7fc6c50f0f8c4d7010f950d3c773fd7fb58247e1087f385d8359b6
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3258063927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da0f7d2f91c2e848b2d3eb1bde16d5d703dc9201c9ffbd81719d484c7663b48e`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 31 Oct 2018 19:38:09 GMT
RUN Install update 10.0.16299.785
# Thu, 15 Nov 2018 10:48:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:48:16 GMT
ENV JULIA_VERSION=1.0.2
# Thu, 15 Nov 2018 10:48:17 GMT
ENV JULIA_SHA256=e7214b93184075cac20ec3a478bbe0fb4b7d9358f604e9f32768c2fd2f031877
# Thu, 15 Nov 2018 10:51:37 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 10:51:39 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:78ada4d5eaa052e2d6ab049ee3371e7d2298a9e3e6dc6e10cf2aa4c0f8704abd`  
		Last Modified: Mon, 12 Nov 2018 20:34:53 GMT  
		Size: 871.6 MB (871606875 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9a5b772c67f53a1d58ffc0a436ed7381268334533ade21d234214327743331f0`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd8b3e97cf34385d9ed5454f28fdbdf53a05e978306e38543802b2d93fce5df`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba38c63576ca404efcaf7227f7d61a9ee478e4962ef28813553140ce4533b65e`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aefa5fce4b63810ce36860f4978199e1a568104e688e3f5b7e49266294e67ed2`  
		Last Modified: Thu, 15 Nov 2018 11:04:04 GMT  
		Size: 112.2 MB (112151672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4165a0ee76d2b66314ba79f296c23c7dd296d7e43d617574115a0846af5190`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.0-windowsservercore-1803`

```console
$ docker pull julia@sha256:81f353e3fa4d33a1660e5460692e9d05bcb904bd8fcbbcec6231457d3513277c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.407; amd64

### `julia:1.0-windowsservercore-1803` - windows version 10.0.17134.407; amd64

```console
$ docker pull julia@sha256:a1b5897c80532613bc25f906b0249fee9144d2c20f13dc47130fb30789d21322
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2352136148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b7335d56cc539adbaefae3222fb6634c6c63ac5b405c22e5286fcecdc36838a`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 02 Nov 2018 19:42:23 GMT
RUN Install update 10.0.17134.407
# Thu, 15 Nov 2018 10:51:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:51:59 GMT
ENV JULIA_VERSION=1.0.2
# Thu, 15 Nov 2018 10:52:00 GMT
ENV JULIA_SHA256=e7214b93184075cac20ec3a478bbe0fb4b7d9358f604e9f32768c2fd2f031877
# Thu, 15 Nov 2018 10:55:08 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 10:55:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e4486f0b239271cca51d8299e172f9335cefd19e924843676add9d58470b19c7`  
		Last Modified: Mon, 12 Nov 2018 20:42:58 GMT  
		Size: 580.4 MB (580390603 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5221af79f3d95df0fd8a8c9a76ffe05ffea9b48cb861ad43ebd1e8b97932608b`  
		Last Modified: Thu, 15 Nov 2018 11:04:23 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a5f718fee6bee6677189772e43198aee291164836cfc0ef405e1a5834c3fdb`  
		Last Modified: Thu, 15 Nov 2018 11:04:23 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dc2f0e3b02eda6bf52043b5b5418b710f26c4b09ecce9813b31a3f52dbbaf5`  
		Last Modified: Thu, 15 Nov 2018 11:04:24 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd0d2056b6c1cb10d5b2669976dff7fdfd0bd14eb1620c905e82f482de01ac8`  
		Last Modified: Thu, 15 Nov 2018 11:04:55 GMT  
		Size: 112.1 MB (112052494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4fcf4d8ca53908c3253adf10da2826e66538a584ba282038d49c44dd55ef24`  
		Last Modified: Thu, 15 Nov 2018 11:04:25 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.0-windowsservercore-ltsc2016`

```console
$ docker pull julia@sha256:4a6acf244cc1fae83789c8d3e28f52ad5572901c0f013e5585925edfae293043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2608; amd64

### `julia:1.0-windowsservercore-ltsc2016` - windows version 10.0.14393.2608; amd64

```console
$ docker pull julia@sha256:7c35bece75d647a717364ee3443af2d9abe1cd33dff0e7ec829e8db9b16c71b0
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5750979309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:192ce7a27d405501167bb72a90ed6fb372ad2bb3ad9e490066c12b9356a148ad`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 12 Nov 2018 20:18:49 GMT
RUN Install update 10.0.14393.2608
# Thu, 15 Nov 2018 10:44:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:44:15 GMT
ENV JULIA_VERSION=1.0.2
# Thu, 15 Nov 2018 10:44:15 GMT
ENV JULIA_SHA256=e7214b93184075cac20ec3a478bbe0fb4b7d9358f604e9f32768c2fd2f031877
# Thu, 15 Nov 2018 10:47:58 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 10:47:59 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:900b07d4317229a6e17265974aa1dac7af538380b34f978cbe221403c279c09a`  
		Last Modified: Mon, 12 Nov 2018 20:18:49 GMT  
		Size: 1.6 GB (1563935107 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:87926998c696620346cdc0a9a6b8363985c9f433be9759201c3226e8cdf020c1`  
		Last Modified: Thu, 15 Nov 2018 11:02:41 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e2bbcec74c7e426dcc6164418c98909ac582864ede1698577e82b0ae82065f0`  
		Last Modified: Thu, 15 Nov 2018 11:02:38 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e93f7fbece3e23b903d85ce86a57e86681806138a286229ed50a7f8b73441e42`  
		Last Modified: Thu, 15 Nov 2018 11:02:38 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0396c724c3a9aada4101800699503aa389dfb848f4109c55450a17af18916db3`  
		Last Modified: Thu, 15 Nov 2018 11:03:12 GMT  
		Size: 117.1 MB (117053502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b986bff62f0e41473926c784b5a6ace152b4fd42ad32f8ee6aafd28892f4fb0`  
		Last Modified: Thu, 15 Nov 2018 11:02:38 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1-stretch`

```console
$ docker pull julia@sha256:c774e0fb44d0a7d01612de0f5c5edb595e23c094ba2563a2bd025dd90cbdc4ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `julia:1-stretch` - linux; amd64

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

### `julia:1-stretch` - linux; 386

```console
$ docker pull julia@sha256:964afa7d14fc6d7527e7cccb8cd3af26a6110a3cc4661bd210c2a86f925cc818
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.7 MB (147733518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d07e907b931767226005896af99ba1db17628b268f517ed15cda3118ff1b717`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:18:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:18:19 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 16 Oct 2018 22:18:19 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 22:18:19 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 16 Oct 2018 22:18:20 GMT
ENV JULIA_VERSION=1.0.1
# Tue, 16 Oct 2018 22:18:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='9ffbcf7f4a111e13415954caccdd1ce90b5c835cee9f62d6ac708f5b752c87dd' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='e2ce5fa564242c2dbb836f9493166ce6eaaec8f46db9861b4cdad047497dd4c4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 16 Oct 2018 22:18:38 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67646ee095582e950a6897aa23ff101105b6736b5fa9929318f6416bb7072107`  
		Last Modified: Tue, 16 Oct 2018 22:20:31 GMT  
		Size: 9.5 MB (9458396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb2f350f45b31feaf478daade0ec52288d62cb275a5d2162a1b8716785fcbf2`  
		Last Modified: Tue, 16 Oct 2018 22:20:51 GMT  
		Size: 92.2 MB (92235900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1-windowsservercore-1709`

```console
$ docker pull julia@sha256:595fbb4002d010a8f383ce456b37ec5e575b3f5b363d9050859a099148879fa5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.785; amd64

### `julia:1-windowsservercore-1709` - windows version 10.0.16299.785; amd64

```console
$ docker pull julia@sha256:6b442acdcc7fc6c50f0f8c4d7010f950d3c773fd7fb58247e1087f385d8359b6
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3258063927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da0f7d2f91c2e848b2d3eb1bde16d5d703dc9201c9ffbd81719d484c7663b48e`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 31 Oct 2018 19:38:09 GMT
RUN Install update 10.0.16299.785
# Thu, 15 Nov 2018 10:48:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:48:16 GMT
ENV JULIA_VERSION=1.0.2
# Thu, 15 Nov 2018 10:48:17 GMT
ENV JULIA_SHA256=e7214b93184075cac20ec3a478bbe0fb4b7d9358f604e9f32768c2fd2f031877
# Thu, 15 Nov 2018 10:51:37 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 10:51:39 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:78ada4d5eaa052e2d6ab049ee3371e7d2298a9e3e6dc6e10cf2aa4c0f8704abd`  
		Last Modified: Mon, 12 Nov 2018 20:34:53 GMT  
		Size: 871.6 MB (871606875 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9a5b772c67f53a1d58ffc0a436ed7381268334533ade21d234214327743331f0`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd8b3e97cf34385d9ed5454f28fdbdf53a05e978306e38543802b2d93fce5df`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba38c63576ca404efcaf7227f7d61a9ee478e4962ef28813553140ce4533b65e`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aefa5fce4b63810ce36860f4978199e1a568104e688e3f5b7e49266294e67ed2`  
		Last Modified: Thu, 15 Nov 2018 11:04:04 GMT  
		Size: 112.2 MB (112151672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4165a0ee76d2b66314ba79f296c23c7dd296d7e43d617574115a0846af5190`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1-windowsservercore-1803`

```console
$ docker pull julia@sha256:81f353e3fa4d33a1660e5460692e9d05bcb904bd8fcbbcec6231457d3513277c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.407; amd64

### `julia:1-windowsservercore-1803` - windows version 10.0.17134.407; amd64

```console
$ docker pull julia@sha256:a1b5897c80532613bc25f906b0249fee9144d2c20f13dc47130fb30789d21322
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2352136148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b7335d56cc539adbaefae3222fb6634c6c63ac5b405c22e5286fcecdc36838a`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 02 Nov 2018 19:42:23 GMT
RUN Install update 10.0.17134.407
# Thu, 15 Nov 2018 10:51:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:51:59 GMT
ENV JULIA_VERSION=1.0.2
# Thu, 15 Nov 2018 10:52:00 GMT
ENV JULIA_SHA256=e7214b93184075cac20ec3a478bbe0fb4b7d9358f604e9f32768c2fd2f031877
# Thu, 15 Nov 2018 10:55:08 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 10:55:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e4486f0b239271cca51d8299e172f9335cefd19e924843676add9d58470b19c7`  
		Last Modified: Mon, 12 Nov 2018 20:42:58 GMT  
		Size: 580.4 MB (580390603 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5221af79f3d95df0fd8a8c9a76ffe05ffea9b48cb861ad43ebd1e8b97932608b`  
		Last Modified: Thu, 15 Nov 2018 11:04:23 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a5f718fee6bee6677189772e43198aee291164836cfc0ef405e1a5834c3fdb`  
		Last Modified: Thu, 15 Nov 2018 11:04:23 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dc2f0e3b02eda6bf52043b5b5418b710f26c4b09ecce9813b31a3f52dbbaf5`  
		Last Modified: Thu, 15 Nov 2018 11:04:24 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd0d2056b6c1cb10d5b2669976dff7fdfd0bd14eb1620c905e82f482de01ac8`  
		Last Modified: Thu, 15 Nov 2018 11:04:55 GMT  
		Size: 112.1 MB (112052494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4fcf4d8ca53908c3253adf10da2826e66538a584ba282038d49c44dd55ef24`  
		Last Modified: Thu, 15 Nov 2018 11:04:25 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1-windowsservercore-ltsc2016`

```console
$ docker pull julia@sha256:4a6acf244cc1fae83789c8d3e28f52ad5572901c0f013e5585925edfae293043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2608; amd64

### `julia:1-windowsservercore-ltsc2016` - windows version 10.0.14393.2608; amd64

```console
$ docker pull julia@sha256:7c35bece75d647a717364ee3443af2d9abe1cd33dff0e7ec829e8db9b16c71b0
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5750979309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:192ce7a27d405501167bb72a90ed6fb372ad2bb3ad9e490066c12b9356a148ad`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 12 Nov 2018 20:18:49 GMT
RUN Install update 10.0.14393.2608
# Thu, 15 Nov 2018 10:44:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:44:15 GMT
ENV JULIA_VERSION=1.0.2
# Thu, 15 Nov 2018 10:44:15 GMT
ENV JULIA_SHA256=e7214b93184075cac20ec3a478bbe0fb4b7d9358f604e9f32768c2fd2f031877
# Thu, 15 Nov 2018 10:47:58 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 10:47:59 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:900b07d4317229a6e17265974aa1dac7af538380b34f978cbe221403c279c09a`  
		Last Modified: Mon, 12 Nov 2018 20:18:49 GMT  
		Size: 1.6 GB (1563935107 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:87926998c696620346cdc0a9a6b8363985c9f433be9759201c3226e8cdf020c1`  
		Last Modified: Thu, 15 Nov 2018 11:02:41 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e2bbcec74c7e426dcc6164418c98909ac582864ede1698577e82b0ae82065f0`  
		Last Modified: Thu, 15 Nov 2018 11:02:38 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e93f7fbece3e23b903d85ce86a57e86681806138a286229ed50a7f8b73441e42`  
		Last Modified: Thu, 15 Nov 2018 11:02:38 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0396c724c3a9aada4101800699503aa389dfb848f4109c55450a17af18916db3`  
		Last Modified: Thu, 15 Nov 2018 11:03:12 GMT  
		Size: 117.1 MB (117053502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b986bff62f0e41473926c784b5a6ace152b4fd42ad32f8ee6aafd28892f4fb0`  
		Last Modified: Thu, 15 Nov 2018 11:02:38 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:latest`

```console
$ docker pull julia@sha256:40c509b016096ed6a892bde9d8fff9661fc89df03aa3de63c5307a564c6d6054
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2608; amd64
	-	windows version 10.0.16299.785; amd64
	-	windows version 10.0.17134.407; amd64

### `julia:latest` - windows version 10.0.14393.2608; amd64

```console
$ docker pull julia@sha256:7c35bece75d647a717364ee3443af2d9abe1cd33dff0e7ec829e8db9b16c71b0
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5750979309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:192ce7a27d405501167bb72a90ed6fb372ad2bb3ad9e490066c12b9356a148ad`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 12 Nov 2018 20:18:49 GMT
RUN Install update 10.0.14393.2608
# Thu, 15 Nov 2018 10:44:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:44:15 GMT
ENV JULIA_VERSION=1.0.2
# Thu, 15 Nov 2018 10:44:15 GMT
ENV JULIA_SHA256=e7214b93184075cac20ec3a478bbe0fb4b7d9358f604e9f32768c2fd2f031877
# Thu, 15 Nov 2018 10:47:58 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 10:47:59 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:900b07d4317229a6e17265974aa1dac7af538380b34f978cbe221403c279c09a`  
		Last Modified: Mon, 12 Nov 2018 20:18:49 GMT  
		Size: 1.6 GB (1563935107 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:87926998c696620346cdc0a9a6b8363985c9f433be9759201c3226e8cdf020c1`  
		Last Modified: Thu, 15 Nov 2018 11:02:41 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e2bbcec74c7e426dcc6164418c98909ac582864ede1698577e82b0ae82065f0`  
		Last Modified: Thu, 15 Nov 2018 11:02:38 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e93f7fbece3e23b903d85ce86a57e86681806138a286229ed50a7f8b73441e42`  
		Last Modified: Thu, 15 Nov 2018 11:02:38 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0396c724c3a9aada4101800699503aa389dfb848f4109c55450a17af18916db3`  
		Last Modified: Thu, 15 Nov 2018 11:03:12 GMT  
		Size: 117.1 MB (117053502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b986bff62f0e41473926c784b5a6ace152b4fd42ad32f8ee6aafd28892f4fb0`  
		Last Modified: Thu, 15 Nov 2018 11:02:38 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - windows version 10.0.16299.785; amd64

```console
$ docker pull julia@sha256:6b442acdcc7fc6c50f0f8c4d7010f950d3c773fd7fb58247e1087f385d8359b6
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3258063927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da0f7d2f91c2e848b2d3eb1bde16d5d703dc9201c9ffbd81719d484c7663b48e`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 31 Oct 2018 19:38:09 GMT
RUN Install update 10.0.16299.785
# Thu, 15 Nov 2018 10:48:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:48:16 GMT
ENV JULIA_VERSION=1.0.2
# Thu, 15 Nov 2018 10:48:17 GMT
ENV JULIA_SHA256=e7214b93184075cac20ec3a478bbe0fb4b7d9358f604e9f32768c2fd2f031877
# Thu, 15 Nov 2018 10:51:37 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 10:51:39 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:78ada4d5eaa052e2d6ab049ee3371e7d2298a9e3e6dc6e10cf2aa4c0f8704abd`  
		Last Modified: Mon, 12 Nov 2018 20:34:53 GMT  
		Size: 871.6 MB (871606875 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9a5b772c67f53a1d58ffc0a436ed7381268334533ade21d234214327743331f0`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd8b3e97cf34385d9ed5454f28fdbdf53a05e978306e38543802b2d93fce5df`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba38c63576ca404efcaf7227f7d61a9ee478e4962ef28813553140ce4533b65e`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aefa5fce4b63810ce36860f4978199e1a568104e688e3f5b7e49266294e67ed2`  
		Last Modified: Thu, 15 Nov 2018 11:04:04 GMT  
		Size: 112.2 MB (112151672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4165a0ee76d2b66314ba79f296c23c7dd296d7e43d617574115a0846af5190`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - windows version 10.0.17134.407; amd64

```console
$ docker pull julia@sha256:a1b5897c80532613bc25f906b0249fee9144d2c20f13dc47130fb30789d21322
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2352136148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b7335d56cc539adbaefae3222fb6634c6c63ac5b405c22e5286fcecdc36838a`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 02 Nov 2018 19:42:23 GMT
RUN Install update 10.0.17134.407
# Thu, 15 Nov 2018 10:51:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:51:59 GMT
ENV JULIA_VERSION=1.0.2
# Thu, 15 Nov 2018 10:52:00 GMT
ENV JULIA_SHA256=e7214b93184075cac20ec3a478bbe0fb4b7d9358f604e9f32768c2fd2f031877
# Thu, 15 Nov 2018 10:55:08 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 10:55:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e4486f0b239271cca51d8299e172f9335cefd19e924843676add9d58470b19c7`  
		Last Modified: Mon, 12 Nov 2018 20:42:58 GMT  
		Size: 580.4 MB (580390603 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5221af79f3d95df0fd8a8c9a76ffe05ffea9b48cb861ad43ebd1e8b97932608b`  
		Last Modified: Thu, 15 Nov 2018 11:04:23 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a5f718fee6bee6677189772e43198aee291164836cfc0ef405e1a5834c3fdb`  
		Last Modified: Thu, 15 Nov 2018 11:04:23 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dc2f0e3b02eda6bf52043b5b5418b710f26c4b09ecce9813b31a3f52dbbaf5`  
		Last Modified: Thu, 15 Nov 2018 11:04:24 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd0d2056b6c1cb10d5b2669976dff7fdfd0bd14eb1620c905e82f482de01ac8`  
		Last Modified: Thu, 15 Nov 2018 11:04:55 GMT  
		Size: 112.1 MB (112052494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4fcf4d8ca53908c3253adf10da2826e66538a584ba282038d49c44dd55ef24`  
		Last Modified: Thu, 15 Nov 2018 11:04:25 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:stretch`

```console
$ docker pull julia@sha256:c774e0fb44d0a7d01612de0f5c5edb595e23c094ba2563a2bd025dd90cbdc4ed
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
$ docker pull julia@sha256:964afa7d14fc6d7527e7cccb8cd3af26a6110a3cc4661bd210c2a86f925cc818
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.7 MB (147733518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d07e907b931767226005896af99ba1db17628b268f517ed15cda3118ff1b717`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:18:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:18:19 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 16 Oct 2018 22:18:19 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 22:18:19 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 16 Oct 2018 22:18:20 GMT
ENV JULIA_VERSION=1.0.1
# Tue, 16 Oct 2018 22:18:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='9ffbcf7f4a111e13415954caccdd1ce90b5c835cee9f62d6ac708f5b752c87dd' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='e2ce5fa564242c2dbb836f9493166ce6eaaec8f46db9861b4cdad047497dd4c4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Tue, 16 Oct 2018 22:18:38 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67646ee095582e950a6897aa23ff101105b6736b5fa9929318f6416bb7072107`  
		Last Modified: Tue, 16 Oct 2018 22:20:31 GMT  
		Size: 9.5 MB (9458396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb2f350f45b31feaf478daade0ec52288d62cb275a5d2162a1b8716785fcbf2`  
		Last Modified: Tue, 16 Oct 2018 22:20:51 GMT  
		Size: 92.2 MB (92235900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:windowsservercore-1709`

```console
$ docker pull julia@sha256:595fbb4002d010a8f383ce456b37ec5e575b3f5b363d9050859a099148879fa5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.785; amd64

### `julia:windowsservercore-1709` - windows version 10.0.16299.785; amd64

```console
$ docker pull julia@sha256:6b442acdcc7fc6c50f0f8c4d7010f950d3c773fd7fb58247e1087f385d8359b6
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3258063927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da0f7d2f91c2e848b2d3eb1bde16d5d703dc9201c9ffbd81719d484c7663b48e`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 31 Oct 2018 19:38:09 GMT
RUN Install update 10.0.16299.785
# Thu, 15 Nov 2018 10:48:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:48:16 GMT
ENV JULIA_VERSION=1.0.2
# Thu, 15 Nov 2018 10:48:17 GMT
ENV JULIA_SHA256=e7214b93184075cac20ec3a478bbe0fb4b7d9358f604e9f32768c2fd2f031877
# Thu, 15 Nov 2018 10:51:37 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 10:51:39 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:78ada4d5eaa052e2d6ab049ee3371e7d2298a9e3e6dc6e10cf2aa4c0f8704abd`  
		Last Modified: Mon, 12 Nov 2018 20:34:53 GMT  
		Size: 871.6 MB (871606875 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9a5b772c67f53a1d58ffc0a436ed7381268334533ade21d234214327743331f0`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd8b3e97cf34385d9ed5454f28fdbdf53a05e978306e38543802b2d93fce5df`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba38c63576ca404efcaf7227f7d61a9ee478e4962ef28813553140ce4533b65e`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aefa5fce4b63810ce36860f4978199e1a568104e688e3f5b7e49266294e67ed2`  
		Last Modified: Thu, 15 Nov 2018 11:04:04 GMT  
		Size: 112.2 MB (112151672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4165a0ee76d2b66314ba79f296c23c7dd296d7e43d617574115a0846af5190`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:windowsservercore-1803`

```console
$ docker pull julia@sha256:81f353e3fa4d33a1660e5460692e9d05bcb904bd8fcbbcec6231457d3513277c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.407; amd64

### `julia:windowsservercore-1803` - windows version 10.0.17134.407; amd64

```console
$ docker pull julia@sha256:a1b5897c80532613bc25f906b0249fee9144d2c20f13dc47130fb30789d21322
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2352136148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b7335d56cc539adbaefae3222fb6634c6c63ac5b405c22e5286fcecdc36838a`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 02 Nov 2018 19:42:23 GMT
RUN Install update 10.0.17134.407
# Thu, 15 Nov 2018 10:51:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:51:59 GMT
ENV JULIA_VERSION=1.0.2
# Thu, 15 Nov 2018 10:52:00 GMT
ENV JULIA_SHA256=e7214b93184075cac20ec3a478bbe0fb4b7d9358f604e9f32768c2fd2f031877
# Thu, 15 Nov 2018 10:55:08 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 10:55:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e4486f0b239271cca51d8299e172f9335cefd19e924843676add9d58470b19c7`  
		Last Modified: Mon, 12 Nov 2018 20:42:58 GMT  
		Size: 580.4 MB (580390603 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5221af79f3d95df0fd8a8c9a76ffe05ffea9b48cb861ad43ebd1e8b97932608b`  
		Last Modified: Thu, 15 Nov 2018 11:04:23 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a5f718fee6bee6677189772e43198aee291164836cfc0ef405e1a5834c3fdb`  
		Last Modified: Thu, 15 Nov 2018 11:04:23 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dc2f0e3b02eda6bf52043b5b5418b710f26c4b09ecce9813b31a3f52dbbaf5`  
		Last Modified: Thu, 15 Nov 2018 11:04:24 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd0d2056b6c1cb10d5b2669976dff7fdfd0bd14eb1620c905e82f482de01ac8`  
		Last Modified: Thu, 15 Nov 2018 11:04:55 GMT  
		Size: 112.1 MB (112052494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4fcf4d8ca53908c3253adf10da2826e66538a584ba282038d49c44dd55ef24`  
		Last Modified: Thu, 15 Nov 2018 11:04:25 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:windowsservercore-ltsc2016`

```console
$ docker pull julia@sha256:4a6acf244cc1fae83789c8d3e28f52ad5572901c0f013e5585925edfae293043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2608; amd64

### `julia:windowsservercore-ltsc2016` - windows version 10.0.14393.2608; amd64

```console
$ docker pull julia@sha256:7c35bece75d647a717364ee3443af2d9abe1cd33dff0e7ec829e8db9b16c71b0
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5750979309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:192ce7a27d405501167bb72a90ed6fb372ad2bb3ad9e490066c12b9356a148ad`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 12 Nov 2018 20:18:49 GMT
RUN Install update 10.0.14393.2608
# Thu, 15 Nov 2018 10:44:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:44:15 GMT
ENV JULIA_VERSION=1.0.2
# Thu, 15 Nov 2018 10:44:15 GMT
ENV JULIA_SHA256=e7214b93184075cac20ec3a478bbe0fb4b7d9358f604e9f32768c2fd2f031877
# Thu, 15 Nov 2018 10:47:58 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 10:47:59 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:900b07d4317229a6e17265974aa1dac7af538380b34f978cbe221403c279c09a`  
		Last Modified: Mon, 12 Nov 2018 20:18:49 GMT  
		Size: 1.6 GB (1563935107 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:87926998c696620346cdc0a9a6b8363985c9f433be9759201c3226e8cdf020c1`  
		Last Modified: Thu, 15 Nov 2018 11:02:41 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e2bbcec74c7e426dcc6164418c98909ac582864ede1698577e82b0ae82065f0`  
		Last Modified: Thu, 15 Nov 2018 11:02:38 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e93f7fbece3e23b903d85ce86a57e86681806138a286229ed50a7f8b73441e42`  
		Last Modified: Thu, 15 Nov 2018 11:02:38 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0396c724c3a9aada4101800699503aa389dfb848f4109c55450a17af18916db3`  
		Last Modified: Thu, 15 Nov 2018 11:03:12 GMT  
		Size: 117.1 MB (117053502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b986bff62f0e41473926c784b5a6ace152b4fd42ad32f8ee6aafd28892f4fb0`  
		Last Modified: Thu, 15 Nov 2018 11:02:38 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
