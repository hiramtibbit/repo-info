## `openjdk:11-windowsservercore`

```console
$ docker pull openjdk@sha256:67af452d14903f8cddfebb681e6d1f49317365aa6645f8b0bc45d6d19403bde1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.557; amd64
	-	windows version 10.0.17134.829; amd64
	-	windows version 10.0.14393.3025; amd64

### `openjdk:11-windowsservercore` - windows version 10.0.17763.557; amd64

```console
$ docker pull openjdk@sha256:c51ec055eb857aa6bdae554f5cd3ca0aeb4166a8bd421e3ac1e53936db3752a0
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2580822643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:840bada2490bb83ca96797380c393fe136a030d4096b87b03f3dc16f1f044586`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 08 Jun 2019 04:13:36 GMT
RUN Install update 1809-amd64
# Wed, 12 Jun 2019 12:57:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 15:14:21 GMT
ENV JAVA_HOME=C:\openjdk-11
# Wed, 12 Jun 2019 15:15:00 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 12 Jun 2019 15:15:02 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 12 Jun 2019 15:15:03 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 12 Jun 2019 15:15:05 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 12 Jun 2019 15:16:54 GMT
RUN $url = ('{0}x64_windows_{1}.zip' -f $env:JAVA_BASE_URL, $env:JAVA_URL_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'openjdk.zip'; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Wed, 12 Jun 2019 15:16:56 GMT
CMD ["jshell"]
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
	-	`sha256:41b6d6a0893a101e8fc92a5671e881268f9959c8d4b176d665e1ca01e536533a`  
		Last Modified: Wed, 12 Jun 2019 15:47:40 GMT  
		Size: 1.1 KB (1148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3462b77466a02f2cf59ca799a6259ae8cbf375f0922b05b06a000da4b51dda2f`  
		Last Modified: Wed, 12 Jun 2019 15:47:41 GMT  
		Size: 4.4 MB (4357133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1e892e1e07ff47f26f4db522d888054fa67f0ea15fd42073ac4bfcd8655024`  
		Last Modified: Wed, 12 Jun 2019 15:47:37 GMT  
		Size: 1.1 KB (1148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b726e3893675902c2a0d616d129e31737f8977720b20f17ff88f7399de656f94`  
		Last Modified: Wed, 12 Jun 2019 15:47:37 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe3d797ca77e8a1f05dba1c11a4a9ec3fe92aa93143cc0fd0ef307fa10cfc06`  
		Last Modified: Wed, 12 Jun 2019 15:47:37 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453de254d68a443185e2bd34aeaf79f073f33c379ff4a2c2765e8a6409bfa768`  
		Last Modified: Wed, 12 Jun 2019 15:48:26 GMT  
		Size: 190.4 MB (190392037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f386b1f7f4a534aca2aafc8d8f53851effc33bca2e24e505a8b3f0b065396a6f`  
		Last Modified: Wed, 12 Jun 2019 15:47:37 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-windowsservercore` - windows version 10.0.17134.829; amd64

```console
$ docker pull openjdk@sha256:0122f80cd4cefb74bb98906cf9c0dd4cc35a61c3094cb54f5f1f6fa5eb264ae5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2503392389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f7dea99c5d7bc6388320d2dffce4ed1a12a4b848e3f0b03770219a35b150aa4`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 17:13:11 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 12:50:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 15:17:05 GMT
ENV JAVA_HOME=C:\openjdk-11
# Wed, 12 Jun 2019 15:17:49 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 12 Jun 2019 15:17:50 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 12 Jun 2019 15:17:52 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 12 Jun 2019 15:17:53 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 12 Jun 2019 15:19:42 GMT
RUN $url = ('{0}x64_windows_{1}.zip' -f $env:JAVA_BASE_URL, $env:JAVA_URL_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'openjdk.zip'; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Wed, 12 Jun 2019 15:19:45 GMT
CMD ["jshell"]
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
	-	`sha256:0f421b9f54118994d657e95c9c67dfcb9d0360bb86f46bf0b2905c0d38e64593`  
		Last Modified: Wed, 12 Jun 2019 15:49:02 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8498d673ee2263dd49bc3a875bd3cc9f8e995c5ea1a72ae60064bd8e12e112`  
		Last Modified: Wed, 12 Jun 2019 15:49:04 GMT  
		Size: 4.8 MB (4766841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb4128ac64ff54b477b3b59c9d10731c0e678d5412d6eeb610983f29a756527`  
		Last Modified: Wed, 12 Jun 2019 15:49:00 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb12f14518746f3494e3c6076ca8f63155edff53b8ae910cf5747e21cd9578e6`  
		Last Modified: Wed, 12 Jun 2019 15:49:00 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aafdaf3b4164b2ad5beeee8155daee2278f57d8dc7200fe6feac3eea5f91612`  
		Last Modified: Wed, 12 Jun 2019 15:49:00 GMT  
		Size: 1.2 KB (1179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7038378a4897895a4da913e88ed96ad3a3bcbccca3b0e078451051adab357c5`  
		Last Modified: Wed, 12 Jun 2019 15:49:36 GMT  
		Size: 190.4 MB (190411805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13687f9bdc77466e2705432172991518c842a0689f1f7d80011a4ad1f8323653`  
		Last Modified: Wed, 12 Jun 2019 15:49:00 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-windowsservercore` - windows version 10.0.14393.3025; amd64

```console
$ docker pull openjdk@sha256:7d37331af0e52d18f893e462189ba9506dbd723775051f481112d399cd0eb211
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5910703971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93aec4be51b9ade3d7bedb699fb3e4521314876c29651292c1ed010583aaa179`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Thu, 06 Jun 2019 17:26:33 GMT
RUN Install update ltsc2016-amd64
# Wed, 12 Jun 2019 12:41:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 15:20:05 GMT
ENV JAVA_HOME=C:\openjdk-11
# Wed, 12 Jun 2019 15:21:10 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 12 Jun 2019 15:21:11 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 12 Jun 2019 15:21:13 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 12 Jun 2019 15:21:14 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 12 Jun 2019 15:23:42 GMT
RUN $url = ('{0}x64_windows_{1}.zip' -f $env:JAVA_BASE_URL, $env:JAVA_URL_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'openjdk.zip'; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Wed, 12 Jun 2019 15:23:44 GMT
CMD ["jshell"]
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
	-	`sha256:a46480a91c741133436ec186f85f34e64b40943c22ed7042280a27b2e45e480e`  
		Last Modified: Wed, 12 Jun 2019 15:50:15 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2c2a438d238dcf60bce814278aff9bd26034aa17c05b629500a5ac747ae59a`  
		Last Modified: Wed, 12 Jun 2019 15:50:17 GMT  
		Size: 5.3 MB (5315822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b289cc827ed60b5c3ab4ab9815ee7e3a66d47e623df25ed35100f7b47ceaea4a`  
		Last Modified: Wed, 12 Jun 2019 15:50:13 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc7f3c99a3d83597c3f340f37d3718d619d9e597d15ce1652fd3c066f9fade8f`  
		Last Modified: Wed, 12 Jun 2019 15:50:13 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce7052a0f3cdb9473f2c7abf5b81ecff86e35f842c8027034b945f501f63c99`  
		Last Modified: Wed, 12 Jun 2019 15:50:13 GMT  
		Size: 1.1 KB (1143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bc5e44a09d3a833f244bfe7d8ffcc506b12b7db5e33345b2241c1235e9f07b`  
		Last Modified: Wed, 12 Jun 2019 15:53:51 GMT  
		Size: 195.4 MB (195406360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d660c5e65407abf0ef9d75fa3178f912e28cd105ae603a257d6e8bcd613baf`  
		Last Modified: Wed, 12 Jun 2019 15:50:13 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
