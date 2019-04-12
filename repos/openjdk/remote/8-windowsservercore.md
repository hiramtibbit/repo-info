## `openjdk:8-windowsservercore`

```console
$ docker pull openjdk@sha256:6f57fb97267757c6faa6c619a11cd2c41fa46fa4c78cb0b3d57cacc3210305d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.16299.1087; amd64
	-	windows version 10.0.17134.706; amd64
	-	windows version 10.0.17763.437; amd64

### `openjdk:8-windowsservercore` - windows version 10.0.14393.2906; amd64

```console
$ docker pull openjdk@sha256:d9ae9d1514784b29c855f121aa0b14a340c28966d9563bf37486ee1e1d4edd5c
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5759040153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c3cd474e799181b86c31270a526bf565ad513b32200818e1b1026a78e67fc8e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Thu, 11 Apr 2019 22:52:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 01:00:20 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 12 Apr 2019 01:01:19 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 12 Apr 2019 01:01:21 GMT
ENV JAVA_VERSION=8u201
# Fri, 12 Apr 2019 01:01:22 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.201-1
# Fri, 12 Apr 2019 01:01:24 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.201-1.b09.ojdkbuild.windows.x86_64.zip
# Fri, 12 Apr 2019 01:01:25 GMT
ENV JAVA_OJDKBUILD_SHA256=d74066dc7d6e017388b1eeeb4f4cc0af20337aa6eea8e3a818017ae8d15b988a
# Fri, 12 Apr 2019 01:03:35 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:531bdf2c301d16276bdb1ccfcc2625181323e9c6b9fb43b5d98aa89b4fa55fa3`  
		Last Modified: Fri, 12 Apr 2019 00:02:35 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8199042532c2951363ae1436b39e9a775abe385a986adafbc360c090aff5f0ad`  
		Last Modified: Fri, 12 Apr 2019 01:57:14 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c50b78933457acd5424fb4d28c2fccfd763fed15d278d13d9a2676e34f9eebd`  
		Last Modified: Fri, 12 Apr 2019 01:57:16 GMT  
		Size: 5.2 MB (5220971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f726aa602349fbb76b245e6788f2ab14d30cdc6bfa85700e89706cfa687e0d4e`  
		Last Modified: Fri, 12 Apr 2019 01:57:12 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5c0462a2b44c3bc1c19d9e40b1bfa9dd29a514ead645ba767bc37d2cb5ece7`  
		Last Modified: Fri, 12 Apr 2019 01:57:12 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:785cdfc8c67fe11865c73e60f6ae0449dd21bbca13a1dfc42a1964ecfcdcd9f9`  
		Last Modified: Fri, 12 Apr 2019 01:57:12 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abc27480c677f7bbee11853563b25c21e819578e443336f3be39560546c58377`  
		Last Modified: Fri, 12 Apr 2019 01:57:12 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bba173fa48cc34ae4df8d3fe207621afa010018ff6cf13fb7cd5f32df33f1ab`  
		Last Modified: Fri, 12 Apr 2019 01:57:46 GMT  
		Size: 111.4 MB (111442229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-windowsservercore` - windows version 10.0.16299.1087; amd64

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

### `openjdk:8-windowsservercore` - windows version 10.0.17134.706; amd64

```console
$ docker pull openjdk@sha256:f2438e0d7a21db6400073c360e7b4d0b336e4b20a585a78dd153c34d1647027d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2367617789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d380ee106abcb0a2851aac2d0293eff9a1911167085f2f5907e3bb691f1ab32`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Thu, 11 Apr 2019 23:03:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 01:06:47 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 12 Apr 2019 01:07:33 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 12 Apr 2019 01:07:35 GMT
ENV JAVA_VERSION=8u201
# Fri, 12 Apr 2019 01:07:36 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.201-1
# Fri, 12 Apr 2019 01:07:38 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.201-1.b09.ojdkbuild.windows.x86_64.zip
# Fri, 12 Apr 2019 01:07:39 GMT
ENV JAVA_OJDKBUILD_SHA256=d74066dc7d6e017388b1eeeb4f4cc0af20337aa6eea8e3a818017ae8d15b988a
# Fri, 12 Apr 2019 01:09:02 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:37b6568b4a1267078fda687a318c987c4cb5a7d81edad72ed156b23333c61042`  
		Last Modified: Fri, 12 Apr 2019 00:04:01 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b3e022d3eee9ea9319623cf271fffcbd633bc68c16d6cecf0ffa5398f22c81`  
		Last Modified: Fri, 12 Apr 2019 01:58:52 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157c42d342911c5549cc12dc17ec7c8c077bcb7849fbe27ba37ce15c973e8ec9`  
		Last Modified: Fri, 12 Apr 2019 01:58:53 GMT  
		Size: 4.7 MB (4722755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4e98221afc6511ff7ab75941bdb960e4d96b379b9a82c0c43f6548b40fc859`  
		Last Modified: Fri, 12 Apr 2019 01:58:49 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac73d32133851d8c016b27d2c30c924a7a91d58282e729a712539906c4aae7a`  
		Last Modified: Fri, 12 Apr 2019 01:58:49 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4647a43d3925c1555e177ec516f5f845c088fefbf9416eb4f84aa7c295129f6`  
		Last Modified: Fri, 12 Apr 2019 01:58:49 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a006612b87aeb7a1dd4621bd3764333aed737e7a3e43ad71b56500da804cec`  
		Last Modified: Fri, 12 Apr 2019 01:58:49 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85b197a8a5ecc2e06efd911101d497cfd75e0d3d5dc2123e3d5bf9d20c287f7`  
		Last Modified: Fri, 12 Apr 2019 01:59:08 GMT  
		Size: 106.5 MB (106537182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-windowsservercore` - windows version 10.0.17763.437; amd64

```console
$ docker pull openjdk@sha256:50cc97b09d3c9facee4491de1a31afd48c4e6c35e7d76cddbf2aa38d34339be9
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2084755069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03398bf4d375d5538320e674cc2a54f92439c233810dc5d707c54c93a820c80e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Wed, 03 Apr 2019 20:53:33 GMT
RUN Install update 1809-amd64
# Thu, 11 Apr 2019 23:07:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 01:09:15 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 12 Apr 2019 01:40:07 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 12 Apr 2019 01:40:08 GMT
ENV JAVA_VERSION=8u201
# Fri, 12 Apr 2019 01:40:10 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.201-1
# Fri, 12 Apr 2019 01:40:11 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.201-1.b09.ojdkbuild.windows.x86_64.zip
# Fri, 12 Apr 2019 01:40:13 GMT
ENV JAVA_OJDKBUILD_SHA256=d74066dc7d6e017388b1eeeb4f4cc0af20337aa6eea8e3a818017ae8d15b988a
# Fri, 12 Apr 2019 01:41:32 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e787b79aad1a2bfd8fbef887083298fcd314650de9e7ca884cdf0897e874b63`  
		Last Modified: Tue, 09 Apr 2019 17:43:46 GMT  
		Size: 439.2 MB (439177903 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:77e3f6e069cdb88fdad1008b3dd2aa59bea5669bcd1b93c79f07b6f6dc9662de`  
		Last Modified: Fri, 12 Apr 2019 00:04:43 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d5b2dd28acb9f0bc26b10ba7e668caeae093e3cdb6deaa9214993be0c2044a1`  
		Last Modified: Fri, 12 Apr 2019 01:59:32 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199f619aea7e26cdeea9a70a82964cfee407b41ba9f77e721dbe6a8b2ae9c0ef`  
		Last Modified: Fri, 12 Apr 2019 01:59:33 GMT  
		Size: 4.3 MB (4340593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3719fb8609063610754d183ff0c79007ac1cb47b0bda28de2a7bdb794d78bbf`  
		Last Modified: Fri, 12 Apr 2019 01:59:29 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017aa12bf15033a12bc1e3e2ae3eb34c6fe4d68961f1ff84ab8e10daad778478`  
		Last Modified: Fri, 12 Apr 2019 01:59:29 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661110c35ef0075bba0a642d1d33dddc27761add856e0519e78cd7b5a2496402`  
		Last Modified: Fri, 12 Apr 2019 01:59:29 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef0ec0f35eeb915401cb4b149bd305d9905b4d5e28260a202ef813fea2357a9b`  
		Last Modified: Fri, 12 Apr 2019 01:59:29 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9785efdde72f4fe7c7ee166f1e6174ed9cc63b8a97a4f7621494f55a4c7389ca`  
		Last Modified: Fri, 12 Apr 2019 01:59:50 GMT  
		Size: 106.5 MB (106543984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
