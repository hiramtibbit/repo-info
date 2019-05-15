## `openjdk:8u212-jdk-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:3d8d9c3da102f3ea305fe735cf9a652753544500ef5dca5e8d4e522b9f018ae2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.765; amd64

### `openjdk:8u212-jdk-windowsservercore-1803` - windows version 10.0.17134.765; amd64

```console
$ docker pull openjdk@sha256:fc1f5a74500535524690cf81ad74ecd69fa4e0a9b5b8fd131ee48b4cbfcee612
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2416289118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08a9b894897ed2b65c52b1554f264a0ae8565c264512b86b0697ebaf195b9aee`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 12:45:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 May 2019 14:31:36 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 15 May 2019 14:32:16 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 15 May 2019 14:32:17 GMT
ENV JAVA_VERSION=8u212
# Wed, 15 May 2019 14:32:19 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.212-1
# Wed, 15 May 2019 14:32:20 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.212-1.b04.ojdkbuild.windows.x86_64.zip
# Wed, 15 May 2019 14:32:22 GMT
ENV JAVA_OJDKBUILD_SHA256=a40d7ab150bb2c2b3ad19e388942c4fe47b92a89dd49c468e09ce9d8bc631934
# Wed, 15 May 2019 14:33:43 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:58d321368bbf68a108d3298dd40a5ce2d47e3b2d59969e159f05e4fac7b4c259`  
		Last Modified: Wed, 15 May 2019 13:06:15 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cca3cfa9ed10193a105a30e6710a479f032188ab2430386fb62d2b14bbd4376`  
		Last Modified: Wed, 15 May 2019 14:40:55 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2e6d1e2a6968e0b984db790be49b401625ae767d072710786cf5f99812eaac`  
		Last Modified: Wed, 15 May 2019 14:40:57 GMT  
		Size: 4.8 MB (4770975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f9c33f82334576e19a3d62aaaf68b1a9836548ab4fa32174341cf90f6ec4aa7`  
		Last Modified: Wed, 15 May 2019 14:40:52 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6301b56e29a36110ce6ea63d792b579da5da78d98067746dfdc9e1d7745a50f`  
		Last Modified: Wed, 15 May 2019 14:40:53 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b8fffab290ba0a8a6dd3050642a94a4467a2619ae7db8d9b69608f18fb00f57`  
		Last Modified: Wed, 15 May 2019 14:40:53 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43795b1333dce4ad76504d8a1b3710aaffa100e320b7552871d201d0f761993b`  
		Last Modified: Wed, 15 May 2019 14:40:53 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d45e3b17d780ff201051eb78ffcfa1935b724ccd61960b40962ed156435eb3f`  
		Last Modified: Wed, 15 May 2019 14:43:04 GMT  
		Size: 109.3 MB (109260803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
