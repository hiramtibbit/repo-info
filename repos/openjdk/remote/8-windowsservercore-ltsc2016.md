## `openjdk:8-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:10bb7ccce619b3864a9d3ca57733b054bd550f7092e6deee75487e2b10af3ec2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2248; amd64

### `openjdk:8-windowsservercore-ltsc2016` - windows version 10.0.14393.2248; amd64

```console
$ docker pull openjdk@sha256:0a3be18db2d26c5be75a3c40af56c8556fb00c6cc870554a08bd3b6994dda463
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5581486394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:644b90ca1b7cec4c93078f9830a9316d29cb8f24b48e2542b6212693072e0b4b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 May 2018 18:12:28 GMT
RUN Install update 10.0.14393.2248
# Thu, 10 May 2018 09:39:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 10 May 2018 09:39:26 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Thu, 10 May 2018 09:41:25 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 10 May 2018 09:58:42 GMT
ENV JAVA_VERSION=8u171
# Thu, 10 May 2018 09:58:43 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.171-1
# Thu, 10 May 2018 09:58:44 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.171-1.b10.ojdkbuild.windows.x86_64.zip
# Thu, 10 May 2018 09:58:45 GMT
ENV JAVA_OJDKBUILD_SHA256=35104f658ed51d1b24cf6f0f6d1d21524d7640d3e3e7b64d8d7ac86cbfbc2ab9
# Thu, 10 May 2018 10:13:44 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ace98111594c5bc232640988045037489d2adc214b3a14e07a8a9e9d30442cef`  
		Last Modified: Mon, 07 May 2018 18:12:28 GMT  
		Size: 1.4 GB (1395367096 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3fef3bd83b7c0eb06ccae001ea0bfed47b7258d9a1c5d593913034b18f7fd8c0`  
		Last Modified: Thu, 10 May 2018 10:17:55 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ea1b42a6f17fabe336f5dd07d2975c7ad8c1dec5c0609d653246b0753edb093`  
		Last Modified: Thu, 10 May 2018 10:17:54 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43d8b60d530872261d4de737352f6486980b268438d9160f0d231470af3fe21`  
		Last Modified: Thu, 10 May 2018 10:17:57 GMT  
		Size: 5.0 MB (5012784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b3ff1554d2a6895092dc060ecbd21173b57baa6b885aab9dec3edcc033102c`  
		Last Modified: Thu, 10 May 2018 10:20:18 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6d3488504eb07c1d7806e3abd8e9428134bd6e1e9cd130856d26a08f76308e`  
		Last Modified: Thu, 10 May 2018 10:20:18 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7a047684eb2f7008ec2f8e092b51adcb76c13f68e8cc711a586e36a3dff0eb`  
		Last Modified: Thu, 10 May 2018 10:20:17 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf45797aa65632003e8c868aad62ca49bf3a33543d7bbda0a80fa7d39d33e389`  
		Last Modified: Thu, 10 May 2018 10:20:17 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5313d4cc35f24e628bc0c0990d8c14cf00074779e6f60376206dd95b31fd500`  
		Last Modified: Thu, 10 May 2018 10:20:37 GMT  
		Size: 111.1 MB (111113447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
