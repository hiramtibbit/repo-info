## `openjdk:8-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:8a0adfe2afc0754bd11bc7736d109ff7a0b01f8da421f147f3fe2329c973b750
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.523; amd64

### `openjdk:8-windowsservercore-1803` - windows version 10.0.17134.523; amd64

```console
$ docker pull openjdk@sha256:86d861991ce79ee8bb5f167ee82280b0552d2df15f3e5b305b4f799d5aca32a8
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2356932894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d28f441c29fef1f04c966aeee4e015ef9dfc5d935c1aed52ac3fe87170d9e93b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 04 Jan 2019 22:40:00 GMT
RUN Install update 10.0.17134.523
# Fri, 11 Jan 2019 10:49:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 11 Jan 2019 11:24:43 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 11 Jan 2019 11:25:30 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Sat, 26 Jan 2019 11:14:02 GMT
ENV JAVA_VERSION=8u201
# Sat, 26 Jan 2019 11:14:04 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.201-1
# Sat, 26 Jan 2019 11:14:05 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.201-1.b09.ojdkbuild.windows.x86_64.zip
# Sat, 26 Jan 2019 11:14:06 GMT
ENV JAVA_OJDKBUILD_SHA256=d74066dc7d6e017388b1eeeb4f4cc0af20337aa6eea8e3a818017ae8d15b988a
# Sat, 26 Jan 2019 11:15:27 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:80c309c8f9e2a929c92fe88fafde882006a56d421e9cb306b5a55baefe52c4b6`  
		Last Modified: Tue, 08 Jan 2019 01:38:21 GMT  
		Size: 586.0 MB (585998859 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bfc3888f034fb7d00898fffa324da3e9ccfb30f42ed800fe45bb58da849af364`  
		Last Modified: Fri, 11 Jan 2019 11:31:41 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f40afb6f83974ecb870826b1c484f5742308e550adb5d6c57fb5f9594cef06f`  
		Last Modified: Fri, 11 Jan 2019 11:49:24 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e4ae02f0db967b3fa5d729c2e0b246c8d7bee2ae483a17bb87b12e9db3beb6`  
		Last Modified: Fri, 11 Jan 2019 11:49:26 GMT  
		Size: 4.7 MB (4678787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e48ae761374716b1d762847dd702b3e2c61d4fd36c37af86c3b851ddd1eb254`  
		Last Modified: Sat, 26 Jan 2019 11:44:29 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aed46405e9ae2ce6feefdde08a7f3c82f3e75732762a71e1cbd86874586b4279`  
		Last Modified: Sat, 26 Jan 2019 11:44:29 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e09e28dea9245b4cc80a5e17fafbd93016d4718cc9c4ee7ec3bab478edd8b8ec`  
		Last Modified: Sat, 26 Jan 2019 11:44:29 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac9824cb2fbefa961f2a145b07b0c95b1ceaef4d2582fe5ae06acce52d66ada0`  
		Last Modified: Sat, 26 Jan 2019 11:44:29 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c21059774263bd6ddb21d054551352a8a41eb2b40fd0f3c47e018004be359faf`  
		Last Modified: Sat, 26 Jan 2019 11:44:54 GMT  
		Size: 106.6 MB (106559760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
