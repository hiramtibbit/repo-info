## `openjdk:8-jre-windowsservercore`

```console
$ docker pull openjdk@sha256:5561a930b358c9753fa19e9182ffe0ad627f36b0e149f687d7dba4f5c4b2b247
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.557; amd64
	-	windows version 10.0.17134.829; amd64
	-	windows version 10.0.14393.3025; amd64

### `openjdk:8-jre-windowsservercore` - windows version 10.0.17763.557; amd64

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

### `openjdk:8-jre-windowsservercore` - windows version 10.0.17134.829; amd64

```console
$ docker pull openjdk@sha256:cef5e33e8bfb619a5fc54e1293d3bc2cdffb416d07508e660d77e3c3cc685252
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2363926065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4b9c88bfcfb44d7d25f48a1401d35c279d32cbfefc69584c1dda13b8522fc83`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 17:13:11 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 12:50:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 15:26:33 GMT
ENV JAVA_HOME=C:\openjdk-8
# Wed, 12 Jun 2019 15:27:13 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 12 Jun 2019 15:27:15 GMT
ENV JAVA_VERSION=8u212-b04
# Wed, 12 Jun 2019 15:33:37 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Wed, 12 Jun 2019 15:33:39 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 12 Jun 2019 15:34:36 GMT
RUN $url = ('{0}x64_windows_{1}.zip' -f $env:JAVA_BASE_URL, $env:JAVA_URL_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'openjdk.zip'; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 		Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2de32ee3b543cb2d1e3b6dd5d2578256c4bde975bc92e959325ff83ae8ed617b`  
		Last Modified: Tue, 11 Jun 2019 18:21:27 GMT  
		Size: 648.5 MB (648518427 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:206778a210152eae038ff9a90449b1070a39e0fb0f5ae857ae539e996315adec`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb0e0b1739abc7d17a6f2a4cf781c5f0570dc2a86191e838d44c89626afec2c`  
		Last Modified: Wed, 12 Jun 2019 15:55:51 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a35df43f03de3cf8121680a409beb18a64171da9eff80a3c1d5b7809638b82`  
		Last Modified: Wed, 12 Jun 2019 15:55:51 GMT  
		Size: 4.8 MB (4768434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e991d6e978bcae44319f9bba8afad529ddec88e9adc56e3454cc51889bc78fc9`  
		Last Modified: Wed, 12 Jun 2019 15:55:49 GMT  
		Size: 1.2 KB (1177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4125520cc64852b775720ceec8f33a0b73872a4e7eaf2998f3351749ecce00f`  
		Last Modified: Wed, 12 Jun 2019 15:59:05 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0483ec4b938336009ed7ba5f766b3a1137b3aa7fbc73ffd65afd77fbabfec523`  
		Last Modified: Wed, 12 Jun 2019 15:59:05 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c0e6300c0322c6f0e8817124dbf2238a78f18843dd0a45e07006ba596f56f5`  
		Last Modified: Wed, 12 Jun 2019 15:59:20 GMT  
		Size: 50.9 MB (50945057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-jre-windowsservercore` - windows version 10.0.14393.3025; amd64

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
