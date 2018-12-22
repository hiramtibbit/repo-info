## `openjdk:8u191-jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:f3df64e2212dad28243b3764cfd80079a76bd89421de3f4267174532aaf7b09c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2665; amd64
	-	windows version 10.0.16299.846; amd64
	-	windows version 10.0.17134.469; amd64

### `openjdk:8u191-jdk-windowsservercore` - windows version 10.0.14393.2665; amd64

```console
$ docker pull openjdk@sha256:de9838222ea8037b552e04b72d0d0ad070dea6ea4ac47a0354c52b35897c0c3a
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5751416778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0164e90d498d2c775114dc049d441b13a7ea78740ff3b4bcfb4b1e9cc057732`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Dec 2018 22:22:29 GMT
RUN Install update 10.0.14393.2665
# Fri, 14 Dec 2018 10:44:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 22 Dec 2018 10:38:29 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Sat, 22 Dec 2018 10:39:52 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Sat, 22 Dec 2018 10:39:53 GMT
ENV JAVA_VERSION=8u191
# Sat, 22 Dec 2018 10:39:54 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.191-1
# Sat, 22 Dec 2018 10:39:56 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.191-1.b12.ojdkbuild.windows.x86_64.zip
# Sat, 22 Dec 2018 10:39:57 GMT
ENV JAVA_OJDKBUILD_SHA256=d52167198912e239bba19e059870c5742558096ad7b82fe73d51461361b149bd
# Sat, 22 Dec 2018 10:42:06 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
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
	-	`sha256:c9346499d56b89267b8f21f1328b59d8fe902493eca87b656cb4d1284a207c91`  
		Last Modified: Fri, 14 Dec 2018 11:43:34 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30dc3f4dd293352c3cb8e170d56a3a9a8e8564252580c79170fd46b269a88db`  
		Last Modified: Sat, 22 Dec 2018 10:55:04 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16397077d7143753f476734a60c925756ce79e9bce091ea0050ffe71db3974f7`  
		Last Modified: Sat, 22 Dec 2018 10:55:06 GMT  
		Size: 5.2 MB (5235060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49698137f98a33c929d9f933c1669c4c38f5c8f7c69cebe6c07dcbb976742080`  
		Last Modified: Sat, 22 Dec 2018 10:55:01 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8943d7bb9673a33fc266804c1338f5336fb7256c3c0d7b5704177c8db44af030`  
		Last Modified: Sat, 22 Dec 2018 10:55:01 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d75d77a94f73d937c8c26d1127bcd6d9e47d7f170a08d15be04ce40bf77c16`  
		Last Modified: Sat, 22 Dec 2018 10:55:01 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7be8ee963171bc222d412abc35c9ff94d9d67c5d358d683a00d499265389b3e`  
		Last Modified: Sat, 22 Dec 2018 10:55:01 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:274adbc0d78d2c7e36b04a85592efdcfd1313955cc5b77a3a2d1ea0264a91442`  
		Last Modified: Sat, 22 Dec 2018 10:55:20 GMT  
		Size: 111.4 MB (111447338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u191-jdk-windowsservercore` - windows version 10.0.16299.846; amd64

```console
$ docker pull openjdk@sha256:306f5b8bc3a2cc3f56b455d4a22428d6277b0e7bc54853ab15b39e75d5dd6372
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3267963573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9fe62f69ee785b7bf024398bcd435c0c0cc621badb62fecb01846dd932d22b6`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 05 Dec 2018 22:40:26 GMT
RUN Install update 10.0.16299.846
# Fri, 14 Dec 2018 10:54:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 22 Dec 2018 10:42:14 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Sat, 22 Dec 2018 10:43:10 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Sat, 22 Dec 2018 10:43:11 GMT
ENV JAVA_VERSION=8u191
# Sat, 22 Dec 2018 10:43:12 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.191-1
# Sat, 22 Dec 2018 10:43:13 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.191-1.b12.ojdkbuild.windows.x86_64.zip
# Sat, 22 Dec 2018 10:43:14 GMT
ENV JAVA_OJDKBUILD_SHA256=d52167198912e239bba19e059870c5742558096ad7b82fe73d51461361b149bd
# Sat, 22 Dec 2018 10:44:55 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
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
	-	`sha256:3f98cda35707ef2fc387c3a54b43843c3b83a0aca5dff2755b109b6395a01f1c`  
		Last Modified: Fri, 14 Dec 2018 11:45:45 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:112b31a9bd9d4fca30dcdcf0982fed5674c0a3d190df39324747b323cf345c48`  
		Last Modified: Sat, 22 Dec 2018 10:55:58 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003412c7d54d2637fd8d1ed62922233d75c9002b228338acb0c0546cc3f8f1cd`  
		Last Modified: Sat, 22 Dec 2018 10:56:00 GMT  
		Size: 4.8 MB (4790271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f7b4c153fbdf3712a35f5245aff2017b6f3509fe5e6af51c31e93627ca5834`  
		Last Modified: Sat, 22 Dec 2018 10:55:56 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:264caefbd55b7bcacc4cf3ef5949f8ac9c5d5027411440b31209f80692bf0356`  
		Last Modified: Sat, 22 Dec 2018 10:55:56 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a5a11a5123a534c60741300e39343ab2058600cb66098c3250f98a81aec7695`  
		Last Modified: Sat, 22 Dec 2018 10:55:56 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80820b59095f2b1968caae7b16b620694afbdb227f5c9259b5095a9d360e415`  
		Last Modified: Sat, 22 Dec 2018 10:55:56 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7803ae3a8331fd3e5ba1d856c16be2bff970e7e7b945252f1b642f7d7a9b7ff`  
		Last Modified: Sat, 22 Dec 2018 10:56:14 GMT  
		Size: 111.0 MB (111028539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u191-jdk-windowsservercore` - windows version 10.0.17134.469; amd64

```console
$ docker pull openjdk@sha256:0f1cdcf94860b277ce45405203e0f4819ebd75b805a9bf14a3d9a7a251966575
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2354892032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7743970e4e4b4e792f4e2fbefc63b9798890066545eac57e6349f2135ab3ee3a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Thu, 06 Dec 2018 19:45:44 GMT
RUN Install update 10.0.17134.469
# Fri, 14 Dec 2018 11:04:06 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 22 Dec 2018 10:45:11 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Sat, 22 Dec 2018 10:46:03 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Sat, 22 Dec 2018 10:46:04 GMT
ENV JAVA_VERSION=8u191
# Sat, 22 Dec 2018 10:46:05 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.191-1
# Sat, 22 Dec 2018 10:46:07 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.191-1.b12.ojdkbuild.windows.x86_64.zip
# Sat, 22 Dec 2018 10:46:08 GMT
ENV JAVA_OJDKBUILD_SHA256=d52167198912e239bba19e059870c5742558096ad7b82fe73d51461361b149bd
# Sat, 22 Dec 2018 10:47:45 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
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
	-	`sha256:8b4b6fc57867bd595f143a036b6646613e7abc74c4e3c65f07d1c770f023d14c`  
		Last Modified: Fri, 14 Dec 2018 11:47:50 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4646afd8ff2a5cf9afffa80785057cabbaca8707c7428d090ee25f5fe938770`  
		Last Modified: Sat, 22 Dec 2018 10:56:41 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f49917fc7bf21bc386a43ea3c9b03620315801ff5d75ecd009f1a54ded574791`  
		Last Modified: Sat, 22 Dec 2018 10:56:41 GMT  
		Size: 4.7 MB (4702509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e72f1db1525da3d87a782f34a31b84c9c9fd893e8af3faced1acd46ac0d16ea`  
		Last Modified: Sat, 22 Dec 2018 10:56:38 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0492101c033287708b458bd36fb0f677571e10556bc084351c3fe8cf3b0f9ba`  
		Last Modified: Sat, 22 Dec 2018 10:56:38 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ea5967cc322510ebf1c3c9e341cba619e4393e0a75144fe06e8eb0024cf281`  
		Last Modified: Sat, 22 Dec 2018 10:56:38 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856899bba61de8d067c2053247c2638cd983ef46dd14a2aee99e6fad78dc1c18`  
		Last Modified: Sat, 22 Dec 2018 10:56:38 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fb96919cca5369215440e2a098d2128807967ce1cd8ef75b4a249890e3e847`  
		Last Modified: Sat, 22 Dec 2018 10:56:53 GMT  
		Size: 106.6 MB (106595285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
