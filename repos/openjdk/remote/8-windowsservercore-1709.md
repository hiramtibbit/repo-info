## `openjdk:8-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:1ff6438f6c003f7ff5526d70392090f2b52493311174332b52a918e893341134
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.726; amd64

### `openjdk:8-windowsservercore-1709` - windows version 10.0.16299.726; amd64

```console
$ docker pull openjdk@sha256:bbc30d21368d87853fca6ac07b18a4eb6173c49d4d003ccd5acb9c10d0ae8a66
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3256544317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bbd571ccf9a08d63b9243f9c05c4453f9f38a10de3d60ca995a478640b256cd`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 01 Oct 2018 22:02:14 GMT
RUN Install update 10.0.16299.726
# Wed, 10 Oct 2018 09:42:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 10 Oct 2018 10:49:39 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 10 Oct 2018 10:50:31 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 25 Oct 2018 09:20:19 GMT
ENV JAVA_VERSION=8u191
# Thu, 25 Oct 2018 09:20:20 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.191-1
# Thu, 25 Oct 2018 09:20:21 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.191-1.b12.ojdkbuild.windows.x86_64.zip
# Thu, 25 Oct 2018 09:20:22 GMT
ENV JAVA_OJDKBUILD_SHA256=d52167198912e239bba19e059870c5742558096ad7b82fe73d51461361b149bd
# Thu, 25 Oct 2018 09:22:30 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ddd7a4737dfbb59b49c30480146e7f0a61842409755bd479b63004c5643d0ed3`  
		Last Modified: Mon, 08 Oct 2018 19:38:11 GMT  
		Size: 866.5 MB (866458210 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cf0d3e1d36b0cda001b50a29a3b2898c0f456696a4491b2d5536e4af41eed468`  
		Last Modified: Wed, 10 Oct 2018 10:08:52 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7eb69155bffa6c6ea7d5d73736f5093986d2e4efb5f06bf4e030e2a73590d0a`  
		Last Modified: Wed, 10 Oct 2018 11:09:10 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0dfeb0f2cd55b37afbf9a810a43b0e3396615d298262a6ccd191e4ae2c2ab7`  
		Last Modified: Wed, 10 Oct 2018 11:09:14 GMT  
		Size: 4.8 MB (4764047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70254928f303d86949266103a251531b5dd1ebdfca81c0222378f88358087c8b`  
		Last Modified: Thu, 25 Oct 2018 09:27:38 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80cb0b246574b14dd729409bba8d8face9bef6bebec72487d85c9322c0cac4a`  
		Last Modified: Thu, 25 Oct 2018 09:27:38 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8552e3fae2bf08ae59e2ff39fa94bf9f1eb3044c134ede20395195bbbfe1c0b4`  
		Last Modified: Thu, 25 Oct 2018 09:27:38 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0fa4c76b23fb8afd2d2712618802c97b5ddb184b99f1cb48db8bf6bda92ac5e`  
		Last Modified: Thu, 25 Oct 2018 09:27:38 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241ea210db3d610b0037064a6728b1c128af06c9a99bc427195213e577d945ff`  
		Last Modified: Thu, 25 Oct 2018 09:27:56 GMT  
		Size: 111.0 MB (111014303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
