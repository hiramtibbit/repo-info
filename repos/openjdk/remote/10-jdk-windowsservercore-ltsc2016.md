## `openjdk:10-jdk-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:9b75d87c6dfbf357f36f47e047aeaed1aa6feae3a39304f74a286ca9ef4a1ab0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2312; amd64

### `openjdk:10-jdk-windowsservercore-ltsc2016` - windows version 10.0.14393.2312; amd64

```console
$ docker pull openjdk@sha256:245136d38783663b473ea75376420367e35d7866c1a5a6282a6925e73e14f44b
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5768695719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c94daff9ec1c0db6c99461bb63961e85549ea53c1fa78a0bbab98008e9384eec`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Wed, 13 Jun 2018 00:36:30 GMT
RUN Install update 10.0.14393.2312
# Tue, 03 Jul 2018 00:23:42 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Jul 2018 09:14:30 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Tue, 03 Jul 2018 09:15:45 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Tue, 03 Jul 2018 09:15:46 GMT
ENV JAVA_VERSION=10.0.1
# Tue, 03 Jul 2018 09:15:47 GMT
ENV JAVA_OJDKBUILD_VERSION=10.0.1-1
# Tue, 03 Jul 2018 09:15:48 GMT
ENV JAVA_OJDKBUILD_ZIP=java-10-openjdk-10.0.1-1.b10.ojdkbuild.windows.x86_64.zip
# Tue, 03 Jul 2018 09:15:49 GMT
ENV JAVA_OJDKBUILD_SHA256=64664f2e28db55022d90beefd097779c59f843cacf1afeed8a7456ee64c603f1
# Tue, 03 Jul 2018 09:18:29 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
# Tue, 03 Jul 2018 09:18:31 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8e9da9bbe3af2118a0b5eef7a3d649367557d0d3992ed0213c79857b23b4140e`  
		Last Modified: Wed, 13 Jun 2018 00:36:30 GMT  
		Size: 1.4 GB (1414319443 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:650685bf03844147638a02f1b62114e24cf12bf85feb92b6e2273d551a54c647`  
		Last Modified: Tue, 03 Jul 2018 01:20:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda82f18777611522f4232851abef0115c7a9eb7c71e50b2b18f3f10b3cf8d2a`  
		Last Modified: Tue, 03 Jul 2018 09:30:42 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fd46a9c20f9beb348b8c2715c727790738f004665575b88d726bd9d71ee122f`  
		Last Modified: Tue, 03 Jul 2018 09:30:42 GMT  
		Size: 5.0 MB (5014114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71efcefa195fd9c17758cce05e8762dd067ffde3dbd3a408cb4e252db3adf690`  
		Last Modified: Tue, 03 Jul 2018 09:30:41 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f221635126f273c3a93fbc66d9b7751dc8ad9af58d8356336bf6e4aaab16c5eb`  
		Last Modified: Tue, 03 Jul 2018 09:30:37 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203265a7550c2cb2fc9604abc2793f172910a9059cc8136983af58b6396b0387`  
		Last Modified: Tue, 03 Jul 2018 09:30:37 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3358d1af21b408c0661b7bd143112eca17945c4171a72fa751eaa6e55dd0288`  
		Last Modified: Tue, 03 Jul 2018 09:30:37 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1fa5457e815d8168ce2b06873416f8b5fc295f5762f226394f5fa606847a9b`  
		Last Modified: Tue, 03 Jul 2018 09:31:06 GMT  
		Size: 279.4 MB (279367853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea7f1ca5c897bec5194bb0813b8d9e599ee6aedf892ff149c7a2ff71c62793b`  
		Last Modified: Tue, 03 Jul 2018 09:30:36 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
