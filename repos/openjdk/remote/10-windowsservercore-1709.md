## `openjdk:10-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:0d717226662ae3c6b067ae31582e30a1fc7e0e4ce5374cecb7089ce2f9a69c3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.492; amd64

### `openjdk:10-windowsservercore-1709` - windows version 10.0.16299.492; amd64

```console
$ docker pull openjdk@sha256:b90c46f32dcd84050aa02cb9de537a618db64ee24d441e02ac69d9cee1efc268
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3381706723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ede97be89fc9585d6c71718e4e15c01bd1e8cea1b7d0fceadfff2260d7bf2575`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 11 Jun 2018 20:38:48 GMT
RUN Install update 10.0.16299.492
# Tue, 03 Jul 2018 00:32:42 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Jul 2018 09:18:43 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Tue, 03 Jul 2018 09:19:30 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Tue, 03 Jul 2018 09:19:31 GMT
ENV JAVA_VERSION=10.0.1
# Tue, 03 Jul 2018 09:19:32 GMT
ENV JAVA_OJDKBUILD_VERSION=10.0.1-1
# Tue, 03 Jul 2018 09:19:33 GMT
ENV JAVA_OJDKBUILD_ZIP=java-10-openjdk-10.0.1-1.b10.ojdkbuild.windows.x86_64.zip
# Tue, 03 Jul 2018 09:19:34 GMT
ENV JAVA_OJDKBUILD_SHA256=64664f2e28db55022d90beefd097779c59f843cacf1afeed8a7456ee64c603f1
# Tue, 03 Jul 2018 09:21:54 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
# Tue, 03 Jul 2018 09:21:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3b9c63e313c8b374d5767c602fd6f2b947a3f1df9a8f8c5fcecb2fa6b1cfa968`  
		Last Modified: Wed, 13 Jun 2018 01:11:53 GMT  
		Size: 823.6 MB (823576248 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3989f186f0fc841be4fd06c5f4d58afe814bf92ffa0940def6b8d21ea38c223f`  
		Last Modified: Tue, 03 Jul 2018 01:22:20 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3497208bdf029c586457a2ca6691e10db79caf487c9d2cf6ac23a637d9133f29`  
		Last Modified: Tue, 03 Jul 2018 09:31:58 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d59a8d8553bbafb7c0835f9cee765d77bc45c41bab5f3fd7d6397052f5d7a009`  
		Last Modified: Tue, 03 Jul 2018 09:31:59 GMT  
		Size: 4.7 MB (4723927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d04afe0d657aaea338aaf588b757a663b070d75a336e25c72a96b61b6873fb`  
		Last Modified: Tue, 03 Jul 2018 09:31:57 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0c5da9916fab88b558dbde54956d9a1315e04cc678eba3191d4fe8f5daa617`  
		Last Modified: Tue, 03 Jul 2018 09:31:55 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5019836fc6e82a01a88fe50d78c21e3579600e8423280b67ae4b846dd2e31b1c`  
		Last Modified: Tue, 03 Jul 2018 09:31:55 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86258d52553ea6d470ee891ad39b628e3a9be314136e77251ff71c787c66c21d`  
		Last Modified: Tue, 03 Jul 2018 09:31:55 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddc4fcecdfb968c71841ee347700b59fd2457af6ee7c85ef8c1e21a176e0f955`  
		Last Modified: Tue, 03 Jul 2018 09:32:29 GMT  
		Size: 279.1 MB (279097621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a40967d3a34a682bdf98f8f7ff35437301049b7059b2f79c6d817fcc74e676b`  
		Last Modified: Tue, 03 Jul 2018 09:31:56 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
