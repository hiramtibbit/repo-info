## `openjdk:8u161-nanoserver`

```console
$ docker pull openjdk@sha256:083bdd81722d00215489aa11d3e892267ad10df68b5e9e5b646a9937d6aa5ac9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64

### `openjdk:8u161-nanoserver` - windows version 10.0.14393.2125; amd64

```console
$ docker pull openjdk@sha256:b93afe50dee4ba6558a4d8ab9cf04b2ec0c888606965ee3b934581f246db1323
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **516.4 MB (516364566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0bc4dee75e4175ad5395bc9fefc3693f2800b3b45dad2a29c2df87e5963e850`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Mar 2018 00:52:57 GMT
RUN Install update 10.0.14393.2125
# Wed, 14 Mar 2018 02:33:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Mar 2018 09:10:39 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 14 Mar 2018 09:11:39 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 14 Mar 2018 09:18:47 GMT
ENV JAVA_VERSION=8u161
# Wed, 14 Mar 2018 09:18:48 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.161-1
# Wed, 14 Mar 2018 09:18:49 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.161-1.b14.ojdkbuild.windows.x86_64.zip
# Wed, 14 Mar 2018 09:18:50 GMT
ENV JAVA_OJDKBUILD_SHA256=7fcd9909173ed19f4ae6c0bba8b32b1e6bece2d49eb9d87271828be8121fc31b
# Wed, 14 Mar 2018 09:20:01 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5b557cd80a9856d964887c4ea407b85fca10ce6aaa539984be9dd3570c60fd66`  
		Last Modified: Tue, 13 Mar 2018 00:52:57 GMT  
		Size: 156.0 MB (156003306 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8507e814effc58490d3a8051fc4843317f2e72683de995e8b9bd420fd387a5c5`  
		Last Modified: Wed, 14 Mar 2018 03:19:28 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337cab316dc2d16ffa65cc4049017c22e7c71473dedefbe3272b229326448cc5`  
		Last Modified: Wed, 14 Mar 2018 09:20:30 GMT  
		Size: 928.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57eebcabfa7d26ddc606d78d42b8e0365fcb68edc7a747c6fd77d1b0a5d63b6c`  
		Last Modified: Wed, 14 Mar 2018 09:20:30 GMT  
		Size: 859.6 KB (859621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6616ca4128055ef350e709e03d712ba9592f3904e54f9d8cbb06030cdd6e26e8`  
		Last Modified: Wed, 14 Mar 2018 09:21:14 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a618fa109134d9ac6f8c7c8b104742985a06ecdd0182863091d78264b181cccb`  
		Last Modified: Wed, 14 Mar 2018 09:21:14 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4319cf11f22313db75aee43394ce05fa7cf15bf47c863348091df13357d600`  
		Last Modified: Wed, 14 Mar 2018 09:21:14 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2e36ab4884855efc54c2ed11bf018232de55ae2ae6ed346760226caa1ab781`  
		Last Modified: Wed, 14 Mar 2018 09:21:14 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4e09ba1680ceb86fd0b607984b3b8da808418129c4d07238cbbb8ff0026688c`  
		Last Modified: Wed, 14 Mar 2018 09:21:32 GMT  
		Size: 106.8 MB (106804999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
