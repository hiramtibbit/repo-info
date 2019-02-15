## `openjdk:8-windowsservercore-1809`

```console
$ docker pull openjdk@sha256:0fbfefc1e730a6f07ec1b214e6224cf594676e9a0cec3eb51e73a07fc6e29986
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.316; amd64

### `openjdk:8-windowsservercore-1809` - windows version 10.0.17763.316; amd64

```console
$ docker pull openjdk@sha256:3aeb498ecccfecf7ee7bdfe9084ec19bb46a0e972d9708ad29836719f642fb8d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 GB (2016127063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b1ce38573eac46aca0f8036c593e8655b89107f3f5dce22b84fce86559acebe`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Fri, 08 Feb 2019 00:24:24 GMT
RUN Install update 1809-amd64
# Wed, 13 Feb 2019 11:45:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 15 Feb 2019 11:39:01 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 15 Feb 2019 11:39:40 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 15 Feb 2019 11:39:41 GMT
ENV JAVA_VERSION=8u201
# Fri, 15 Feb 2019 11:39:43 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.201-1
# Fri, 15 Feb 2019 11:39:44 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.201-1.b09.ojdkbuild.windows.x86_64.zip
# Fri, 15 Feb 2019 11:39:46 GMT
ENV JAVA_OJDKBUILD_SHA256=d74066dc7d6e017388b1eeeb4f4cc0af20337aa6eea8e3a818017ae8d15b988a
# Fri, 15 Feb 2019 11:41:00 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9e2f2b17be7207dce6730ad64c630dc10b5b3f61a74545c7c1628d605e381297`  
		Last Modified: Tue, 12 Feb 2019 20:42:21 GMT  
		Size: 370.7 MB (370687536 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cd3ade6fc2a72f217b4055dbb0d08b2a25d881d592aeba426cc097b18d9795f7`  
		Last Modified: Wed, 13 Feb 2019 12:52:13 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039bedc214aea74cdc872db7496bd039b380266e04c487005448ce207021f125`  
		Last Modified: Fri, 15 Feb 2019 12:19:02 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09666761923e89cdd503f850da9cf488dd24e12b9bf11f567d0f764115e50b05`  
		Last Modified: Fri, 15 Feb 2019 12:19:03 GMT  
		Size: 4.2 MB (4204229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1684d7f5b898b3b27d79e9ab1f1cf44505b00b71151161576b808ddb395faa17`  
		Last Modified: Fri, 15 Feb 2019 12:18:59 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46dcb5ca81d0f78d669d93ae2471bdff97c12498f633caff802073e8b75ba60e`  
		Last Modified: Fri, 15 Feb 2019 12:18:59 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c52a28ba67f32425b17685a4ed149c42ff86d58808b0a3c570f3a18d29a0b44c`  
		Last Modified: Fri, 15 Feb 2019 12:18:59 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f0a328516d1bec9fc05fc7b43c9bf2d6ef9ad3a8cd441b37fd794274e35330`  
		Last Modified: Fri, 15 Feb 2019 12:18:59 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f8979b7851c2443724d35266541bfb6c19a30ea76eeda8060f371885b9e69a`  
		Last Modified: Fri, 15 Feb 2019 12:19:19 GMT  
		Size: 106.5 MB (106542733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
