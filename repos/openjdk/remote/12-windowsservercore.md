## `openjdk:12-windowsservercore`

```console
$ docker pull openjdk@sha256:79fb3f95ed81927cafea5ac0a8ffc5cc5cd7237ee9d01cfec64d75c66f6a4039
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2665; amd64
	-	windows version 10.0.16299.846; amd64
	-	windows version 10.0.17134.469; amd64

### `openjdk:12-windowsservercore` - windows version 10.0.14393.2665; amd64

```console
$ docker pull openjdk@sha256:590e5f908f9cacbd5d47619a677a1e58e33c143e0786250f3c541600e1f6019d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5836787641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c2f0e99e94d18b76b6ab4ea3b37cc4eeca4ab9638cb18528c2214f2e61ede9b`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Dec 2018 22:22:29 GMT
RUN Install update 10.0.14393.2665
# Tue, 25 Dec 2018 17:17:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 25 Dec 2018 18:08:36 GMT
ENV JAVA_HOME=C:\openjdk-12
# Tue, 25 Dec 2018 18:10:15 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Tue, 25 Dec 2018 18:10:17 GMT
ENV JAVA_VERSION=12-ea+24
# Tue, 25 Dec 2018 18:10:19 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/24/GPL/openjdk-12-ea+24_windows-x64_bin.zip
# Tue, 25 Dec 2018 18:10:21 GMT
ENV JAVA_SHA256=4ecd476eca44cfc061769ee0ded86fe35e5ab11caedc930112badab4ce9bfcc2
# Tue, 25 Dec 2018 18:13:37 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 25 Dec 2018 18:13:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bf261bf8d7bc7faa62a55474c337e0c2bf6e7d24df25e7737fa97ace46a2cd9a`  
		Last Modified: Mon, 10 Dec 2018 22:22:29 GMT  
		Size: 1.6 GB (1564741272 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:88c3d7be4c2760e750ccd244f2cd79c32fc9e1534640817aad858156500c4e0a`  
		Last Modified: Tue, 25 Dec 2018 17:51:28 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34bfff8d5bb5e4de0bf1a82679e5ba46ee4d0d5cb5793e5088fe2df492d5e7ae`  
		Last Modified: Tue, 25 Dec 2018 18:47:35 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b4b45920298a8651f9197e3244a96b5f5406b2307c15bc66e351ab0819df1e`  
		Last Modified: Tue, 25 Dec 2018 18:47:37 GMT  
		Size: 5.2 MB (5234964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b225afffab1366c8a97f969da5a86b2b428c9a5fd22a5b3805c5972134055d24`  
		Last Modified: Tue, 25 Dec 2018 18:47:33 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79bd6f596a2a1dc2b66b34c662e37928773de245ccaa28af20a4db472789ede2`  
		Last Modified: Tue, 25 Dec 2018 18:47:32 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009b795bca390bd550b00b9d697a0d49af0719c5b3d512cc8de99965a495e7f9`  
		Last Modified: Tue, 25 Dec 2018 18:47:33 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8931acf4c25cbac7858cfdfe4cb29d161a875d5cf7017e6c8cbf469c9ca2514d`  
		Last Modified: Tue, 25 Dec 2018 18:48:53 GMT  
		Size: 196.8 MB (196818262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f41822c98d1a7a5ee77abe584482f7ef1d3b1fa38e8e2fa65059a1c90d1900`  
		Last Modified: Tue, 25 Dec 2018 18:47:32 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:12-windowsservercore` - windows version 10.0.16299.846; amd64

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

### `openjdk:12-windowsservercore` - windows version 10.0.17134.469; amd64

```console
$ docker pull openjdk@sha256:f70defe84bf8190c856d4a301029afb4d3a0d2ee13d5d1a0ec7641f5c22a4287
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2440189692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a6d1449f7c26e26073ec53696578ffb247572b8fa28c913cc6341979690d1c4`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Thu, 06 Dec 2018 19:45:44 GMT
RUN Install update 10.0.17134.469
# Tue, 25 Dec 2018 18:18:15 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 25 Dec 2018 18:18:16 GMT
ENV JAVA_HOME=C:\openjdk-12
# Tue, 25 Dec 2018 18:19:10 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Tue, 25 Dec 2018 18:19:11 GMT
ENV JAVA_VERSION=12-ea+24
# Tue, 25 Dec 2018 18:19:13 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/24/GPL/openjdk-12-ea+24_windows-x64_bin.zip
# Tue, 25 Dec 2018 18:19:14 GMT
ENV JAVA_SHA256=4ecd476eca44cfc061769ee0ded86fe35e5ab11caedc930112badab4ce9bfcc2
# Tue, 25 Dec 2018 18:21:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 25 Dec 2018 18:21:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a716b198c71b782955b21f1eed303f89f487eaef823ebccdeb452b764512b3b`  
		Last Modified: Tue, 11 Dec 2018 22:06:40 GMT  
		Size: 583.9 MB (583898765 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:219a311071ee4293d1c43ed6fbbc267544771d491843ca5ff9c1a235c116c96d`  
		Last Modified: Tue, 25 Dec 2018 18:50:55 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e041b07d5705ead9d465304f6a88a043a8e59306e41db5b264a326f968bbbc70`  
		Last Modified: Tue, 25 Dec 2018 18:50:54 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484503c2bd858dba296ec81f5ca7ea4fe8c497502e92e94f0e56f6a181881d4d`  
		Last Modified: Tue, 25 Dec 2018 18:50:56 GMT  
		Size: 4.7 MB (4704156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b6f60dc88d8e924bcbecc896e32ea9f4f2508fc6b95e856541be49b4692d152`  
		Last Modified: Tue, 25 Dec 2018 18:50:52 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f759a2ce0876712bda516741d39cb7069a51935c72bc6cd9e60e45339071f1`  
		Last Modified: Tue, 25 Dec 2018 18:50:52 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:509d37ff5a6841625397fe3db74c1fc53f9c23f5fbbd328ce467752d46d4081e`  
		Last Modified: Tue, 25 Dec 2018 18:50:52 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a51c72dc586dec8950fae6944bd34172bee9f43d8b889acdbdf0739a9d2d591`  
		Last Modified: Tue, 25 Dec 2018 18:51:56 GMT  
		Size: 191.9 MB (191891289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e41f5ddcfdac18544c6373e92ec6317f36227998329800a7d3e0ba759d032b9`  
		Last Modified: Tue, 25 Dec 2018 18:50:52 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
