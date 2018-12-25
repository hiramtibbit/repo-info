## `openjdk:12-ea-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:660cb1fa71cece7e4f957ee66ccfbf0f027dcfa333a1a50e7db405d26c7f77f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.469; amd64

### `openjdk:12-ea-windowsservercore-1803` - windows version 10.0.17134.469; amd64

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
