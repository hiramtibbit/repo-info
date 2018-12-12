## `openjdk:8-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:de6dcb38ebf2075ace96f5d70337394c4627289b13d17d7de9b261547e70ab29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.785; amd64

### `openjdk:8-windowsservercore-1709` - windows version 10.0.16299.785; amd64

```console
$ docker pull openjdk@sha256:a4a13af7bb6cb8f1ba269c561e6f9bc67981bd6f6efaebbf494d842949310aea
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3261721619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e518e985cc90207c24661cc71cc405c0ad828ba26aed2da5ef0e09247f7cd4cc`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 31 Oct 2018 19:38:09 GMT
RUN Install update 10.0.16299.785
# Thu, 15 Nov 2018 10:48:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Nov 2018 10:43:59 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 21 Nov 2018 10:44:51 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 21 Nov 2018 10:49:56 GMT
ENV JAVA_VERSION=8u191
# Wed, 21 Nov 2018 10:49:58 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.191-1
# Wed, 21 Nov 2018 10:49:59 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.191-1.b12.ojdkbuild.windows.x86_64.zip
# Wed, 21 Nov 2018 10:50:00 GMT
ENV JAVA_OJDKBUILD_SHA256=d52167198912e239bba19e059870c5742558096ad7b82fe73d51461361b149bd
# Wed, 21 Nov 2018 10:51:39 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
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
	-	`sha256:bd17e5a5c479b6668ad240896334e90bdbc1e2582b65fa0ee1e21aee6b531472`  
		Last Modified: Wed, 21 Nov 2018 11:02:41 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f4ad77d4f97f172c34d98b31dad922d444ef110edc5b9a65b5aa062cf14111`  
		Last Modified: Wed, 21 Nov 2018 11:02:43 GMT  
		Size: 4.8 MB (4786561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f3ad343b1c333c3849c2a4f520c36b167a72d5e55c2f24ceabede2154c12ca`  
		Last Modified: Wed, 21 Nov 2018 11:04:25 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c220bc089fab0e90bcec5afd9b21a60fa0a609dace4ebaf207aa0d0b26e49754`  
		Last Modified: Wed, 21 Nov 2018 11:04:25 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6d437d96e87fc970ce10f8f44661aa3823c4cd3b1103f9f2fa4f5176964682`  
		Last Modified: Wed, 21 Nov 2018 11:04:25 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9971c10ed22d037c1f3fd13d4ccbb57a3a6e04232434ac54b3857cc34f6fa1a`  
		Last Modified: Wed, 21 Nov 2018 11:04:25 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c2b2c1f078d179b9f778c7f26853e3798e40163ae57f80504bc2abbdb76ac7`  
		Last Modified: Wed, 21 Nov 2018 11:04:43 GMT  
		Size: 111.0 MB (111020385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
