## `openjdk:8-jdk-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:a4d198622f244d8c20e19bc93518c7a651c7e35c0e33bd365128fc76ca6bd9d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.248; amd64

### `openjdk:8-jdk-windowsservercore-1709` - windows version 10.0.16299.248; amd64

```console
$ docker pull openjdk@sha256:2c3a66d98bbb523a849779f9d692153e479d348380e0cd242941f544c484ed71
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3130768378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:818512ffc48a6390584b4236ae92253c766fc80ba59537059db4f36e623de704`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 12 Feb 2018 05:08:44 GMT
RUN Install update 10.0.16299.248
# Wed, 14 Feb 2018 03:31:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Feb 2018 10:06:38 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 14 Feb 2018 10:08:40 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 14 Feb 2018 10:15:46 GMT
ENV JAVA_VERSION=8u161
# Wed, 14 Feb 2018 10:15:47 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.161-1
# Wed, 14 Feb 2018 10:15:47 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.161-1.b14.ojdkbuild.windows.x86_64.zip
# Wed, 14 Feb 2018 10:15:48 GMT
ENV JAVA_OJDKBUILD_SHA256=7fcd9909173ed19f4ae6c0bba8b32b1e6bece2d49eb9d87271828be8121fc31b
# Wed, 14 Feb 2018 10:17:25 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bb504a9304958e903c60656a737272249571ee918bcdc7a9024d802898a187a2`  
		Last Modified: Tue, 13 Feb 2018 21:04:02 GMT  
		Size: 741.2 MB (741177838 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0d60bc5daa3667e432684b61a1df89fd1f6e92e6a95029d9abf1a5aad8cf0864`  
		Last Modified: Wed, 14 Feb 2018 04:45:53 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c590c494a8eef87aa4497444ff6ca680c81c3f7672ebe45598ff509d43a01f5`  
		Last Modified: Wed, 14 Feb 2018 10:20:09 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701bef3b2d01e8c14e581962761a25ca788b9aef91ed3091b4cf60ea2730c47d`  
		Last Modified: Wed, 14 Feb 2018 10:20:10 GMT  
		Size: 4.6 MB (4627995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f903b54fe73a44c7c206be0cb411b4036a32ab32f52482fcd87a7f60699a85c5`  
		Last Modified: Wed, 14 Feb 2018 10:22:17 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834ac73a253c168b16a0f23fb0929edf576a0067f8546b1129ffc58f340a39c9`  
		Last Modified: Wed, 14 Feb 2018 10:22:17 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f061af8e697c25ed3fec678e6f568e4d3451f8462c2c655078b34d6d64c4aa9`  
		Last Modified: Wed, 14 Feb 2018 10:22:17 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6374f2179d349c39554a99c5a5e7b6753751efcddbe54d8bb11d731cacf480c0`  
		Last Modified: Wed, 14 Feb 2018 10:22:17 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5e44a72de8f6a6bbe0a40f33b1ac0d96af9e5aa70582a51a7258c8b00fbab5`  
		Last Modified: Wed, 14 Feb 2018 10:22:32 GMT  
		Size: 110.7 MB (110654823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
