## `openjdk:9-windowsservercore`

```console
$ docker pull openjdk@sha256:a2f536c88993083a0f7277374dc3c18390843750871d9bb61db9781f26b96bb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64
	-	windows version 10.0.16299.371; amd64

### `openjdk:9-windowsservercore` - windows version 10.0.14393.2189; amd64

```console
$ docker pull openjdk@sha256:7b1a600f15820a8c438e4848efb8e7418d7d65cb174b23884f3e3fef48839bb7
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5595850619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4118d43a7d98f55d62e09eb772063cd412355149662367786b4806ad158a3031`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:38:52 GMT
RUN Install update 10.0.14393.2189
# Fri, 27 Apr 2018 09:14:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 27 Apr 2018 09:14:08 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 27 Apr 2018 09:14:58 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 27 Apr 2018 09:14:58 GMT
ENV JAVA_VERSION=9.0.4
# Fri, 27 Apr 2018 09:14:59 GMT
ENV JAVA_OJDKBUILD_VERSION=9.0.4-1
# Fri, 27 Apr 2018 09:15:00 GMT
ENV JAVA_OJDKBUILD_ZIP=java-9-openjdk-9.0.4-1.b11.ojdkbuild.windows.x86_64.zip
# Fri, 27 Apr 2018 09:15:01 GMT
ENV JAVA_OJDKBUILD_SHA256=1333ab5bccc20e9043f0593b001825cbfa141f0e0c850d877af6b8e2c990cb47
# Fri, 27 Apr 2018 09:17:08 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
# Fri, 27 Apr 2018 09:17:10 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8f3369c32b2e3183340664c2bd4babb9c71cedc116fba70fda326df3ef9e48cc`  
		Last Modified: Fri, 06 Apr 2018 21:38:52 GMT  
		Size: 1.3 GB (1324227515 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a34e69c38a84789216f85ca14f1cd2fd80f3bf47f351a2a3130f2b3241a8db39`  
		Last Modified: Fri, 27 Apr 2018 09:24:43 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a349199f312de7e0cdcdbed72712f35bb57413c1f80aa570c9dc86ab6da7b0c`  
		Last Modified: Fri, 27 Apr 2018 09:24:43 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ed6288f0312dd500fe0636926facfbf7c611c45f48567d857aa624ca29cea3`  
		Last Modified: Fri, 27 Apr 2018 09:24:44 GMT  
		Size: 5.0 MB (5002252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a5106b47fa5f9077ac5d65964bc2c28fd5e9e8779e9bcd4da4b90a6aad9534`  
		Last Modified: Fri, 27 Apr 2018 09:24:43 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a115a604ea20965eee6c7b90f7274b0d1ce9b04a03167528a60851540f8657`  
		Last Modified: Fri, 27 Apr 2018 09:24:40 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:402140c0aa99da732c2c254b368cceccbf49e27a89af21fc856927472a55e8f1`  
		Last Modified: Fri, 27 Apr 2018 09:24:40 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a626616d727c30fb6092af7d6b919271ab7e3c84a8b98020b38bea0a01f79083`  
		Last Modified: Fri, 27 Apr 2018 09:24:40 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7435f77c037c2ef1066975d93d46402ebd3638d3b1fceb2898e47a78d1d922`  
		Last Modified: Fri, 27 Apr 2018 09:25:02 GMT  
		Size: 196.6 MB (196626637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f70896d3945ca97adf61594698109e2ad66582fa6c00606725391b0dbf168bb`  
		Last Modified: Fri, 27 Apr 2018 09:24:40 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-windowsservercore` - windows version 10.0.16299.371; amd64

```console
$ docker pull openjdk@sha256:d40f651ab5ce1ed0150b5d13d1851277e8db23130f4354cce6a659f07b6cb90c
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3236837840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c832011d1d690daa837d63c8d6e25542e2c6a308d0010ec75f1675d70d2d5ea`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Apr 2018 18:15:35 GMT
RUN Install update 10.0.16299.371
# Wed, 11 Apr 2018 09:40:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Apr 2018 09:40:28 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Thu, 26 Apr 2018 17:46:19 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 26 Apr 2018 17:46:20 GMT
ENV JAVA_VERSION=9.0.4
# Thu, 26 Apr 2018 17:46:21 GMT
ENV JAVA_OJDKBUILD_VERSION=9.0.4-1
# Thu, 26 Apr 2018 17:46:22 GMT
ENV JAVA_OJDKBUILD_ZIP=java-9-openjdk-9.0.4-1.b11.ojdkbuild.windows.x86_64.zip
# Thu, 26 Apr 2018 17:46:23 GMT
ENV JAVA_OJDKBUILD_SHA256=1333ab5bccc20e9043f0593b001825cbfa141f0e0c850d877af6b8e2c990cb47
# Thu, 26 Apr 2018 17:48:31 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
# Thu, 26 Apr 2018 17:48:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2dd7b93d509d5e7086ff08713d58180cc639adf9536c560a2dca5bf7139f5323`  
		Last Modified: Tue, 10 Apr 2018 16:34:04 GMT  
		Size: 761.5 MB (761549625 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c87bca28288a632bcbf4a2a60ebf89a3e996de2cd79edec70cde506458b9b16c`  
		Last Modified: Thu, 26 Apr 2018 17:18:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31131dc3dce05a183b79d2f8f0875b2dfa07459308d06c8001e04e2671993f15`  
		Last Modified: Thu, 26 Apr 2018 18:08:14 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae06e6181c2ed81d08c244d8160ce1a8cd70ac216cfcca49a16518f6eaf545b`  
		Last Modified: Thu, 26 Apr 2018 18:08:15 GMT  
		Size: 4.7 MB (4689312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa5f8d06fd4423c4010608ad23d2e2b3c47129f0ffd27e8cf1bf5b59b1da466`  
		Last Modified: Thu, 26 Apr 2018 18:08:13 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94d86d14aeda08aee89c0ef684bd1fafb9ca88c7a63c26db433d6862f97185b`  
		Last Modified: Thu, 26 Apr 2018 18:08:10 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb93741bd96a20949ab779c510b984b0fcad9e5b2aeaee050dbffe0e5de95a7`  
		Last Modified: Thu, 26 Apr 2018 18:08:10 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629d733a2de225d8a6a5d7b5ebb955af74209bcdf6aa7ef6d007146899e42484`  
		Last Modified: Thu, 26 Apr 2018 18:08:10 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0362563c9a513fb34cd4455b86137afe85bce8091a8da790fd96a2ea15a182c0`  
		Last Modified: Thu, 26 Apr 2018 18:08:58 GMT  
		Size: 196.3 MB (196289967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508c71a9564f2c68b885a15c800c40b6c9cc088171c6199677c7d330d192fb16`  
		Last Modified: Thu, 26 Apr 2018 18:08:10 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
