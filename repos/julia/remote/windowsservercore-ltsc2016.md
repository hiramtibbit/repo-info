## `julia:windowsservercore-ltsc2016`

```console
$ docker pull julia@sha256:6587b559a4ed23863f07dfdb62faceb3ce163e1d27b79753fa931fa39d1a53ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2363; amd64

### `julia:windowsservercore-ltsc2016` - windows version 10.0.14393.2363; amd64

```console
$ docker pull julia@sha256:e79dc55d4bd975411d7db4b152122a10fc25d002553f80ed155997f5401de1e6
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5569991362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e251244b9362f89b2886c3bef7e7d9d820f9a6703e1d5f5cb95c965be79a882e`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 10 Jul 2018 21:16:33 GMT
RUN Install update 10.0.14393.2363
# Wed, 11 Jul 2018 09:36:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 26 Jul 2018 09:15:45 GMT
ENV JULIA_VERSION=0.6.4
# Thu, 26 Jul 2018 09:15:46 GMT
ENV JULIA_SHA256=aa16b5fb54ab2821a09022db83d92db5d07c1092a24b7091f54fb4bca9e564eb
# Thu, 26 Jul 2018 09:18:56 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION -replace '[.-][^.-]+$', ''));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 26 Jul 2018 09:18:57 GMT
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
	-	`sha256:53d5a889962b465a55e536dd5b4aecb868dd42ae895f50803d0e2655b517c2d3`  
		Last Modified: Thu, 26 Jul 2018 09:22:20 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebae6efeabd4f25df5fd90055b58a11d9bcce342ed2fbc91dac9fa11055fe346`  
		Last Modified: Thu, 26 Jul 2018 09:22:20 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9943f94e7ea8e6a37fb44001fcd7c1129e16d87c405d269bbc19bfd887cc3c`  
		Last Modified: Thu, 26 Jul 2018 09:22:48 GMT  
		Size: 80.7 MB (80702394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b7527a1edd29e2e7fbffe98de3ca6620188dc59d50c87fa25750fe1644913c`  
		Last Modified: Thu, 26 Jul 2018 09:22:20 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
