## `openjdk:8u212-windowsservercore`

```console
$ docker pull openjdk@sha256:bfea4912888d33872c88de8a866b89cab18ad8200f85aec19072e82962912027
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.557; amd64
	-	windows version 10.0.17134.829; amd64
	-	windows version 10.0.14393.3025; amd64

### `openjdk:8u212-windowsservercore` - windows version 10.0.17763.557; amd64

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

### `openjdk:8u212-windowsservercore` - windows version 10.0.17134.829; amd64

```console
$ docker pull openjdk@sha256:b56f2ca96454bd8326487298f160fb137a24b55ab89a170815a5aa950a3cd861
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2413333618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de783a3aac288e4734e63b6a6d2c3f6ca12be486f6de9349203d4fb0489e4d9f`
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
# Wed, 12 Jun 2019 15:27:16 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-
# Wed, 12 Jun 2019 15:27:18 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 12 Jun 2019 15:28:45 GMT
RUN $url = ('{0}x64_windows_{1}.zip' -f $env:JAVA_BASE_URL, $env:JAVA_URL_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'openjdk.zip'; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac -version'; javac -version; 	Write-Host '  java -version'; java -version; 		Write-Host 'Complete.'
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
	-	`sha256:72f9be85679c0c284673e83cbeecf0a093491439f403e2ce76f40739e625441e`  
		Last Modified: Wed, 12 Jun 2019 15:55:49 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03eb597f283034e12eec0df769a074337c49112d9f58aaeb275e0ce403b4cc5`  
		Last Modified: Wed, 12 Jun 2019 15:55:49 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa126a50374346b0123e4d86885b15cec5ddd3e338fe71a577929230a467e316`  
		Last Modified: Wed, 12 Jun 2019 15:56:35 GMT  
		Size: 100.4 MB (100352641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u212-windowsservercore` - windows version 10.0.14393.3025; amd64

```console
$ docker pull openjdk@sha256:67c08f1db06674c1f08b43ad8fa32a93d90d78ad5a27df13f98d5fd74d4fe6bf
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5820645169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1876c383ad45df9c81b79d48f754bc8589be03178dc7ba0228eb2a0f79fd184`
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
# Wed, 12 Jun 2019 15:30:09 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-
# Wed, 12 Jun 2019 15:30:10 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 12 Jun 2019 15:32:22 GMT
RUN $url = ('{0}x64_windows_{1}.zip' -f $env:JAVA_BASE_URL, $env:JAVA_URL_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'openjdk.zip'; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac -version'; javac -version; 	Write-Host '  java -version'; java -version; 		Write-Host 'Complete.'
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
	-	`sha256:bc06baf6b2cc0ea9fc2432c52ea4ddb8b0803337ae51fafcfef70196e969e98f`  
		Last Modified: Wed, 12 Jun 2019 15:57:09 GMT  
		Size: 1.1 KB (1147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0dc521cb7b36d283fa0de4af456618a28619ca14bf879647d614dee858e63b`  
		Last Modified: Wed, 12 Jun 2019 15:57:10 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b958523a6e3e1f60ef4a338c95a3fcc8fd7951db52261f704348227cfe6c7b72`  
		Last Modified: Wed, 12 Jun 2019 15:57:58 GMT  
		Size: 105.3 MB (105348506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
