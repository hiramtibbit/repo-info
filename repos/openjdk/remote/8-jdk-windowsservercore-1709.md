## `openjdk:8-jdk-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:5327bcba4c75e98ae80ad153be25d2cbd3ede19c260d243bc9d8d419a50fd2a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.1087; amd64

### `openjdk:8-jdk-windowsservercore-1709` - windows version 10.0.16299.1087; amd64

```console
$ docker pull openjdk@sha256:d4e40f7582369f093213645315c7aa844f2ce320dbbafd64c9472c392d4888ab
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3316708931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66e35342527d488ad443644d64f923b11dce6503ed016ba314c777539d9e3be2`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 1709-RTM-amd64
# Thu, 04 Apr 2019 00:21:24 GMT
RUN Install update 1709-amd64
# Thu, 11 Apr 2019 22:58:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 01:03:50 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 12 Apr 2019 01:04:40 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 12 Apr 2019 01:04:42 GMT
ENV JAVA_VERSION=8u201
# Fri, 12 Apr 2019 01:04:44 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.201-1
# Fri, 12 Apr 2019 01:04:46 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.201-1.b09.ojdkbuild.windows.x86_64.zip
# Fri, 12 Apr 2019 01:04:47 GMT
ENV JAVA_OJDKBUILD_SHA256=d74066dc7d6e017388b1eeeb4f4cc0af20337aa6eea8e3a818017ae8d15b988a
# Fri, 12 Apr 2019 01:06:29 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8c7d1531260f1f41cc711bfb3c8ab8efac981758fd7943518b863803f0b31552`  
		Last Modified: Tue, 09 Apr 2019 18:39:54 GMT  
		Size: 926.6 MB (926563180 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:59e24a9056c00889763abd79b000344468ace59ae58ae7d17acdfcbaadd1f6e8`  
		Last Modified: Fri, 12 Apr 2019 00:03:19 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1956b0d90026bba5e76aa416cb09f4a35293f62b3d6f97e3af22b65e10472d89`  
		Last Modified: Fri, 12 Apr 2019 01:58:11 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30900bed30218439bf2396d0b9ad993e57abb613d9bdf57bdbc6d0f71cfb2da1`  
		Last Modified: Fri, 12 Apr 2019 01:58:12 GMT  
		Size: 4.8 MB (4817859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3528237b8e99110cba03b466d8794d4c989a763bee6972225e29cc43a41d199`  
		Last Modified: Fri, 12 Apr 2019 01:58:08 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3a2852e5e106fe80afb7eb3c6c7af8f78c81913f4021ae7c84da0d218c7c38`  
		Last Modified: Fri, 12 Apr 2019 01:58:08 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e41c80056b83cb881b8d4ee27ce6ae5327387c120a1ed5298580b72320ef9b8`  
		Last Modified: Fri, 12 Apr 2019 01:58:08 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e63be2c6957035b75de6165dedd4d0848639baa8db795513fccfb447536924`  
		Last Modified: Fri, 12 Apr 2019 01:58:08 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2bba6a0e2ee5675007350f57d6fff28d2c29389ff55f121b30ed8d09cf0e9b9`  
		Last Modified: Fri, 12 Apr 2019 01:58:28 GMT  
		Size: 111.0 MB (111020093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
