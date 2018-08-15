## `openjdk:8u181-jdk-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:62836c5dab092fe949db971fc345de343199781fe55df71d608fa3aaeeb332d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `openjdk:8u181-jdk-windowsservercore-ltsc2016` - windows version 10.0.14393.2430; amd64

```console
$ docker pull openjdk@sha256:cb7e45a02a80f811818aeda902e595874e2a15034a706048c0734311b34fa351
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5628046882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40ac195c1a6e5eeec6f3b312f46cb009821e4869c93ceff6cbc580186e80884a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:52:23 GMT
RUN Install update 10.0.14393.2430
# Wed, 15 Aug 2018 09:35:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Aug 2018 09:35:26 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 15 Aug 2018 09:36:54 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 15 Aug 2018 09:47:33 GMT
ENV JAVA_VERSION=8u181
# Wed, 15 Aug 2018 09:47:34 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.181-1
# Wed, 15 Aug 2018 09:47:35 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.181-1.b13.ojdkbuild.windows.x86_64.zip
# Wed, 15 Aug 2018 09:47:36 GMT
ENV JAVA_OJDKBUILD_SHA256=dd7d2ea7951c06857523e95359e5e94630039a1eae5b5223e4b8c308afc95ebb
# Wed, 15 Aug 2018 09:49:26 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6631c2d2a60cd7ee5b334c2725b03e4d4976abb9a19c8e8dc9b806b3752745a6`  
		Last Modified: Mon, 13 Aug 2018 17:52:23 GMT  
		Size: 1.4 GB (1441905067 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3e7b18583f4b1d198a1b0f222de8583f8565481a4b667be0863f398eaad783dd`  
		Last Modified: Wed, 15 Aug 2018 09:53:36 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:632569d0e1b6c0d5f488562966eab0f7d44dd4a7f9c9e8a7fd5d66e83f4bbe38`  
		Last Modified: Wed, 15 Aug 2018 09:53:36 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705d990e7e9b57b711e408125de44634546968a9895b27efbd576c19b4dc2116`  
		Last Modified: Wed, 15 Aug 2018 09:53:37 GMT  
		Size: 5.0 MB (5046433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0651cf59de1136350b66c431eab2c1908a7172ef2144e947c529a165d066d1f8`  
		Last Modified: Wed, 15 Aug 2018 09:56:51 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5be869c2571e552d2e76abf7e9556848574c59633dbbdb91fad6a5ded6436e6`  
		Last Modified: Wed, 15 Aug 2018 09:56:51 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51bed9c6b3cd12e835d2cc13f6bee817daac9f1126ad2b7b0f1d643c7b6fb2b3`  
		Last Modified: Wed, 15 Aug 2018 09:56:51 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15dce9e99e6adf6f23aefd1d92d130bf70a1dfd303f476358354780e2d46d79`  
		Last Modified: Wed, 15 Aug 2018 09:56:51 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9af572ce16159d33ab158b17a26a893d64a6cb12677e4445e56ec154f44e281`  
		Last Modified: Wed, 15 Aug 2018 09:57:06 GMT  
		Size: 111.1 MB (111102310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
