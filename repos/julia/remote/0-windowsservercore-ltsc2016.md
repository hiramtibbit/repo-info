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
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
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
