## `julia:windowsservercore-ltsc2016`

```console
$ docker pull julia@sha256:871825ce82d5a350929037f63567049b3801cfbdf99e69bd86c0005988253be1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2363; amd64

### `julia:windowsservercore-ltsc2016` - windows version 10.0.14393.2363; amd64

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
