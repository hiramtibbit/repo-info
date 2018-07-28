## `openjdk:8-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:e601de2be017e95b6aed223efb178d3f29e7cf6e4aef9a443a0a28d793b2eff7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2363; amd64

### `openjdk:8-windowsservercore-ltsc2016` - windows version 10.0.14393.2363; amd64

```console
$ docker pull openjdk@sha256:833b2c5d53ba0031b46fb69cf33c69c0f79f86d81aa5fce3fbf0034c32a7988c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5605483663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15a074d9c0f7c40cfcfa25e23b6aecb1766c7360ccee3f8ff51461bc82fc284d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 10 Jul 2018 21:16:33 GMT
RUN Install update 10.0.14393.2363
# Wed, 11 Jul 2018 09:36:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Jul 2018 09:36:35 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 11 Jul 2018 09:37:59 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Sat, 28 Jul 2018 09:42:49 GMT
ENV JAVA_VERSION=8u181
# Sat, 28 Jul 2018 09:42:50 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.181-1
# Sat, 28 Jul 2018 09:42:51 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.181-1.b13.ojdkbuild.windows.x86_64.zip
# Sat, 28 Jul 2018 09:42:52 GMT
ENV JAVA_OJDKBUILD_SHA256=dd7d2ea7951c06857523e95359e5e94630039a1eae5b5223e4b8c308afc95ebb
# Sat, 28 Jul 2018 09:45:08 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fb1ebf2c42b6ac63b874d36a405b413fdf6c314131c3605d77e3cee6f485881f`  
		Last Modified: Tue, 10 Jul 2018 21:16:33 GMT  
		Size: 1.4 GB (1419298293 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b678e902d6e9a27ab4d61bef7b26997ea26fdec2575d1317c9eab3b31c61fd9b`  
		Last Modified: Wed, 11 Jul 2018 09:53:57 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df0b7da96ba2f6f9998af410e0e83095c74f65e14e44e196fa7ca34b34b20e7`  
		Last Modified: Wed, 11 Jul 2018 09:53:56 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43557e5ace1974f8b220d16ea7c7a0b225327d94c023252ebc95b6847a042201`  
		Last Modified: Wed, 11 Jul 2018 09:53:58 GMT  
		Size: 5.0 MB (5041524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1734acbfb4bbe9e791e09c7bb206bc27af653223e6faad55e6b93b6b529d13a`  
		Last Modified: Sat, 28 Jul 2018 09:53:05 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30475b570d1db022102ada6f198dd98236febc4311cc27546de9414e70096446`  
		Last Modified: Sat, 28 Jul 2018 09:53:05 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12985828211b32babce11f09a05d946a9c5fe9c4fb402c98017b2e44e8f9ad97`  
		Last Modified: Sat, 28 Jul 2018 09:53:05 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ce669c8148e1aeb6c1e12b3796cd923d9abb046be9c99644c67c8e3ea66014`  
		Last Modified: Sat, 28 Jul 2018 09:53:05 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d1dc77bf05eab867c15d3479161cc8c65c62aff0f755867d5c82e0446ce8ccb`  
		Last Modified: Sat, 28 Jul 2018 09:53:23 GMT  
		Size: 111.2 MB (111150765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
