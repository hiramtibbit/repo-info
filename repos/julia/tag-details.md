<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `julia`

-	[`julia:0`](#julia0)
-	[`julia:0.6`](#julia06)
-	[`julia:0.6.3`](#julia063)
-	[`julia:0.6.3-jessie`](#julia063-jessie)
-	[`julia:0.6.3-stretch`](#julia063-stretch)
-	[`julia:0.6.3-windowsservercore-1709`](#julia063-windowsservercore-1709)
-	[`julia:0.6.3-windowsservercore-ltsc2016`](#julia063-windowsservercore-ltsc2016)
-	[`julia:0.6-jessie`](#julia06-jessie)
-	[`julia:0.6-stretch`](#julia06-stretch)
-	[`julia:0.6-windowsservercore-1709`](#julia06-windowsservercore-1709)
-	[`julia:0.6-windowsservercore-ltsc2016`](#julia06-windowsservercore-ltsc2016)
-	[`julia:0-jessie`](#julia0-jessie)
-	[`julia:0-stretch`](#julia0-stretch)
-	[`julia:0-windowsservercore-1709`](#julia0-windowsservercore-1709)
-	[`julia:0-windowsservercore-ltsc2016`](#julia0-windowsservercore-ltsc2016)
-	[`julia:jessie`](#juliajessie)
-	[`julia:latest`](#julialatest)
-	[`julia:stretch`](#juliastretch)
-	[`julia:windowsservercore-1709`](#juliawindowsservercore-1709)
-	[`julia:windowsservercore-ltsc2016`](#juliawindowsservercore-ltsc2016)

## `julia:0`

```console
$ docker pull julia@sha256:08bc2b87658d9da22894b386e40ea1e3575fdfa359d9ff44eb8c71100dc09dc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2248; amd64
	-	windows version 10.0.16299.431; amd64

### `julia:0` - linux; amd64

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

### `julia:0` - linux; arm64 variant v8

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

### `julia:0` - windows version 10.0.14393.2248; amd64

```console
$ docker pull julia@sha256:63f867d9cc4cd7a74fa8f4dc6223cc9dd401c3f139c58f08eea21ce8afd97c14
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5541540308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2773f0aaa16fb3c02f6c1c20ef0a1f1a2ff9e7152eed5aba8f376193cee29ae9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 May 2018 18:12:28 GMT
RUN Install update 10.0.14393.2248
# Thu, 10 May 2018 09:39:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 07 Jun 2018 09:27:09 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 09:27:10 GMT
ENV JULIA_SHA256=e6eef263bbe6d95d2def300407edb6a624e77166d73f423cd7fc895f8464cffd
# Thu, 07 Jun 2018 09:29:48 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION -replace '[.-][^.-]+$', ''));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 07 Jun 2018 09:29:50 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ace98111594c5bc232640988045037489d2adc214b3a14e07a8a9e9d30442cef`  
		Last Modified: Mon, 07 May 2018 18:12:28 GMT  
		Size: 1.4 GB (1395367096 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3fef3bd83b7c0eb06ccae001ea0bfed47b7258d9a1c5d593913034b18f7fd8c0`  
		Last Modified: Thu, 10 May 2018 10:17:55 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37d9a0aeff592233fdb9d01b85e98f7e55f0a78436b29766f159b762d5a9786`  
		Last Modified: Thu, 07 Jun 2018 09:32:41 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf993c1d96696292574271f1e0a98afd835ea080fe54fdf1bc4a574e70dd266`  
		Last Modified: Thu, 07 Jun 2018 09:32:40 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648aa5fece6bd256eefa00ff994994fecd47079e736d980d54ccf52be64d6de7`  
		Last Modified: Thu, 07 Jun 2018 09:33:01 GMT  
		Size: 76.2 MB (76182595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f544fd1b74dbdc68541fdc934d07b65c0907c19a37691102fab65affaa318a4b`  
		Last Modified: Thu, 07 Jun 2018 09:32:40 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0` - windows version 10.0.16299.431; amd64

```console
$ docker pull julia@sha256:23a3a084cd4aa95c3a3d4ccc1498a967aca564ab2c41188229b494146e2bbce7
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3156099225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4a92b03bea0016940498e18ff13bd412227d1e149c0f3e13717e47af439c8d4`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 05 May 2018 14:37:10 GMT
RUN Install update 10.0.16299.431
# Thu, 10 May 2018 09:50:49 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 07 Jun 2018 09:30:05 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 09:30:06 GMT
ENV JULIA_SHA256=e6eef263bbe6d95d2def300407edb6a624e77166d73f423cd7fc895f8464cffd
# Thu, 07 Jun 2018 09:32:13 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION -replace '[.-][^.-]+$', ''));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 07 Jun 2018 09:32:14 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:af675e5054a0dfb3eb70b140f566a5dbe612b5212e4a4ef2a2991308740d1006`  
		Last Modified: Tue, 08 May 2018 18:45:22 GMT  
		Size: 805.9 MB (805944217 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0d3f2c48ca5c41c53fe84071bb55725c2d6c36c8840dcef5297cc048ffe39aa`  
		Last Modified: Thu, 10 May 2018 10:18:48 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77d33463f42f0bcb1655df4bfe906c00ac3280480df69466e7cc3c3babac2e1`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbab489bf4a5850d763fa5c68f32b1e0ef3405eeafcb8dd829463f6904233198`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16258a58f087df023f736eb999e818ddeae9c5662f03cc65c92dd5099ce4d30`  
		Last Modified: Thu, 07 Jun 2018 09:33:42 GMT  
		Size: 75.8 MB (75849671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73780b7474046900f9482c7300b2fc09ddb19883d17dd157d2541b5268c8038f`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.6`

```console
$ docker pull julia@sha256:08bc2b87658d9da22894b386e40ea1e3575fdfa359d9ff44eb8c71100dc09dc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2248; amd64
	-	windows version 10.0.16299.431; amd64

### `julia:0.6` - linux; amd64

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

### `julia:0.6` - linux; arm64 variant v8

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

### `julia:0.6` - windows version 10.0.14393.2248; amd64

```console
$ docker pull julia@sha256:63f867d9cc4cd7a74fa8f4dc6223cc9dd401c3f139c58f08eea21ce8afd97c14
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5541540308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2773f0aaa16fb3c02f6c1c20ef0a1f1a2ff9e7152eed5aba8f376193cee29ae9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 May 2018 18:12:28 GMT
RUN Install update 10.0.14393.2248
# Thu, 10 May 2018 09:39:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 07 Jun 2018 09:27:09 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 09:27:10 GMT
ENV JULIA_SHA256=e6eef263bbe6d95d2def300407edb6a624e77166d73f423cd7fc895f8464cffd
# Thu, 07 Jun 2018 09:29:48 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION -replace '[.-][^.-]+$', ''));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 07 Jun 2018 09:29:50 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ace98111594c5bc232640988045037489d2adc214b3a14e07a8a9e9d30442cef`  
		Last Modified: Mon, 07 May 2018 18:12:28 GMT  
		Size: 1.4 GB (1395367096 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3fef3bd83b7c0eb06ccae001ea0bfed47b7258d9a1c5d593913034b18f7fd8c0`  
		Last Modified: Thu, 10 May 2018 10:17:55 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37d9a0aeff592233fdb9d01b85e98f7e55f0a78436b29766f159b762d5a9786`  
		Last Modified: Thu, 07 Jun 2018 09:32:41 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf993c1d96696292574271f1e0a98afd835ea080fe54fdf1bc4a574e70dd266`  
		Last Modified: Thu, 07 Jun 2018 09:32:40 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648aa5fece6bd256eefa00ff994994fecd47079e736d980d54ccf52be64d6de7`  
		Last Modified: Thu, 07 Jun 2018 09:33:01 GMT  
		Size: 76.2 MB (76182595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f544fd1b74dbdc68541fdc934d07b65c0907c19a37691102fab65affaa318a4b`  
		Last Modified: Thu, 07 Jun 2018 09:32:40 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6` - windows version 10.0.16299.431; amd64

```console
$ docker pull julia@sha256:23a3a084cd4aa95c3a3d4ccc1498a967aca564ab2c41188229b494146e2bbce7
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3156099225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4a92b03bea0016940498e18ff13bd412227d1e149c0f3e13717e47af439c8d4`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 05 May 2018 14:37:10 GMT
RUN Install update 10.0.16299.431
# Thu, 10 May 2018 09:50:49 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 07 Jun 2018 09:30:05 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 09:30:06 GMT
ENV JULIA_SHA256=e6eef263bbe6d95d2def300407edb6a624e77166d73f423cd7fc895f8464cffd
# Thu, 07 Jun 2018 09:32:13 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION -replace '[.-][^.-]+$', ''));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 07 Jun 2018 09:32:14 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:af675e5054a0dfb3eb70b140f566a5dbe612b5212e4a4ef2a2991308740d1006`  
		Last Modified: Tue, 08 May 2018 18:45:22 GMT  
		Size: 805.9 MB (805944217 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0d3f2c48ca5c41c53fe84071bb55725c2d6c36c8840dcef5297cc048ffe39aa`  
		Last Modified: Thu, 10 May 2018 10:18:48 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77d33463f42f0bcb1655df4bfe906c00ac3280480df69466e7cc3c3babac2e1`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbab489bf4a5850d763fa5c68f32b1e0ef3405eeafcb8dd829463f6904233198`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16258a58f087df023f736eb999e818ddeae9c5662f03cc65c92dd5099ce4d30`  
		Last Modified: Thu, 07 Jun 2018 09:33:42 GMT  
		Size: 75.8 MB (75849671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73780b7474046900f9482c7300b2fc09ddb19883d17dd157d2541b5268c8038f`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.6.3`

```console
$ docker pull julia@sha256:08bc2b87658d9da22894b386e40ea1e3575fdfa359d9ff44eb8c71100dc09dc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2248; amd64
	-	windows version 10.0.16299.431; amd64

### `julia:0.6.3` - linux; amd64

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

### `julia:0.6.3` - linux; arm64 variant v8

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

### `julia:0.6.3` - windows version 10.0.14393.2248; amd64

```console
$ docker pull julia@sha256:63f867d9cc4cd7a74fa8f4dc6223cc9dd401c3f139c58f08eea21ce8afd97c14
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5541540308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2773f0aaa16fb3c02f6c1c20ef0a1f1a2ff9e7152eed5aba8f376193cee29ae9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 May 2018 18:12:28 GMT
RUN Install update 10.0.14393.2248
# Thu, 10 May 2018 09:39:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 07 Jun 2018 09:27:09 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 09:27:10 GMT
ENV JULIA_SHA256=e6eef263bbe6d95d2def300407edb6a624e77166d73f423cd7fc895f8464cffd
# Thu, 07 Jun 2018 09:29:48 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION -replace '[.-][^.-]+$', ''));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 07 Jun 2018 09:29:50 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ace98111594c5bc232640988045037489d2adc214b3a14e07a8a9e9d30442cef`  
		Last Modified: Mon, 07 May 2018 18:12:28 GMT  
		Size: 1.4 GB (1395367096 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3fef3bd83b7c0eb06ccae001ea0bfed47b7258d9a1c5d593913034b18f7fd8c0`  
		Last Modified: Thu, 10 May 2018 10:17:55 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37d9a0aeff592233fdb9d01b85e98f7e55f0a78436b29766f159b762d5a9786`  
		Last Modified: Thu, 07 Jun 2018 09:32:41 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf993c1d96696292574271f1e0a98afd835ea080fe54fdf1bc4a574e70dd266`  
		Last Modified: Thu, 07 Jun 2018 09:32:40 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648aa5fece6bd256eefa00ff994994fecd47079e736d980d54ccf52be64d6de7`  
		Last Modified: Thu, 07 Jun 2018 09:33:01 GMT  
		Size: 76.2 MB (76182595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f544fd1b74dbdc68541fdc934d07b65c0907c19a37691102fab65affaa318a4b`  
		Last Modified: Thu, 07 Jun 2018 09:32:40 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6.3` - windows version 10.0.16299.431; amd64

```console
$ docker pull julia@sha256:23a3a084cd4aa95c3a3d4ccc1498a967aca564ab2c41188229b494146e2bbce7
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3156099225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4a92b03bea0016940498e18ff13bd412227d1e149c0f3e13717e47af439c8d4`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 05 May 2018 14:37:10 GMT
RUN Install update 10.0.16299.431
# Thu, 10 May 2018 09:50:49 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 07 Jun 2018 09:30:05 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 09:30:06 GMT
ENV JULIA_SHA256=e6eef263bbe6d95d2def300407edb6a624e77166d73f423cd7fc895f8464cffd
# Thu, 07 Jun 2018 09:32:13 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION -replace '[.-][^.-]+$', ''));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 07 Jun 2018 09:32:14 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:af675e5054a0dfb3eb70b140f566a5dbe612b5212e4a4ef2a2991308740d1006`  
		Last Modified: Tue, 08 May 2018 18:45:22 GMT  
		Size: 805.9 MB (805944217 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0d3f2c48ca5c41c53fe84071bb55725c2d6c36c8840dcef5297cc048ffe39aa`  
		Last Modified: Thu, 10 May 2018 10:18:48 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77d33463f42f0bcb1655df4bfe906c00ac3280480df69466e7cc3c3babac2e1`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbab489bf4a5850d763fa5c68f32b1e0ef3405eeafcb8dd829463f6904233198`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16258a58f087df023f736eb999e818ddeae9c5662f03cc65c92dd5099ce4d30`  
		Last Modified: Thu, 07 Jun 2018 09:33:42 GMT  
		Size: 75.8 MB (75849671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73780b7474046900f9482c7300b2fc09ddb19883d17dd157d2541b5268c8038f`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.6.3-jessie`

```console
$ docker pull julia@sha256:de9f899e3aa2189a74e381ce4c212c7fb1561dd7405bbe8efdcd2a636b0b6953
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `julia:0.6.3-jessie` - linux; amd64

```console
$ docker pull julia@sha256:7f601387d608b89503e811f4ab62cd8bd05828eb1cf6a89cf56381930a38753a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.1 MB (129086975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e18da9d2b3eb7e99c4320900d4098f1ebc530f64e8962d809d860d80f9f7b79`
-	Default Command: `["julia"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 14 May 2018 22:20:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 14 May 2018 22:20:49 GMT
ENV JULIA_PATH=/usr/local/julia
# Mon, 14 May 2018 22:20:50 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 14 May 2018 22:20:50 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 06 Jun 2018 18:23:04 GMT
ENV JULIA_VERSION=0.6.3
# Wed, 06 Jun 2018 18:23:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 06 Jun 2018 18:23:18 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bfd02e5141534a24afae56957773569ba3d7747c1ea275c39f9dcda081c4b85`  
		Last Modified: Mon, 14 May 2018 22:22:01 GMT  
		Size: 5.1 MB (5069110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b371afd2a789e5c32455528d856c85a94054e5e5754f07b68acffd603b838b2`  
		Last Modified: Wed, 06 Jun 2018 18:24:37 GMT  
		Size: 69.8 MB (69755299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6.3-jessie` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:e5b399d5e21409102caf5e26a92105b1adb8b3d5c8319c8af40d96a5de72cf73
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116020319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67fa50a2dcb761bdfdf18ffb1eca6ad20b0eb9b6c03695caf68e1c1d8a1537ce`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Tue, 15 May 2018 08:42:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 08:42:35 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 15 May 2018 08:42:36 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 08:42:37 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 07 Jun 2018 08:44:16 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 08:44:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 07 Jun 2018 08:44:41 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f471c7fc2bc7d13b2a134e7277b8058fbbc6981feefaee2db17f95105ff413`  
		Last Modified: Tue, 15 May 2018 08:44:26 GMT  
		Size: 4.7 MB (4728243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8108f5e7c9acd858b289b09f117421546ecb1ef80b56dec3164bb44c649db15f`  
		Last Modified: Thu, 07 Jun 2018 08:46:45 GMT  
		Size: 59.8 MB (59845222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.6.3-stretch`

```console
$ docker pull julia@sha256:798e8b71b6f52e171faa881653f7a11b3024257e4d726a3ccc92f522119e2d00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `julia:0.6.3-stretch` - linux; amd64

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

### `julia:0.6.3-stretch` - linux; arm64 variant v8

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

## `julia:0.6.3-windowsservercore-1709`

```console
$ docker pull julia@sha256:eb605a7c5c37548ba9cd70df8345fa8b267544969893829ae9b35d6d11cb346a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.431; amd64

### `julia:0.6.3-windowsservercore-1709` - windows version 10.0.16299.431; amd64

```console
$ docker pull julia@sha256:23a3a084cd4aa95c3a3d4ccc1498a967aca564ab2c41188229b494146e2bbce7
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3156099225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4a92b03bea0016940498e18ff13bd412227d1e149c0f3e13717e47af439c8d4`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 05 May 2018 14:37:10 GMT
RUN Install update 10.0.16299.431
# Thu, 10 May 2018 09:50:49 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 07 Jun 2018 09:30:05 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 09:30:06 GMT
ENV JULIA_SHA256=e6eef263bbe6d95d2def300407edb6a624e77166d73f423cd7fc895f8464cffd
# Thu, 07 Jun 2018 09:32:13 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION -replace '[.-][^.-]+$', ''));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 07 Jun 2018 09:32:14 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:af675e5054a0dfb3eb70b140f566a5dbe612b5212e4a4ef2a2991308740d1006`  
		Last Modified: Tue, 08 May 2018 18:45:22 GMT  
		Size: 805.9 MB (805944217 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0d3f2c48ca5c41c53fe84071bb55725c2d6c36c8840dcef5297cc048ffe39aa`  
		Last Modified: Thu, 10 May 2018 10:18:48 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77d33463f42f0bcb1655df4bfe906c00ac3280480df69466e7cc3c3babac2e1`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbab489bf4a5850d763fa5c68f32b1e0ef3405eeafcb8dd829463f6904233198`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16258a58f087df023f736eb999e818ddeae9c5662f03cc65c92dd5099ce4d30`  
		Last Modified: Thu, 07 Jun 2018 09:33:42 GMT  
		Size: 75.8 MB (75849671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73780b7474046900f9482c7300b2fc09ddb19883d17dd157d2541b5268c8038f`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.6.3-windowsservercore-ltsc2016`

```console
$ docker pull julia@sha256:a62ebe16910aa0412495371faaafab96abefbc5f028f253030c91d0fa5bf018a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2248; amd64

### `julia:0.6.3-windowsservercore-ltsc2016` - windows version 10.0.14393.2248; amd64

```console
$ docker pull julia@sha256:63f867d9cc4cd7a74fa8f4dc6223cc9dd401c3f139c58f08eea21ce8afd97c14
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5541540308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2773f0aaa16fb3c02f6c1c20ef0a1f1a2ff9e7152eed5aba8f376193cee29ae9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 May 2018 18:12:28 GMT
RUN Install update 10.0.14393.2248
# Thu, 10 May 2018 09:39:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 07 Jun 2018 09:27:09 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 09:27:10 GMT
ENV JULIA_SHA256=e6eef263bbe6d95d2def300407edb6a624e77166d73f423cd7fc895f8464cffd
# Thu, 07 Jun 2018 09:29:48 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION -replace '[.-][^.-]+$', ''));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 07 Jun 2018 09:29:50 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ace98111594c5bc232640988045037489d2adc214b3a14e07a8a9e9d30442cef`  
		Last Modified: Mon, 07 May 2018 18:12:28 GMT  
		Size: 1.4 GB (1395367096 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3fef3bd83b7c0eb06ccae001ea0bfed47b7258d9a1c5d593913034b18f7fd8c0`  
		Last Modified: Thu, 10 May 2018 10:17:55 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37d9a0aeff592233fdb9d01b85e98f7e55f0a78436b29766f159b762d5a9786`  
		Last Modified: Thu, 07 Jun 2018 09:32:41 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf993c1d96696292574271f1e0a98afd835ea080fe54fdf1bc4a574e70dd266`  
		Last Modified: Thu, 07 Jun 2018 09:32:40 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648aa5fece6bd256eefa00ff994994fecd47079e736d980d54ccf52be64d6de7`  
		Last Modified: Thu, 07 Jun 2018 09:33:01 GMT  
		Size: 76.2 MB (76182595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f544fd1b74dbdc68541fdc934d07b65c0907c19a37691102fab65affaa318a4b`  
		Last Modified: Thu, 07 Jun 2018 09:32:40 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.6-jessie`

```console
$ docker pull julia@sha256:de9f899e3aa2189a74e381ce4c212c7fb1561dd7405bbe8efdcd2a636b0b6953
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `julia:0.6-jessie` - linux; amd64

```console
$ docker pull julia@sha256:7f601387d608b89503e811f4ab62cd8bd05828eb1cf6a89cf56381930a38753a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.1 MB (129086975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e18da9d2b3eb7e99c4320900d4098f1ebc530f64e8962d809d860d80f9f7b79`
-	Default Command: `["julia"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 14 May 2018 22:20:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 14 May 2018 22:20:49 GMT
ENV JULIA_PATH=/usr/local/julia
# Mon, 14 May 2018 22:20:50 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 14 May 2018 22:20:50 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 06 Jun 2018 18:23:04 GMT
ENV JULIA_VERSION=0.6.3
# Wed, 06 Jun 2018 18:23:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 06 Jun 2018 18:23:18 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bfd02e5141534a24afae56957773569ba3d7747c1ea275c39f9dcda081c4b85`  
		Last Modified: Mon, 14 May 2018 22:22:01 GMT  
		Size: 5.1 MB (5069110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b371afd2a789e5c32455528d856c85a94054e5e5754f07b68acffd603b838b2`  
		Last Modified: Wed, 06 Jun 2018 18:24:37 GMT  
		Size: 69.8 MB (69755299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6-jessie` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:e5b399d5e21409102caf5e26a92105b1adb8b3d5c8319c8af40d96a5de72cf73
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116020319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67fa50a2dcb761bdfdf18ffb1eca6ad20b0eb9b6c03695caf68e1c1d8a1537ce`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Tue, 15 May 2018 08:42:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 08:42:35 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 15 May 2018 08:42:36 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 08:42:37 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 07 Jun 2018 08:44:16 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 08:44:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 07 Jun 2018 08:44:41 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f471c7fc2bc7d13b2a134e7277b8058fbbc6981feefaee2db17f95105ff413`  
		Last Modified: Tue, 15 May 2018 08:44:26 GMT  
		Size: 4.7 MB (4728243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8108f5e7c9acd858b289b09f117421546ecb1ef80b56dec3164bb44c649db15f`  
		Last Modified: Thu, 07 Jun 2018 08:46:45 GMT  
		Size: 59.8 MB (59845222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.6-stretch`

```console
$ docker pull julia@sha256:798e8b71b6f52e171faa881653f7a11b3024257e4d726a3ccc92f522119e2d00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `julia:0.6-stretch` - linux; amd64

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

### `julia:0.6-stretch` - linux; arm64 variant v8

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

## `julia:0.6-windowsservercore-1709`

```console
$ docker pull julia@sha256:eb605a7c5c37548ba9cd70df8345fa8b267544969893829ae9b35d6d11cb346a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.431; amd64

### `julia:0.6-windowsservercore-1709` - windows version 10.0.16299.431; amd64

```console
$ docker pull julia@sha256:23a3a084cd4aa95c3a3d4ccc1498a967aca564ab2c41188229b494146e2bbce7
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3156099225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4a92b03bea0016940498e18ff13bd412227d1e149c0f3e13717e47af439c8d4`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 05 May 2018 14:37:10 GMT
RUN Install update 10.0.16299.431
# Thu, 10 May 2018 09:50:49 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 07 Jun 2018 09:30:05 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 09:30:06 GMT
ENV JULIA_SHA256=e6eef263bbe6d95d2def300407edb6a624e77166d73f423cd7fc895f8464cffd
# Thu, 07 Jun 2018 09:32:13 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION -replace '[.-][^.-]+$', ''));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 07 Jun 2018 09:32:14 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:af675e5054a0dfb3eb70b140f566a5dbe612b5212e4a4ef2a2991308740d1006`  
		Last Modified: Tue, 08 May 2018 18:45:22 GMT  
		Size: 805.9 MB (805944217 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0d3f2c48ca5c41c53fe84071bb55725c2d6c36c8840dcef5297cc048ffe39aa`  
		Last Modified: Thu, 10 May 2018 10:18:48 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77d33463f42f0bcb1655df4bfe906c00ac3280480df69466e7cc3c3babac2e1`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbab489bf4a5850d763fa5c68f32b1e0ef3405eeafcb8dd829463f6904233198`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16258a58f087df023f736eb999e818ddeae9c5662f03cc65c92dd5099ce4d30`  
		Last Modified: Thu, 07 Jun 2018 09:33:42 GMT  
		Size: 75.8 MB (75849671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73780b7474046900f9482c7300b2fc09ddb19883d17dd157d2541b5268c8038f`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.6-windowsservercore-ltsc2016`

```console
$ docker pull julia@sha256:a62ebe16910aa0412495371faaafab96abefbc5f028f253030c91d0fa5bf018a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2248; amd64

### `julia:0.6-windowsservercore-ltsc2016` - windows version 10.0.14393.2248; amd64

```console
$ docker pull julia@sha256:63f867d9cc4cd7a74fa8f4dc6223cc9dd401c3f139c58f08eea21ce8afd97c14
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5541540308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2773f0aaa16fb3c02f6c1c20ef0a1f1a2ff9e7152eed5aba8f376193cee29ae9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 May 2018 18:12:28 GMT
RUN Install update 10.0.14393.2248
# Thu, 10 May 2018 09:39:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 07 Jun 2018 09:27:09 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 09:27:10 GMT
ENV JULIA_SHA256=e6eef263bbe6d95d2def300407edb6a624e77166d73f423cd7fc895f8464cffd
# Thu, 07 Jun 2018 09:29:48 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION -replace '[.-][^.-]+$', ''));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 07 Jun 2018 09:29:50 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ace98111594c5bc232640988045037489d2adc214b3a14e07a8a9e9d30442cef`  
		Last Modified: Mon, 07 May 2018 18:12:28 GMT  
		Size: 1.4 GB (1395367096 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3fef3bd83b7c0eb06ccae001ea0bfed47b7258d9a1c5d593913034b18f7fd8c0`  
		Last Modified: Thu, 10 May 2018 10:17:55 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37d9a0aeff592233fdb9d01b85e98f7e55f0a78436b29766f159b762d5a9786`  
		Last Modified: Thu, 07 Jun 2018 09:32:41 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf993c1d96696292574271f1e0a98afd835ea080fe54fdf1bc4a574e70dd266`  
		Last Modified: Thu, 07 Jun 2018 09:32:40 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648aa5fece6bd256eefa00ff994994fecd47079e736d980d54ccf52be64d6de7`  
		Last Modified: Thu, 07 Jun 2018 09:33:01 GMT  
		Size: 76.2 MB (76182595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f544fd1b74dbdc68541fdc934d07b65c0907c19a37691102fab65affaa318a4b`  
		Last Modified: Thu, 07 Jun 2018 09:32:40 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0-jessie`

```console
$ docker pull julia@sha256:de9f899e3aa2189a74e381ce4c212c7fb1561dd7405bbe8efdcd2a636b0b6953
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `julia:0-jessie` - linux; amd64

```console
$ docker pull julia@sha256:7f601387d608b89503e811f4ab62cd8bd05828eb1cf6a89cf56381930a38753a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.1 MB (129086975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e18da9d2b3eb7e99c4320900d4098f1ebc530f64e8962d809d860d80f9f7b79`
-	Default Command: `["julia"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 14 May 2018 22:20:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 14 May 2018 22:20:49 GMT
ENV JULIA_PATH=/usr/local/julia
# Mon, 14 May 2018 22:20:50 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 14 May 2018 22:20:50 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 06 Jun 2018 18:23:04 GMT
ENV JULIA_VERSION=0.6.3
# Wed, 06 Jun 2018 18:23:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 06 Jun 2018 18:23:18 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bfd02e5141534a24afae56957773569ba3d7747c1ea275c39f9dcda081c4b85`  
		Last Modified: Mon, 14 May 2018 22:22:01 GMT  
		Size: 5.1 MB (5069110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b371afd2a789e5c32455528d856c85a94054e5e5754f07b68acffd603b838b2`  
		Last Modified: Wed, 06 Jun 2018 18:24:37 GMT  
		Size: 69.8 MB (69755299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0-jessie` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:e5b399d5e21409102caf5e26a92105b1adb8b3d5c8319c8af40d96a5de72cf73
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116020319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67fa50a2dcb761bdfdf18ffb1eca6ad20b0eb9b6c03695caf68e1c1d8a1537ce`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Tue, 15 May 2018 08:42:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 08:42:35 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 15 May 2018 08:42:36 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 08:42:37 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 07 Jun 2018 08:44:16 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 08:44:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 07 Jun 2018 08:44:41 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f471c7fc2bc7d13b2a134e7277b8058fbbc6981feefaee2db17f95105ff413`  
		Last Modified: Tue, 15 May 2018 08:44:26 GMT  
		Size: 4.7 MB (4728243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8108f5e7c9acd858b289b09f117421546ecb1ef80b56dec3164bb44c649db15f`  
		Last Modified: Thu, 07 Jun 2018 08:46:45 GMT  
		Size: 59.8 MB (59845222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0-stretch`

```console
$ docker pull julia@sha256:798e8b71b6f52e171faa881653f7a11b3024257e4d726a3ccc92f522119e2d00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

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

## `julia:0-windowsservercore-1709`

```console
$ docker pull julia@sha256:eb605a7c5c37548ba9cd70df8345fa8b267544969893829ae9b35d6d11cb346a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.431; amd64

### `julia:0-windowsservercore-1709` - windows version 10.0.16299.431; amd64

```console
$ docker pull julia@sha256:23a3a084cd4aa95c3a3d4ccc1498a967aca564ab2c41188229b494146e2bbce7
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3156099225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4a92b03bea0016940498e18ff13bd412227d1e149c0f3e13717e47af439c8d4`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 05 May 2018 14:37:10 GMT
RUN Install update 10.0.16299.431
# Thu, 10 May 2018 09:50:49 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 07 Jun 2018 09:30:05 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 09:30:06 GMT
ENV JULIA_SHA256=e6eef263bbe6d95d2def300407edb6a624e77166d73f423cd7fc895f8464cffd
# Thu, 07 Jun 2018 09:32:13 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION -replace '[.-][^.-]+$', ''));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 07 Jun 2018 09:32:14 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:af675e5054a0dfb3eb70b140f566a5dbe612b5212e4a4ef2a2991308740d1006`  
		Last Modified: Tue, 08 May 2018 18:45:22 GMT  
		Size: 805.9 MB (805944217 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0d3f2c48ca5c41c53fe84071bb55725c2d6c36c8840dcef5297cc048ffe39aa`  
		Last Modified: Thu, 10 May 2018 10:18:48 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77d33463f42f0bcb1655df4bfe906c00ac3280480df69466e7cc3c3babac2e1`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbab489bf4a5850d763fa5c68f32b1e0ef3405eeafcb8dd829463f6904233198`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16258a58f087df023f736eb999e818ddeae9c5662f03cc65c92dd5099ce4d30`  
		Last Modified: Thu, 07 Jun 2018 09:33:42 GMT  
		Size: 75.8 MB (75849671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73780b7474046900f9482c7300b2fc09ddb19883d17dd157d2541b5268c8038f`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0-windowsservercore-ltsc2016`

```console
$ docker pull julia@sha256:a62ebe16910aa0412495371faaafab96abefbc5f028f253030c91d0fa5bf018a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2248; amd64

### `julia:0-windowsservercore-ltsc2016` - windows version 10.0.14393.2248; amd64

```console
$ docker pull julia@sha256:63f867d9cc4cd7a74fa8f4dc6223cc9dd401c3f139c58f08eea21ce8afd97c14
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5541540308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2773f0aaa16fb3c02f6c1c20ef0a1f1a2ff9e7152eed5aba8f376193cee29ae9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 May 2018 18:12:28 GMT
RUN Install update 10.0.14393.2248
# Thu, 10 May 2018 09:39:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 07 Jun 2018 09:27:09 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 09:27:10 GMT
ENV JULIA_SHA256=e6eef263bbe6d95d2def300407edb6a624e77166d73f423cd7fc895f8464cffd
# Thu, 07 Jun 2018 09:29:48 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION -replace '[.-][^.-]+$', ''));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 07 Jun 2018 09:29:50 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ace98111594c5bc232640988045037489d2adc214b3a14e07a8a9e9d30442cef`  
		Last Modified: Mon, 07 May 2018 18:12:28 GMT  
		Size: 1.4 GB (1395367096 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3fef3bd83b7c0eb06ccae001ea0bfed47b7258d9a1c5d593913034b18f7fd8c0`  
		Last Modified: Thu, 10 May 2018 10:17:55 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37d9a0aeff592233fdb9d01b85e98f7e55f0a78436b29766f159b762d5a9786`  
		Last Modified: Thu, 07 Jun 2018 09:32:41 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf993c1d96696292574271f1e0a98afd835ea080fe54fdf1bc4a574e70dd266`  
		Last Modified: Thu, 07 Jun 2018 09:32:40 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648aa5fece6bd256eefa00ff994994fecd47079e736d980d54ccf52be64d6de7`  
		Last Modified: Thu, 07 Jun 2018 09:33:01 GMT  
		Size: 76.2 MB (76182595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f544fd1b74dbdc68541fdc934d07b65c0907c19a37691102fab65affaa318a4b`  
		Last Modified: Thu, 07 Jun 2018 09:32:40 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:jessie`

```console
$ docker pull julia@sha256:de9f899e3aa2189a74e381ce4c212c7fb1561dd7405bbe8efdcd2a636b0b6953
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `julia:jessie` - linux; amd64

```console
$ docker pull julia@sha256:7f601387d608b89503e811f4ab62cd8bd05828eb1cf6a89cf56381930a38753a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.1 MB (129086975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e18da9d2b3eb7e99c4320900d4098f1ebc530f64e8962d809d860d80f9f7b79`
-	Default Command: `["julia"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 14 May 2018 22:20:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 14 May 2018 22:20:49 GMT
ENV JULIA_PATH=/usr/local/julia
# Mon, 14 May 2018 22:20:50 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 14 May 2018 22:20:50 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 06 Jun 2018 18:23:04 GMT
ENV JULIA_VERSION=0.6.3
# Wed, 06 Jun 2018 18:23:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Wed, 06 Jun 2018 18:23:18 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bfd02e5141534a24afae56957773569ba3d7747c1ea275c39f9dcda081c4b85`  
		Last Modified: Mon, 14 May 2018 22:22:01 GMT  
		Size: 5.1 MB (5069110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b371afd2a789e5c32455528d856c85a94054e5e5754f07b68acffd603b838b2`  
		Last Modified: Wed, 06 Jun 2018 18:24:37 GMT  
		Size: 69.8 MB (69755299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:jessie` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:e5b399d5e21409102caf5e26a92105b1adb8b3d5c8319c8af40d96a5de72cf73
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116020319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67fa50a2dcb761bdfdf18ffb1eca6ad20b0eb9b6c03695caf68e1c1d8a1537ce`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Tue, 15 May 2018 08:42:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 08:42:35 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 15 May 2018 08:42:36 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 08:42:37 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Thu, 07 Jun 2018 08:44:16 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 08:44:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='36212ed8e1c864599e9f149d884d504eee15b57b96bf918cb5b9ac35a5ab6283' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='abe9dd0cbf890a13bfe69581bf4eee100c8834bf4c0296416d20af54d80e6d9a' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='cdd1420fc3df0058978ccb20e2f4db47cb6d3dd164cb67ba70ee2d5c99306c47' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='3e6f2c3d0a168077ddd61383566513303b0153c56352df2dde1531eb16d79143' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 	curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Thu, 07 Jun 2018 08:44:41 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f471c7fc2bc7d13b2a134e7277b8058fbbc6981feefaee2db17f95105ff413`  
		Last Modified: Tue, 15 May 2018 08:44:26 GMT  
		Size: 4.7 MB (4728243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8108f5e7c9acd858b289b09f117421546ecb1ef80b56dec3164bb44c649db15f`  
		Last Modified: Thu, 07 Jun 2018 08:46:45 GMT  
		Size: 59.8 MB (59845222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:latest`

```console
$ docker pull julia@sha256:08bc2b87658d9da22894b386e40ea1e3575fdfa359d9ff44eb8c71100dc09dc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2248; amd64
	-	windows version 10.0.16299.431; amd64

### `julia:latest` - linux; amd64

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

### `julia:latest` - linux; arm64 variant v8

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

### `julia:latest` - windows version 10.0.14393.2248; amd64

```console
$ docker pull julia@sha256:63f867d9cc4cd7a74fa8f4dc6223cc9dd401c3f139c58f08eea21ce8afd97c14
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5541540308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2773f0aaa16fb3c02f6c1c20ef0a1f1a2ff9e7152eed5aba8f376193cee29ae9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 May 2018 18:12:28 GMT
RUN Install update 10.0.14393.2248
# Thu, 10 May 2018 09:39:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 07 Jun 2018 09:27:09 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 09:27:10 GMT
ENV JULIA_SHA256=e6eef263bbe6d95d2def300407edb6a624e77166d73f423cd7fc895f8464cffd
# Thu, 07 Jun 2018 09:29:48 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION -replace '[.-][^.-]+$', ''));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 07 Jun 2018 09:29:50 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ace98111594c5bc232640988045037489d2adc214b3a14e07a8a9e9d30442cef`  
		Last Modified: Mon, 07 May 2018 18:12:28 GMT  
		Size: 1.4 GB (1395367096 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3fef3bd83b7c0eb06ccae001ea0bfed47b7258d9a1c5d593913034b18f7fd8c0`  
		Last Modified: Thu, 10 May 2018 10:17:55 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37d9a0aeff592233fdb9d01b85e98f7e55f0a78436b29766f159b762d5a9786`  
		Last Modified: Thu, 07 Jun 2018 09:32:41 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf993c1d96696292574271f1e0a98afd835ea080fe54fdf1bc4a574e70dd266`  
		Last Modified: Thu, 07 Jun 2018 09:32:40 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648aa5fece6bd256eefa00ff994994fecd47079e736d980d54ccf52be64d6de7`  
		Last Modified: Thu, 07 Jun 2018 09:33:01 GMT  
		Size: 76.2 MB (76182595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f544fd1b74dbdc68541fdc934d07b65c0907c19a37691102fab65affaa318a4b`  
		Last Modified: Thu, 07 Jun 2018 09:32:40 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - windows version 10.0.16299.431; amd64

```console
$ docker pull julia@sha256:23a3a084cd4aa95c3a3d4ccc1498a967aca564ab2c41188229b494146e2bbce7
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3156099225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4a92b03bea0016940498e18ff13bd412227d1e149c0f3e13717e47af439c8d4`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 05 May 2018 14:37:10 GMT
RUN Install update 10.0.16299.431
# Thu, 10 May 2018 09:50:49 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 07 Jun 2018 09:30:05 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 09:30:06 GMT
ENV JULIA_SHA256=e6eef263bbe6d95d2def300407edb6a624e77166d73f423cd7fc895f8464cffd
# Thu, 07 Jun 2018 09:32:13 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION -replace '[.-][^.-]+$', ''));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 07 Jun 2018 09:32:14 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:af675e5054a0dfb3eb70b140f566a5dbe612b5212e4a4ef2a2991308740d1006`  
		Last Modified: Tue, 08 May 2018 18:45:22 GMT  
		Size: 805.9 MB (805944217 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0d3f2c48ca5c41c53fe84071bb55725c2d6c36c8840dcef5297cc048ffe39aa`  
		Last Modified: Thu, 10 May 2018 10:18:48 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77d33463f42f0bcb1655df4bfe906c00ac3280480df69466e7cc3c3babac2e1`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbab489bf4a5850d763fa5c68f32b1e0ef3405eeafcb8dd829463f6904233198`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16258a58f087df023f736eb999e818ddeae9c5662f03cc65c92dd5099ce4d30`  
		Last Modified: Thu, 07 Jun 2018 09:33:42 GMT  
		Size: 75.8 MB (75849671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73780b7474046900f9482c7300b2fc09ddb19883d17dd157d2541b5268c8038f`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:stretch`

```console
$ docker pull julia@sha256:798e8b71b6f52e171faa881653f7a11b3024257e4d726a3ccc92f522119e2d00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `julia:stretch` - linux; amd64

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

### `julia:stretch` - linux; arm64 variant v8

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

## `julia:windowsservercore-1709`

```console
$ docker pull julia@sha256:eb605a7c5c37548ba9cd70df8345fa8b267544969893829ae9b35d6d11cb346a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.431; amd64

### `julia:windowsservercore-1709` - windows version 10.0.16299.431; amd64

```console
$ docker pull julia@sha256:23a3a084cd4aa95c3a3d4ccc1498a967aca564ab2c41188229b494146e2bbce7
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3156099225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4a92b03bea0016940498e18ff13bd412227d1e149c0f3e13717e47af439c8d4`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 05 May 2018 14:37:10 GMT
RUN Install update 10.0.16299.431
# Thu, 10 May 2018 09:50:49 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 07 Jun 2018 09:30:05 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 09:30:06 GMT
ENV JULIA_SHA256=e6eef263bbe6d95d2def300407edb6a624e77166d73f423cd7fc895f8464cffd
# Thu, 07 Jun 2018 09:32:13 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION -replace '[.-][^.-]+$', ''));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 07 Jun 2018 09:32:14 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:af675e5054a0dfb3eb70b140f566a5dbe612b5212e4a4ef2a2991308740d1006`  
		Last Modified: Tue, 08 May 2018 18:45:22 GMT  
		Size: 805.9 MB (805944217 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0d3f2c48ca5c41c53fe84071bb55725c2d6c36c8840dcef5297cc048ffe39aa`  
		Last Modified: Thu, 10 May 2018 10:18:48 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77d33463f42f0bcb1655df4bfe906c00ac3280480df69466e7cc3c3babac2e1`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbab489bf4a5850d763fa5c68f32b1e0ef3405eeafcb8dd829463f6904233198`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16258a58f087df023f736eb999e818ddeae9c5662f03cc65c92dd5099ce4d30`  
		Last Modified: Thu, 07 Jun 2018 09:33:42 GMT  
		Size: 75.8 MB (75849671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73780b7474046900f9482c7300b2fc09ddb19883d17dd157d2541b5268c8038f`  
		Last Modified: Thu, 07 Jun 2018 09:33:21 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:windowsservercore-ltsc2016`

```console
$ docker pull julia@sha256:a62ebe16910aa0412495371faaafab96abefbc5f028f253030c91d0fa5bf018a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2248; amd64

### `julia:windowsservercore-ltsc2016` - windows version 10.0.14393.2248; amd64

```console
$ docker pull julia@sha256:63f867d9cc4cd7a74fa8f4dc6223cc9dd401c3f139c58f08eea21ce8afd97c14
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5541540308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2773f0aaa16fb3c02f6c1c20ef0a1f1a2ff9e7152eed5aba8f376193cee29ae9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 May 2018 18:12:28 GMT
RUN Install update 10.0.14393.2248
# Thu, 10 May 2018 09:39:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 07 Jun 2018 09:27:09 GMT
ENV JULIA_VERSION=0.6.3
# Thu, 07 Jun 2018 09:27:10 GMT
ENV JULIA_SHA256=e6eef263bbe6d95d2def300407edb6a624e77166d73f423cd7fc895f8464cffd
# Thu, 07 Jun 2018 09:29:48 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION -replace '[.-][^.-]+$', ''));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 07 Jun 2018 09:29:50 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ace98111594c5bc232640988045037489d2adc214b3a14e07a8a9e9d30442cef`  
		Last Modified: Mon, 07 May 2018 18:12:28 GMT  
		Size: 1.4 GB (1395367096 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3fef3bd83b7c0eb06ccae001ea0bfed47b7258d9a1c5d593913034b18f7fd8c0`  
		Last Modified: Thu, 10 May 2018 10:17:55 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37d9a0aeff592233fdb9d01b85e98f7e55f0a78436b29766f159b762d5a9786`  
		Last Modified: Thu, 07 Jun 2018 09:32:41 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf993c1d96696292574271f1e0a98afd835ea080fe54fdf1bc4a574e70dd266`  
		Last Modified: Thu, 07 Jun 2018 09:32:40 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648aa5fece6bd256eefa00ff994994fecd47079e736d980d54ccf52be64d6de7`  
		Last Modified: Thu, 07 Jun 2018 09:33:01 GMT  
		Size: 76.2 MB (76182595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f544fd1b74dbdc68541fdc934d07b65c0907c19a37691102fab65affaa318a4b`  
		Last Modified: Thu, 07 Jun 2018 09:32:40 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
