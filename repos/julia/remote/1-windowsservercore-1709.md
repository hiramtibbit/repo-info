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
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
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
