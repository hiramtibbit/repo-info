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
