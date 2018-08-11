## `julia:windowsservercore-1803`

```console
$ docker pull julia@sha256:f2c30172e56abc1f1abb17bb20920d88210a7cc36f42ca4c9d1d7a5e00d2a68c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.165; amd64

### `julia:windowsservercore-1803` - windows version 10.0.17134.165; amd64

```console
$ docker pull julia@sha256:4778ca8db34b1602fe26d5ce345cd9ade5eb9b49c820546a783b30d9188c1ed5
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2263680924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b762398f419b9a5c9a64e9dfb1b158fe71690a1892e7359320c097913f54ff0`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Sat, 07 Jul 2018 22:48:41 GMT
RUN Install update 10.0.17134.165
# Fri, 13 Jul 2018 10:07:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 11 Aug 2018 09:22:02 GMT
ENV JULIA_VERSION=1.0.0
# Sat, 11 Aug 2018 09:22:03 GMT
ENV JULIA_SHA256=3bf5572cbcbc7848b235dcf21caf24ce26b9fb3839eb13db1a7170d20cdf834d
# Sat, 11 Aug 2018 09:24:45 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 11 Aug 2018 09:24:46 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Mon, 07 May 2018 21:18:35 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e30fefc566f71c5dd5786e4783ff4ae3ad98804d5279c14dcf806c813fdf8f66`  
		Last Modified: Tue, 10 Jul 2018 21:54:14 GMT  
		Size: 493.5 MB (493521205 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5e25b1252e9b6c8bdfcec66e75be65af2baf4bcf1a67dc96422fef339cc4912c`  
		Last Modified: Fri, 13 Jul 2018 11:07:53 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297fe477b07a2ae09bbdbcc9da1715d740a3aea47a9cfc56f28a44e618d41d8b`  
		Last Modified: Sat, 11 Aug 2018 09:33:14 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415482a9113beb5f817c9ee6371054e0b8b38fe327a3c966a1cc39fa39a2eced`  
		Last Modified: Sat, 11 Aug 2018 09:33:14 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63bb266070c0257146602496f283ca7038f4ee0255db5f3a7eda6ce0c255e9e9`  
		Last Modified: Sat, 11 Aug 2018 09:33:42 GMT  
		Size: 110.5 MB (110466663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85f5654c1c82b57ea03ba7a3b04ced801c8303d5a06b51d2212f9fa4e5ef106`  
		Last Modified: Sat, 11 Aug 2018 09:33:14 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
