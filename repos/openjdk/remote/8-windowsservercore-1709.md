## `openjdk:8-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:4d0fe08f8406822c2d594b4249ce7636691e492e30b440fee30b6d07564ef527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.726; amd64

### `openjdk:8-windowsservercore-1709` - windows version 10.0.16299.726; amd64

```console
$ docker pull openjdk@sha256:5adfe56a06e109cd2d99990a0520ddeb52d41698ba0101b15c09e11422168823
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3256384545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6511ded4c31acf0a32278e2839b3b17717b5a3d31a2d0393a020decf49300f1b`
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
# Wed, 10 Oct 2018 10:59:11 GMT
ENV JAVA_VERSION=8u181
# Wed, 10 Oct 2018 10:59:13 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.181-1
# Wed, 10 Oct 2018 10:59:14 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.181-1.b13.ojdkbuild.windows.x86_64.zip
# Wed, 10 Oct 2018 10:59:15 GMT
ENV JAVA_OJDKBUILD_SHA256=dd7d2ea7951c06857523e95359e5e94630039a1eae5b5223e4b8c308afc95ebb
# Wed, 10 Oct 2018 11:00:52 GMT
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
	-	`sha256:bcc99a95fe3e42a5d09f9137d8e420ac588213bd6e2d0ea6b3f4b02d6dcfbcf3`  
		Last Modified: Wed, 10 Oct 2018 11:12:23 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1771350e479b79ec6d98da5a2e39df1861e02462cbf37c247a1f394a6bb23f`  
		Last Modified: Wed, 10 Oct 2018 11:12:24 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c423ecbd17b4541638231ae28b6d11d97808d48a8880effaee9f2200b6ae89cc`  
		Last Modified: Wed, 10 Oct 2018 11:12:23 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:279d28c43a2f17a0f4186a3f82895048759dcaf58a3f822730c6daf33baaefda`  
		Last Modified: Wed, 10 Oct 2018 11:12:23 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9bc05198bc04cb6e0f98946d81ce5dd66cc8781f73ed176a5d75bc7b5c2646`  
		Last Modified: Wed, 10 Oct 2018 11:12:42 GMT  
		Size: 110.9 MB (110854532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
