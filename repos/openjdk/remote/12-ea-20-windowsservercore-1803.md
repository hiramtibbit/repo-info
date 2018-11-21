## `openjdk:12-ea-20-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:7e0bde4cfc937027e2202b04e753434bc5e35d2fae40f4649c9ba46d95c0da22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.407; amd64

### `openjdk:12-ea-20-windowsservercore-1803` - windows version 10.0.17134.407; amd64

```console
$ docker pull openjdk@sha256:4af6491de8c701c64737914eebd3436cdd318fdec4ae659e63ab130310ff685f
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2435606244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51c9e4dd4b83d40628af8e079052bc94353c2287426ebafc60f723c35ffef8cd`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 02 Nov 2018 19:42:23 GMT
RUN Install update 10.0.17134.407
# Thu, 15 Nov 2018 10:51:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Nov 2018 10:25:26 GMT
ENV JAVA_HOME=C:\openjdk-12
# Wed, 21 Nov 2018 10:26:35 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 21 Nov 2018 10:26:36 GMT
ENV JAVA_VERSION=12-ea+20
# Wed, 21 Nov 2018 10:26:37 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/20/GPL/openjdk-12-ea+20_windows-x64_bin.zip
# Wed, 21 Nov 2018 10:26:39 GMT
ENV JAVA_SHA256=42f843635a0166951bd96a85d982ead987b6cfc07ba18b7f6830eb5a6c1df5c9
# Wed, 21 Nov 2018 10:28:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 21 Nov 2018 10:28:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e4486f0b239271cca51d8299e172f9335cefd19e924843676add9d58470b19c7`  
		Last Modified: Mon, 12 Nov 2018 20:42:58 GMT  
		Size: 580.4 MB (580390603 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5221af79f3d95df0fd8a8c9a76ffe05ffea9b48cb861ad43ebd1e8b97932608b`  
		Last Modified: Thu, 15 Nov 2018 11:04:23 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e750f704ae484890fbf351aad4f9af2b392d2e93b95b75d1c24b819bb847fef1`  
		Last Modified: Wed, 21 Nov 2018 10:57:23 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be7a5eb22dcff36ec3bbe6cbdba7649b18e804db735dd70bb122dcaac204b10`  
		Last Modified: Wed, 21 Nov 2018 10:57:25 GMT  
		Size: 4.7 MB (4693124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97de91edc60a45d866801cb077463644b497a0aa5085cf43a1563869a03b0988`  
		Last Modified: Wed, 21 Nov 2018 10:57:20 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445825e5e960ca0e5ebda6269d6b2cfdf08c2a4fc5a57ad7bd527fde23097272`  
		Last Modified: Wed, 21 Nov 2018 10:57:20 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c4201c290436a1f7fef803859f6c3b1a514f13666bdc9bcbd2532c2f380c4f`  
		Last Modified: Wed, 21 Nov 2018 10:57:21 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c4c4daebf422595155f228725aab14bc6d5e515ae98a3d73d42cb3e29cad22`  
		Last Modified: Wed, 21 Nov 2018 10:57:44 GMT  
		Size: 190.8 MB (190827042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43a0af2175946b76cd73d25d48a324ed9ae4af934883c301c1958c174c0c895`  
		Last Modified: Wed, 21 Nov 2018 10:57:20 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
