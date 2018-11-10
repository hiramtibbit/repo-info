## `openjdk:12-ea-19-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:e64ed457c3c054c6b7814589b1bef0564a55332a9ef00b9b281a1492bf4b6ce9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.345; amd64

### `openjdk:12-ea-19-windowsservercore-1803` - windows version 10.0.17134.345; amd64

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
