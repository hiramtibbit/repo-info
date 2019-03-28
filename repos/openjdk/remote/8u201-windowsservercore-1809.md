## `openjdk:8u201-windowsservercore-1809`

```console
$ docker pull openjdk@sha256:666088991b1fe202f3f797890136e3697a73db3c693971bbfe8d3b512cf85cf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.379; amd64

### `openjdk:8u201-windowsservercore-1809` - windows version 10.0.17763.379; amd64

```console
$ docker pull openjdk@sha256:375c6fd884fb3c4de8a260dd3b8a47c96a92c449eef4d9421e3e5894277987d3
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2266271536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76dcc9df55fa546c001b12131797197ce93ac3b213b3839f8791eb371025adb1`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 09 Mar 2019 03:10:13 GMT
RUN Install update 1809-amd64
# Sat, 16 Mar 2019 09:52:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 28 Mar 2019 10:58:22 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Thu, 28 Mar 2019 10:59:02 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 28 Mar 2019 10:59:03 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 10:59:05 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.201-1
# Thu, 28 Mar 2019 10:59:06 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.201-1.b09.ojdkbuild.windows.x86_64.zip
# Thu, 28 Mar 2019 10:59:08 GMT
ENV JAVA_OJDKBUILD_SHA256=d74066dc7d6e017388b1eeeb4f4cc0af20337aa6eea8e3a818017ae8d15b988a
# Thu, 28 Mar 2019 11:00:25 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d48f500354393ec6614f6435639636db175e3ac6c3d1a3d1857b609789de7a7d`  
		Last Modified: Tue, 12 Mar 2019 22:36:05 GMT  
		Size: 620.8 MB (620755432 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5e195200ec7c843146b67b39b26ec25466f3b96bce8db32ff3a809a25fdece80`  
		Last Modified: Sat, 16 Mar 2019 10:45:02 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62cf3ba961e1684a1e7982c0367343b51c97d6cda3f893b50d3b47aeb87b0282`  
		Last Modified: Thu, 28 Mar 2019 11:24:57 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794af30231ba3b1696e813513477a706f9031f5603275a8bdfc42d9171962215`  
		Last Modified: Thu, 28 Mar 2019 11:24:58 GMT  
		Size: 4.3 MB (4282069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b57af01112d41ec31af49b5b66678cb5953ad5a8850e6a98f8f9c1eeae68202`  
		Last Modified: Thu, 28 Mar 2019 11:24:55 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a016fb9e5d0c4a0d01dcf964ba949fef0b23133a91787cd0dca448abc101d4ce`  
		Last Modified: Thu, 28 Mar 2019 11:24:54 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:533948b0fec5d9cd068a7b4daa84d636fdb86f1d4b4c04d8414628792ef4c510`  
		Last Modified: Thu, 28 Mar 2019 11:24:54 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cdd6420b7185f55e414a643a1fa59eef3543a98b2b92850a0e06a8ccfdfa49b`  
		Last Modified: Thu, 28 Mar 2019 11:24:54 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119fd2e4367cdc4cd28540d7b257265747fe6bc9e38b27db0f32fda33c76da44`  
		Last Modified: Thu, 28 Mar 2019 11:25:34 GMT  
		Size: 106.5 MB (106541451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
