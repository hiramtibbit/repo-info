## `openjdk:10-jdk-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:f24c6f44f85fa2be50e9d2bd436660f1d8980b7f1a5c1f90db6180793eb65aa7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.431; amd64

### `openjdk:10-jdk-windowsservercore-1709` - windows version 10.0.16299.431; amd64

```console
$ docker pull openjdk@sha256:588f4b95455992f87d8f004a07f16d8572a157767f498e7783734643c3d79d08
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3364003125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7afc5a97f78ec432dba88c8761c7d57423e50bee4caae3a25fd12fb3d8cb99d9`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 05 May 2018 14:37:10 GMT
RUN Install update 10.0.16299.431
# Thu, 10 May 2018 09:50:49 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 10 May 2018 09:50:50 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Thu, 10 May 2018 09:52:58 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 07 Jun 2018 00:28:35 GMT
ENV JAVA_VERSION=10.0.1
# Thu, 07 Jun 2018 00:28:36 GMT
ENV JAVA_OJDKBUILD_VERSION=10.0.1-1
# Thu, 07 Jun 2018 00:28:36 GMT
ENV JAVA_OJDKBUILD_ZIP=java-10-openjdk-10.0.1-1.b10.ojdkbuild.windows.x86_64.zip
# Thu, 07 Jun 2018 00:28:37 GMT
ENV JAVA_OJDKBUILD_SHA256=64664f2e28db55022d90beefd097779c59f843cacf1afeed8a7456ee64c603f1
# Thu, 07 Jun 2018 00:32:24 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
# Thu, 07 Jun 2018 00:32:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:af675e5054a0dfb3eb70b140f566a5dbe612b5212e4a4ef2a2991308740d1006`  
		Last Modified: Tue, 08 May 2018 18:45:22 GMT  
		Size: 805.9 MB (805944217 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0d3f2c48ca5c41c53fe84071bb55725c2d6c36c8840dcef5297cc048ffe39aa`  
		Last Modified: Thu, 10 May 2018 10:18:48 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62e9c01be03a1120c348f0e7575a185718d993157e18f1cd567a0616ca9ec36`  
		Last Modified: Thu, 10 May 2018 10:18:48 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf5e6b78e3b7022fd36bb2dc984270564614676f7378361f700fab4b9f2b78c`  
		Last Modified: Thu, 10 May 2018 10:18:50 GMT  
		Size: 4.7 MB (4670151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddcca956d57eee5e2b573bb51874f390d266331086969f3250e3acdd6d33cef6`  
		Last Modified: Thu, 07 Jun 2018 00:37:15 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdd8d118d2678cf4916c02c0a1a22797d711334fedebf96b970cc4618742e22`  
		Last Modified: Thu, 07 Jun 2018 00:37:13 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bcec2f63af8be9bfae87249e9330a2fe7dd1c2ae9adbf26e3e525665650e04c`  
		Last Modified: Thu, 07 Jun 2018 00:37:13 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d571b00eeb305506b02f815e7c3569670d8cfdfbccf13fe25a52cd00bbafb7`  
		Last Modified: Thu, 07 Jun 2018 00:37:12 GMT  
		Size: 1.2 KB (1179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a01fae43efe07d4d8f02403595c465ebc25e156320aa913add097a7e79f070`  
		Last Modified: Thu, 07 Jun 2018 00:37:47 GMT  
		Size: 279.1 MB (279079832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21662d1e308405253583345357e007c83800acfdfea53c6c8738ed89035e770e`  
		Last Modified: Thu, 07 Jun 2018 00:37:13 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
