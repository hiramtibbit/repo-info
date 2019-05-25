## `openjdk:8u212-b04-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:7f8a51c76560d6956b126736cb9b0dbdf4bb3ac5bfc62fc184bddff71e48b7f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64

### `openjdk:8u212-b04-windowsservercore-ltsc2016` - windows version 10.0.14393.2972; amd64

```console
$ docker pull openjdk@sha256:eb4ea8f0c78036c92a3dde78c55817ae0105c9971ee2b6361bd3d20b12974355
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5810254459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aec634b7d41ce03a398677305bf66bcf069f51ef2b41b8da47861cad09acd659`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 12:40:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 24 May 2019 23:39:14 GMT
ENV JAVA_HOME=C:\openjdk-8
# Fri, 24 May 2019 23:40:14 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 24 May 2019 23:40:16 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 23:40:17 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-
# Fri, 24 May 2019 23:40:19 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 23:42:27 GMT
RUN $url = ('{0}x64_windows_{1}.zip' -f $env:JAVA_BASE_URL, $env:JAVA_URL_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'openjdk.zip'; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac -version'; javac -version; 	Write-Host '  java -version'; java -version; 		Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:238abb146382d28000f03a82c40be99cbfac99a1480f9d23f8a6420cafc6b083`  
		Last Modified: Wed, 22 May 2019 13:21:05 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08d0bdf137e4b7081a701ed21bdbd344bd0d1c7c1d03d7d55d3c3c90e09ec58`  
		Last Modified: Fri, 24 May 2019 23:59:00 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5b9a097f80f3a884497bf19bc5f568f78785b22bbf0cc8b77d70c262f22d33`  
		Last Modified: Fri, 24 May 2019 23:58:59 GMT  
		Size: 5.2 MB (5215876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f04883f4346190798457740647b3c39b5e5bb0419dcfc1cf885330643158ef`  
		Last Modified: Fri, 24 May 2019 23:58:57 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12221ebabebe6c7b7a6cb2897663aa723e7d0187be9778d20fb35ca84d1c38e9`  
		Last Modified: Fri, 24 May 2019 23:58:57 GMT  
		Size: 1.1 KB (1147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a053138c26f94b1a876c39b67ee4254783355196f9936cf49e4e3d69e1b125b8`  
		Last Modified: Fri, 24 May 2019 23:58:57 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b29da59769425c88cacd76cf11e3e2a17eb043946f53ea87f9b16facf8d83c0`  
		Last Modified: Fri, 24 May 2019 23:59:23 GMT  
		Size: 105.2 MB (105244546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
