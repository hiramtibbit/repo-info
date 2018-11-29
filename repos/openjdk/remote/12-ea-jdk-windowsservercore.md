## `openjdk:12-ea-jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:edb4c71650b67c0d4e4089c0c3c06898c674559ee8ad29ed542ea755aa98c7fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2608; amd64
	-	windows version 10.0.16299.726; amd64
	-	windows version 10.0.17134.345; amd64

### `openjdk:12-ea-jdk-windowsservercore` - windows version 10.0.14393.2608; amd64

```console
$ docker pull openjdk@sha256:0020f8518353a849ab579f06c84b81cb39eef07bdf696048f7ef07fe99e0b0bc
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5839570745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87b0b49ed9ad0e9bb33df899e7980d672558564372fb0bf1ebe7a220905f11f6`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 12 Nov 2018 20:18:49 GMT
RUN Install update 10.0.14393.2608
# Thu, 15 Nov 2018 10:44:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Nov 2018 10:17:31 GMT
ENV JAVA_HOME=C:\openjdk-12
# Wed, 21 Nov 2018 10:19:07 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Thu, 29 Nov 2018 10:16:32 GMT
ENV JAVA_VERSION=12-ea+21
# Thu, 29 Nov 2018 10:16:33 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/21/GPL/openjdk-12-ea+21_windows-x64_bin.zip
# Thu, 29 Nov 2018 10:16:33 GMT
ENV JAVA_SHA256=0234af9e71f01cbad57e2d1e3bbf8938cc166455f2c2255384cf85b329a3e529
# Thu, 29 Nov 2018 10:19:45 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Thu, 29 Nov 2018 10:19:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:900b07d4317229a6e17265974aa1dac7af538380b34f978cbe221403c279c09a`  
		Last Modified: Mon, 12 Nov 2018 20:18:49 GMT  
		Size: 1.6 GB (1563935107 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:87926998c696620346cdc0a9a6b8363985c9f433be9759201c3226e8cdf020c1`  
		Last Modified: Thu, 15 Nov 2018 11:02:41 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a73dd485a587939590e9229c43eb1d7f486dddef485831ea8b810e1b770bd24`  
		Last Modified: Wed, 21 Nov 2018 10:55:34 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9185aff84009eb869fc2300040d79fe8ef8be56a519bc4f52cc943a234e429`  
		Last Modified: Wed, 21 Nov 2018 10:55:36 GMT  
		Size: 5.2 MB (5204448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f485ed14057b9db881082432f17e109dc6a8c801584a37e548753ffaa57942a5`  
		Last Modified: Thu, 29 Nov 2018 10:29:13 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a1527eb0c5cf1d2567114bdad8aa927fa8acb23e67d8c824cc8206566e6651`  
		Last Modified: Thu, 29 Nov 2018 10:29:13 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cded16835c207d640ce01e64b53b298fac6895c5aa7104132b8ed2d2853ba08`  
		Last Modified: Thu, 29 Nov 2018 10:29:13 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ba5ce83b4defe436864fa994dbcb7cebc38b02f70154451ea56e6fe73bda20`  
		Last Modified: Thu, 29 Nov 2018 10:29:36 GMT  
		Size: 200.4 MB (200438107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c56ed4929fda4e33cbbc375a935b32757b5b04b874833b7224ce5bc86aaa2f`  
		Last Modified: Thu, 29 Nov 2018 10:29:13 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:12-ea-jdk-windowsservercore` - windows version 10.0.16299.726; amd64

```console
$ docker pull openjdk@sha256:de10ffab41a5464bd4497e8d5466afb3cbfd05b23d08992afb657350147d96f7
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3341057376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3fcf27c994eded352d244245ab8ec9a8373da1bc6c53a3181833852f135b37f`
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
# Thu, 29 Nov 2018 10:20:00 GMT
ENV JAVA_VERSION=12-ea+21
# Thu, 29 Nov 2018 10:20:01 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/21/GPL/openjdk-12-ea+21_windows-x64_bin.zip
# Thu, 29 Nov 2018 10:20:02 GMT
ENV JAVA_SHA256=0234af9e71f01cbad57e2d1e3bbf8938cc166455f2c2255384cf85b329a3e529
# Thu, 29 Nov 2018 10:22:27 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Thu, 29 Nov 2018 10:22:28 GMT
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
	-	`sha256:ef93ed89ba0446737f8b57e39d5d33edba72d76555410548440dd449c4e92578`  
		Last Modified: Thu, 29 Nov 2018 10:30:06 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2592b821a546b43be325d799d9ecee81838165f1d9131b1da6f603ec91a4221`  
		Last Modified: Thu, 29 Nov 2018 10:30:06 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5558d47a88042a1eb539a611445c873fbd60e2f7e8f7f2b4da749d8d2970a69d`  
		Last Modified: Thu, 29 Nov 2018 10:30:06 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:862895ff6360d785354360f31a6cda0015d09b69db1ac45e8c18b25ac4cd5f9f`  
		Last Modified: Thu, 29 Nov 2018 10:30:31 GMT  
		Size: 195.5 MB (195526395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1c05653c0f5b89836ddf3e3cf70f00a12b417d3acf4944c532c195e7b50100`  
		Last Modified: Thu, 29 Nov 2018 10:30:07 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:12-ea-jdk-windowsservercore` - windows version 10.0.17134.345; amd64

```console
$ docker pull openjdk@sha256:416c696af02ce7da7eab680b0e480d0da9f15b824cd78aec529e50823bf024ab
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2425529177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3d2dbc4d6c59a31a91584ada9a50d7d3272b85105628fd0f57386b6d9d10ff9`
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
# Thu, 29 Nov 2018 10:22:42 GMT
ENV JAVA_VERSION=12-ea+21
# Thu, 29 Nov 2018 10:22:43 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/21/GPL/openjdk-12-ea+21_windows-x64_bin.zip
# Thu, 29 Nov 2018 10:22:44 GMT
ENV JAVA_SHA256=0234af9e71f01cbad57e2d1e3bbf8938cc166455f2c2255384cf85b329a3e529
# Thu, 29 Nov 2018 10:25:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Thu, 29 Nov 2018 10:25:02 GMT
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
	-	`sha256:6d339927bf75d7b6b6b6c8e9ccf15538f17d7b7ecacf3cab13957be06ab125a8`  
		Last Modified: Thu, 29 Nov 2018 10:30:59 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b472a98fa0b6329c5ef0385529ddd8d67e4a32de6a43f06db5534d5e0550add`  
		Last Modified: Thu, 29 Nov 2018 10:30:59 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4901f830c78675fb5858d12a209ac03901a8177eb4e2a193cfdfca3d64c4045`  
		Last Modified: Thu, 29 Nov 2018 10:30:59 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31de0e63ed4ec89fe9d4ed2de2891ca58774dd0ba07f048b0dfe8b383132a5a8`  
		Last Modified: Thu, 29 Nov 2018 10:31:21 GMT  
		Size: 191.1 MB (191105186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71fc7e88dc8b2076e3118dc97cffa2953df1f62176e48af881a684dfb02ea5b2`  
		Last Modified: Thu, 29 Nov 2018 10:30:59 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
