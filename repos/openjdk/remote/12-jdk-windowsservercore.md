## `openjdk:12-jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:bc2e52c01c5ef1fec8cf9003bb150f016e883637d18b5c7f2c71ab37ebcea3b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64
	-	windows version 10.0.16299.726; amd64
	-	windows version 10.0.17134.345; amd64

### `openjdk:12-jdk-windowsservercore` - windows version 10.0.14393.2551; amd64

```console
$ docker pull openjdk@sha256:7f8935ad919e5d27b7efa9302ab84f1f5d97fa2485f598668bd53cf321557a5f
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5802093392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df4ca2c82db7ae19e3b122692b5962fd54922d607e68fc5c6702767bd5cc11e5`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:03:17 GMT
RUN Install update 10.0.14393.2551
# Wed, 10 Oct 2018 09:36:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 10 Oct 2018 10:21:03 GMT
ENV JAVA_HOME=C:\openjdk-12
# Wed, 10 Oct 2018 10:22:53 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Sat, 10 Nov 2018 11:33:02 GMT
ENV JAVA_VERSION=12-ea+19
# Sat, 10 Nov 2018 11:33:03 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/19/GPL/openjdk-12-ea+19_windows-x64_bin.zip
# Sat, 10 Nov 2018 11:33:04 GMT
ENV JAVA_SHA256=6053dd7893539141545a82fdf0b948dd1723bed6c1011ec3fdeaac35423f6b29
# Sat, 10 Nov 2018 11:36:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 10 Nov 2018 11:36:30 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c0f6863f3dd498ab56cdd308637630f888fe646de403284f2c5392ba885bdd8e`  
		Last Modified: Tue, 09 Oct 2018 18:03:17 GMT  
		Size: 1.5 GB (1527125035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d41004b1d809eac4e77c97920984b278977d36627024ab085d0dd8ccc941ddeb`  
		Last Modified: Wed, 10 Oct 2018 10:08:02 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f2b49afd3609a249fe7bf207dc223e3894f836b1e2e1ea8d2427f2aa818283`  
		Last Modified: Wed, 10 Oct 2018 11:03:04 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4cd4842c91e00185651e122353cd21466f678b55d81a9c073a5415899b6232`  
		Last Modified: Wed, 10 Oct 2018 11:03:06 GMT  
		Size: 5.1 MB (5083722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a667fbfe651c5e499dbbafaab51003ed4bd7c02b5a677421ff16455915e852a4`  
		Last Modified: Sat, 10 Nov 2018 11:43:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc68537f77409ba95df44e0e75c13dd2a8614c7dd2812b06a42e3266cc2a0a74`  
		Last Modified: Sat, 10 Nov 2018 11:43:21 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfa0a745abd7f81061514f224376f8866b4ecfcd3186ec5c5b167dc26614813`  
		Last Modified: Sat, 10 Nov 2018 11:43:22 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a2c552b43a78003f02b66ec401eea53e6a60df417b0c2ca8efad396031de0e`  
		Last Modified: Sat, 10 Nov 2018 11:43:47 GMT  
		Size: 199.9 MB (199891539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8681b12fe9199afda0094669eca1a35d593fc382259329851dc75770452145`  
		Last Modified: Sat, 10 Nov 2018 11:43:21 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:12-jdk-windowsservercore` - windows version 10.0.16299.726; amd64

```console
$ docker pull openjdk@sha256:baf245f5f694c46463ee76e7c760c7209ab4243036502383ded02caf0eb614c1
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3340598260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd0cc19ed064d68aa9c5e610ce42f56def14019da77cc6a7c44d964e0364b6c`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 01 Oct 2018 22:02:14 GMT
RUN Install update 10.0.16299.726
# Wed, 10 Oct 2018 09:42:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 10 Oct 2018 10:26:42 GMT
ENV JAVA_HOME=C:\openjdk-12
# Wed, 10 Oct 2018 10:28:03 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Sat, 10 Nov 2018 11:36:44 GMT
ENV JAVA_VERSION=12-ea+19
# Sat, 10 Nov 2018 11:36:45 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/19/GPL/openjdk-12-ea+19_windows-x64_bin.zip
# Sat, 10 Nov 2018 11:36:47 GMT
ENV JAVA_SHA256=6053dd7893539141545a82fdf0b948dd1723bed6c1011ec3fdeaac35423f6b29
# Sat, 10 Nov 2018 11:39:09 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 10 Nov 2018 11:39:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ddd7a4737dfbb59b49c30480146e7f0a61842409755bd479b63004c5643d0ed3`  
		Last Modified: Mon, 08 Oct 2018 19:38:11 GMT  
		Size: 866.5 MB (866458210 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cf0d3e1d36b0cda001b50a29a3b2898c0f456696a4491b2d5536e4af41eed468`  
		Last Modified: Wed, 10 Oct 2018 10:08:52 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19865e1a3d44da656772f14c9b6bcaf79e686d2721aab008563de748a895280f`  
		Last Modified: Wed, 10 Oct 2018 11:03:58 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0bab5bdc16ecbdb302a0c04a6e81913ccd6ebc425dc9ac4aac12acd89118396`  
		Last Modified: Wed, 10 Oct 2018 11:04:00 GMT  
		Size: 4.8 MB (4765004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2baed5b667c36ade6736cc8317ba5a21ed5f5e398b8045cc69044d025638382d`  
		Last Modified: Sat, 10 Nov 2018 11:44:18 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc71e1bf6724a9974aa9806ac5ad808de86865b0854c49af76e8114a81fa9a2`  
		Last Modified: Sat, 10 Nov 2018 11:44:17 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e0b9cfbc8e3639567c707a749150ddf6a252c8061a26fcff9fa81edb5ae890e`  
		Last Modified: Sat, 10 Nov 2018 11:44:17 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:493f01ef9595bf5cca9f86f5e461919b066f171693f261ef124f9bf905359467`  
		Last Modified: Sat, 10 Nov 2018 11:44:41 GMT  
		Size: 195.1 MB (195067289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d0b15b036a749a200eab759fb93a1ff3ee28b3a9e4ed0e25b3f54640cfb6126`  
		Last Modified: Sat, 10 Nov 2018 11:44:17 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:12-jdk-windowsservercore` - windows version 10.0.17134.345; amd64

```console
$ docker pull openjdk@sha256:8ab847cb92ab771e9102b7bd6c206b63cbe578ffb952bd99a31057f81b3f3a81
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2425072221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00cc59a336f82a5a54332910674c33c55b8fd7fd522903cbcec5e0c713523e59`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Mon, 01 Oct 2018 21:32:36 GMT
RUN Install update 10.0.17134.345
# Wed, 10 Oct 2018 10:30:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 10 Oct 2018 10:30:27 GMT
ENV JAVA_HOME=C:\openjdk-12
# Wed, 10 Oct 2018 10:31:33 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Sat, 10 Nov 2018 11:39:27 GMT
ENV JAVA_VERSION=12-ea+19
# Sat, 10 Nov 2018 11:39:28 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/19/GPL/openjdk-12-ea+19_windows-x64_bin.zip
# Sat, 10 Nov 2018 11:39:29 GMT
ENV JAVA_SHA256=6053dd7893539141545a82fdf0b948dd1723bed6c1011ec3fdeaac35423f6b29
# Sat, 10 Nov 2018 11:41:37 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 10 Nov 2018 11:41:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:eba07b94d5f77aa900bf02c4247fc580222254782681cc3c74a7cf9566e8890a`  
		Last Modified: Mon, 08 Oct 2018 19:44:48 GMT  
		Size: 570.0 MB (570044587 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:27edf24f1e4fe928232c90f140f4c86cd7eed50efd07761c6c0832c7bfe26d30`  
		Last Modified: Wed, 10 Oct 2018 11:04:51 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f85d281352e27f7b30dd9de055e7b8d0820d635c1b51c696c95884b3b77322a`  
		Last Modified: Wed, 10 Oct 2018 11:04:51 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:778c8fe5d5b6d982b9efce6ae468a1843f175d7b56eb4e89908ebb5a198af2bf`  
		Last Modified: Wed, 10 Oct 2018 11:04:53 GMT  
		Size: 4.7 MB (4683934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd3d438525f7ade729321ac122f9cdc86595be9c689a99a6a5178758632f995`  
		Last Modified: Sat, 10 Nov 2018 11:45:10 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f318f7bbe752cd35148ff3699fc9a0215f652b7145833052eaff73b726bd2b2`  
		Last Modified: Sat, 10 Nov 2018 11:45:10 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3e91e6655a2334e97d9520e0b50d1befb928965b7ebdaca68c8f947dc69ae8`  
		Last Modified: Sat, 10 Nov 2018 11:45:11 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac1d51a019f6f2969e689c618a61cad114e8382d5921e1204b3fa517d30ab9b`  
		Last Modified: Sat, 10 Nov 2018 11:45:33 GMT  
		Size: 190.6 MB (190648254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ddcf768bd8465b4fbb63b8ff79231e4516c903d1ec1b9ef4a57aaa3fa6aba4`  
		Last Modified: Sat, 10 Nov 2018 11:45:10 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
