## `julia:windowsservercore-ltsc2016`

```console
$ docker pull julia@sha256:695d5aa8a573b9ba05c9f8bb65680d8765a4c43f6a3bf3d78c96a7421f6bb87c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2724; amd64

### `julia:windowsservercore-ltsc2016` - windows version 10.0.14393.2724; amd64

```console
$ docker pull julia@sha256:b4b8a43c698d4425df9930b18432ba06184097c2b952614a06c0555e3087ae76
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5743464403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:602a7ae7e07e3e2a3e9e8787bbcb482c4ab9b2227dbd47fe5c5d89a02c77f7a6`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 08 Jan 2019 17:44:44 GMT
RUN Install update 10.0.14393.2724
# Fri, 11 Jan 2019 10:38:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 26 Jan 2019 10:15:27 GMT
ENV JULIA_VERSION=1.1.0
# Sat, 26 Jan 2019 10:15:28 GMT
ENV JULIA_SHA256=15bc552e43f5d83d20e439b6026a95f2fd8d57c32249c602dc836ce2798f4a33
# Sat, 26 Jan 2019 10:18:44 GMT
RUN $url = ('https://julialang-s3.julialang.org/bin/winnt/x64/{1}/julia-{0}-win64.exe' -f $env:JULIA_VERSION, ($env:JULIA_VERSION.Split('.')[0..1] -Join '.'));         Write-Host ('Downloading {0} ...' -f $url);         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;         Invoke-WebRequest -Uri $url -OutFile 'julia.exe';                 Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256);         if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) {                 Write-Host 'FAILED!';                 exit 1;         };                 Write-Host 'Installing ...';         Start-Process -Wait -NoNewWindow                 -FilePath '.\julia.exe'                 -ArgumentList @(                         '/S',                         '/D=C:\julia'                 );                 Write-Host 'Updating PATH ...';         $env:PATH = 'C:\julia\bin;' + $env:PATH;         [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);                 Write-Host 'Verifying install ("julia --version") ...';         julia --version;                 Write-Host 'Removing ...';         Remove-Item julia.exe -Force;                 Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:18:46 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d0c71fc8924e632b81de72fba055610c4a5259b2f6723e15f70662f7bc328184`  
		Last Modified: Tue, 08 Jan 2019 17:44:44 GMT  
		Size: 1.6 GB (1565830172 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:52e9c8dd86ca94537c9a49c5082ecddcdff7fc266e93f1587ff015c3e463ed51`  
		Last Modified: Fri, 11 Jan 2019 11:28:56 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d9a69815265750e3e05fbe2ccb1c7553f44a56ab427eaa21e4a4d5a05b5a62`  
		Last Modified: Sat, 26 Jan 2019 10:35:46 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ecce8bc81047e2335f9d2ee1c18d8a17210a958d771c12ee5164b8d629a4d1`  
		Last Modified: Sat, 26 Jan 2019 10:35:46 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3d8609d8a98244d2936a7ccf24e9f05d2c7a7d6cfc76f063cc531c847d81d2`  
		Last Modified: Sat, 26 Jan 2019 10:36:26 GMT  
		Size: 107.6 MB (107643512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:363b9d07ae75ddbfa236d59540cde81f3a129551bf03259ec2d7e11239035234`  
		Last Modified: Sat, 26 Jan 2019 10:35:46 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
