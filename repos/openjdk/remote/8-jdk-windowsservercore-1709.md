## `openjdk:8-jdk-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:7c6e947075fe780934719e665b5ceb757cbbd88eeb2d85172d85cd523595e983
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.846; amd64

### `openjdk:8-jdk-windowsservercore-1709` - windows version 10.0.16299.846; amd64

```console
$ docker pull openjdk@sha256:306f5b8bc3a2cc3f56b455d4a22428d6277b0e7bc54853ab15b39e75d5dd6372
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3267963573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9fe62f69ee785b7bf024398bcd435c0c0cc621badb62fecb01846dd932d22b6`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 05 Dec 2018 22:40:26 GMT
RUN Install update 10.0.16299.846
# Fri, 14 Dec 2018 10:54:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 22 Dec 2018 10:42:14 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Sat, 22 Dec 2018 10:43:10 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Sat, 22 Dec 2018 10:43:11 GMT
ENV JAVA_VERSION=8u191
# Sat, 22 Dec 2018 10:43:12 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.191-1
# Sat, 22 Dec 2018 10:43:13 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.191-1.b12.ojdkbuild.windows.x86_64.zip
# Sat, 22 Dec 2018 10:43:14 GMT
ENV JAVA_OJDKBUILD_SHA256=d52167198912e239bba19e059870c5742558096ad7b82fe73d51461361b149bd
# Sat, 22 Dec 2018 10:44:55 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:10167262a01401a5b7cd880ca2abdb5a43d0cdb288b23e2bbda0cd16760064e7`  
		Last Modified: Tue, 11 Dec 2018 21:30:45 GMT  
		Size: 877.8 MB (877837008 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3f98cda35707ef2fc387c3a54b43843c3b83a0aca5dff2755b109b6395a01f1c`  
		Last Modified: Fri, 14 Dec 2018 11:45:45 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:112b31a9bd9d4fca30dcdcf0982fed5674c0a3d190df39324747b323cf345c48`  
		Last Modified: Sat, 22 Dec 2018 10:55:58 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003412c7d54d2637fd8d1ed62922233d75c9002b228338acb0c0546cc3f8f1cd`  
		Last Modified: Sat, 22 Dec 2018 10:56:00 GMT  
		Size: 4.8 MB (4790271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f7b4c153fbdf3712a35f5245aff2017b6f3509fe5e6af51c31e93627ca5834`  
		Last Modified: Sat, 22 Dec 2018 10:55:56 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:264caefbd55b7bcacc4cf3ef5949f8ac9c5d5027411440b31209f80692bf0356`  
		Last Modified: Sat, 22 Dec 2018 10:55:56 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a5a11a5123a534c60741300e39343ab2058600cb66098c3250f98a81aec7695`  
		Last Modified: Sat, 22 Dec 2018 10:55:56 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80820b59095f2b1968caae7b16b620694afbdb227f5c9259b5095a9d360e415`  
		Last Modified: Sat, 22 Dec 2018 10:55:56 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7803ae3a8331fd3e5ba1d856c16be2bff970e7e7b945252f1b642f7d7a9b7ff`  
		Last Modified: Sat, 22 Dec 2018 10:56:14 GMT  
		Size: 111.0 MB (111028539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
