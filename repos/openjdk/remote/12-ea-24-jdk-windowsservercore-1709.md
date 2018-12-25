## `openjdk:12-ea-24-jdk-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:c2e5663786cdb4eeda3f5cd2ff8681927d22ee8cb2ac7cab173c573c3ca5a4be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.846; amd64

### `openjdk:12-ea-24-jdk-windowsservercore-1709` - windows version 10.0.16299.846; amd64

```console
$ docker pull openjdk@sha256:fb82514663fdfe0896ba96f4aef46f19900e8fbeeeb97324f3922d8776a7d0ba
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3353262500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3245180c39d2ee26cc6ff9fe7187f63a0907a44b7fcf92643d262b39bc4e16bc`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 05 Dec 2018 22:40:26 GMT
RUN Install update 10.0.16299.846
# Tue, 25 Dec 2018 17:23:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 25 Dec 2018 18:13:49 GMT
ENV JAVA_HOME=C:\openjdk-12
# Tue, 25 Dec 2018 18:15:14 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Tue, 25 Dec 2018 18:15:15 GMT
ENV JAVA_VERSION=12-ea+24
# Tue, 25 Dec 2018 18:15:17 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/24/GPL/openjdk-12-ea+24_windows-x64_bin.zip
# Tue, 25 Dec 2018 18:15:18 GMT
ENV JAVA_SHA256=4ecd476eca44cfc061769ee0ded86fe35e5ab11caedc930112badab4ce9bfcc2
# Tue, 25 Dec 2018 18:17:52 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 25 Dec 2018 18:17:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:10167262a01401a5b7cd880ca2abdb5a43d0cdb288b23e2bbda0cd16760064e7`  
		Last Modified: Tue, 11 Dec 2018 21:30:45 GMT  
		Size: 877.8 MB (877837008 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:7c1b47cffe80520ef16d931d598cdadd371f9cb1e4ca9304d9c7532bb19c9721`  
		Last Modified: Tue, 25 Dec 2018 17:52:11 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b92ea34c8947496c4ba4f71419f23e2f42855cf3a17134b17c6c1e9cfa4fac77`  
		Last Modified: Tue, 25 Dec 2018 18:49:21 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b23f96865d3acacf763109c78e252c9808fa0252025af27639c5ef024ea3c`  
		Last Modified: Tue, 25 Dec 2018 18:49:23 GMT  
		Size: 4.8 MB (4787993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb6d1689421f323fbd80c8fab23bb4acabf2d6e62468ce942188d30a4ebd6fe`  
		Last Modified: Tue, 25 Dec 2018 18:49:18 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce86fa4f9b385e6fa22352ef5fb6b0c819496913c612a1ef5ceaf05185e58b54`  
		Last Modified: Tue, 25 Dec 2018 18:49:18 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45c41aebb4736200e7cef1bc67674e41e42840a576d68d9e5294ad76e2041c6`  
		Last Modified: Tue, 25 Dec 2018 18:49:18 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc9884284da8237a6e25f100ffdcac061c1b6451f9aaf9c277c165c17243968`  
		Last Modified: Tue, 25 Dec 2018 18:50:27 GMT  
		Size: 196.3 MB (196329699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:084b6fa0950dea3bf01cae40eef571319661f7564476d69b37eaf5892c97bf52`  
		Last Modified: Tue, 25 Dec 2018 18:49:18 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
