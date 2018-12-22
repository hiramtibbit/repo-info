## `openjdk:8u191-jdk-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:81e4601453cc96e79916fae855e86bc176f8315a608ba745d80e1cd7bc6cf09f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.469; amd64

### `openjdk:8u191-jdk-windowsservercore-1803` - windows version 10.0.17134.469; amd64

```console
$ docker pull openjdk@sha256:0f1cdcf94860b277ce45405203e0f4819ebd75b805a9bf14a3d9a7a251966575
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2354892032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7743970e4e4b4e792f4e2fbefc63b9798890066545eac57e6349f2135ab3ee3a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Thu, 06 Dec 2018 19:45:44 GMT
RUN Install update 10.0.17134.469
# Fri, 14 Dec 2018 11:04:06 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 22 Dec 2018 10:45:11 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Sat, 22 Dec 2018 10:46:03 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Sat, 22 Dec 2018 10:46:04 GMT
ENV JAVA_VERSION=8u191
# Sat, 22 Dec 2018 10:46:05 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.191-1
# Sat, 22 Dec 2018 10:46:07 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.191-1.b12.ojdkbuild.windows.x86_64.zip
# Sat, 22 Dec 2018 10:46:08 GMT
ENV JAVA_OJDKBUILD_SHA256=d52167198912e239bba19e059870c5742558096ad7b82fe73d51461361b149bd
# Sat, 22 Dec 2018 10:47:45 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
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
	-	`sha256:8b4b6fc57867bd595f143a036b6646613e7abc74c4e3c65f07d1c770f023d14c`  
		Last Modified: Fri, 14 Dec 2018 11:47:50 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4646afd8ff2a5cf9afffa80785057cabbaca8707c7428d090ee25f5fe938770`  
		Last Modified: Sat, 22 Dec 2018 10:56:41 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f49917fc7bf21bc386a43ea3c9b03620315801ff5d75ecd009f1a54ded574791`  
		Last Modified: Sat, 22 Dec 2018 10:56:41 GMT  
		Size: 4.7 MB (4702509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e72f1db1525da3d87a782f34a31b84c9c9fd893e8af3faced1acd46ac0d16ea`  
		Last Modified: Sat, 22 Dec 2018 10:56:38 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0492101c033287708b458bd36fb0f677571e10556bc084351c3fe8cf3b0f9ba`  
		Last Modified: Sat, 22 Dec 2018 10:56:38 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ea5967cc322510ebf1c3c9e341cba619e4393e0a75144fe06e8eb0024cf281`  
		Last Modified: Sat, 22 Dec 2018 10:56:38 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856899bba61de8d067c2053247c2638cd983ef46dd14a2aee99e6fad78dc1c18`  
		Last Modified: Sat, 22 Dec 2018 10:56:38 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fb96919cca5369215440e2a098d2128807967ce1cd8ef75b4a249890e3e847`  
		Last Modified: Sat, 22 Dec 2018 10:56:53 GMT  
		Size: 106.6 MB (106595285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
