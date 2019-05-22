## `openjdk:8u212-jdk-windowsservercore-1809`

```console
$ docker pull openjdk@sha256:b1b21ca4d5cd119b33c1dd8ebe4d1c72b7370b0f37b91ca18b25750350778938
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.504; amd64

### `openjdk:8u212-jdk-windowsservercore-1809` - windows version 10.0.17763.504; amd64

```console
$ docker pull openjdk@sha256:ed8c6f0c516fa6aace22ae11ffa7603c830343551d6fca6987b6e77a16dde206
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2192708277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cbfdd85b8eb0b6aaad0fa2e93614dbe239f24d6c363cf7483afdc70c820937e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 18 May 2019 18:40:00 GMT
RUN Install update 1809-amd64
# Wed, 22 May 2019 12:57:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 22 May 2019 15:26:57 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 22 May 2019 15:57:46 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 22 May 2019 15:57:47 GMT
ENV JAVA_VERSION=8u212
# Wed, 22 May 2019 15:57:49 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.212-1
# Wed, 22 May 2019 15:57:51 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.212-1.b04.ojdkbuild.windows.x86_64.zip
# Wed, 22 May 2019 15:57:52 GMT
ENV JAVA_OJDKBUILD_SHA256=a40d7ab150bb2c2b3ad19e388942c4fe47b92a89dd49c468e09ce9d8bc631934
# Wed, 22 May 2019 15:59:14 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b16cfeeaf4b37af9fc146f7043ceb629c1bc50ace967227817e50e47f4a71529`  
		Last Modified: Sun, 19 May 2019 19:09:22 GMT  
		Size: 544.4 MB (544441311 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:51cd7ddd4054cb845626f99a0b0388fcfe1f6e9521bd4a1a8337620d6452ef34`  
		Last Modified: Wed, 22 May 2019 13:24:53 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34096e35386c97843ae93c69c76c5168246fb3aaad8f6c3808b1d24705d8261`  
		Last Modified: Wed, 22 May 2019 16:16:51 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8c5181844acee10bbb33e172b249a175c1ab05331330b9ebce85049e089575`  
		Last Modified: Wed, 22 May 2019 16:16:56 GMT  
		Size: 4.3 MB (4337845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1706baf03e64ae4c9c2ea04ad3a2cf653ab984212422eeaca06ad81cfb7dc7c`  
		Last Modified: Wed, 22 May 2019 16:16:49 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929846fe7b9d401ca8f218004edd2abcb5a22ced82832b191681180a89c9f3b2`  
		Last Modified: Wed, 22 May 2019 16:16:49 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94bfa50d694258fe0930a584f33be80bed49e24401712701348984890d0000c2`  
		Last Modified: Wed, 22 May 2019 16:16:49 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a94bb7b86aa01e5b2a16406987d0af5ae9b1c5e74835f6e4c0b98c051b0376`  
		Last Modified: Wed, 22 May 2019 16:16:49 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb4c7c6a6c9cb6c4cbb3b9eb160e1ea3bb80db7cbe4988cd6e7226da2c6d97e`  
		Last Modified: Wed, 22 May 2019 16:18:54 GMT  
		Size: 109.2 MB (109236535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
