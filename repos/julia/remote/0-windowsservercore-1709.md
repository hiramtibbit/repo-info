## `julia:0-windowsservercore-1709`

```console
$ docker pull julia@sha256:9956d746fbe49cbb4e9edaebf426d5dd5732375a13d378a793f272cf29110407
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.547; amd64

### `julia:0-windowsservercore-1709` - windows version 10.0.16299.547; amd64

```console
$ docker pull julia@sha256:00a06907c08c20f3bed595a728904a3a264e010fc8cefbb91f3eece7668c841c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3181315393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7ae9261ec10b3e0909616aa23c9e860a8b31e8b6bf46d2d846180a386487ac2`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Jul 2018 18:10:50 GMT
RUN Install update 10.0.16299.547
# Wed, 11 Jul 2018 09:41:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 21 Jul 2018 10:05:47 GMT
ENV JULIA_VERSION=0.6.3
# Sat, 21 Jul 2018 10:05:47 GMT
ENV JULIA_SHA256=e6eef263bbe6d95d2def300407edb6a624e77166d73f423cd7fc895f8464cffd
# Sat, 21 Jul 2018 10:07:51 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION -replace '[.-][^.-]+$', ''));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 21 Jul 2018 10:07:52 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a01c2a39b5bdf158508b424626efbcede4aa9da21f2d4f6ffbd5bff4deb0fb01`  
		Last Modified: Tue, 10 Jul 2018 23:36:17 GMT  
		Size: 831.1 MB (831119569 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5c935a79e71d79bf144e02b94352e10d483d43e5c3f4a3491874c5d6d72deda3`  
		Last Modified: Wed, 11 Jul 2018 09:55:02 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e86232848a6e3ff1c419ed6d45b408183e25c1efa86ff686a4c0dc6bb7b07e2`  
		Last Modified: Sat, 21 Jul 2018 10:08:45 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064d98da81db1f62c81fec69e173c4548b31380f4cd03e2e9ab848320297e409`  
		Last Modified: Sat, 21 Jul 2018 10:08:46 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfdb87617e458f991cdc9661be8f92db57a0f768de52d3a52b187ae41b9a47fa`  
		Last Modified: Sat, 21 Jul 2018 10:09:05 GMT  
		Size: 75.9 MB (75890474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:280c0c847b1eb0d5c2bfe9f270fcb06afde3a47716f95eb03b5716145b3d0af6`  
		Last Modified: Sat, 21 Jul 2018 10:08:46 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
