## `openjdk:8u201-jdk-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:e81491a970867a5e445e680366c8d3f348b8a40dc44761e88bbbd0e3d8fb062d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.648; amd64

### `openjdk:8u201-jdk-windowsservercore-1803` - windows version 10.0.17134.648; amd64

```console
$ docker pull openjdk@sha256:e3b4792c5a16b57d0da63604ec63a35665902d9dfc47afcbe4d3ad3d2478b2db
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2364247532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b6d29bc2df841d5d7d91c863229744354b0da933782c8a674826d0af0e2ac1c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 08 Mar 2019 23:20:01 GMT
RUN Install update 10.0.17134.648
# Sat, 16 Mar 2019 09:44:19 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 28 Mar 2019 10:55:54 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Thu, 28 Mar 2019 10:56:38 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 28 Mar 2019 10:56:39 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 10:56:41 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.201-1
# Thu, 28 Mar 2019 10:56:42 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.201-1.b09.ojdkbuild.windows.x86_64.zip
# Thu, 28 Mar 2019 10:56:44 GMT
ENV JAVA_OJDKBUILD_SHA256=d74066dc7d6e017388b1eeeb4f4cc0af20337aa6eea8e3a818017ae8d15b988a
# Thu, 28 Mar 2019 10:58:08 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:be86bca8de59067e592a8becc2e83ed2465a6d9bce324043e434aa4a15493b00`  
		Last Modified: Mon, 11 Mar 2019 21:17:02 GMT  
		Size: 593.3 MB (593288046 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:97db8a70a029fc0e25892873d5695bd2b9a1c93e4cd7dcd91fcddf338989a592`  
		Last Modified: Sat, 16 Mar 2019 10:43:05 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f76be53ebc4bebabc950d9c60a3797dfb28c314044624895cafcd94b18fcb9`  
		Last Modified: Thu, 28 Mar 2019 11:24:19 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e45b378dfb9f31b0552913a893ee05d9d814c2f7d8c72cb9eabfe636111b61`  
		Last Modified: Thu, 28 Mar 2019 11:24:20 GMT  
		Size: 4.7 MB (4726387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9135fb7b14af9a991b0a8b420afafc599ca8f30c36e0e04610118000e4685eb2`  
		Last Modified: Thu, 28 Mar 2019 11:24:16 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2fd8a5bf10689ef4b9837c63d2e999fd9f426819b50d81d9748e2c4b72ab28`  
		Last Modified: Thu, 28 Mar 2019 11:24:16 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63cd0da87d571f6716cabf460d7298993486694f6f777aa7ce8df27dfd4800c3`  
		Last Modified: Thu, 28 Mar 2019 11:24:16 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ebad463bca8fe411f543e4998505e0a5b7ec8d014d2fe6c270e01b088f3e342`  
		Last Modified: Thu, 28 Mar 2019 11:24:16 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f2cd3066684f09de637266d75e5c705db7de0d8275ba09d9c6f35efb59a97b`  
		Last Modified: Thu, 28 Mar 2019 11:24:35 GMT  
		Size: 106.5 MB (106537603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
