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
		Last Modified: Thu, 06 Sep 2018 21:37:41 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fd59519ea2c2d73a5cba6e562d012a127d08d86dfc5067535eef141406c3750b`  
		Last Modified: Thu, 06 Sep 2018 21:37:41 GMT  
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
