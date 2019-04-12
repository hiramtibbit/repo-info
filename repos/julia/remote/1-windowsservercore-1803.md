## `julia:1-windowsservercore-1803`

```console
$ docker pull julia@sha256:75460e211b7515f7f8f514e39186146a2cac7c7f1aa869d3ec84056b3ee256f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.706; amd64

### `julia:1-windowsservercore-1803` - windows version 10.0.17134.706; amd64

```console
$ docker pull julia@sha256:41be8724796b4c9d360f1bf2c6a72f6b8180e8c2b35a1d5ad165a6bab6f13737
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2358989718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fee1a8c1ad48dbcd797887403beea63d70f7d2329c31ba2f5c3ef0ef2c470387`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Thu, 11 Apr 2019 23:03:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:00:23 GMT
ENV JULIA_VERSION=1.1.0
# Fri, 12 Apr 2019 05:00:24 GMT
ENV JULIA_SHA256=15bc552e43f5d83d20e439b6026a95f2fd8d57c32249c602dc836ce2798f4a33
# Fri, 12 Apr 2019 05:03:01 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Fri, 12 Apr 2019 05:03:03 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:37b6568b4a1267078fda687a318c987c4cb5a7d81edad72ed156b23333c61042`  
		Last Modified: Fri, 12 Apr 2019 00:04:01 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df303ab78d8ccc2aa5fd1054c89ee92c68b4dba830caec6a0eba717663419d10`  
		Last Modified: Fri, 12 Apr 2019 05:15:01 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee0bf90728e7c472800372e1ecac57cb50bc9264e9739d31eacbd9cca3a9f92`  
		Last Modified: Fri, 12 Apr 2019 05:15:01 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:858cc3b5fa3598a97bb5f9da7c5c43e8ce80e4bda336377b93bbd099df71bd39`  
		Last Modified: Fri, 12 Apr 2019 05:15:29 GMT  
		Size: 102.6 MB (102634273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2c6cfbf23acdd57d526a8b4a9d2147b6eaac1c574421c9f4a7504390a30d26`  
		Last Modified: Fri, 12 Apr 2019 05:15:01 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
