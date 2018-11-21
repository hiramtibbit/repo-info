## `openjdk:windowsservercore-1803`

```console
$ docker pull openjdk@sha256:e09e257ab0c239232d88396bb5670757b8560f17f11b1bf09d14b1c0b5db33e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.407; amd64

### `openjdk:windowsservercore-1803` - windows version 10.0.17134.407; amd64

```console
$ docker pull openjdk@sha256:0f78c938aea1ffdd4ba75773ad19a54b9c79eabc002f6180c03f0d79118c9958
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2427786058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:157498a005a4c6f09f6ebbf9a500f3e7ed406814a17f169b31870f06d8be491f`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 02 Nov 2018 19:42:23 GMT
RUN Install update 10.0.17134.407
# Thu, 15 Nov 2018 10:51:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Nov 2018 10:36:18 GMT
ENV JAVA_HOME=C:\openjdk-11
# Wed, 21 Nov 2018 10:37:10 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 21 Nov 2018 10:37:11 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 21 Nov 2018 10:37:12 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk11/13/GPL/openjdk-11.0.1_windows-x64_bin.zip
# Wed, 21 Nov 2018 10:37:13 GMT
ENV JAVA_SHA256=289dd06e06c2cbd5e191f2d227c9338e88b6963fd0c75bceb9be48f0394ede21
# Wed, 21 Nov 2018 10:39:08 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 21 Nov 2018 10:39:09 GMT
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
	-	`sha256:613bb48c6e7ac61bcd301f77400fde0243dcc5f2a35f52a77dd2c29f1ebac135`  
		Last Modified: Wed, 21 Nov 2018 11:00:17 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065c3df862745c34be53f531cfb4f9b8507f04a34ac58276bb69147c172c3322`  
		Last Modified: Wed, 21 Nov 2018 11:00:17 GMT  
		Size: 4.7 MB (4692874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1e3e4daa7b34b53b17feb16e9fa4f77fa2309d0bacb03eaec14d2e130a0572`  
		Last Modified: Wed, 21 Nov 2018 11:00:13 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba21a45545613219bb283c9ab993f530aac8ef631f1b7f3f535832dafd33d0e9`  
		Last Modified: Wed, 21 Nov 2018 11:00:14 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0f5b45f10524c8cd8f7d9f4072aa7620b178085bb1c17fc848c020bf8ab0a5`  
		Last Modified: Wed, 21 Nov 2018 11:00:18 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94186070c41e9863d2c8688ca74440ba2dbf20cd708885d40057f1e24871e47`  
		Last Modified: Wed, 21 Nov 2018 11:00:35 GMT  
		Size: 183.0 MB (183007121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc53cff5b5ce638b45f2b71b9362fb746a291d13fe31b660d080db173d937698`  
		Last Modified: Wed, 21 Nov 2018 11:00:13 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
