## `openjdk:8u212-jre-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:e06b6a9dbfed512937bbe35226839225a6bbfe230a7e7f47ea101872a60509c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.3025; amd64

### `openjdk:8u212-jre-windowsservercore-ltsc2016` - windows version 10.0.14393.3025; amd64

```console
$ docker pull openjdk@sha256:ee67c6746f1b8d9c669673f275e631aba5590dbdc93f42ed0b941bcd021e2085
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5771245637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2bf18c3c73b102dbb1b2945925d0bb63ffa23cc786b8bbc9c4a908ac0f67198`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Thu, 06 Jun 2019 17:26:33 GMT
RUN Install update ltsc2016-amd64
# Wed, 12 Jun 2019 12:41:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 15:29:02 GMT
ENV JAVA_HOME=C:\openjdk-8
# Wed, 12 Jun 2019 15:30:05 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 12 Jun 2019 15:30:07 GMT
ENV JAVA_VERSION=8u212-b04
# Wed, 12 Jun 2019 15:34:51 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Wed, 12 Jun 2019 15:34:52 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 12 Jun 2019 15:36:30 GMT
RUN $url = ('{0}x64_windows_{1}.zip' -f $env:JAVA_BASE_URL, $env:JAVA_URL_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'openjdk.zip'; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 		Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b39d5d9be066f0f1bd27e6ca44acdf71d85b81b878665ee46215ddcb7ded74a0`  
		Last Modified: Tue, 11 Jun 2019 17:20:14 GMT  
		Size: 1.6 GB (1639988840 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:57bc0501728e0596928517947d7b1c59a1010c84b5d54e534c0bad3109160d4c`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b40e22bc091f22f83039cbd4639f364cdddeae0405c9eda0130593552e65a1`  
		Last Modified: Wed, 12 Jun 2019 15:57:12 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c249bc6e7a9d21fc8902f5599803b800d8807121763a71d88265a1da7e73aa08`  
		Last Modified: Wed, 12 Jun 2019 15:57:11 GMT  
		Size: 5.3 MB (5316038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd17d33dd9c3ff44b5c1f3021ede36fdedb78fac5f2cccd27c350d7655db404`  
		Last Modified: Wed, 12 Jun 2019 15:57:10 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c381e9c488c839a81f6f47c8e21d72e4f5a4c4a4267cd4fc6987387d367faa87`  
		Last Modified: Wed, 12 Jun 2019 15:59:40 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fa8871499964fe50891c2cd62cfbfdf542f4492a9f95f447dcfb52e15f9d03`  
		Last Modified: Wed, 12 Jun 2019 15:59:40 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e691b9d14bc949b7234890f995ee4ceca020f69104d53a00f12eb927b5ac195e`  
		Last Modified: Wed, 12 Jun 2019 15:59:52 GMT  
		Size: 55.9 MB (55948926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
