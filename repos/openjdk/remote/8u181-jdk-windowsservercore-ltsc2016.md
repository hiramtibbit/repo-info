## `openjdk:8u181-jdk-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:ac789c33aeb46453cd6c1441a9f1adb6441751d3252ceace9fb3d4b00fb345db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `openjdk:8u181-jdk-windowsservercore-ltsc2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull openjdk@sha256:6581a4a68f4d79d2ace11d8653fafcd49d1b241376ef52a5a7cd21150b2d599d
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5713355903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e1f3331cb77ad7cd039a464921ff0fe7667c022ceb3f7f00f5673c3602bc634`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:03:17 GMT
RUN Install update 10.0.14393.2551
# Wed, 10 Oct 2018 09:36:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 10 Oct 2018 10:45:07 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 10 Oct 2018 10:46:28 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 10 Oct 2018 10:56:59 GMT
ENV JAVA_VERSION=8u181
# Wed, 10 Oct 2018 10:57:00 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.181-1
# Wed, 10 Oct 2018 10:57:01 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.181-1.b13.ojdkbuild.windows.x86_64.zip
# Wed, 10 Oct 2018 10:57:02 GMT
ENV JAVA_OJDKBUILD_SHA256=dd7d2ea7951c06857523e95359e5e94630039a1eae5b5223e4b8c308afc95ebb
# Wed, 10 Oct 2018 10:59:05 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c0f6863f3dd498ab56cdd308637630f888fe646de403284f2c5392ba885bdd8e`  
		Last Modified: Tue, 09 Oct 2018 18:03:17 GMT  
		Size: 1.5 GB (1527125035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d41004b1d809eac4e77c97920984b278977d36627024ab085d0dd8ccc941ddeb`  
		Last Modified: Wed, 10 Oct 2018 10:08:02 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1915dd474f299f58e6e85bc8ac7f335e9f18b175a4829b4dd8db604fe56e79ff`  
		Last Modified: Wed, 10 Oct 2018 11:07:57 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532c03209e5c7a33b2f0e4463bd8b639cef417b5baf13c83b9ab5ebd34ce693d`  
		Last Modified: Wed, 10 Oct 2018 11:07:59 GMT  
		Size: 5.1 MB (5092274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:818fffa4c4fa046596c71ebf3e2e4588ac2363bfedaf5a9a619df9d8f3141774`  
		Last Modified: Wed, 10 Oct 2018 11:11:46 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404403877480f8e71d27ab20b44b80f635c77b47620004a99eaf94c094c41146`  
		Last Modified: Wed, 10 Oct 2018 11:11:46 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aa1390d472750df78050daef7df0f0bd4db647f755c903598e04dbc43d1846d`  
		Last Modified: Wed, 10 Oct 2018 11:11:46 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d7e57f4ba8617d4001c5f42d4d3f61c4f4399984e4fb93532e0bb57cfd0bdb8`  
		Last Modified: Wed, 10 Oct 2018 11:11:47 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83afb282732dd1ff9c770c6f0819035475cab38f1fa38a2081c7ffa7ecd504c7`  
		Last Modified: Wed, 10 Oct 2018 11:12:03 GMT  
		Size: 111.1 MB (111145513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
