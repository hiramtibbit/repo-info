## `openjdk:8u201-jdk-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:b7ed5be97fb2d9e0a1dc27862ed225e02f29c9f7cdfa23fdeb6bcd0479cc4e65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64

### `openjdk:8u201-jdk-windowsservercore-ltsc2016` - windows version 10.0.14393.2906; amd64

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
