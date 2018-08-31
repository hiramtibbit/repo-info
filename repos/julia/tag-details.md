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
-	[`julia:1.0.0`](#julia100)
-	[`julia:1.0.0-stretch`](#julia100-stretch)
-	[`julia:1.0.0-windowsservercore-1709`](#julia100-windowsservercore-1709)
-	[`julia:1.0.0-windowsservercore-1803`](#julia100-windowsservercore-1803)
-	[`julia:1.0.0-windowsservercore-ltsc2016`](#julia100-windowsservercore-ltsc2016)
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
$ docker pull julia@sha256:e422a6eeed2741fdab667a055ee81b9a9ff8b014b37db53860e098ebeddb7edc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	windows version 10.0.14393.2430; amd64
	-	windows version 10.0.16299.611; amd64

### `julia:0` - linux; amd64

```console
$ docker pull julia@sha256:23ae8fd2603f79267bef7934182e43e22cebf62faa66b0050e5179c86929e686
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152422112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cbda7b20f258a5d5eedd79ae1db9cfcc3fc9d99b0be7131a638201ba22dba95`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Thu, 30 Aug 2018 22:06:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 30 Aug 2018 22:06:11 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 30 Aug 2018 22:06:11 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Aug 2018 22:06:12 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 30 Aug 2018 22:06:38 GMT
ENV JULIA_VERSION=0.7.0
# Thu, 30 Aug 2018 22:07:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 30 Aug 2018 22:07:02 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e9a1317b3df089c1e00e29b314a1f97fa73611edf1275341dfe593c9a0f629`  
		Last Modified: Thu, 30 Aug 2018 22:07:59 GMT  
		Size: 9.5 MB (9453813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd3b794b0e6424c046221ffd4485094ba4468d7e3485324f86ceeebac688ffc`  
		Last Modified: Thu, 30 Aug 2018 22:08:43 GMT  
		Size: 97.7 MB (97658255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0` - linux; 386

```console
$ docker pull julia@sha256:678182d7b9c7717b28a0571146980d0fc2d4358f54fd1aec6b3005ecc97e0009
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.6 MB (150606020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80f9800359b93e243aa9945f46aed8700c550b56c28713a9c8203d7f704cac1e`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Fri, 31 Aug 2018 19:53:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 31 Aug 2018 19:53:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 31 Aug 2018 19:53:42 GMT
ENV JULIA_VERSION=0.7.0
# Fri, 31 Aug 2018 19:54:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 31 Aug 2018 19:54:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9e69f5fd8573ab47a73db4370f35334eb7072936d0c01cd01c038328e47799`  
		Last Modified: Fri, 31 Aug 2018 19:55:52 GMT  
		Size: 9.5 MB (9458338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23057057e36b2111327beb678d363b509f961fdf7af6c6e04b58a004dd1402f0`  
		Last Modified: Fri, 31 Aug 2018 19:56:59 GMT  
		Size: 95.1 MB (95110160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0` - windows version 10.0.14393.2430; amd64

```console
$ docker pull julia@sha256:d6d3fe54a038fc42b145aef99f80f34f28469723ade783086b2edc58be93c8ae
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5629092490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d0bb5df587fe279e6dd4d38b820cde3f70e9c3dd3806bf368e240d2a057b378`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:52:23 GMT
RUN Install update 10.0.14393.2430
# Wed, 15 Aug 2018 09:35:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 28 Aug 2018 09:24:14 GMT
ENV JULIA_VERSION=0.7.0
# Tue, 28 Aug 2018 09:24:15 GMT
ENV JULIA_SHA256=a42d53d259d1f8f6feefac0da8352c19ca5d9da2303cf1595086867cfb1cd817
# Tue, 28 Aug 2018 09:27:34 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Tue, 28 Aug 2018 09:27:35 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6631c2d2a60cd7ee5b334c2725b03e4d4976abb9a19c8e8dc9b806b3752745a6`  
		Last Modified: Mon, 13 Aug 2018 17:52:23 GMT  
		Size: 1.4 GB (1441905067 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3e7b18583f4b1d198a1b0f222de8583f8565481a4b667be0863f398eaad783dd`  
		Last Modified: Wed, 15 Aug 2018 09:53:36 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7577435bbebfae47b3729e0f59e6d11e542b864b913e64ff91dca6f86ad9f2`  
		Last Modified: Tue, 28 Aug 2018 09:33:27 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5388461b6aed38175bb76223268e6d950121c0f03249585dc926d4e2938377be`  
		Last Modified: Tue, 28 Aug 2018 09:33:27 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecbd5053a16453e90e057b2d1dc19f2362d9c305dd2ee1eb4025e23fc3f7ef10`  
		Last Modified: Tue, 28 Aug 2018 09:34:01 GMT  
		Size: 117.2 MB (117196723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7acf3a41a42948bc3ec1feccecd9eb4e6730ffaecf3bc2695b4a93e844d702`  
		Last Modified: Tue, 28 Aug 2018 09:33:27 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0` - windows version 10.0.16299.611; amd64

```console
$ docker pull julia@sha256:ea42273413463e9f22e5025358ccbac36ddd4e2b82b9470280167758b4d1222b
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3224543640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5fc031afadaaef7c9ac8a64f41c5c51820683e73f7b7d29ce266e33c24f4878`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 08 Aug 2018 23:20:54 GMT
RUN Install update 10.0.16299.611
# Wed, 15 Aug 2018 09:39:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 28 Aug 2018 09:27:42 GMT
ENV JULIA_VERSION=0.7.0
# Tue, 28 Aug 2018 09:27:43 GMT
ENV JULIA_SHA256=a42d53d259d1f8f6feefac0da8352c19ca5d9da2303cf1595086867cfb1cd817
# Tue, 28 Aug 2018 09:30:32 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Tue, 28 Aug 2018 09:30:33 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c4047f78756c2319eb99557ec7139906cf11af6c91aefcc0e44ac49a5481d8e4`  
		Last Modified: Mon, 13 Aug 2018 18:28:41 GMT  
		Size: 837.8 MB (837835144 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ddd10e03dfdc774fc9b5f720df0030a8f59a8c2c78e843c72b45c30af480dc60`  
		Last Modified: Wed, 15 Aug 2018 09:54:44 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ca355683ed7a8c9e72d8ac749edd73bc3330a08dd2c24b8993c5b7a93ccfc9`  
		Last Modified: Tue, 28 Aug 2018 09:34:16 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e1e835457058fb9b3956387770bb595274b27c674ccbf761754525430a6bd9`  
		Last Modified: Tue, 28 Aug 2018 09:34:16 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:788fe7071eb77a89e2d8c4191c810b4b43edb64a5ced0709bde8d44631619c27`  
		Last Modified: Tue, 28 Aug 2018 09:34:48 GMT  
		Size: 112.4 MB (112403131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f86d0f0f6c88577decd35404afce60fbf5fc8fdde19b7d9990db79b3c258b789`  
		Last Modified: Tue, 28 Aug 2018 09:34:16 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.7`

```console
$ docker pull julia@sha256:e422a6eeed2741fdab667a055ee81b9a9ff8b014b37db53860e098ebeddb7edc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	windows version 10.0.14393.2430; amd64
	-	windows version 10.0.16299.611; amd64

### `julia:0.7` - linux; amd64

```console
$ docker pull julia@sha256:23ae8fd2603f79267bef7934182e43e22cebf62faa66b0050e5179c86929e686
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152422112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cbda7b20f258a5d5eedd79ae1db9cfcc3fc9d99b0be7131a638201ba22dba95`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Thu, 30 Aug 2018 22:06:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 30 Aug 2018 22:06:11 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 30 Aug 2018 22:06:11 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Aug 2018 22:06:12 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 30 Aug 2018 22:06:38 GMT
ENV JULIA_VERSION=0.7.0
# Thu, 30 Aug 2018 22:07:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 30 Aug 2018 22:07:02 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e9a1317b3df089c1e00e29b314a1f97fa73611edf1275341dfe593c9a0f629`  
		Last Modified: Thu, 30 Aug 2018 22:07:59 GMT  
		Size: 9.5 MB (9453813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd3b794b0e6424c046221ffd4485094ba4468d7e3485324f86ceeebac688ffc`  
		Last Modified: Thu, 30 Aug 2018 22:08:43 GMT  
		Size: 97.7 MB (97658255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.7` - linux; 386

```console
$ docker pull julia@sha256:678182d7b9c7717b28a0571146980d0fc2d4358f54fd1aec6b3005ecc97e0009
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.6 MB (150606020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80f9800359b93e243aa9945f46aed8700c550b56c28713a9c8203d7f704cac1e`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Fri, 31 Aug 2018 19:53:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 31 Aug 2018 19:53:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 31 Aug 2018 19:53:42 GMT
ENV JULIA_VERSION=0.7.0
# Fri, 31 Aug 2018 19:54:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 31 Aug 2018 19:54:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9e69f5fd8573ab47a73db4370f35334eb7072936d0c01cd01c038328e47799`  
		Last Modified: Fri, 31 Aug 2018 19:55:52 GMT  
		Size: 9.5 MB (9458338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23057057e36b2111327beb678d363b509f961fdf7af6c6e04b58a004dd1402f0`  
		Last Modified: Fri, 31 Aug 2018 19:56:59 GMT  
		Size: 95.1 MB (95110160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.7` - windows version 10.0.14393.2430; amd64

```console
$ docker pull julia@sha256:d6d3fe54a038fc42b145aef99f80f34f28469723ade783086b2edc58be93c8ae
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5629092490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d0bb5df587fe279e6dd4d38b820cde3f70e9c3dd3806bf368e240d2a057b378`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:52:23 GMT
RUN Install update 10.0.14393.2430
# Wed, 15 Aug 2018 09:35:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 28 Aug 2018 09:24:14 GMT
ENV JULIA_VERSION=0.7.0
# Tue, 28 Aug 2018 09:24:15 GMT
ENV JULIA_SHA256=a42d53d259d1f8f6feefac0da8352c19ca5d9da2303cf1595086867cfb1cd817
# Tue, 28 Aug 2018 09:27:34 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Tue, 28 Aug 2018 09:27:35 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6631c2d2a60cd7ee5b334c2725b03e4d4976abb9a19c8e8dc9b806b3752745a6`  
		Last Modified: Mon, 13 Aug 2018 17:52:23 GMT  
		Size: 1.4 GB (1441905067 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3e7b18583f4b1d198a1b0f222de8583f8565481a4b667be0863f398eaad783dd`  
		Last Modified: Wed, 15 Aug 2018 09:53:36 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7577435bbebfae47b3729e0f59e6d11e542b864b913e64ff91dca6f86ad9f2`  
		Last Modified: Tue, 28 Aug 2018 09:33:27 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5388461b6aed38175bb76223268e6d950121c0f03249585dc926d4e2938377be`  
		Last Modified: Tue, 28 Aug 2018 09:33:27 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecbd5053a16453e90e057b2d1dc19f2362d9c305dd2ee1eb4025e23fc3f7ef10`  
		Last Modified: Tue, 28 Aug 2018 09:34:01 GMT  
		Size: 117.2 MB (117196723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7acf3a41a42948bc3ec1feccecd9eb4e6730ffaecf3bc2695b4a93e844d702`  
		Last Modified: Tue, 28 Aug 2018 09:33:27 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.7` - windows version 10.0.16299.611; amd64

```console
$ docker pull julia@sha256:ea42273413463e9f22e5025358ccbac36ddd4e2b82b9470280167758b4d1222b
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3224543640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5fc031afadaaef7c9ac8a64f41c5c51820683e73f7b7d29ce266e33c24f4878`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 08 Aug 2018 23:20:54 GMT
RUN Install update 10.0.16299.611
# Wed, 15 Aug 2018 09:39:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 28 Aug 2018 09:27:42 GMT
ENV JULIA_VERSION=0.7.0
# Tue, 28 Aug 2018 09:27:43 GMT
ENV JULIA_SHA256=a42d53d259d1f8f6feefac0da8352c19ca5d9da2303cf1595086867cfb1cd817
# Tue, 28 Aug 2018 09:30:32 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Tue, 28 Aug 2018 09:30:33 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c4047f78756c2319eb99557ec7139906cf11af6c91aefcc0e44ac49a5481d8e4`  
		Last Modified: Mon, 13 Aug 2018 18:28:41 GMT  
		Size: 837.8 MB (837835144 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ddd10e03dfdc774fc9b5f720df0030a8f59a8c2c78e843c72b45c30af480dc60`  
		Last Modified: Wed, 15 Aug 2018 09:54:44 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ca355683ed7a8c9e72d8ac749edd73bc3330a08dd2c24b8993c5b7a93ccfc9`  
		Last Modified: Tue, 28 Aug 2018 09:34:16 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e1e835457058fb9b3956387770bb595274b27c674ccbf761754525430a6bd9`  
		Last Modified: Tue, 28 Aug 2018 09:34:16 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:788fe7071eb77a89e2d8c4191c810b4b43edb64a5ced0709bde8d44631619c27`  
		Last Modified: Tue, 28 Aug 2018 09:34:48 GMT  
		Size: 112.4 MB (112403131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f86d0f0f6c88577decd35404afce60fbf5fc8fdde19b7d9990db79b3c258b789`  
		Last Modified: Tue, 28 Aug 2018 09:34:16 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.7.0`

```console
$ docker pull julia@sha256:e422a6eeed2741fdab667a055ee81b9a9ff8b014b37db53860e098ebeddb7edc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	windows version 10.0.14393.2430; amd64
	-	windows version 10.0.16299.611; amd64

### `julia:0.7.0` - linux; amd64

```console
$ docker pull julia@sha256:23ae8fd2603f79267bef7934182e43e22cebf62faa66b0050e5179c86929e686
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152422112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cbda7b20f258a5d5eedd79ae1db9cfcc3fc9d99b0be7131a638201ba22dba95`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Thu, 30 Aug 2018 22:06:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 30 Aug 2018 22:06:11 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 30 Aug 2018 22:06:11 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Aug 2018 22:06:12 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 30 Aug 2018 22:06:38 GMT
ENV JULIA_VERSION=0.7.0
# Thu, 30 Aug 2018 22:07:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 30 Aug 2018 22:07:02 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e9a1317b3df089c1e00e29b314a1f97fa73611edf1275341dfe593c9a0f629`  
		Last Modified: Thu, 30 Aug 2018 22:07:59 GMT  
		Size: 9.5 MB (9453813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd3b794b0e6424c046221ffd4485094ba4468d7e3485324f86ceeebac688ffc`  
		Last Modified: Thu, 30 Aug 2018 22:08:43 GMT  
		Size: 97.7 MB (97658255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.7.0` - linux; 386

```console
$ docker pull julia@sha256:678182d7b9c7717b28a0571146980d0fc2d4358f54fd1aec6b3005ecc97e0009
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.6 MB (150606020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80f9800359b93e243aa9945f46aed8700c550b56c28713a9c8203d7f704cac1e`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Fri, 31 Aug 2018 19:53:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 31 Aug 2018 19:53:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 31 Aug 2018 19:53:42 GMT
ENV JULIA_VERSION=0.7.0
# Fri, 31 Aug 2018 19:54:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 31 Aug 2018 19:54:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9e69f5fd8573ab47a73db4370f35334eb7072936d0c01cd01c038328e47799`  
		Last Modified: Fri, 31 Aug 2018 19:55:52 GMT  
		Size: 9.5 MB (9458338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23057057e36b2111327beb678d363b509f961fdf7af6c6e04b58a004dd1402f0`  
		Last Modified: Fri, 31 Aug 2018 19:56:59 GMT  
		Size: 95.1 MB (95110160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.7.0` - windows version 10.0.14393.2430; amd64

```console
$ docker pull julia@sha256:d6d3fe54a038fc42b145aef99f80f34f28469723ade783086b2edc58be93c8ae
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5629092490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d0bb5df587fe279e6dd4d38b820cde3f70e9c3dd3806bf368e240d2a057b378`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:52:23 GMT
RUN Install update 10.0.14393.2430
# Wed, 15 Aug 2018 09:35:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 28 Aug 2018 09:24:14 GMT
ENV JULIA_VERSION=0.7.0
# Tue, 28 Aug 2018 09:24:15 GMT
ENV JULIA_SHA256=a42d53d259d1f8f6feefac0da8352c19ca5d9da2303cf1595086867cfb1cd817
# Tue, 28 Aug 2018 09:27:34 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Tue, 28 Aug 2018 09:27:35 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6631c2d2a60cd7ee5b334c2725b03e4d4976abb9a19c8e8dc9b806b3752745a6`  
		Last Modified: Mon, 13 Aug 2018 17:52:23 GMT  
		Size: 1.4 GB (1441905067 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3e7b18583f4b1d198a1b0f222de8583f8565481a4b667be0863f398eaad783dd`  
		Last Modified: Wed, 15 Aug 2018 09:53:36 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7577435bbebfae47b3729e0f59e6d11e542b864b913e64ff91dca6f86ad9f2`  
		Last Modified: Tue, 28 Aug 2018 09:33:27 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5388461b6aed38175bb76223268e6d950121c0f03249585dc926d4e2938377be`  
		Last Modified: Tue, 28 Aug 2018 09:33:27 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecbd5053a16453e90e057b2d1dc19f2362d9c305dd2ee1eb4025e23fc3f7ef10`  
		Last Modified: Tue, 28 Aug 2018 09:34:01 GMT  
		Size: 117.2 MB (117196723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7acf3a41a42948bc3ec1feccecd9eb4e6730ffaecf3bc2695b4a93e844d702`  
		Last Modified: Tue, 28 Aug 2018 09:33:27 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.7.0` - windows version 10.0.16299.611; amd64

```console
$ docker pull julia@sha256:ea42273413463e9f22e5025358ccbac36ddd4e2b82b9470280167758b4d1222b
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3224543640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5fc031afadaaef7c9ac8a64f41c5c51820683e73f7b7d29ce266e33c24f4878`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 08 Aug 2018 23:20:54 GMT
RUN Install update 10.0.16299.611
# Wed, 15 Aug 2018 09:39:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 28 Aug 2018 09:27:42 GMT
ENV JULIA_VERSION=0.7.0
# Tue, 28 Aug 2018 09:27:43 GMT
ENV JULIA_SHA256=a42d53d259d1f8f6feefac0da8352c19ca5d9da2303cf1595086867cfb1cd817
# Tue, 28 Aug 2018 09:30:32 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Tue, 28 Aug 2018 09:30:33 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c4047f78756c2319eb99557ec7139906cf11af6c91aefcc0e44ac49a5481d8e4`  
		Last Modified: Mon, 13 Aug 2018 18:28:41 GMT  
		Size: 837.8 MB (837835144 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ddd10e03dfdc774fc9b5f720df0030a8f59a8c2c78e843c72b45c30af480dc60`  
		Last Modified: Wed, 15 Aug 2018 09:54:44 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ca355683ed7a8c9e72d8ac749edd73bc3330a08dd2c24b8993c5b7a93ccfc9`  
		Last Modified: Tue, 28 Aug 2018 09:34:16 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e1e835457058fb9b3956387770bb595274b27c674ccbf761754525430a6bd9`  
		Last Modified: Tue, 28 Aug 2018 09:34:16 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:788fe7071eb77a89e2d8c4191c810b4b43edb64a5ced0709bde8d44631619c27`  
		Last Modified: Tue, 28 Aug 2018 09:34:48 GMT  
		Size: 112.4 MB (112403131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f86d0f0f6c88577decd35404afce60fbf5fc8fdde19b7d9990db79b3c258b789`  
		Last Modified: Tue, 28 Aug 2018 09:34:16 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.7.0-jessie`

```console
$ docker pull julia@sha256:51b52e78253112a99f9b70bdcb4bc661e511a86b04102cfc2a11784b4f15a119
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `julia:0.7.0-jessie` - linux; amd64

```console
$ docker pull julia@sha256:44d2aac81ca040f598d9594163187ad10a97eb6d733147669307ca203b95a648
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.6 MB (156637853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6e4620e57b7b89149c15af5f45e3ac80d1e15bd43cd0035a546f84621bbaeb7`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Thu, 30 Aug 2018 22:07:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 30 Aug 2018 22:07:30 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 30 Aug 2018 22:07:30 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Aug 2018 22:07:30 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 30 Aug 2018 22:07:30 GMT
ENV JULIA_VERSION=0.7.0
# Thu, 30 Aug 2018 22:07:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 30 Aug 2018 22:07:49 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bbc917e3af3d2653c4a7d1b1ee460b4931157923a65632a678bacf5650683b4`  
		Last Modified: Thu, 30 Aug 2018 22:08:50 GMT  
		Size: 5.0 MB (5020859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff42deae5be1c9cb1bf5de4c8299a9e5ee68375fc2d4743ee81adf2874486f1a`  
		Last Modified: Thu, 30 Aug 2018 22:09:14 GMT  
		Size: 97.4 MB (97364869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.7.0-jessie` - linux; 386

```console
$ docker pull julia@sha256:4fb192bbdcaa96d08d23a67f193121821c6fb144f5d181953dfd2ac8e10ce1b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.5 MB (156496740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22936b240f86a02cad40567489440915cf2b829061460d5a1d8460a024093a6d`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 10:41:14 GMT
ADD file:edf13e4ea5255fbdbe91ff11bf281f8dc1ed1790ea095ab1ff341f0abc03f58c in / 
# Tue, 17 Jul 2018 10:41:14 GMT
CMD ["bash"]
# Fri, 31 Aug 2018 19:55:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 31 Aug 2018 19:55:04 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 31 Aug 2018 19:55:05 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Aug 2018 19:55:05 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 31 Aug 2018 19:55:05 GMT
ENV JULIA_VERSION=0.7.0
# Fri, 31 Aug 2018 19:55:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 31 Aug 2018 19:55:39 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:357075fdb6ed4cabaab3293713922024245238f5596815e10a36b24c0a498f08`  
		Last Modified: Tue, 17 Jul 2018 10:56:53 GMT  
		Size: 54.5 MB (54483269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c6480a202cbf1828c6ed5b4c9c0972d3a964711059fe18c347828fb208da1d`  
		Last Modified: Fri, 31 Aug 2018 19:57:08 GMT  
		Size: 7.2 MB (7189381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9be4ea30e72524adf192573e5090b51938fd1accdbe0c2d2b4fc05aff3c809`  
		Last Modified: Fri, 31 Aug 2018 19:57:37 GMT  
		Size: 94.8 MB (94824090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.7.0-stretch`

```console
$ docker pull julia@sha256:76160fbcdbc242b34073ed3e5df5069732de0cb192540c89954896cb22387906
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `julia:0.7.0-stretch` - linux; amd64

```console
$ docker pull julia@sha256:23ae8fd2603f79267bef7934182e43e22cebf62faa66b0050e5179c86929e686
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152422112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cbda7b20f258a5d5eedd79ae1db9cfcc3fc9d99b0be7131a638201ba22dba95`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Thu, 30 Aug 2018 22:06:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 30 Aug 2018 22:06:11 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 30 Aug 2018 22:06:11 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Aug 2018 22:06:12 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 30 Aug 2018 22:06:38 GMT
ENV JULIA_VERSION=0.7.0
# Thu, 30 Aug 2018 22:07:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 30 Aug 2018 22:07:02 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e9a1317b3df089c1e00e29b314a1f97fa73611edf1275341dfe593c9a0f629`  
		Last Modified: Thu, 30 Aug 2018 22:07:59 GMT  
		Size: 9.5 MB (9453813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd3b794b0e6424c046221ffd4485094ba4468d7e3485324f86ceeebac688ffc`  
		Last Modified: Thu, 30 Aug 2018 22:08:43 GMT  
		Size: 97.7 MB (97658255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.7.0-stretch` - linux; 386

```console
$ docker pull julia@sha256:678182d7b9c7717b28a0571146980d0fc2d4358f54fd1aec6b3005ecc97e0009
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.6 MB (150606020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80f9800359b93e243aa9945f46aed8700c550b56c28713a9c8203d7f704cac1e`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Fri, 31 Aug 2018 19:53:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 31 Aug 2018 19:53:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 31 Aug 2018 19:53:42 GMT
ENV JULIA_VERSION=0.7.0
# Fri, 31 Aug 2018 19:54:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 31 Aug 2018 19:54:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9e69f5fd8573ab47a73db4370f35334eb7072936d0c01cd01c038328e47799`  
		Last Modified: Fri, 31 Aug 2018 19:55:52 GMT  
		Size: 9.5 MB (9458338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23057057e36b2111327beb678d363b509f961fdf7af6c6e04b58a004dd1402f0`  
		Last Modified: Fri, 31 Aug 2018 19:56:59 GMT  
		Size: 95.1 MB (95110160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.7.0-windowsservercore-1709`

```console
$ docker pull julia@sha256:cfc452939aa1600db5f449fb9580825e6660977e76ba28f2f7b9137547413197
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.611; amd64

### `julia:0.7.0-windowsservercore-1709` - windows version 10.0.16299.611; amd64

```console
$ docker pull julia@sha256:ea42273413463e9f22e5025358ccbac36ddd4e2b82b9470280167758b4d1222b
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3224543640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5fc031afadaaef7c9ac8a64f41c5c51820683e73f7b7d29ce266e33c24f4878`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 08 Aug 2018 23:20:54 GMT
RUN Install update 10.0.16299.611
# Wed, 15 Aug 2018 09:39:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 28 Aug 2018 09:27:42 GMT
ENV JULIA_VERSION=0.7.0
# Tue, 28 Aug 2018 09:27:43 GMT
ENV JULIA_SHA256=a42d53d259d1f8f6feefac0da8352c19ca5d9da2303cf1595086867cfb1cd817
# Tue, 28 Aug 2018 09:30:32 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Tue, 28 Aug 2018 09:30:33 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c4047f78756c2319eb99557ec7139906cf11af6c91aefcc0e44ac49a5481d8e4`  
		Last Modified: Mon, 13 Aug 2018 18:28:41 GMT  
		Size: 837.8 MB (837835144 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ddd10e03dfdc774fc9b5f720df0030a8f59a8c2c78e843c72b45c30af480dc60`  
		Last Modified: Wed, 15 Aug 2018 09:54:44 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ca355683ed7a8c9e72d8ac749edd73bc3330a08dd2c24b8993c5b7a93ccfc9`  
		Last Modified: Tue, 28 Aug 2018 09:34:16 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e1e835457058fb9b3956387770bb595274b27c674ccbf761754525430a6bd9`  
		Last Modified: Tue, 28 Aug 2018 09:34:16 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:788fe7071eb77a89e2d8c4191c810b4b43edb64a5ced0709bde8d44631619c27`  
		Last Modified: Tue, 28 Aug 2018 09:34:48 GMT  
		Size: 112.4 MB (112403131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f86d0f0f6c88577decd35404afce60fbf5fc8fdde19b7d9990db79b3c258b789`  
		Last Modified: Tue, 28 Aug 2018 09:34:16 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.7.0-windowsservercore-ltsc2016`

```console
$ docker pull julia@sha256:edbab9f881206adca27e276ab5bda01bf3c268a0b12885f41513b743b7125fec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `julia:0.7.0-windowsservercore-ltsc2016` - windows version 10.0.14393.2430; amd64

```console
$ docker pull julia@sha256:d6d3fe54a038fc42b145aef99f80f34f28469723ade783086b2edc58be93c8ae
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5629092490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d0bb5df587fe279e6dd4d38b820cde3f70e9c3dd3806bf368e240d2a057b378`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:52:23 GMT
RUN Install update 10.0.14393.2430
# Wed, 15 Aug 2018 09:35:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 28 Aug 2018 09:24:14 GMT
ENV JULIA_VERSION=0.7.0
# Tue, 28 Aug 2018 09:24:15 GMT
ENV JULIA_SHA256=a42d53d259d1f8f6feefac0da8352c19ca5d9da2303cf1595086867cfb1cd817
# Tue, 28 Aug 2018 09:27:34 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Tue, 28 Aug 2018 09:27:35 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6631c2d2a60cd7ee5b334c2725b03e4d4976abb9a19c8e8dc9b806b3752745a6`  
		Last Modified: Mon, 13 Aug 2018 17:52:23 GMT  
		Size: 1.4 GB (1441905067 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3e7b18583f4b1d198a1b0f222de8583f8565481a4b667be0863f398eaad783dd`  
		Last Modified: Wed, 15 Aug 2018 09:53:36 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7577435bbebfae47b3729e0f59e6d11e542b864b913e64ff91dca6f86ad9f2`  
		Last Modified: Tue, 28 Aug 2018 09:33:27 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5388461b6aed38175bb76223268e6d950121c0f03249585dc926d4e2938377be`  
		Last Modified: Tue, 28 Aug 2018 09:33:27 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecbd5053a16453e90e057b2d1dc19f2362d9c305dd2ee1eb4025e23fc3f7ef10`  
		Last Modified: Tue, 28 Aug 2018 09:34:01 GMT  
		Size: 117.2 MB (117196723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7acf3a41a42948bc3ec1feccecd9eb4e6730ffaecf3bc2695b4a93e844d702`  
		Last Modified: Tue, 28 Aug 2018 09:33:27 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.7-jessie`

```console
$ docker pull julia@sha256:51b52e78253112a99f9b70bdcb4bc661e511a86b04102cfc2a11784b4f15a119
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `julia:0.7-jessie` - linux; amd64

```console
$ docker pull julia@sha256:44d2aac81ca040f598d9594163187ad10a97eb6d733147669307ca203b95a648
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.6 MB (156637853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6e4620e57b7b89149c15af5f45e3ac80d1e15bd43cd0035a546f84621bbaeb7`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Thu, 30 Aug 2018 22:07:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 30 Aug 2018 22:07:30 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 30 Aug 2018 22:07:30 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Aug 2018 22:07:30 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 30 Aug 2018 22:07:30 GMT
ENV JULIA_VERSION=0.7.0
# Thu, 30 Aug 2018 22:07:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 30 Aug 2018 22:07:49 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bbc917e3af3d2653c4a7d1b1ee460b4931157923a65632a678bacf5650683b4`  
		Last Modified: Thu, 30 Aug 2018 22:08:50 GMT  
		Size: 5.0 MB (5020859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff42deae5be1c9cb1bf5de4c8299a9e5ee68375fc2d4743ee81adf2874486f1a`  
		Last Modified: Thu, 30 Aug 2018 22:09:14 GMT  
		Size: 97.4 MB (97364869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.7-jessie` - linux; 386

```console
$ docker pull julia@sha256:4fb192bbdcaa96d08d23a67f193121821c6fb144f5d181953dfd2ac8e10ce1b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.5 MB (156496740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22936b240f86a02cad40567489440915cf2b829061460d5a1d8460a024093a6d`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 10:41:14 GMT
ADD file:edf13e4ea5255fbdbe91ff11bf281f8dc1ed1790ea095ab1ff341f0abc03f58c in / 
# Tue, 17 Jul 2018 10:41:14 GMT
CMD ["bash"]
# Fri, 31 Aug 2018 19:55:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 31 Aug 2018 19:55:04 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 31 Aug 2018 19:55:05 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Aug 2018 19:55:05 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 31 Aug 2018 19:55:05 GMT
ENV JULIA_VERSION=0.7.0
# Fri, 31 Aug 2018 19:55:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 31 Aug 2018 19:55:39 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:357075fdb6ed4cabaab3293713922024245238f5596815e10a36b24c0a498f08`  
		Last Modified: Tue, 17 Jul 2018 10:56:53 GMT  
		Size: 54.5 MB (54483269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c6480a202cbf1828c6ed5b4c9c0972d3a964711059fe18c347828fb208da1d`  
		Last Modified: Fri, 31 Aug 2018 19:57:08 GMT  
		Size: 7.2 MB (7189381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9be4ea30e72524adf192573e5090b51938fd1accdbe0c2d2b4fc05aff3c809`  
		Last Modified: Fri, 31 Aug 2018 19:57:37 GMT  
		Size: 94.8 MB (94824090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.7-stretch`

```console
$ docker pull julia@sha256:76160fbcdbc242b34073ed3e5df5069732de0cb192540c89954896cb22387906
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `julia:0.7-stretch` - linux; amd64

```console
$ docker pull julia@sha256:23ae8fd2603f79267bef7934182e43e22cebf62faa66b0050e5179c86929e686
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152422112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cbda7b20f258a5d5eedd79ae1db9cfcc3fc9d99b0be7131a638201ba22dba95`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Thu, 30 Aug 2018 22:06:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 30 Aug 2018 22:06:11 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 30 Aug 2018 22:06:11 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Aug 2018 22:06:12 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 30 Aug 2018 22:06:38 GMT
ENV JULIA_VERSION=0.7.0
# Thu, 30 Aug 2018 22:07:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 30 Aug 2018 22:07:02 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e9a1317b3df089c1e00e29b314a1f97fa73611edf1275341dfe593c9a0f629`  
		Last Modified: Thu, 30 Aug 2018 22:07:59 GMT  
		Size: 9.5 MB (9453813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd3b794b0e6424c046221ffd4485094ba4468d7e3485324f86ceeebac688ffc`  
		Last Modified: Thu, 30 Aug 2018 22:08:43 GMT  
		Size: 97.7 MB (97658255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.7-stretch` - linux; 386

```console
$ docker pull julia@sha256:678182d7b9c7717b28a0571146980d0fc2d4358f54fd1aec6b3005ecc97e0009
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.6 MB (150606020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80f9800359b93e243aa9945f46aed8700c550b56c28713a9c8203d7f704cac1e`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Fri, 31 Aug 2018 19:53:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 31 Aug 2018 19:53:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 31 Aug 2018 19:53:42 GMT
ENV JULIA_VERSION=0.7.0
# Fri, 31 Aug 2018 19:54:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 31 Aug 2018 19:54:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9e69f5fd8573ab47a73db4370f35334eb7072936d0c01cd01c038328e47799`  
		Last Modified: Fri, 31 Aug 2018 19:55:52 GMT  
		Size: 9.5 MB (9458338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23057057e36b2111327beb678d363b509f961fdf7af6c6e04b58a004dd1402f0`  
		Last Modified: Fri, 31 Aug 2018 19:56:59 GMT  
		Size: 95.1 MB (95110160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.7-windowsservercore-1709`

```console
$ docker pull julia@sha256:cfc452939aa1600db5f449fb9580825e6660977e76ba28f2f7b9137547413197
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.611; amd64

### `julia:0.7-windowsservercore-1709` - windows version 10.0.16299.611; amd64

```console
$ docker pull julia@sha256:ea42273413463e9f22e5025358ccbac36ddd4e2b82b9470280167758b4d1222b
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3224543640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5fc031afadaaef7c9ac8a64f41c5c51820683e73f7b7d29ce266e33c24f4878`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 08 Aug 2018 23:20:54 GMT
RUN Install update 10.0.16299.611
# Wed, 15 Aug 2018 09:39:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 28 Aug 2018 09:27:42 GMT
ENV JULIA_VERSION=0.7.0
# Tue, 28 Aug 2018 09:27:43 GMT
ENV JULIA_SHA256=a42d53d259d1f8f6feefac0da8352c19ca5d9da2303cf1595086867cfb1cd817
# Tue, 28 Aug 2018 09:30:32 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Tue, 28 Aug 2018 09:30:33 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c4047f78756c2319eb99557ec7139906cf11af6c91aefcc0e44ac49a5481d8e4`  
		Last Modified: Mon, 13 Aug 2018 18:28:41 GMT  
		Size: 837.8 MB (837835144 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ddd10e03dfdc774fc9b5f720df0030a8f59a8c2c78e843c72b45c30af480dc60`  
		Last Modified: Wed, 15 Aug 2018 09:54:44 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ca355683ed7a8c9e72d8ac749edd73bc3330a08dd2c24b8993c5b7a93ccfc9`  
		Last Modified: Tue, 28 Aug 2018 09:34:16 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e1e835457058fb9b3956387770bb595274b27c674ccbf761754525430a6bd9`  
		Last Modified: Tue, 28 Aug 2018 09:34:16 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:788fe7071eb77a89e2d8c4191c810b4b43edb64a5ced0709bde8d44631619c27`  
		Last Modified: Tue, 28 Aug 2018 09:34:48 GMT  
		Size: 112.4 MB (112403131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f86d0f0f6c88577decd35404afce60fbf5fc8fdde19b7d9990db79b3c258b789`  
		Last Modified: Tue, 28 Aug 2018 09:34:16 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.7-windowsservercore-ltsc2016`

```console
$ docker pull julia@sha256:edbab9f881206adca27e276ab5bda01bf3c268a0b12885f41513b743b7125fec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `julia:0.7-windowsservercore-ltsc2016` - windows version 10.0.14393.2430; amd64

```console
$ docker pull julia@sha256:d6d3fe54a038fc42b145aef99f80f34f28469723ade783086b2edc58be93c8ae
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5629092490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d0bb5df587fe279e6dd4d38b820cde3f70e9c3dd3806bf368e240d2a057b378`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:52:23 GMT
RUN Install update 10.0.14393.2430
# Wed, 15 Aug 2018 09:35:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 28 Aug 2018 09:24:14 GMT
ENV JULIA_VERSION=0.7.0
# Tue, 28 Aug 2018 09:24:15 GMT
ENV JULIA_SHA256=a42d53d259d1f8f6feefac0da8352c19ca5d9da2303cf1595086867cfb1cd817
# Tue, 28 Aug 2018 09:27:34 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Tue, 28 Aug 2018 09:27:35 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6631c2d2a60cd7ee5b334c2725b03e4d4976abb9a19c8e8dc9b806b3752745a6`  
		Last Modified: Mon, 13 Aug 2018 17:52:23 GMT  
		Size: 1.4 GB (1441905067 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3e7b18583f4b1d198a1b0f222de8583f8565481a4b667be0863f398eaad783dd`  
		Last Modified: Wed, 15 Aug 2018 09:53:36 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7577435bbebfae47b3729e0f59e6d11e542b864b913e64ff91dca6f86ad9f2`  
		Last Modified: Tue, 28 Aug 2018 09:33:27 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5388461b6aed38175bb76223268e6d950121c0f03249585dc926d4e2938377be`  
		Last Modified: Tue, 28 Aug 2018 09:33:27 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecbd5053a16453e90e057b2d1dc19f2362d9c305dd2ee1eb4025e23fc3f7ef10`  
		Last Modified: Tue, 28 Aug 2018 09:34:01 GMT  
		Size: 117.2 MB (117196723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7acf3a41a42948bc3ec1feccecd9eb4e6730ffaecf3bc2695b4a93e844d702`  
		Last Modified: Tue, 28 Aug 2018 09:33:27 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0-jessie`

```console
$ docker pull julia@sha256:51b52e78253112a99f9b70bdcb4bc661e511a86b04102cfc2a11784b4f15a119
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `julia:0-jessie` - linux; amd64

```console
$ docker pull julia@sha256:44d2aac81ca040f598d9594163187ad10a97eb6d733147669307ca203b95a648
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.6 MB (156637853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6e4620e57b7b89149c15af5f45e3ac80d1e15bd43cd0035a546f84621bbaeb7`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Thu, 30 Aug 2018 22:07:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 30 Aug 2018 22:07:30 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 30 Aug 2018 22:07:30 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Aug 2018 22:07:30 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 30 Aug 2018 22:07:30 GMT
ENV JULIA_VERSION=0.7.0
# Thu, 30 Aug 2018 22:07:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 30 Aug 2018 22:07:49 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bbc917e3af3d2653c4a7d1b1ee460b4931157923a65632a678bacf5650683b4`  
		Last Modified: Thu, 30 Aug 2018 22:08:50 GMT  
		Size: 5.0 MB (5020859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff42deae5be1c9cb1bf5de4c8299a9e5ee68375fc2d4743ee81adf2874486f1a`  
		Last Modified: Thu, 30 Aug 2018 22:09:14 GMT  
		Size: 97.4 MB (97364869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0-jessie` - linux; 386

```console
$ docker pull julia@sha256:4fb192bbdcaa96d08d23a67f193121821c6fb144f5d181953dfd2ac8e10ce1b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.5 MB (156496740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22936b240f86a02cad40567489440915cf2b829061460d5a1d8460a024093a6d`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 10:41:14 GMT
ADD file:edf13e4ea5255fbdbe91ff11bf281f8dc1ed1790ea095ab1ff341f0abc03f58c in / 
# Tue, 17 Jul 2018 10:41:14 GMT
CMD ["bash"]
# Fri, 31 Aug 2018 19:55:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 31 Aug 2018 19:55:04 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 31 Aug 2018 19:55:05 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Aug 2018 19:55:05 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 31 Aug 2018 19:55:05 GMT
ENV JULIA_VERSION=0.7.0
# Fri, 31 Aug 2018 19:55:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 31 Aug 2018 19:55:39 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:357075fdb6ed4cabaab3293713922024245238f5596815e10a36b24c0a498f08`  
		Last Modified: Tue, 17 Jul 2018 10:56:53 GMT  
		Size: 54.5 MB (54483269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c6480a202cbf1828c6ed5b4c9c0972d3a964711059fe18c347828fb208da1d`  
		Last Modified: Fri, 31 Aug 2018 19:57:08 GMT  
		Size: 7.2 MB (7189381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9be4ea30e72524adf192573e5090b51938fd1accdbe0c2d2b4fc05aff3c809`  
		Last Modified: Fri, 31 Aug 2018 19:57:37 GMT  
		Size: 94.8 MB (94824090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0-stretch`

```console
$ docker pull julia@sha256:76160fbcdbc242b34073ed3e5df5069732de0cb192540c89954896cb22387906
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `julia:0-stretch` - linux; amd64

```console
$ docker pull julia@sha256:23ae8fd2603f79267bef7934182e43e22cebf62faa66b0050e5179c86929e686
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152422112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cbda7b20f258a5d5eedd79ae1db9cfcc3fc9d99b0be7131a638201ba22dba95`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Thu, 30 Aug 2018 22:06:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 30 Aug 2018 22:06:11 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 30 Aug 2018 22:06:11 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Aug 2018 22:06:12 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 30 Aug 2018 22:06:38 GMT
ENV JULIA_VERSION=0.7.0
# Thu, 30 Aug 2018 22:07:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 30 Aug 2018 22:07:02 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e9a1317b3df089c1e00e29b314a1f97fa73611edf1275341dfe593c9a0f629`  
		Last Modified: Thu, 30 Aug 2018 22:07:59 GMT  
		Size: 9.5 MB (9453813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd3b794b0e6424c046221ffd4485094ba4468d7e3485324f86ceeebac688ffc`  
		Last Modified: Thu, 30 Aug 2018 22:08:43 GMT  
		Size: 97.7 MB (97658255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0-stretch` - linux; 386

```console
$ docker pull julia@sha256:678182d7b9c7717b28a0571146980d0fc2d4358f54fd1aec6b3005ecc97e0009
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.6 MB (150606020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80f9800359b93e243aa9945f46aed8700c550b56c28713a9c8203d7f704cac1e`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Fri, 31 Aug 2018 19:53:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 31 Aug 2018 19:53:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 31 Aug 2018 19:53:42 GMT
ENV JULIA_VERSION=0.7.0
# Fri, 31 Aug 2018 19:54:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='36a40cf0c4bd8f82c3c8b270ba34bb83af2d545bfbab135e8e496520304cb160' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 31 Aug 2018 19:54:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9e69f5fd8573ab47a73db4370f35334eb7072936d0c01cd01c038328e47799`  
		Last Modified: Fri, 31 Aug 2018 19:55:52 GMT  
		Size: 9.5 MB (9458338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23057057e36b2111327beb678d363b509f961fdf7af6c6e04b58a004dd1402f0`  
		Last Modified: Fri, 31 Aug 2018 19:56:59 GMT  
		Size: 95.1 MB (95110160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0-windowsservercore-1709`

```console
$ docker pull julia@sha256:cfc452939aa1600db5f449fb9580825e6660977e76ba28f2f7b9137547413197
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.611; amd64

### `julia:0-windowsservercore-1709` - windows version 10.0.16299.611; amd64

```console
$ docker pull julia@sha256:ea42273413463e9f22e5025358ccbac36ddd4e2b82b9470280167758b4d1222b
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3224543640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5fc031afadaaef7c9ac8a64f41c5c51820683e73f7b7d29ce266e33c24f4878`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 08 Aug 2018 23:20:54 GMT
RUN Install update 10.0.16299.611
# Wed, 15 Aug 2018 09:39:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 28 Aug 2018 09:27:42 GMT
ENV JULIA_VERSION=0.7.0
# Tue, 28 Aug 2018 09:27:43 GMT
ENV JULIA_SHA256=a42d53d259d1f8f6feefac0da8352c19ca5d9da2303cf1595086867cfb1cd817
# Tue, 28 Aug 2018 09:30:32 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Tue, 28 Aug 2018 09:30:33 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c4047f78756c2319eb99557ec7139906cf11af6c91aefcc0e44ac49a5481d8e4`  
		Last Modified: Mon, 13 Aug 2018 18:28:41 GMT  
		Size: 837.8 MB (837835144 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ddd10e03dfdc774fc9b5f720df0030a8f59a8c2c78e843c72b45c30af480dc60`  
		Last Modified: Wed, 15 Aug 2018 09:54:44 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ca355683ed7a8c9e72d8ac749edd73bc3330a08dd2c24b8993c5b7a93ccfc9`  
		Last Modified: Tue, 28 Aug 2018 09:34:16 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e1e835457058fb9b3956387770bb595274b27c674ccbf761754525430a6bd9`  
		Last Modified: Tue, 28 Aug 2018 09:34:16 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:788fe7071eb77a89e2d8c4191c810b4b43edb64a5ced0709bde8d44631619c27`  
		Last Modified: Tue, 28 Aug 2018 09:34:48 GMT  
		Size: 112.4 MB (112403131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f86d0f0f6c88577decd35404afce60fbf5fc8fdde19b7d9990db79b3c258b789`  
		Last Modified: Tue, 28 Aug 2018 09:34:16 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0-windowsservercore-ltsc2016`

```console
$ docker pull julia@sha256:edbab9f881206adca27e276ab5bda01bf3c268a0b12885f41513b743b7125fec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `julia:0-windowsservercore-ltsc2016` - windows version 10.0.14393.2430; amd64

```console
$ docker pull julia@sha256:d6d3fe54a038fc42b145aef99f80f34f28469723ade783086b2edc58be93c8ae
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5629092490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d0bb5df587fe279e6dd4d38b820cde3f70e9c3dd3806bf368e240d2a057b378`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:52:23 GMT
RUN Install update 10.0.14393.2430
# Wed, 15 Aug 2018 09:35:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 28 Aug 2018 09:24:14 GMT
ENV JULIA_VERSION=0.7.0
# Tue, 28 Aug 2018 09:24:15 GMT
ENV JULIA_SHA256=a42d53d259d1f8f6feefac0da8352c19ca5d9da2303cf1595086867cfb1cd817
# Tue, 28 Aug 2018 09:27:34 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Tue, 28 Aug 2018 09:27:35 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6631c2d2a60cd7ee5b334c2725b03e4d4976abb9a19c8e8dc9b806b3752745a6`  
		Last Modified: Mon, 13 Aug 2018 17:52:23 GMT  
		Size: 1.4 GB (1441905067 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3e7b18583f4b1d198a1b0f222de8583f8565481a4b667be0863f398eaad783dd`  
		Last Modified: Wed, 15 Aug 2018 09:53:36 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7577435bbebfae47b3729e0f59e6d11e542b864b913e64ff91dca6f86ad9f2`  
		Last Modified: Tue, 28 Aug 2018 09:33:27 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5388461b6aed38175bb76223268e6d950121c0f03249585dc926d4e2938377be`  
		Last Modified: Tue, 28 Aug 2018 09:33:27 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecbd5053a16453e90e057b2d1dc19f2362d9c305dd2ee1eb4025e23fc3f7ef10`  
		Last Modified: Tue, 28 Aug 2018 09:34:01 GMT  
		Size: 117.2 MB (117196723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7acf3a41a42948bc3ec1feccecd9eb4e6730ffaecf3bc2695b4a93e844d702`  
		Last Modified: Tue, 28 Aug 2018 09:33:27 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1`

```console
$ docker pull julia@sha256:eaf0970982bcdbc39cdabe95fcc168d4644ac70e5b8ffca374cd94a08aedd2cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386
	-	windows version 10.0.14393.2430; amd64
	-	windows version 10.0.16299.611; amd64
	-	windows version 10.0.17134.228; amd64

### `julia:1` - linux; amd64

```console
$ docker pull julia@sha256:e5672a9adc535528ebe5452e5ac5e2f0c96a9260d455d8b8ce87938246f01c1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.6 MB (150638021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f10e0b741845b571888bc23abe20bc26158ad958cddeb71d53472737ddc8bd7`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Thu, 30 Aug 2018 22:06:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 30 Aug 2018 22:06:11 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 30 Aug 2018 22:06:11 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Aug 2018 22:06:12 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 30 Aug 2018 22:06:12 GMT
ENV JULIA_VERSION=1.0.0
# Thu, 30 Aug 2018 22:06:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bea4570d7358016d8ed29d2c15787dbefaea3e746c570763e7ad6040f17831f3' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='61e855e93c3bfe5e4f486a54a4c45194f4b020922e56af5fc104ff3fd3d8e41a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='c8c607a7682bfe08b5511aac616c3b393038e52edf4dbaac5e69727c4f1eaa8b' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 30 Aug 2018 22:06:31 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e9a1317b3df089c1e00e29b314a1f97fa73611edf1275341dfe593c9a0f629`  
		Last Modified: Thu, 30 Aug 2018 22:07:59 GMT  
		Size: 9.5 MB (9453813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612844faa530217da6b34c26ad390cce36452f81289173414ae8072f1f61ac41`  
		Last Modified: Thu, 30 Aug 2018 22:08:17 GMT  
		Size: 95.9 MB (95874164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1` - linux; arm variant v7

```console
$ docker pull julia@sha256:6d2a72513b4c943eeb4025841fe8faff060e218a0689e764377db692d71bf6ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138070345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c866519a57f7d1406976be32a923260abd751c9a4fd8b7419d92082e3c68b0a`
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
# Sat, 11 Aug 2018 12:02:29 GMT
ENV JULIA_VERSION=1.0.0
# Sat, 11 Aug 2018 12:02:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bea4570d7358016d8ed29d2c15787dbefaea3e746c570763e7ad6040f17831f3' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='61e855e93c3bfe5e4f486a54a4c45194f4b020922e56af5fc104ff3fd3d8e41a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='c8c607a7682bfe08b5511aac616c3b393038e52edf4dbaac5e69727c4f1eaa8b' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Sat, 11 Aug 2018 12:02:56 GMT
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
	-	`sha256:70fd4d4d490aa5a2fea76f6d3011e4bceea39c475b0cac14f28c4735a520aa8e`  
		Last Modified: Sat, 11 Aug 2018 12:03:36 GMT  
		Size: 87.8 MB (87831049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1` - linux; 386

```console
$ docker pull julia@sha256:d012f524038e71f68215e18d0c5a1fe48046a481fe69396bd41778ccff896184
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148778796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8aabcd74de4523487f96c179dea02146eb236052dfaacbf3aa7a954f10c0482`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Fri, 31 Aug 2018 19:53:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 31 Aug 2018 19:53:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_VERSION=1.0.0
# Fri, 31 Aug 2018 19:53:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bea4570d7358016d8ed29d2c15787dbefaea3e746c570763e7ad6040f17831f3' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='61e855e93c3bfe5e4f486a54a4c45194f4b020922e56af5fc104ff3fd3d8e41a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='c8c607a7682bfe08b5511aac616c3b393038e52edf4dbaac5e69727c4f1eaa8b' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 31 Aug 2018 19:53:36 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9e69f5fd8573ab47a73db4370f35334eb7072936d0c01cd01c038328e47799`  
		Last Modified: Fri, 31 Aug 2018 19:55:52 GMT  
		Size: 9.5 MB (9458338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b39a01685ce6250c0ce7ae2122bc54ca47df71db115de3efbb37769f508872b`  
		Last Modified: Fri, 31 Aug 2018 19:56:20 GMT  
		Size: 93.3 MB (93282936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1` - windows version 10.0.14393.2430; amd64

```console
$ docker pull julia@sha256:b713d36e400c1f025d8cf0d560340fa947255c8e615f90af0ceb002dbcafdb28
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5627336856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aa6cfb580e534a4d3d681c47d8322d8c0ae143a3f88cc84aadb912fdaebc2a9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:52:23 GMT
RUN Install update 10.0.14393.2430
# Wed, 15 Aug 2018 09:35:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 28 Aug 2018 09:14:53 GMT
ENV JULIA_VERSION=1.0.0
# Tue, 28 Aug 2018 09:14:54 GMT
ENV JULIA_SHA256=001874185a26f598abe2e7fc287cacf66387c68caa3251f5aa6ef97fb22020dd
# Tue, 28 Aug 2018 09:18:10 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Tue, 28 Aug 2018 09:18:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6631c2d2a60cd7ee5b334c2725b03e4d4976abb9a19c8e8dc9b806b3752745a6`  
		Last Modified: Mon, 13 Aug 2018 17:52:23 GMT  
		Size: 1.4 GB (1441905067 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3e7b18583f4b1d198a1b0f222de8583f8565481a4b667be0863f398eaad783dd`  
		Last Modified: Wed, 15 Aug 2018 09:53:36 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce70c7805ed93eeb19e738eb523728f39d19ca5df6989133b14edf2a25c184b`  
		Last Modified: Tue, 28 Aug 2018 09:30:57 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3ec080e561b7749623d64f2b49fc8a010e63eeade913292f45349937003fe4`  
		Last Modified: Tue, 28 Aug 2018 09:30:56 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f552e51c3f657d162e24da3fbe17dd5fb888a9503457d74ac27b86a7812330e`  
		Last Modified: Tue, 28 Aug 2018 09:31:29 GMT  
		Size: 115.4 MB (115441094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dccf489dbb94ff824a33f52c356d5dcdd738aa59eb4629dd188e6306b8023fb2`  
		Last Modified: Tue, 28 Aug 2018 09:30:57 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1` - windows version 10.0.16299.611; amd64

```console
$ docker pull julia@sha256:421c41d44d2f613306cc84c5b8cb6a52fa0081266d2ed61b931d88890daa6994
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3222800660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9899aa978250df09cf79c7747d2beb8ca2dcb9a77bdd189d3947c9fdce9706e7`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 08 Aug 2018 23:20:54 GMT
RUN Install update 10.0.16299.611
# Wed, 15 Aug 2018 09:39:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 28 Aug 2018 09:18:20 GMT
ENV JULIA_VERSION=1.0.0
# Tue, 28 Aug 2018 09:18:21 GMT
ENV JULIA_SHA256=001874185a26f598abe2e7fc287cacf66387c68caa3251f5aa6ef97fb22020dd
# Tue, 28 Aug 2018 09:21:09 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Tue, 28 Aug 2018 09:21:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c4047f78756c2319eb99557ec7139906cf11af6c91aefcc0e44ac49a5481d8e4`  
		Last Modified: Mon, 13 Aug 2018 18:28:41 GMT  
		Size: 837.8 MB (837835144 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ddd10e03dfdc774fc9b5f720df0030a8f59a8c2c78e843c72b45c30af480dc60`  
		Last Modified: Wed, 15 Aug 2018 09:54:44 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c270494701c5645be4b8be0e20a3e318a49b65b979de57d878597562738fa6`  
		Last Modified: Tue, 28 Aug 2018 09:31:46 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba937700e26abc9813cc1be90300d695c2733b53af93f735a28b556c619ed2ab`  
		Last Modified: Tue, 28 Aug 2018 09:31:46 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b25bf1bdb3da6bf3a1c5b90ecfb7ecacf553df4c4839927b789baee3c44fd1`  
		Last Modified: Tue, 28 Aug 2018 09:32:18 GMT  
		Size: 110.7 MB (110660133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca92c090cc49d1630bc52baf6bf6cc3e944a49141ac1f6ec941bb16329b83c2`  
		Last Modified: Tue, 28 Aug 2018 09:31:46 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1` - windows version 10.0.17134.228; amd64

```console
$ docker pull julia@sha256:22eca9b04a9d4a4416169541eda16f15bcebe122f02079ae31775203482c7c5b
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2300312967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a61c4814c42bf82561076297e62d78edab418f6bf16be9d1a95b3877ff6d39de`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Mon, 06 Aug 2018 18:21:55 GMT
RUN Install update 10.0.17134.228
# Thu, 23 Aug 2018 10:50:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 28 Aug 2018 09:21:17 GMT
ENV JULIA_VERSION=1.0.0
# Tue, 28 Aug 2018 09:21:18 GMT
ENV JULIA_SHA256=001874185a26f598abe2e7fc287cacf66387c68caa3251f5aa6ef97fb22020dd
# Tue, 28 Aug 2018 09:24:02 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Tue, 28 Aug 2018 09:24:03 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Mon, 07 May 2018 21:18:35 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fd59519ea2c2d73a5cba6e562d012a127d08d86dfc5067535eef141406c3750b`  
		Last Modified: Mon, 13 Aug 2018 19:10:18 GMT  
		Size: 530.1 MB (530108736 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:595cc1655e57da5d50a2e822ee129ee8e86e86e5873f2d763a68fae6b3990104`  
		Last Modified: Thu, 23 Aug 2018 11:59:45 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12e8ffe79c23893a3b8616e9c2b530b5f3d12008d06b00617f656451830d1ce`  
		Last Modified: Tue, 28 Aug 2018 09:32:37 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355c6ff95aeb83b0ba9eb0ce5ff6f2ca999cafb18d6b4cadbdf065d6a1a9791b`  
		Last Modified: Tue, 28 Aug 2018 09:32:38 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2cef40f40df73878344616e3a95b82050b67e0bd2f1276a46c55c77dac4390`  
		Last Modified: Tue, 28 Aug 2018 09:33:08 GMT  
		Size: 110.5 MB (110511180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b7ea19a6dafdf3c8175ceff1c40c3e3d281097b4e4bccb0b8166f0d7dda1e9`  
		Last Modified: Tue, 28 Aug 2018 09:32:38 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.0`

```console
$ docker pull julia@sha256:eaf0970982bcdbc39cdabe95fcc168d4644ac70e5b8ffca374cd94a08aedd2cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386
	-	windows version 10.0.14393.2430; amd64
	-	windows version 10.0.16299.611; amd64
	-	windows version 10.0.17134.228; amd64

### `julia:1.0` - linux; amd64

```console
$ docker pull julia@sha256:e5672a9adc535528ebe5452e5ac5e2f0c96a9260d455d8b8ce87938246f01c1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.6 MB (150638021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f10e0b741845b571888bc23abe20bc26158ad958cddeb71d53472737ddc8bd7`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Thu, 30 Aug 2018 22:06:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 30 Aug 2018 22:06:11 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 30 Aug 2018 22:06:11 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Aug 2018 22:06:12 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 30 Aug 2018 22:06:12 GMT
ENV JULIA_VERSION=1.0.0
# Thu, 30 Aug 2018 22:06:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bea4570d7358016d8ed29d2c15787dbefaea3e746c570763e7ad6040f17831f3' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='61e855e93c3bfe5e4f486a54a4c45194f4b020922e56af5fc104ff3fd3d8e41a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='c8c607a7682bfe08b5511aac616c3b393038e52edf4dbaac5e69727c4f1eaa8b' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 30 Aug 2018 22:06:31 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e9a1317b3df089c1e00e29b314a1f97fa73611edf1275341dfe593c9a0f629`  
		Last Modified: Thu, 30 Aug 2018 22:07:59 GMT  
		Size: 9.5 MB (9453813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612844faa530217da6b34c26ad390cce36452f81289173414ae8072f1f61ac41`  
		Last Modified: Thu, 30 Aug 2018 22:08:17 GMT  
		Size: 95.9 MB (95874164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0` - linux; arm variant v7

```console
$ docker pull julia@sha256:6d2a72513b4c943eeb4025841fe8faff060e218a0689e764377db692d71bf6ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138070345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c866519a57f7d1406976be32a923260abd751c9a4fd8b7419d92082e3c68b0a`
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
# Sat, 11 Aug 2018 12:02:29 GMT
ENV JULIA_VERSION=1.0.0
# Sat, 11 Aug 2018 12:02:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bea4570d7358016d8ed29d2c15787dbefaea3e746c570763e7ad6040f17831f3' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='61e855e93c3bfe5e4f486a54a4c45194f4b020922e56af5fc104ff3fd3d8e41a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='c8c607a7682bfe08b5511aac616c3b393038e52edf4dbaac5e69727c4f1eaa8b' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Sat, 11 Aug 2018 12:02:56 GMT
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
	-	`sha256:70fd4d4d490aa5a2fea76f6d3011e4bceea39c475b0cac14f28c4735a520aa8e`  
		Last Modified: Sat, 11 Aug 2018 12:03:36 GMT  
		Size: 87.8 MB (87831049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0` - linux; 386

```console
$ docker pull julia@sha256:d012f524038e71f68215e18d0c5a1fe48046a481fe69396bd41778ccff896184
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148778796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8aabcd74de4523487f96c179dea02146eb236052dfaacbf3aa7a954f10c0482`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Fri, 31 Aug 2018 19:53:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 31 Aug 2018 19:53:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_VERSION=1.0.0
# Fri, 31 Aug 2018 19:53:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bea4570d7358016d8ed29d2c15787dbefaea3e746c570763e7ad6040f17831f3' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='61e855e93c3bfe5e4f486a54a4c45194f4b020922e56af5fc104ff3fd3d8e41a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='c8c607a7682bfe08b5511aac616c3b393038e52edf4dbaac5e69727c4f1eaa8b' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 31 Aug 2018 19:53:36 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9e69f5fd8573ab47a73db4370f35334eb7072936d0c01cd01c038328e47799`  
		Last Modified: Fri, 31 Aug 2018 19:55:52 GMT  
		Size: 9.5 MB (9458338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b39a01685ce6250c0ce7ae2122bc54ca47df71db115de3efbb37769f508872b`  
		Last Modified: Fri, 31 Aug 2018 19:56:20 GMT  
		Size: 93.3 MB (93282936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0` - windows version 10.0.14393.2430; amd64

```console
$ docker pull julia@sha256:b713d36e400c1f025d8cf0d560340fa947255c8e615f90af0ceb002dbcafdb28
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5627336856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aa6cfb580e534a4d3d681c47d8322d8c0ae143a3f88cc84aadb912fdaebc2a9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:52:23 GMT
RUN Install update 10.0.14393.2430
# Wed, 15 Aug 2018 09:35:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 28 Aug 2018 09:14:53 GMT
ENV JULIA_VERSION=1.0.0
# Tue, 28 Aug 2018 09:14:54 GMT
ENV JULIA_SHA256=001874185a26f598abe2e7fc287cacf66387c68caa3251f5aa6ef97fb22020dd
# Tue, 28 Aug 2018 09:18:10 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Tue, 28 Aug 2018 09:18:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6631c2d2a60cd7ee5b334c2725b03e4d4976abb9a19c8e8dc9b806b3752745a6`  
		Last Modified: Mon, 13 Aug 2018 17:52:23 GMT  
		Size: 1.4 GB (1441905067 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3e7b18583f4b1d198a1b0f222de8583f8565481a4b667be0863f398eaad783dd`  
		Last Modified: Wed, 15 Aug 2018 09:53:36 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce70c7805ed93eeb19e738eb523728f39d19ca5df6989133b14edf2a25c184b`  
		Last Modified: Tue, 28 Aug 2018 09:30:57 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3ec080e561b7749623d64f2b49fc8a010e63eeade913292f45349937003fe4`  
		Last Modified: Tue, 28 Aug 2018 09:30:56 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f552e51c3f657d162e24da3fbe17dd5fb888a9503457d74ac27b86a7812330e`  
		Last Modified: Tue, 28 Aug 2018 09:31:29 GMT  
		Size: 115.4 MB (115441094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dccf489dbb94ff824a33f52c356d5dcdd738aa59eb4629dd188e6306b8023fb2`  
		Last Modified: Tue, 28 Aug 2018 09:30:57 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0` - windows version 10.0.16299.611; amd64

```console
$ docker pull julia@sha256:421c41d44d2f613306cc84c5b8cb6a52fa0081266d2ed61b931d88890daa6994
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3222800660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9899aa978250df09cf79c7747d2beb8ca2dcb9a77bdd189d3947c9fdce9706e7`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 08 Aug 2018 23:20:54 GMT
RUN Install update 10.0.16299.611
# Wed, 15 Aug 2018 09:39:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 28 Aug 2018 09:18:20 GMT
ENV JULIA_VERSION=1.0.0
# Tue, 28 Aug 2018 09:18:21 GMT
ENV JULIA_SHA256=001874185a26f598abe2e7fc287cacf66387c68caa3251f5aa6ef97fb22020dd
# Tue, 28 Aug 2018 09:21:09 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Tue, 28 Aug 2018 09:21:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c4047f78756c2319eb99557ec7139906cf11af6c91aefcc0e44ac49a5481d8e4`  
		Last Modified: Mon, 13 Aug 2018 18:28:41 GMT  
		Size: 837.8 MB (837835144 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ddd10e03dfdc774fc9b5f720df0030a8f59a8c2c78e843c72b45c30af480dc60`  
		Last Modified: Wed, 15 Aug 2018 09:54:44 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c270494701c5645be4b8be0e20a3e318a49b65b979de57d878597562738fa6`  
		Last Modified: Tue, 28 Aug 2018 09:31:46 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba937700e26abc9813cc1be90300d695c2733b53af93f735a28b556c619ed2ab`  
		Last Modified: Tue, 28 Aug 2018 09:31:46 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b25bf1bdb3da6bf3a1c5b90ecfb7ecacf553df4c4839927b789baee3c44fd1`  
		Last Modified: Tue, 28 Aug 2018 09:32:18 GMT  
		Size: 110.7 MB (110660133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca92c090cc49d1630bc52baf6bf6cc3e944a49141ac1f6ec941bb16329b83c2`  
		Last Modified: Tue, 28 Aug 2018 09:31:46 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0` - windows version 10.0.17134.228; amd64

```console
$ docker pull julia@sha256:22eca9b04a9d4a4416169541eda16f15bcebe122f02079ae31775203482c7c5b
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2300312967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a61c4814c42bf82561076297e62d78edab418f6bf16be9d1a95b3877ff6d39de`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Mon, 06 Aug 2018 18:21:55 GMT
RUN Install update 10.0.17134.228
# Thu, 23 Aug 2018 10:50:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 28 Aug 2018 09:21:17 GMT
ENV JULIA_VERSION=1.0.0
# Tue, 28 Aug 2018 09:21:18 GMT
ENV JULIA_SHA256=001874185a26f598abe2e7fc287cacf66387c68caa3251f5aa6ef97fb22020dd
# Tue, 28 Aug 2018 09:24:02 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Tue, 28 Aug 2018 09:24:03 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Mon, 07 May 2018 21:18:35 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fd59519ea2c2d73a5cba6e562d012a127d08d86dfc5067535eef141406c3750b`  
		Last Modified: Mon, 13 Aug 2018 19:10:18 GMT  
		Size: 530.1 MB (530108736 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:595cc1655e57da5d50a2e822ee129ee8e86e86e5873f2d763a68fae6b3990104`  
		Last Modified: Thu, 23 Aug 2018 11:59:45 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12e8ffe79c23893a3b8616e9c2b530b5f3d12008d06b00617f656451830d1ce`  
		Last Modified: Tue, 28 Aug 2018 09:32:37 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355c6ff95aeb83b0ba9eb0ce5ff6f2ca999cafb18d6b4cadbdf065d6a1a9791b`  
		Last Modified: Tue, 28 Aug 2018 09:32:38 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2cef40f40df73878344616e3a95b82050b67e0bd2f1276a46c55c77dac4390`  
		Last Modified: Tue, 28 Aug 2018 09:33:08 GMT  
		Size: 110.5 MB (110511180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b7ea19a6dafdf3c8175ceff1c40c3e3d281097b4e4bccb0b8166f0d7dda1e9`  
		Last Modified: Tue, 28 Aug 2018 09:32:38 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.0.0`

```console
$ docker pull julia@sha256:eaf0970982bcdbc39cdabe95fcc168d4644ac70e5b8ffca374cd94a08aedd2cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386
	-	windows version 10.0.14393.2430; amd64
	-	windows version 10.0.16299.611; amd64
	-	windows version 10.0.17134.228; amd64

### `julia:1.0.0` - linux; amd64

```console
$ docker pull julia@sha256:e5672a9adc535528ebe5452e5ac5e2f0c96a9260d455d8b8ce87938246f01c1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.6 MB (150638021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f10e0b741845b571888bc23abe20bc26158ad958cddeb71d53472737ddc8bd7`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Thu, 30 Aug 2018 22:06:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 30 Aug 2018 22:06:11 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 30 Aug 2018 22:06:11 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Aug 2018 22:06:12 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 30 Aug 2018 22:06:12 GMT
ENV JULIA_VERSION=1.0.0
# Thu, 30 Aug 2018 22:06:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bea4570d7358016d8ed29d2c15787dbefaea3e746c570763e7ad6040f17831f3' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='61e855e93c3bfe5e4f486a54a4c45194f4b020922e56af5fc104ff3fd3d8e41a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='c8c607a7682bfe08b5511aac616c3b393038e52edf4dbaac5e69727c4f1eaa8b' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 30 Aug 2018 22:06:31 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e9a1317b3df089c1e00e29b314a1f97fa73611edf1275341dfe593c9a0f629`  
		Last Modified: Thu, 30 Aug 2018 22:07:59 GMT  
		Size: 9.5 MB (9453813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612844faa530217da6b34c26ad390cce36452f81289173414ae8072f1f61ac41`  
		Last Modified: Thu, 30 Aug 2018 22:08:17 GMT  
		Size: 95.9 MB (95874164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0.0` - linux; arm variant v7

```console
$ docker pull julia@sha256:6d2a72513b4c943eeb4025841fe8faff060e218a0689e764377db692d71bf6ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138070345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c866519a57f7d1406976be32a923260abd751c9a4fd8b7419d92082e3c68b0a`
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
# Sat, 11 Aug 2018 12:02:29 GMT
ENV JULIA_VERSION=1.0.0
# Sat, 11 Aug 2018 12:02:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bea4570d7358016d8ed29d2c15787dbefaea3e746c570763e7ad6040f17831f3' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='61e855e93c3bfe5e4f486a54a4c45194f4b020922e56af5fc104ff3fd3d8e41a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='c8c607a7682bfe08b5511aac616c3b393038e52edf4dbaac5e69727c4f1eaa8b' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Sat, 11 Aug 2018 12:02:56 GMT
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
	-	`sha256:70fd4d4d490aa5a2fea76f6d3011e4bceea39c475b0cac14f28c4735a520aa8e`  
		Last Modified: Sat, 11 Aug 2018 12:03:36 GMT  
		Size: 87.8 MB (87831049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0.0` - linux; 386

```console
$ docker pull julia@sha256:d012f524038e71f68215e18d0c5a1fe48046a481fe69396bd41778ccff896184
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148778796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8aabcd74de4523487f96c179dea02146eb236052dfaacbf3aa7a954f10c0482`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Fri, 31 Aug 2018 19:53:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 31 Aug 2018 19:53:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_VERSION=1.0.0
# Fri, 31 Aug 2018 19:53:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bea4570d7358016d8ed29d2c15787dbefaea3e746c570763e7ad6040f17831f3' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='61e855e93c3bfe5e4f486a54a4c45194f4b020922e56af5fc104ff3fd3d8e41a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='c8c607a7682bfe08b5511aac616c3b393038e52edf4dbaac5e69727c4f1eaa8b' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 31 Aug 2018 19:53:36 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9e69f5fd8573ab47a73db4370f35334eb7072936d0c01cd01c038328e47799`  
		Last Modified: Fri, 31 Aug 2018 19:55:52 GMT  
		Size: 9.5 MB (9458338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b39a01685ce6250c0ce7ae2122bc54ca47df71db115de3efbb37769f508872b`  
		Last Modified: Fri, 31 Aug 2018 19:56:20 GMT  
		Size: 93.3 MB (93282936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0.0` - windows version 10.0.14393.2430; amd64

```console
$ docker pull julia@sha256:b713d36e400c1f025d8cf0d560340fa947255c8e615f90af0ceb002dbcafdb28
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5627336856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aa6cfb580e534a4d3d681c47d8322d8c0ae143a3f88cc84aadb912fdaebc2a9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:52:23 GMT
RUN Install update 10.0.14393.2430
# Wed, 15 Aug 2018 09:35:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 28 Aug 2018 09:14:53 GMT
ENV JULIA_VERSION=1.0.0
# Tue, 28 Aug 2018 09:14:54 GMT
ENV JULIA_SHA256=001874185a26f598abe2e7fc287cacf66387c68caa3251f5aa6ef97fb22020dd
# Tue, 28 Aug 2018 09:18:10 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Tue, 28 Aug 2018 09:18:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6631c2d2a60cd7ee5b334c2725b03e4d4976abb9a19c8e8dc9b806b3752745a6`  
		Last Modified: Mon, 13 Aug 2018 17:52:23 GMT  
		Size: 1.4 GB (1441905067 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3e7b18583f4b1d198a1b0f222de8583f8565481a4b667be0863f398eaad783dd`  
		Last Modified: Wed, 15 Aug 2018 09:53:36 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce70c7805ed93eeb19e738eb523728f39d19ca5df6989133b14edf2a25c184b`  
		Last Modified: Tue, 28 Aug 2018 09:30:57 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3ec080e561b7749623d64f2b49fc8a010e63eeade913292f45349937003fe4`  
		Last Modified: Tue, 28 Aug 2018 09:30:56 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f552e51c3f657d162e24da3fbe17dd5fb888a9503457d74ac27b86a7812330e`  
		Last Modified: Tue, 28 Aug 2018 09:31:29 GMT  
		Size: 115.4 MB (115441094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dccf489dbb94ff824a33f52c356d5dcdd738aa59eb4629dd188e6306b8023fb2`  
		Last Modified: Tue, 28 Aug 2018 09:30:57 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0.0` - windows version 10.0.16299.611; amd64

```console
$ docker pull julia@sha256:421c41d44d2f613306cc84c5b8cb6a52fa0081266d2ed61b931d88890daa6994
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3222800660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9899aa978250df09cf79c7747d2beb8ca2dcb9a77bdd189d3947c9fdce9706e7`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 08 Aug 2018 23:20:54 GMT
RUN Install update 10.0.16299.611
# Wed, 15 Aug 2018 09:39:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 28 Aug 2018 09:18:20 GMT
ENV JULIA_VERSION=1.0.0
# Tue, 28 Aug 2018 09:18:21 GMT
ENV JULIA_SHA256=001874185a26f598abe2e7fc287cacf66387c68caa3251f5aa6ef97fb22020dd
# Tue, 28 Aug 2018 09:21:09 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Tue, 28 Aug 2018 09:21:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c4047f78756c2319eb99557ec7139906cf11af6c91aefcc0e44ac49a5481d8e4`  
		Last Modified: Mon, 13 Aug 2018 18:28:41 GMT  
		Size: 837.8 MB (837835144 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ddd10e03dfdc774fc9b5f720df0030a8f59a8c2c78e843c72b45c30af480dc60`  
		Last Modified: Wed, 15 Aug 2018 09:54:44 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c270494701c5645be4b8be0e20a3e318a49b65b979de57d878597562738fa6`  
		Last Modified: Tue, 28 Aug 2018 09:31:46 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba937700e26abc9813cc1be90300d695c2733b53af93f735a28b556c619ed2ab`  
		Last Modified: Tue, 28 Aug 2018 09:31:46 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b25bf1bdb3da6bf3a1c5b90ecfb7ecacf553df4c4839927b789baee3c44fd1`  
		Last Modified: Tue, 28 Aug 2018 09:32:18 GMT  
		Size: 110.7 MB (110660133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca92c090cc49d1630bc52baf6bf6cc3e944a49141ac1f6ec941bb16329b83c2`  
		Last Modified: Tue, 28 Aug 2018 09:31:46 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0.0` - windows version 10.0.17134.228; amd64

```console
$ docker pull julia@sha256:22eca9b04a9d4a4416169541eda16f15bcebe122f02079ae31775203482c7c5b
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2300312967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a61c4814c42bf82561076297e62d78edab418f6bf16be9d1a95b3877ff6d39de`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Mon, 06 Aug 2018 18:21:55 GMT
RUN Install update 10.0.17134.228
# Thu, 23 Aug 2018 10:50:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 28 Aug 2018 09:21:17 GMT
ENV JULIA_VERSION=1.0.0
# Tue, 28 Aug 2018 09:21:18 GMT
ENV JULIA_SHA256=001874185a26f598abe2e7fc287cacf66387c68caa3251f5aa6ef97fb22020dd
# Tue, 28 Aug 2018 09:24:02 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Tue, 28 Aug 2018 09:24:03 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Mon, 07 May 2018 21:18:35 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fd59519ea2c2d73a5cba6e562d012a127d08d86dfc5067535eef141406c3750b`  
		Last Modified: Mon, 13 Aug 2018 19:10:18 GMT  
		Size: 530.1 MB (530108736 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:595cc1655e57da5d50a2e822ee129ee8e86e86e5873f2d763a68fae6b3990104`  
		Last Modified: Thu, 23 Aug 2018 11:59:45 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12e8ffe79c23893a3b8616e9c2b530b5f3d12008d06b00617f656451830d1ce`  
		Last Modified: Tue, 28 Aug 2018 09:32:37 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355c6ff95aeb83b0ba9eb0ce5ff6f2ca999cafb18d6b4cadbdf065d6a1a9791b`  
		Last Modified: Tue, 28 Aug 2018 09:32:38 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2cef40f40df73878344616e3a95b82050b67e0bd2f1276a46c55c77dac4390`  
		Last Modified: Tue, 28 Aug 2018 09:33:08 GMT  
		Size: 110.5 MB (110511180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b7ea19a6dafdf3c8175ceff1c40c3e3d281097b4e4bccb0b8166f0d7dda1e9`  
		Last Modified: Tue, 28 Aug 2018 09:32:38 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.0.0-stretch`

```console
$ docker pull julia@sha256:a29c683e8be70568d90c1d2740f3811fca8d361d3b6ccf55c754fa0d3c32f9ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `julia:1.0.0-stretch` - linux; amd64

```console
$ docker pull julia@sha256:e5672a9adc535528ebe5452e5ac5e2f0c96a9260d455d8b8ce87938246f01c1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.6 MB (150638021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f10e0b741845b571888bc23abe20bc26158ad958cddeb71d53472737ddc8bd7`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Thu, 30 Aug 2018 22:06:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 30 Aug 2018 22:06:11 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 30 Aug 2018 22:06:11 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Aug 2018 22:06:12 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 30 Aug 2018 22:06:12 GMT
ENV JULIA_VERSION=1.0.0
# Thu, 30 Aug 2018 22:06:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bea4570d7358016d8ed29d2c15787dbefaea3e746c570763e7ad6040f17831f3' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='61e855e93c3bfe5e4f486a54a4c45194f4b020922e56af5fc104ff3fd3d8e41a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='c8c607a7682bfe08b5511aac616c3b393038e52edf4dbaac5e69727c4f1eaa8b' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 30 Aug 2018 22:06:31 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e9a1317b3df089c1e00e29b314a1f97fa73611edf1275341dfe593c9a0f629`  
		Last Modified: Thu, 30 Aug 2018 22:07:59 GMT  
		Size: 9.5 MB (9453813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612844faa530217da6b34c26ad390cce36452f81289173414ae8072f1f61ac41`  
		Last Modified: Thu, 30 Aug 2018 22:08:17 GMT  
		Size: 95.9 MB (95874164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0.0-stretch` - linux; arm variant v7

```console
$ docker pull julia@sha256:6d2a72513b4c943eeb4025841fe8faff060e218a0689e764377db692d71bf6ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138070345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c866519a57f7d1406976be32a923260abd751c9a4fd8b7419d92082e3c68b0a`
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
# Sat, 11 Aug 2018 12:02:29 GMT
ENV JULIA_VERSION=1.0.0
# Sat, 11 Aug 2018 12:02:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bea4570d7358016d8ed29d2c15787dbefaea3e746c570763e7ad6040f17831f3' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='61e855e93c3bfe5e4f486a54a4c45194f4b020922e56af5fc104ff3fd3d8e41a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='c8c607a7682bfe08b5511aac616c3b393038e52edf4dbaac5e69727c4f1eaa8b' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Sat, 11 Aug 2018 12:02:56 GMT
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
	-	`sha256:70fd4d4d490aa5a2fea76f6d3011e4bceea39c475b0cac14f28c4735a520aa8e`  
		Last Modified: Sat, 11 Aug 2018 12:03:36 GMT  
		Size: 87.8 MB (87831049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0.0-stretch` - linux; 386

```console
$ docker pull julia@sha256:d012f524038e71f68215e18d0c5a1fe48046a481fe69396bd41778ccff896184
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148778796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8aabcd74de4523487f96c179dea02146eb236052dfaacbf3aa7a954f10c0482`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Fri, 31 Aug 2018 19:53:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 31 Aug 2018 19:53:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_VERSION=1.0.0
# Fri, 31 Aug 2018 19:53:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bea4570d7358016d8ed29d2c15787dbefaea3e746c570763e7ad6040f17831f3' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='61e855e93c3bfe5e4f486a54a4c45194f4b020922e56af5fc104ff3fd3d8e41a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='c8c607a7682bfe08b5511aac616c3b393038e52edf4dbaac5e69727c4f1eaa8b' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 31 Aug 2018 19:53:36 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9e69f5fd8573ab47a73db4370f35334eb7072936d0c01cd01c038328e47799`  
		Last Modified: Fri, 31 Aug 2018 19:55:52 GMT  
		Size: 9.5 MB (9458338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b39a01685ce6250c0ce7ae2122bc54ca47df71db115de3efbb37769f508872b`  
		Last Modified: Fri, 31 Aug 2018 19:56:20 GMT  
		Size: 93.3 MB (93282936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.0.0-windowsservercore-1709`

```console
$ docker pull julia@sha256:a629a3b9d20aa67c4b927abcb3c2d9517a5c0c599dc956fb70266096154eb8dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.611; amd64

### `julia:1.0.0-windowsservercore-1709` - windows version 10.0.16299.611; amd64

```console
$ docker pull julia@sha256:421c41d44d2f613306cc84c5b8cb6a52fa0081266d2ed61b931d88890daa6994
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3222800660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9899aa978250df09cf79c7747d2beb8ca2dcb9a77bdd189d3947c9fdce9706e7`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 08 Aug 2018 23:20:54 GMT
RUN Install update 10.0.16299.611
# Wed, 15 Aug 2018 09:39:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 28 Aug 2018 09:18:20 GMT
ENV JULIA_VERSION=1.0.0
# Tue, 28 Aug 2018 09:18:21 GMT
ENV JULIA_SHA256=001874185a26f598abe2e7fc287cacf66387c68caa3251f5aa6ef97fb22020dd
# Tue, 28 Aug 2018 09:21:09 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Tue, 28 Aug 2018 09:21:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c4047f78756c2319eb99557ec7139906cf11af6c91aefcc0e44ac49a5481d8e4`  
		Last Modified: Mon, 13 Aug 2018 18:28:41 GMT  
		Size: 837.8 MB (837835144 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ddd10e03dfdc774fc9b5f720df0030a8f59a8c2c78e843c72b45c30af480dc60`  
		Last Modified: Wed, 15 Aug 2018 09:54:44 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c270494701c5645be4b8be0e20a3e318a49b65b979de57d878597562738fa6`  
		Last Modified: Tue, 28 Aug 2018 09:31:46 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba937700e26abc9813cc1be90300d695c2733b53af93f735a28b556c619ed2ab`  
		Last Modified: Tue, 28 Aug 2018 09:31:46 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b25bf1bdb3da6bf3a1c5b90ecfb7ecacf553df4c4839927b789baee3c44fd1`  
		Last Modified: Tue, 28 Aug 2018 09:32:18 GMT  
		Size: 110.7 MB (110660133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca92c090cc49d1630bc52baf6bf6cc3e944a49141ac1f6ec941bb16329b83c2`  
		Last Modified: Tue, 28 Aug 2018 09:31:46 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.0.0-windowsservercore-1803`

```console
$ docker pull julia@sha256:85034edc92dfebbc3b113fcc9f82165e37e4929957410dca2cbaa8f9819b7adb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.228; amd64

### `julia:1.0.0-windowsservercore-1803` - windows version 10.0.17134.228; amd64

```console
$ docker pull julia@sha256:22eca9b04a9d4a4416169541eda16f15bcebe122f02079ae31775203482c7c5b
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2300312967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a61c4814c42bf82561076297e62d78edab418f6bf16be9d1a95b3877ff6d39de`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Mon, 06 Aug 2018 18:21:55 GMT
RUN Install update 10.0.17134.228
# Thu, 23 Aug 2018 10:50:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 28 Aug 2018 09:21:17 GMT
ENV JULIA_VERSION=1.0.0
# Tue, 28 Aug 2018 09:21:18 GMT
ENV JULIA_SHA256=001874185a26f598abe2e7fc287cacf66387c68caa3251f5aa6ef97fb22020dd
# Tue, 28 Aug 2018 09:24:02 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Tue, 28 Aug 2018 09:24:03 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Mon, 07 May 2018 21:18:35 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fd59519ea2c2d73a5cba6e562d012a127d08d86dfc5067535eef141406c3750b`  
		Last Modified: Mon, 13 Aug 2018 19:10:18 GMT  
		Size: 530.1 MB (530108736 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:595cc1655e57da5d50a2e822ee129ee8e86e86e5873f2d763a68fae6b3990104`  
		Last Modified: Thu, 23 Aug 2018 11:59:45 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12e8ffe79c23893a3b8616e9c2b530b5f3d12008d06b00617f656451830d1ce`  
		Last Modified: Tue, 28 Aug 2018 09:32:37 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355c6ff95aeb83b0ba9eb0ce5ff6f2ca999cafb18d6b4cadbdf065d6a1a9791b`  
		Last Modified: Tue, 28 Aug 2018 09:32:38 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2cef40f40df73878344616e3a95b82050b67e0bd2f1276a46c55c77dac4390`  
		Last Modified: Tue, 28 Aug 2018 09:33:08 GMT  
		Size: 110.5 MB (110511180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b7ea19a6dafdf3c8175ceff1c40c3e3d281097b4e4bccb0b8166f0d7dda1e9`  
		Last Modified: Tue, 28 Aug 2018 09:32:38 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.0.0-windowsservercore-ltsc2016`

```console
$ docker pull julia@sha256:c3a8f2cd06002a4e8a2c77117d8cafb7658485f10fcd79ea465c38943013c571
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `julia:1.0.0-windowsservercore-ltsc2016` - windows version 10.0.14393.2430; amd64

```console
$ docker pull julia@sha256:b713d36e400c1f025d8cf0d560340fa947255c8e615f90af0ceb002dbcafdb28
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5627336856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aa6cfb580e534a4d3d681c47d8322d8c0ae143a3f88cc84aadb912fdaebc2a9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:52:23 GMT
RUN Install update 10.0.14393.2430
# Wed, 15 Aug 2018 09:35:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 28 Aug 2018 09:14:53 GMT
ENV JULIA_VERSION=1.0.0
# Tue, 28 Aug 2018 09:14:54 GMT
ENV JULIA_SHA256=001874185a26f598abe2e7fc287cacf66387c68caa3251f5aa6ef97fb22020dd
# Tue, 28 Aug 2018 09:18:10 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Tue, 28 Aug 2018 09:18:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6631c2d2a60cd7ee5b334c2725b03e4d4976abb9a19c8e8dc9b806b3752745a6`  
		Last Modified: Mon, 13 Aug 2018 17:52:23 GMT  
		Size: 1.4 GB (1441905067 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3e7b18583f4b1d198a1b0f222de8583f8565481a4b667be0863f398eaad783dd`  
		Last Modified: Wed, 15 Aug 2018 09:53:36 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce70c7805ed93eeb19e738eb523728f39d19ca5df6989133b14edf2a25c184b`  
		Last Modified: Tue, 28 Aug 2018 09:30:57 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3ec080e561b7749623d64f2b49fc8a010e63eeade913292f45349937003fe4`  
		Last Modified: Tue, 28 Aug 2018 09:30:56 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f552e51c3f657d162e24da3fbe17dd5fb888a9503457d74ac27b86a7812330e`  
		Last Modified: Tue, 28 Aug 2018 09:31:29 GMT  
		Size: 115.4 MB (115441094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dccf489dbb94ff824a33f52c356d5dcdd738aa59eb4629dd188e6306b8023fb2`  
		Last Modified: Tue, 28 Aug 2018 09:30:57 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.0-stretch`

```console
$ docker pull julia@sha256:a29c683e8be70568d90c1d2740f3811fca8d361d3b6ccf55c754fa0d3c32f9ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `julia:1.0-stretch` - linux; amd64

```console
$ docker pull julia@sha256:e5672a9adc535528ebe5452e5ac5e2f0c96a9260d455d8b8ce87938246f01c1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.6 MB (150638021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f10e0b741845b571888bc23abe20bc26158ad958cddeb71d53472737ddc8bd7`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Thu, 30 Aug 2018 22:06:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 30 Aug 2018 22:06:11 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 30 Aug 2018 22:06:11 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Aug 2018 22:06:12 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 30 Aug 2018 22:06:12 GMT
ENV JULIA_VERSION=1.0.0
# Thu, 30 Aug 2018 22:06:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bea4570d7358016d8ed29d2c15787dbefaea3e746c570763e7ad6040f17831f3' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='61e855e93c3bfe5e4f486a54a4c45194f4b020922e56af5fc104ff3fd3d8e41a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='c8c607a7682bfe08b5511aac616c3b393038e52edf4dbaac5e69727c4f1eaa8b' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 30 Aug 2018 22:06:31 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e9a1317b3df089c1e00e29b314a1f97fa73611edf1275341dfe593c9a0f629`  
		Last Modified: Thu, 30 Aug 2018 22:07:59 GMT  
		Size: 9.5 MB (9453813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612844faa530217da6b34c26ad390cce36452f81289173414ae8072f1f61ac41`  
		Last Modified: Thu, 30 Aug 2018 22:08:17 GMT  
		Size: 95.9 MB (95874164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0-stretch` - linux; arm variant v7

```console
$ docker pull julia@sha256:6d2a72513b4c943eeb4025841fe8faff060e218a0689e764377db692d71bf6ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138070345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c866519a57f7d1406976be32a923260abd751c9a4fd8b7419d92082e3c68b0a`
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
# Sat, 11 Aug 2018 12:02:29 GMT
ENV JULIA_VERSION=1.0.0
# Sat, 11 Aug 2018 12:02:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bea4570d7358016d8ed29d2c15787dbefaea3e746c570763e7ad6040f17831f3' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='61e855e93c3bfe5e4f486a54a4c45194f4b020922e56af5fc104ff3fd3d8e41a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='c8c607a7682bfe08b5511aac616c3b393038e52edf4dbaac5e69727c4f1eaa8b' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Sat, 11 Aug 2018 12:02:56 GMT
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
	-	`sha256:70fd4d4d490aa5a2fea76f6d3011e4bceea39c475b0cac14f28c4735a520aa8e`  
		Last Modified: Sat, 11 Aug 2018 12:03:36 GMT  
		Size: 87.8 MB (87831049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.0-stretch` - linux; 386

```console
$ docker pull julia@sha256:d012f524038e71f68215e18d0c5a1fe48046a481fe69396bd41778ccff896184
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148778796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8aabcd74de4523487f96c179dea02146eb236052dfaacbf3aa7a954f10c0482`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Fri, 31 Aug 2018 19:53:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 31 Aug 2018 19:53:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_VERSION=1.0.0
# Fri, 31 Aug 2018 19:53:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bea4570d7358016d8ed29d2c15787dbefaea3e746c570763e7ad6040f17831f3' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='61e855e93c3bfe5e4f486a54a4c45194f4b020922e56af5fc104ff3fd3d8e41a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='c8c607a7682bfe08b5511aac616c3b393038e52edf4dbaac5e69727c4f1eaa8b' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 31 Aug 2018 19:53:36 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9e69f5fd8573ab47a73db4370f35334eb7072936d0c01cd01c038328e47799`  
		Last Modified: Fri, 31 Aug 2018 19:55:52 GMT  
		Size: 9.5 MB (9458338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b39a01685ce6250c0ce7ae2122bc54ca47df71db115de3efbb37769f508872b`  
		Last Modified: Fri, 31 Aug 2018 19:56:20 GMT  
		Size: 93.3 MB (93282936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.0-windowsservercore-1709`

```console
$ docker pull julia@sha256:a629a3b9d20aa67c4b927abcb3c2d9517a5c0c599dc956fb70266096154eb8dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.611; amd64

### `julia:1.0-windowsservercore-1709` - windows version 10.0.16299.611; amd64

```console
$ docker pull julia@sha256:421c41d44d2f613306cc84c5b8cb6a52fa0081266d2ed61b931d88890daa6994
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3222800660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9899aa978250df09cf79c7747d2beb8ca2dcb9a77bdd189d3947c9fdce9706e7`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 08 Aug 2018 23:20:54 GMT
RUN Install update 10.0.16299.611
# Wed, 15 Aug 2018 09:39:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 28 Aug 2018 09:18:20 GMT
ENV JULIA_VERSION=1.0.0
# Tue, 28 Aug 2018 09:18:21 GMT
ENV JULIA_SHA256=001874185a26f598abe2e7fc287cacf66387c68caa3251f5aa6ef97fb22020dd
# Tue, 28 Aug 2018 09:21:09 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Tue, 28 Aug 2018 09:21:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c4047f78756c2319eb99557ec7139906cf11af6c91aefcc0e44ac49a5481d8e4`  
		Last Modified: Mon, 13 Aug 2018 18:28:41 GMT  
		Size: 837.8 MB (837835144 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ddd10e03dfdc774fc9b5f720df0030a8f59a8c2c78e843c72b45c30af480dc60`  
		Last Modified: Wed, 15 Aug 2018 09:54:44 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c270494701c5645be4b8be0e20a3e318a49b65b979de57d878597562738fa6`  
		Last Modified: Tue, 28 Aug 2018 09:31:46 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba937700e26abc9813cc1be90300d695c2733b53af93f735a28b556c619ed2ab`  
		Last Modified: Tue, 28 Aug 2018 09:31:46 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b25bf1bdb3da6bf3a1c5b90ecfb7ecacf553df4c4839927b789baee3c44fd1`  
		Last Modified: Tue, 28 Aug 2018 09:32:18 GMT  
		Size: 110.7 MB (110660133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca92c090cc49d1630bc52baf6bf6cc3e944a49141ac1f6ec941bb16329b83c2`  
		Last Modified: Tue, 28 Aug 2018 09:31:46 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.0-windowsservercore-1803`

```console
$ docker pull julia@sha256:85034edc92dfebbc3b113fcc9f82165e37e4929957410dca2cbaa8f9819b7adb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.228; amd64

### `julia:1.0-windowsservercore-1803` - windows version 10.0.17134.228; amd64

```console
$ docker pull julia@sha256:22eca9b04a9d4a4416169541eda16f15bcebe122f02079ae31775203482c7c5b
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2300312967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a61c4814c42bf82561076297e62d78edab418f6bf16be9d1a95b3877ff6d39de`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Mon, 06 Aug 2018 18:21:55 GMT
RUN Install update 10.0.17134.228
# Thu, 23 Aug 2018 10:50:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 28 Aug 2018 09:21:17 GMT
ENV JULIA_VERSION=1.0.0
# Tue, 28 Aug 2018 09:21:18 GMT
ENV JULIA_SHA256=001874185a26f598abe2e7fc287cacf66387c68caa3251f5aa6ef97fb22020dd
# Tue, 28 Aug 2018 09:24:02 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Tue, 28 Aug 2018 09:24:03 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Mon, 07 May 2018 21:18:35 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fd59519ea2c2d73a5cba6e562d012a127d08d86dfc5067535eef141406c3750b`  
		Last Modified: Mon, 13 Aug 2018 19:10:18 GMT  
		Size: 530.1 MB (530108736 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:595cc1655e57da5d50a2e822ee129ee8e86e86e5873f2d763a68fae6b3990104`  
		Last Modified: Thu, 23 Aug 2018 11:59:45 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12e8ffe79c23893a3b8616e9c2b530b5f3d12008d06b00617f656451830d1ce`  
		Last Modified: Tue, 28 Aug 2018 09:32:37 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355c6ff95aeb83b0ba9eb0ce5ff6f2ca999cafb18d6b4cadbdf065d6a1a9791b`  
		Last Modified: Tue, 28 Aug 2018 09:32:38 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2cef40f40df73878344616e3a95b82050b67e0bd2f1276a46c55c77dac4390`  
		Last Modified: Tue, 28 Aug 2018 09:33:08 GMT  
		Size: 110.5 MB (110511180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b7ea19a6dafdf3c8175ceff1c40c3e3d281097b4e4bccb0b8166f0d7dda1e9`  
		Last Modified: Tue, 28 Aug 2018 09:32:38 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.0-windowsservercore-ltsc2016`

```console
$ docker pull julia@sha256:c3a8f2cd06002a4e8a2c77117d8cafb7658485f10fcd79ea465c38943013c571
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `julia:1.0-windowsservercore-ltsc2016` - windows version 10.0.14393.2430; amd64

```console
$ docker pull julia@sha256:b713d36e400c1f025d8cf0d560340fa947255c8e615f90af0ceb002dbcafdb28
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5627336856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aa6cfb580e534a4d3d681c47d8322d8c0ae143a3f88cc84aadb912fdaebc2a9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:52:23 GMT
RUN Install update 10.0.14393.2430
# Wed, 15 Aug 2018 09:35:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 28 Aug 2018 09:14:53 GMT
ENV JULIA_VERSION=1.0.0
# Tue, 28 Aug 2018 09:14:54 GMT
ENV JULIA_SHA256=001874185a26f598abe2e7fc287cacf66387c68caa3251f5aa6ef97fb22020dd
# Tue, 28 Aug 2018 09:18:10 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Tue, 28 Aug 2018 09:18:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6631c2d2a60cd7ee5b334c2725b03e4d4976abb9a19c8e8dc9b806b3752745a6`  
		Last Modified: Mon, 13 Aug 2018 17:52:23 GMT  
		Size: 1.4 GB (1441905067 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3e7b18583f4b1d198a1b0f222de8583f8565481a4b667be0863f398eaad783dd`  
		Last Modified: Wed, 15 Aug 2018 09:53:36 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce70c7805ed93eeb19e738eb523728f39d19ca5df6989133b14edf2a25c184b`  
		Last Modified: Tue, 28 Aug 2018 09:30:57 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3ec080e561b7749623d64f2b49fc8a010e63eeade913292f45349937003fe4`  
		Last Modified: Tue, 28 Aug 2018 09:30:56 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f552e51c3f657d162e24da3fbe17dd5fb888a9503457d74ac27b86a7812330e`  
		Last Modified: Tue, 28 Aug 2018 09:31:29 GMT  
		Size: 115.4 MB (115441094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dccf489dbb94ff824a33f52c356d5dcdd738aa59eb4629dd188e6306b8023fb2`  
		Last Modified: Tue, 28 Aug 2018 09:30:57 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1-stretch`

```console
$ docker pull julia@sha256:a29c683e8be70568d90c1d2740f3811fca8d361d3b6ccf55c754fa0d3c32f9ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `julia:1-stretch` - linux; amd64

```console
$ docker pull julia@sha256:e5672a9adc535528ebe5452e5ac5e2f0c96a9260d455d8b8ce87938246f01c1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.6 MB (150638021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f10e0b741845b571888bc23abe20bc26158ad958cddeb71d53472737ddc8bd7`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Thu, 30 Aug 2018 22:06:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 30 Aug 2018 22:06:11 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 30 Aug 2018 22:06:11 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Aug 2018 22:06:12 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 30 Aug 2018 22:06:12 GMT
ENV JULIA_VERSION=1.0.0
# Thu, 30 Aug 2018 22:06:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bea4570d7358016d8ed29d2c15787dbefaea3e746c570763e7ad6040f17831f3' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='61e855e93c3bfe5e4f486a54a4c45194f4b020922e56af5fc104ff3fd3d8e41a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='c8c607a7682bfe08b5511aac616c3b393038e52edf4dbaac5e69727c4f1eaa8b' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 30 Aug 2018 22:06:31 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e9a1317b3df089c1e00e29b314a1f97fa73611edf1275341dfe593c9a0f629`  
		Last Modified: Thu, 30 Aug 2018 22:07:59 GMT  
		Size: 9.5 MB (9453813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612844faa530217da6b34c26ad390cce36452f81289173414ae8072f1f61ac41`  
		Last Modified: Thu, 30 Aug 2018 22:08:17 GMT  
		Size: 95.9 MB (95874164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1-stretch` - linux; arm variant v7

```console
$ docker pull julia@sha256:6d2a72513b4c943eeb4025841fe8faff060e218a0689e764377db692d71bf6ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138070345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c866519a57f7d1406976be32a923260abd751c9a4fd8b7419d92082e3c68b0a`
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
# Sat, 11 Aug 2018 12:02:29 GMT
ENV JULIA_VERSION=1.0.0
# Sat, 11 Aug 2018 12:02:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bea4570d7358016d8ed29d2c15787dbefaea3e746c570763e7ad6040f17831f3' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='61e855e93c3bfe5e4f486a54a4c45194f4b020922e56af5fc104ff3fd3d8e41a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='c8c607a7682bfe08b5511aac616c3b393038e52edf4dbaac5e69727c4f1eaa8b' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Sat, 11 Aug 2018 12:02:56 GMT
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
	-	`sha256:70fd4d4d490aa5a2fea76f6d3011e4bceea39c475b0cac14f28c4735a520aa8e`  
		Last Modified: Sat, 11 Aug 2018 12:03:36 GMT  
		Size: 87.8 MB (87831049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1-stretch` - linux; 386

```console
$ docker pull julia@sha256:d012f524038e71f68215e18d0c5a1fe48046a481fe69396bd41778ccff896184
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148778796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8aabcd74de4523487f96c179dea02146eb236052dfaacbf3aa7a954f10c0482`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Fri, 31 Aug 2018 19:53:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 31 Aug 2018 19:53:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_VERSION=1.0.0
# Fri, 31 Aug 2018 19:53:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bea4570d7358016d8ed29d2c15787dbefaea3e746c570763e7ad6040f17831f3' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='61e855e93c3bfe5e4f486a54a4c45194f4b020922e56af5fc104ff3fd3d8e41a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='c8c607a7682bfe08b5511aac616c3b393038e52edf4dbaac5e69727c4f1eaa8b' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 31 Aug 2018 19:53:36 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9e69f5fd8573ab47a73db4370f35334eb7072936d0c01cd01c038328e47799`  
		Last Modified: Fri, 31 Aug 2018 19:55:52 GMT  
		Size: 9.5 MB (9458338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b39a01685ce6250c0ce7ae2122bc54ca47df71db115de3efbb37769f508872b`  
		Last Modified: Fri, 31 Aug 2018 19:56:20 GMT  
		Size: 93.3 MB (93282936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1-windowsservercore-1709`

```console
$ docker pull julia@sha256:a629a3b9d20aa67c4b927abcb3c2d9517a5c0c599dc956fb70266096154eb8dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.611; amd64

### `julia:1-windowsservercore-1709` - windows version 10.0.16299.611; amd64

```console
$ docker pull julia@sha256:421c41d44d2f613306cc84c5b8cb6a52fa0081266d2ed61b931d88890daa6994
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3222800660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9899aa978250df09cf79c7747d2beb8ca2dcb9a77bdd189d3947c9fdce9706e7`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 08 Aug 2018 23:20:54 GMT
RUN Install update 10.0.16299.611
# Wed, 15 Aug 2018 09:39:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 28 Aug 2018 09:18:20 GMT
ENV JULIA_VERSION=1.0.0
# Tue, 28 Aug 2018 09:18:21 GMT
ENV JULIA_SHA256=001874185a26f598abe2e7fc287cacf66387c68caa3251f5aa6ef97fb22020dd
# Tue, 28 Aug 2018 09:21:09 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Tue, 28 Aug 2018 09:21:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c4047f78756c2319eb99557ec7139906cf11af6c91aefcc0e44ac49a5481d8e4`  
		Last Modified: Mon, 13 Aug 2018 18:28:41 GMT  
		Size: 837.8 MB (837835144 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ddd10e03dfdc774fc9b5f720df0030a8f59a8c2c78e843c72b45c30af480dc60`  
		Last Modified: Wed, 15 Aug 2018 09:54:44 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c270494701c5645be4b8be0e20a3e318a49b65b979de57d878597562738fa6`  
		Last Modified: Tue, 28 Aug 2018 09:31:46 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba937700e26abc9813cc1be90300d695c2733b53af93f735a28b556c619ed2ab`  
		Last Modified: Tue, 28 Aug 2018 09:31:46 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b25bf1bdb3da6bf3a1c5b90ecfb7ecacf553df4c4839927b789baee3c44fd1`  
		Last Modified: Tue, 28 Aug 2018 09:32:18 GMT  
		Size: 110.7 MB (110660133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca92c090cc49d1630bc52baf6bf6cc3e944a49141ac1f6ec941bb16329b83c2`  
		Last Modified: Tue, 28 Aug 2018 09:31:46 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1-windowsservercore-1803`

```console
$ docker pull julia@sha256:85034edc92dfebbc3b113fcc9f82165e37e4929957410dca2cbaa8f9819b7adb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.228; amd64

### `julia:1-windowsservercore-1803` - windows version 10.0.17134.228; amd64

```console
$ docker pull julia@sha256:22eca9b04a9d4a4416169541eda16f15bcebe122f02079ae31775203482c7c5b
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2300312967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a61c4814c42bf82561076297e62d78edab418f6bf16be9d1a95b3877ff6d39de`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Mon, 06 Aug 2018 18:21:55 GMT
RUN Install update 10.0.17134.228
# Thu, 23 Aug 2018 10:50:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 28 Aug 2018 09:21:17 GMT
ENV JULIA_VERSION=1.0.0
# Tue, 28 Aug 2018 09:21:18 GMT
ENV JULIA_SHA256=001874185a26f598abe2e7fc287cacf66387c68caa3251f5aa6ef97fb22020dd
# Tue, 28 Aug 2018 09:24:02 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Tue, 28 Aug 2018 09:24:03 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Mon, 07 May 2018 21:18:35 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fd59519ea2c2d73a5cba6e562d012a127d08d86dfc5067535eef141406c3750b`  
		Last Modified: Mon, 13 Aug 2018 19:10:18 GMT  
		Size: 530.1 MB (530108736 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:595cc1655e57da5d50a2e822ee129ee8e86e86e5873f2d763a68fae6b3990104`  
		Last Modified: Thu, 23 Aug 2018 11:59:45 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12e8ffe79c23893a3b8616e9c2b530b5f3d12008d06b00617f656451830d1ce`  
		Last Modified: Tue, 28 Aug 2018 09:32:37 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355c6ff95aeb83b0ba9eb0ce5ff6f2ca999cafb18d6b4cadbdf065d6a1a9791b`  
		Last Modified: Tue, 28 Aug 2018 09:32:38 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2cef40f40df73878344616e3a95b82050b67e0bd2f1276a46c55c77dac4390`  
		Last Modified: Tue, 28 Aug 2018 09:33:08 GMT  
		Size: 110.5 MB (110511180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b7ea19a6dafdf3c8175ceff1c40c3e3d281097b4e4bccb0b8166f0d7dda1e9`  
		Last Modified: Tue, 28 Aug 2018 09:32:38 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1-windowsservercore-ltsc2016`

```console
$ docker pull julia@sha256:c3a8f2cd06002a4e8a2c77117d8cafb7658485f10fcd79ea465c38943013c571
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `julia:1-windowsservercore-ltsc2016` - windows version 10.0.14393.2430; amd64

```console
$ docker pull julia@sha256:b713d36e400c1f025d8cf0d560340fa947255c8e615f90af0ceb002dbcafdb28
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5627336856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aa6cfb580e534a4d3d681c47d8322d8c0ae143a3f88cc84aadb912fdaebc2a9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:52:23 GMT
RUN Install update 10.0.14393.2430
# Wed, 15 Aug 2018 09:35:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 28 Aug 2018 09:14:53 GMT
ENV JULIA_VERSION=1.0.0
# Tue, 28 Aug 2018 09:14:54 GMT
ENV JULIA_SHA256=001874185a26f598abe2e7fc287cacf66387c68caa3251f5aa6ef97fb22020dd
# Tue, 28 Aug 2018 09:18:10 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Tue, 28 Aug 2018 09:18:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6631c2d2a60cd7ee5b334c2725b03e4d4976abb9a19c8e8dc9b806b3752745a6`  
		Last Modified: Mon, 13 Aug 2018 17:52:23 GMT  
		Size: 1.4 GB (1441905067 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3e7b18583f4b1d198a1b0f222de8583f8565481a4b667be0863f398eaad783dd`  
		Last Modified: Wed, 15 Aug 2018 09:53:36 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce70c7805ed93eeb19e738eb523728f39d19ca5df6989133b14edf2a25c184b`  
		Last Modified: Tue, 28 Aug 2018 09:30:57 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3ec080e561b7749623d64f2b49fc8a010e63eeade913292f45349937003fe4`  
		Last Modified: Tue, 28 Aug 2018 09:30:56 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f552e51c3f657d162e24da3fbe17dd5fb888a9503457d74ac27b86a7812330e`  
		Last Modified: Tue, 28 Aug 2018 09:31:29 GMT  
		Size: 115.4 MB (115441094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dccf489dbb94ff824a33f52c356d5dcdd738aa59eb4629dd188e6306b8023fb2`  
		Last Modified: Tue, 28 Aug 2018 09:30:57 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:latest`

```console
$ docker pull julia@sha256:eaf0970982bcdbc39cdabe95fcc168d4644ac70e5b8ffca374cd94a08aedd2cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386
	-	windows version 10.0.14393.2430; amd64
	-	windows version 10.0.16299.611; amd64
	-	windows version 10.0.17134.228; amd64

### `julia:latest` - linux; amd64

```console
$ docker pull julia@sha256:e5672a9adc535528ebe5452e5ac5e2f0c96a9260d455d8b8ce87938246f01c1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.6 MB (150638021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f10e0b741845b571888bc23abe20bc26158ad958cddeb71d53472737ddc8bd7`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Thu, 30 Aug 2018 22:06:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 30 Aug 2018 22:06:11 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 30 Aug 2018 22:06:11 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Aug 2018 22:06:12 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 30 Aug 2018 22:06:12 GMT
ENV JULIA_VERSION=1.0.0
# Thu, 30 Aug 2018 22:06:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bea4570d7358016d8ed29d2c15787dbefaea3e746c570763e7ad6040f17831f3' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='61e855e93c3bfe5e4f486a54a4c45194f4b020922e56af5fc104ff3fd3d8e41a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='c8c607a7682bfe08b5511aac616c3b393038e52edf4dbaac5e69727c4f1eaa8b' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 30 Aug 2018 22:06:31 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e9a1317b3df089c1e00e29b314a1f97fa73611edf1275341dfe593c9a0f629`  
		Last Modified: Thu, 30 Aug 2018 22:07:59 GMT  
		Size: 9.5 MB (9453813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612844faa530217da6b34c26ad390cce36452f81289173414ae8072f1f61ac41`  
		Last Modified: Thu, 30 Aug 2018 22:08:17 GMT  
		Size: 95.9 MB (95874164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - linux; arm variant v7

```console
$ docker pull julia@sha256:6d2a72513b4c943eeb4025841fe8faff060e218a0689e764377db692d71bf6ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138070345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c866519a57f7d1406976be32a923260abd751c9a4fd8b7419d92082e3c68b0a`
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
# Sat, 11 Aug 2018 12:02:29 GMT
ENV JULIA_VERSION=1.0.0
# Sat, 11 Aug 2018 12:02:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bea4570d7358016d8ed29d2c15787dbefaea3e746c570763e7ad6040f17831f3' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='61e855e93c3bfe5e4f486a54a4c45194f4b020922e56af5fc104ff3fd3d8e41a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='c8c607a7682bfe08b5511aac616c3b393038e52edf4dbaac5e69727c4f1eaa8b' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Sat, 11 Aug 2018 12:02:56 GMT
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
	-	`sha256:70fd4d4d490aa5a2fea76f6d3011e4bceea39c475b0cac14f28c4735a520aa8e`  
		Last Modified: Sat, 11 Aug 2018 12:03:36 GMT  
		Size: 87.8 MB (87831049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - linux; 386

```console
$ docker pull julia@sha256:d012f524038e71f68215e18d0c5a1fe48046a481fe69396bd41778ccff896184
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148778796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8aabcd74de4523487f96c179dea02146eb236052dfaacbf3aa7a954f10c0482`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Fri, 31 Aug 2018 19:53:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 31 Aug 2018 19:53:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_VERSION=1.0.0
# Fri, 31 Aug 2018 19:53:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bea4570d7358016d8ed29d2c15787dbefaea3e746c570763e7ad6040f17831f3' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='61e855e93c3bfe5e4f486a54a4c45194f4b020922e56af5fc104ff3fd3d8e41a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='c8c607a7682bfe08b5511aac616c3b393038e52edf4dbaac5e69727c4f1eaa8b' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 31 Aug 2018 19:53:36 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9e69f5fd8573ab47a73db4370f35334eb7072936d0c01cd01c038328e47799`  
		Last Modified: Fri, 31 Aug 2018 19:55:52 GMT  
		Size: 9.5 MB (9458338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b39a01685ce6250c0ce7ae2122bc54ca47df71db115de3efbb37769f508872b`  
		Last Modified: Fri, 31 Aug 2018 19:56:20 GMT  
		Size: 93.3 MB (93282936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - windows version 10.0.14393.2430; amd64

```console
$ docker pull julia@sha256:b713d36e400c1f025d8cf0d560340fa947255c8e615f90af0ceb002dbcafdb28
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5627336856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aa6cfb580e534a4d3d681c47d8322d8c0ae143a3f88cc84aadb912fdaebc2a9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:52:23 GMT
RUN Install update 10.0.14393.2430
# Wed, 15 Aug 2018 09:35:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 28 Aug 2018 09:14:53 GMT
ENV JULIA_VERSION=1.0.0
# Tue, 28 Aug 2018 09:14:54 GMT
ENV JULIA_SHA256=001874185a26f598abe2e7fc287cacf66387c68caa3251f5aa6ef97fb22020dd
# Tue, 28 Aug 2018 09:18:10 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Tue, 28 Aug 2018 09:18:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6631c2d2a60cd7ee5b334c2725b03e4d4976abb9a19c8e8dc9b806b3752745a6`  
		Last Modified: Mon, 13 Aug 2018 17:52:23 GMT  
		Size: 1.4 GB (1441905067 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3e7b18583f4b1d198a1b0f222de8583f8565481a4b667be0863f398eaad783dd`  
		Last Modified: Wed, 15 Aug 2018 09:53:36 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce70c7805ed93eeb19e738eb523728f39d19ca5df6989133b14edf2a25c184b`  
		Last Modified: Tue, 28 Aug 2018 09:30:57 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3ec080e561b7749623d64f2b49fc8a010e63eeade913292f45349937003fe4`  
		Last Modified: Tue, 28 Aug 2018 09:30:56 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f552e51c3f657d162e24da3fbe17dd5fb888a9503457d74ac27b86a7812330e`  
		Last Modified: Tue, 28 Aug 2018 09:31:29 GMT  
		Size: 115.4 MB (115441094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dccf489dbb94ff824a33f52c356d5dcdd738aa59eb4629dd188e6306b8023fb2`  
		Last Modified: Tue, 28 Aug 2018 09:30:57 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - windows version 10.0.16299.611; amd64

```console
$ docker pull julia@sha256:421c41d44d2f613306cc84c5b8cb6a52fa0081266d2ed61b931d88890daa6994
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3222800660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9899aa978250df09cf79c7747d2beb8ca2dcb9a77bdd189d3947c9fdce9706e7`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 08 Aug 2018 23:20:54 GMT
RUN Install update 10.0.16299.611
# Wed, 15 Aug 2018 09:39:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 28 Aug 2018 09:18:20 GMT
ENV JULIA_VERSION=1.0.0
# Tue, 28 Aug 2018 09:18:21 GMT
ENV JULIA_SHA256=001874185a26f598abe2e7fc287cacf66387c68caa3251f5aa6ef97fb22020dd
# Tue, 28 Aug 2018 09:21:09 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Tue, 28 Aug 2018 09:21:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c4047f78756c2319eb99557ec7139906cf11af6c91aefcc0e44ac49a5481d8e4`  
		Last Modified: Mon, 13 Aug 2018 18:28:41 GMT  
		Size: 837.8 MB (837835144 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ddd10e03dfdc774fc9b5f720df0030a8f59a8c2c78e843c72b45c30af480dc60`  
		Last Modified: Wed, 15 Aug 2018 09:54:44 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c270494701c5645be4b8be0e20a3e318a49b65b979de57d878597562738fa6`  
		Last Modified: Tue, 28 Aug 2018 09:31:46 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba937700e26abc9813cc1be90300d695c2733b53af93f735a28b556c619ed2ab`  
		Last Modified: Tue, 28 Aug 2018 09:31:46 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b25bf1bdb3da6bf3a1c5b90ecfb7ecacf553df4c4839927b789baee3c44fd1`  
		Last Modified: Tue, 28 Aug 2018 09:32:18 GMT  
		Size: 110.7 MB (110660133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca92c090cc49d1630bc52baf6bf6cc3e944a49141ac1f6ec941bb16329b83c2`  
		Last Modified: Tue, 28 Aug 2018 09:31:46 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - windows version 10.0.17134.228; amd64

```console
$ docker pull julia@sha256:22eca9b04a9d4a4416169541eda16f15bcebe122f02079ae31775203482c7c5b
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2300312967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a61c4814c42bf82561076297e62d78edab418f6bf16be9d1a95b3877ff6d39de`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Mon, 06 Aug 2018 18:21:55 GMT
RUN Install update 10.0.17134.228
# Thu, 23 Aug 2018 10:50:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 28 Aug 2018 09:21:17 GMT
ENV JULIA_VERSION=1.0.0
# Tue, 28 Aug 2018 09:21:18 GMT
ENV JULIA_SHA256=001874185a26f598abe2e7fc287cacf66387c68caa3251f5aa6ef97fb22020dd
# Tue, 28 Aug 2018 09:24:02 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Tue, 28 Aug 2018 09:24:03 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Mon, 07 May 2018 21:18:35 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fd59519ea2c2d73a5cba6e562d012a127d08d86dfc5067535eef141406c3750b`  
		Last Modified: Mon, 13 Aug 2018 19:10:18 GMT  
		Size: 530.1 MB (530108736 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:595cc1655e57da5d50a2e822ee129ee8e86e86e5873f2d763a68fae6b3990104`  
		Last Modified: Thu, 23 Aug 2018 11:59:45 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12e8ffe79c23893a3b8616e9c2b530b5f3d12008d06b00617f656451830d1ce`  
		Last Modified: Tue, 28 Aug 2018 09:32:37 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355c6ff95aeb83b0ba9eb0ce5ff6f2ca999cafb18d6b4cadbdf065d6a1a9791b`  
		Last Modified: Tue, 28 Aug 2018 09:32:38 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2cef40f40df73878344616e3a95b82050b67e0bd2f1276a46c55c77dac4390`  
		Last Modified: Tue, 28 Aug 2018 09:33:08 GMT  
		Size: 110.5 MB (110511180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b7ea19a6dafdf3c8175ceff1c40c3e3d281097b4e4bccb0b8166f0d7dda1e9`  
		Last Modified: Tue, 28 Aug 2018 09:32:38 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:stretch`

```console
$ docker pull julia@sha256:a29c683e8be70568d90c1d2740f3811fca8d361d3b6ccf55c754fa0d3c32f9ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `julia:stretch` - linux; amd64

```console
$ docker pull julia@sha256:e5672a9adc535528ebe5452e5ac5e2f0c96a9260d455d8b8ce87938246f01c1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.6 MB (150638021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f10e0b741845b571888bc23abe20bc26158ad958cddeb71d53472737ddc8bd7`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Thu, 30 Aug 2018 22:06:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 30 Aug 2018 22:06:11 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 30 Aug 2018 22:06:11 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Aug 2018 22:06:12 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 30 Aug 2018 22:06:12 GMT
ENV JULIA_VERSION=1.0.0
# Thu, 30 Aug 2018 22:06:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bea4570d7358016d8ed29d2c15787dbefaea3e746c570763e7ad6040f17831f3' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='61e855e93c3bfe5e4f486a54a4c45194f4b020922e56af5fc104ff3fd3d8e41a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='c8c607a7682bfe08b5511aac616c3b393038e52edf4dbaac5e69727c4f1eaa8b' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 30 Aug 2018 22:06:31 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e9a1317b3df089c1e00e29b314a1f97fa73611edf1275341dfe593c9a0f629`  
		Last Modified: Thu, 30 Aug 2018 22:07:59 GMT  
		Size: 9.5 MB (9453813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612844faa530217da6b34c26ad390cce36452f81289173414ae8072f1f61ac41`  
		Last Modified: Thu, 30 Aug 2018 22:08:17 GMT  
		Size: 95.9 MB (95874164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:stretch` - linux; arm variant v7

```console
$ docker pull julia@sha256:6d2a72513b4c943eeb4025841fe8faff060e218a0689e764377db692d71bf6ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138070345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c866519a57f7d1406976be32a923260abd751c9a4fd8b7419d92082e3c68b0a`
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
# Sat, 11 Aug 2018 12:02:29 GMT
ENV JULIA_VERSION=1.0.0
# Sat, 11 Aug 2018 12:02:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bea4570d7358016d8ed29d2c15787dbefaea3e746c570763e7ad6040f17831f3' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='61e855e93c3bfe5e4f486a54a4c45194f4b020922e56af5fc104ff3fd3d8e41a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='c8c607a7682bfe08b5511aac616c3b393038e52edf4dbaac5e69727c4f1eaa8b' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Sat, 11 Aug 2018 12:02:56 GMT
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
	-	`sha256:70fd4d4d490aa5a2fea76f6d3011e4bceea39c475b0cac14f28c4735a520aa8e`  
		Last Modified: Sat, 11 Aug 2018 12:03:36 GMT  
		Size: 87.8 MB (87831049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:stretch` - linux; 386

```console
$ docker pull julia@sha256:d012f524038e71f68215e18d0c5a1fe48046a481fe69396bd41778ccff896184
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148778796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8aabcd74de4523487f96c179dea02146eb236052dfaacbf3aa7a954f10c0482`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Fri, 31 Aug 2018 19:53:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 31 Aug 2018 19:53:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 31 Aug 2018 19:53:07 GMT
ENV JULIA_VERSION=1.0.0
# Fri, 31 Aug 2018 19:53:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='bea4570d7358016d8ed29d2c15787dbefaea3e746c570763e7ad6040f17831f3' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='61e855e93c3bfe5e4f486a54a4c45194f4b020922e56af5fc104ff3fd3d8e41a' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='c8c607a7682bfe08b5511aac616c3b393038e52edf4dbaac5e69727c4f1eaa8b' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		folder="$(echo "$JULIA_VERSION" | cut -d. -f1-2)"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${folder}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 31 Aug 2018 19:53:36 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9e69f5fd8573ab47a73db4370f35334eb7072936d0c01cd01c038328e47799`  
		Last Modified: Fri, 31 Aug 2018 19:55:52 GMT  
		Size: 9.5 MB (9458338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b39a01685ce6250c0ce7ae2122bc54ca47df71db115de3efbb37769f508872b`  
		Last Modified: Fri, 31 Aug 2018 19:56:20 GMT  
		Size: 93.3 MB (93282936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:windowsservercore-1709`

```console
$ docker pull julia@sha256:a629a3b9d20aa67c4b927abcb3c2d9517a5c0c599dc956fb70266096154eb8dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.611; amd64

### `julia:windowsservercore-1709` - windows version 10.0.16299.611; amd64

```console
$ docker pull julia@sha256:421c41d44d2f613306cc84c5b8cb6a52fa0081266d2ed61b931d88890daa6994
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3222800660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9899aa978250df09cf79c7747d2beb8ca2dcb9a77bdd189d3947c9fdce9706e7`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 08 Aug 2018 23:20:54 GMT
RUN Install update 10.0.16299.611
# Wed, 15 Aug 2018 09:39:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 28 Aug 2018 09:18:20 GMT
ENV JULIA_VERSION=1.0.0
# Tue, 28 Aug 2018 09:18:21 GMT
ENV JULIA_SHA256=001874185a26f598abe2e7fc287cacf66387c68caa3251f5aa6ef97fb22020dd
# Tue, 28 Aug 2018 09:21:09 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Tue, 28 Aug 2018 09:21:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c4047f78756c2319eb99557ec7139906cf11af6c91aefcc0e44ac49a5481d8e4`  
		Last Modified: Mon, 13 Aug 2018 18:28:41 GMT  
		Size: 837.8 MB (837835144 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ddd10e03dfdc774fc9b5f720df0030a8f59a8c2c78e843c72b45c30af480dc60`  
		Last Modified: Wed, 15 Aug 2018 09:54:44 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c270494701c5645be4b8be0e20a3e318a49b65b979de57d878597562738fa6`  
		Last Modified: Tue, 28 Aug 2018 09:31:46 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba937700e26abc9813cc1be90300d695c2733b53af93f735a28b556c619ed2ab`  
		Last Modified: Tue, 28 Aug 2018 09:31:46 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b25bf1bdb3da6bf3a1c5b90ecfb7ecacf553df4c4839927b789baee3c44fd1`  
		Last Modified: Tue, 28 Aug 2018 09:32:18 GMT  
		Size: 110.7 MB (110660133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca92c090cc49d1630bc52baf6bf6cc3e944a49141ac1f6ec941bb16329b83c2`  
		Last Modified: Tue, 28 Aug 2018 09:31:46 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:windowsservercore-1803`

```console
$ docker pull julia@sha256:85034edc92dfebbc3b113fcc9f82165e37e4929957410dca2cbaa8f9819b7adb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.228; amd64

### `julia:windowsservercore-1803` - windows version 10.0.17134.228; amd64

```console
$ docker pull julia@sha256:22eca9b04a9d4a4416169541eda16f15bcebe122f02079ae31775203482c7c5b
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2300312967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a61c4814c42bf82561076297e62d78edab418f6bf16be9d1a95b3877ff6d39de`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Mon, 06 Aug 2018 18:21:55 GMT
RUN Install update 10.0.17134.228
# Thu, 23 Aug 2018 10:50:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 28 Aug 2018 09:21:17 GMT
ENV JULIA_VERSION=1.0.0
# Tue, 28 Aug 2018 09:21:18 GMT
ENV JULIA_SHA256=001874185a26f598abe2e7fc287cacf66387c68caa3251f5aa6ef97fb22020dd
# Tue, 28 Aug 2018 09:24:02 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Tue, 28 Aug 2018 09:24:03 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Mon, 07 May 2018 21:18:35 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fd59519ea2c2d73a5cba6e562d012a127d08d86dfc5067535eef141406c3750b`  
		Last Modified: Mon, 13 Aug 2018 19:10:18 GMT  
		Size: 530.1 MB (530108736 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:595cc1655e57da5d50a2e822ee129ee8e86e86e5873f2d763a68fae6b3990104`  
		Last Modified: Thu, 23 Aug 2018 11:59:45 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12e8ffe79c23893a3b8616e9c2b530b5f3d12008d06b00617f656451830d1ce`  
		Last Modified: Tue, 28 Aug 2018 09:32:37 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355c6ff95aeb83b0ba9eb0ce5ff6f2ca999cafb18d6b4cadbdf065d6a1a9791b`  
		Last Modified: Tue, 28 Aug 2018 09:32:38 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2cef40f40df73878344616e3a95b82050b67e0bd2f1276a46c55c77dac4390`  
		Last Modified: Tue, 28 Aug 2018 09:33:08 GMT  
		Size: 110.5 MB (110511180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b7ea19a6dafdf3c8175ceff1c40c3e3d281097b4e4bccb0b8166f0d7dda1e9`  
		Last Modified: Tue, 28 Aug 2018 09:32:38 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:windowsservercore-ltsc2016`

```console
$ docker pull julia@sha256:c3a8f2cd06002a4e8a2c77117d8cafb7658485f10fcd79ea465c38943013c571
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `julia:windowsservercore-ltsc2016` - windows version 10.0.14393.2430; amd64

```console
$ docker pull julia@sha256:b713d36e400c1f025d8cf0d560340fa947255c8e615f90af0ceb002dbcafdb28
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5627336856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aa6cfb580e534a4d3d681c47d8322d8c0ae143a3f88cc84aadb912fdaebc2a9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:52:23 GMT
RUN Install update 10.0.14393.2430
# Wed, 15 Aug 2018 09:35:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 28 Aug 2018 09:14:53 GMT
ENV JULIA_VERSION=1.0.0
# Tue, 28 Aug 2018 09:14:54 GMT
ENV JULIA_SHA256=001874185a26f598abe2e7fc287cacf66387c68caa3251f5aa6ef97fb22020dd
# Tue, 28 Aug 2018 09:18:10 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Tue, 28 Aug 2018 09:18:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6631c2d2a60cd7ee5b334c2725b03e4d4976abb9a19c8e8dc9b806b3752745a6`  
		Last Modified: Mon, 13 Aug 2018 17:52:23 GMT  
		Size: 1.4 GB (1441905067 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3e7b18583f4b1d198a1b0f222de8583f8565481a4b667be0863f398eaad783dd`  
		Last Modified: Wed, 15 Aug 2018 09:53:36 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce70c7805ed93eeb19e738eb523728f39d19ca5df6989133b14edf2a25c184b`  
		Last Modified: Tue, 28 Aug 2018 09:30:57 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3ec080e561b7749623d64f2b49fc8a010e63eeade913292f45349937003fe4`  
		Last Modified: Tue, 28 Aug 2018 09:30:56 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f552e51c3f657d162e24da3fbe17dd5fb888a9503457d74ac27b86a7812330e`  
		Last Modified: Tue, 28 Aug 2018 09:31:29 GMT  
		Size: 115.4 MB (115441094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dccf489dbb94ff824a33f52c356d5dcdd738aa59eb4629dd188e6306b8023fb2`  
		Last Modified: Tue, 28 Aug 2018 09:30:57 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
