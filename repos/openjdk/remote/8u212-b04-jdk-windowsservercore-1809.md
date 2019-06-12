## `openjdk:8u212-b04-jdk-windowsservercore-1809`

```console
$ docker pull openjdk@sha256:4e2ffcc91166706ee5f51faa70e1a7a17f0a5419ee12b5ffde3df66aa6edff39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.557; amd64

### `openjdk:8u212-b04-jdk-windowsservercore-1809` - windows version 10.0.17763.557; amd64

```console
$ docker pull openjdk@sha256:c4a2dead89396bc29ab067eaccb81a8a63466743661886b630cacb9276784a6e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2490768855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19f7a7d4ac8a3ae8f5b5325ecd68514215c6b070e51cff14ee4ee843febf54d7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 08 Jun 2019 04:13:36 GMT
RUN Install update 1809-amd64
# Wed, 12 Jun 2019 12:57:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 15:24:04 GMT
ENV JAVA_HOME=C:\openjdk-8
# Wed, 12 Jun 2019 15:24:40 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 12 Jun 2019 15:24:41 GMT
ENV JAVA_VERSION=8u212-b04
# Wed, 12 Jun 2019 15:24:43 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-
# Wed, 12 Jun 2019 15:24:45 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 12 Jun 2019 15:26:11 GMT
RUN $url = ('{0}x64_windows_{1}.zip' -f $env:JAVA_BASE_URL, $env:JAVA_URL_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'openjdk.zip'; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac -version'; javac -version; 	Write-Host '  java -version'; java -version; 		Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:266cffe9d908cf404f555fd6f60ff19167f6393ce6d42f4c9e6e4014cd04bccd`  
		Last Modified: Tue, 11 Jun 2019 18:25:33 GMT  
		Size: 851.4 MB (851381073 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c0c4ec7a15b931644ced0837c5a43642233d0cbdf67b1a3971033461576ee05`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e095a4c2c8761994fd46578ea36fac73170beff24378d7363e38501c7a34145`  
		Last Modified: Wed, 12 Jun 2019 15:54:29 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7622fe448ea34c3de12b0e09280b4ca84e2aaa8765b7f3205b33f2a28a4bc4fa`  
		Last Modified: Wed, 12 Jun 2019 15:54:28 GMT  
		Size: 4.4 MB (4356880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d8e4528c0a698b73b6211891769138ee06e3edaacf99ad1e4178951bf40ded7`  
		Last Modified: Wed, 12 Jun 2019 15:54:26 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53406d5c4b13f9ffac41e8640886b3a79a1a969e1681681135c614dd6173ab2`  
		Last Modified: Wed, 12 Jun 2019 15:54:26 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342681d3a91f3518cb024625e97c103f264bf222b3bab5ab484da14b11cd115f`  
		Last Modified: Wed, 12 Jun 2019 15:54:27 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b14177713636012c681901e9c8536ef72114844096db4105097ed4078204a11`  
		Last Modified: Wed, 12 Jun 2019 15:55:14 GMT  
		Size: 100.3 MB (100339655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
