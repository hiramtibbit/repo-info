## `julia:latest`

```console
$ docker pull julia@sha256:40c509b016096ed6a892bde9d8fff9661fc89df03aa3de63c5307a564c6d6054
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2608; amd64
	-	windows version 10.0.16299.785; amd64
	-	windows version 10.0.17134.407; amd64

### `julia:latest` - windows version 10.0.14393.2608; amd64

```console
$ docker pull julia@sha256:7c35bece75d647a717364ee3443af2d9abe1cd33dff0e7ec829e8db9b16c71b0
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5750979309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:192ce7a27d405501167bb72a90ed6fb372ad2bb3ad9e490066c12b9356a148ad`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 12 Nov 2018 20:18:49 GMT
RUN Install update 10.0.14393.2608
# Thu, 15 Nov 2018 10:44:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:44:15 GMT
ENV JULIA_VERSION=1.0.2
# Thu, 15 Nov 2018 10:44:15 GMT
ENV JULIA_SHA256=e7214b93184075cac20ec3a478bbe0fb4b7d9358f604e9f32768c2fd2f031877
# Thu, 15 Nov 2018 10:47:58 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 10:47:59 GMT
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
	-	`sha256:5e2bbcec74c7e426dcc6164418c98909ac582864ede1698577e82b0ae82065f0`  
		Last Modified: Thu, 15 Nov 2018 11:02:38 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e93f7fbece3e23b903d85ce86a57e86681806138a286229ed50a7f8b73441e42`  
		Last Modified: Thu, 15 Nov 2018 11:02:38 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0396c724c3a9aada4101800699503aa389dfb848f4109c55450a17af18916db3`  
		Last Modified: Thu, 15 Nov 2018 11:03:12 GMT  
		Size: 117.1 MB (117053502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b986bff62f0e41473926c784b5a6ace152b4fd42ad32f8ee6aafd28892f4fb0`  
		Last Modified: Thu, 15 Nov 2018 11:02:38 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - windows version 10.0.16299.785; amd64

```console
$ docker pull julia@sha256:6b442acdcc7fc6c50f0f8c4d7010f950d3c773fd7fb58247e1087f385d8359b6
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3258063927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da0f7d2f91c2e848b2d3eb1bde16d5d703dc9201c9ffbd81719d484c7663b48e`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 31 Oct 2018 19:38:09 GMT
RUN Install update 10.0.16299.785
# Thu, 15 Nov 2018 10:48:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:48:16 GMT
ENV JULIA_VERSION=1.0.2
# Thu, 15 Nov 2018 10:48:17 GMT
ENV JULIA_SHA256=e7214b93184075cac20ec3a478bbe0fb4b7d9358f604e9f32768c2fd2f031877
# Thu, 15 Nov 2018 10:51:37 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 10:51:39 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:78ada4d5eaa052e2d6ab049ee3371e7d2298a9e3e6dc6e10cf2aa4c0f8704abd`  
		Last Modified: Mon, 12 Nov 2018 20:34:53 GMT  
		Size: 871.6 MB (871606875 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9a5b772c67f53a1d58ffc0a436ed7381268334533ade21d234214327743331f0`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd8b3e97cf34385d9ed5454f28fdbdf53a05e978306e38543802b2d93fce5df`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba38c63576ca404efcaf7227f7d61a9ee478e4962ef28813553140ce4533b65e`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aefa5fce4b63810ce36860f4978199e1a568104e688e3f5b7e49266294e67ed2`  
		Last Modified: Thu, 15 Nov 2018 11:04:04 GMT  
		Size: 112.2 MB (112151672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4165a0ee76d2b66314ba79f296c23c7dd296d7e43d617574115a0846af5190`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - windows version 10.0.17134.407; amd64

```console
$ docker pull julia@sha256:a1b5897c80532613bc25f906b0249fee9144d2c20f13dc47130fb30789d21322
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2352136148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b7335d56cc539adbaefae3222fb6634c6c63ac5b405c22e5286fcecdc36838a`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 02 Nov 2018 19:42:23 GMT
RUN Install update 10.0.17134.407
# Thu, 15 Nov 2018 10:51:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Nov 2018 10:51:59 GMT
ENV JULIA_VERSION=1.0.2
# Thu, 15 Nov 2018 10:52:00 GMT
ENV JULIA_SHA256=e7214b93184075cac20ec3a478bbe0fb4b7d9358f604e9f32768c2fd2f031877
# Thu, 15 Nov 2018 10:55:08 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Thu, 15 Nov 2018 10:55:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e4486f0b239271cca51d8299e172f9335cefd19e924843676add9d58470b19c7`  
		Last Modified: Mon, 12 Nov 2018 20:42:58 GMT  
		Size: 580.4 MB (580390603 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5221af79f3d95df0fd8a8c9a76ffe05ffea9b48cb861ad43ebd1e8b97932608b`  
		Last Modified: Thu, 15 Nov 2018 11:04:23 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a5f718fee6bee6677189772e43198aee291164836cfc0ef405e1a5834c3fdb`  
		Last Modified: Thu, 15 Nov 2018 11:04:23 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dc2f0e3b02eda6bf52043b5b5418b710f26c4b09ecce9813b31a3f52dbbaf5`  
		Last Modified: Thu, 15 Nov 2018 11:04:24 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd0d2056b6c1cb10d5b2669976dff7fdfd0bd14eb1620c905e82f482de01ac8`  
		Last Modified: Thu, 15 Nov 2018 11:04:55 GMT  
		Size: 112.1 MB (112052494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4fcf4d8ca53908c3253adf10da2826e66538a584ba282038d49c44dd55ef24`  
		Last Modified: Thu, 15 Nov 2018 11:04:25 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
