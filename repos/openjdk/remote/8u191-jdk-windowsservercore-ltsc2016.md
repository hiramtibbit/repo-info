## `openjdk:8u191-jdk-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:52d6749ea9bb372a478a1619dba0c2e137dec634e4bb9a8c83ff129279560331
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2608; amd64

### `openjdk:8u191-jdk-windowsservercore-ltsc2016` - windows version 10.0.14393.2608; amd64

```console
$ docker pull openjdk@sha256:30bafc521f5043a9c948765efb72fce8da8bb3f47922b9a04037b38c0d018092
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5750543094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8eb64c120b41e64995fe6f5491a03a546cdb2b88195138536b0878be843bb67`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 12 Nov 2018 20:18:49 GMT
RUN Install update 10.0.14393.2608
# Thu, 15 Nov 2018 10:44:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Nov 2018 10:39:16 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 21 Nov 2018 10:40:39 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 21 Nov 2018 10:47:45 GMT
ENV JAVA_VERSION=8u191
# Wed, 21 Nov 2018 10:47:46 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.191-1
# Wed, 21 Nov 2018 10:47:47 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.191-1.b12.ojdkbuild.windows.x86_64.zip
# Wed, 21 Nov 2018 10:47:48 GMT
ENV JAVA_OJDKBUILD_SHA256=d52167198912e239bba19e059870c5742558096ad7b82fe73d51461361b149bd
# Wed, 21 Nov 2018 10:49:48 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
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
	-	`sha256:9a102a3df7d886927b6eebc598d60c23e633df5bb3c448cc4890f232b61b72dd`  
		Last Modified: Wed, 21 Nov 2018 11:01:29 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f003a91f6d334c84a6df640c2787f3e72486e70678a2bdd4fd01342b8d352db0`  
		Last Modified: Wed, 21 Nov 2018 11:01:31 GMT  
		Size: 5.2 MB (5203650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13637870db3941d4bd0df7138aa10b82258dc126de16d158254a0ca3152828a0`  
		Last Modified: Wed, 21 Nov 2018 11:03:45 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc89bd575e45ca3a8368baa64085ef97e0efea853bfc3ae7b0c12c7c23c9f260`  
		Last Modified: Wed, 21 Nov 2018 11:03:44 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1abb8d31f127ac17739a569f18c9ddccc12ec632b0753cb185f65878f5af2d`  
		Last Modified: Wed, 21 Nov 2018 11:03:45 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b59560967bff62a2fdb003207360a6604d2fac43919275473febc7356a2ef56`  
		Last Modified: Wed, 21 Nov 2018 11:03:45 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2916efeea5a3d35ca90d3cab0885d561c3bb7c8ba55d9c4949746107bc3ebf45`  
		Last Modified: Wed, 21 Nov 2018 11:04:05 GMT  
		Size: 111.4 MB (111411232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
