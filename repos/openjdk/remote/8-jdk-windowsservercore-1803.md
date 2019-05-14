## `openjdk:8-jdk-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:8b3e6124a6fc7480094fca32c8813dbc754b47dedc3b55928b809e538772e918
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.706; amd64

### `openjdk:8-jdk-windowsservercore-1803` - windows version 10.0.17134.706; amd64

```console
$ docker pull openjdk@sha256:bc4de9916790e553b1b12f3e7e86326c73b8add67d4f6596524db4079e806062
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2370332578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfde24d386508232a9b37e2de35e1dedfcaf4df5cb6a3ef1aed8ac1e4b2a39f1`
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
# Thu, 25 Apr 2019 09:46:53 GMT
ENV JAVA_VERSION=8u212
# Thu, 25 Apr 2019 09:46:54 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.212-1
# Thu, 25 Apr 2019 09:46:56 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.212-1.b04.ojdkbuild.windows.x86_64.zip
# Thu, 25 Apr 2019 09:46:57 GMT
ENV JAVA_OJDKBUILD_SHA256=a40d7ab150bb2c2b3ad19e388942c4fe47b92a89dd49c468e09ce9d8bc631934
# Thu, 25 Apr 2019 09:48:23 GMT
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
	-	`sha256:cdce8c9aaf3c54740b23507874721317c125246f3bb439ca699ce2302c30e5c5`  
		Last Modified: Thu, 25 Apr 2019 09:52:23 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd29d6326cede425b6bc021505df7522d6b4388589fec93455bce41bce2525c`  
		Last Modified: Thu, 25 Apr 2019 09:52:23 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7bb0ef6c8b37aa62f77f15fcac10ccb559548bdc0ab108fab73d42763d443e`  
		Last Modified: Thu, 25 Apr 2019 09:52:23 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1242b30f7e90a2a758ff843130cacd74961a712673c7f07f30658f5b411a32c4`  
		Last Modified: Thu, 25 Apr 2019 09:52:23 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79e8a9d7bf9e4a9e24be2c130b5cfee26689c2c22c4f4b93080eeab3bc40341`  
		Last Modified: Thu, 25 Apr 2019 09:52:41 GMT  
		Size: 109.3 MB (109251981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
