## `openjdk:8-jre-windowsservercore-1809`

```console
$ docker pull openjdk@sha256:2d07748d694b72e9816c3e67597bb9de516cf770a9acb96225d9ce4f61eb5e41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.557; amd64

### `openjdk:8-jre-windowsservercore-1809` - windows version 10.0.17763.557; amd64

```console
$ docker pull openjdk@sha256:d4698ffb63b8fdaf5386885630eb475441f6d44f474889917c351d6acbda75f5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2441362347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ed10adc5b02e79a26c256ea9c0224c207bf205d998b577a68d85dcc03012bdc`
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
# Wed, 12 Jun 2019 15:32:32 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Wed, 12 Jun 2019 15:32:33 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 12 Jun 2019 15:33:27 GMT
RUN $url = ('{0}x64_windows_{1}.zip' -f $env:JAVA_BASE_URL, $env:JAVA_URL_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'openjdk.zip'; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 		Write-Host 'Complete.'
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
	-	`sha256:b029622fc8bc619661395aebdce8e85e93e4762545238cd53d9a1e34bcc364c0`  
		Last Modified: Wed, 12 Jun 2019 15:58:35 GMT  
		Size: 1.2 KB (1177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338f44253c3df84d6cc4e312adcff57f49c7d721e70428571724839a12d82c53`  
		Last Modified: Wed, 12 Jun 2019 15:58:35 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec204c7cdb5005aeb08b69f0f95637273aeefb479e159e9007a5dea591dc299c`  
		Last Modified: Wed, 12 Jun 2019 15:58:46 GMT  
		Size: 50.9 MB (50933096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
