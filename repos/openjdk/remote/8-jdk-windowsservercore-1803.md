## `openjdk:8-jdk-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:85419d9f47522bc7b17c3fc7bda57c4f97e17247a499b982276f0c2aed3d6d03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.706; amd64

### `openjdk:8-jdk-windowsservercore-1803` - windows version 10.0.17134.706; amd64

```console
$ docker pull openjdk@sha256:f2438e0d7a21db6400073c360e7b4d0b336e4b20a585a78dd153c34d1647027d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2367617789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d380ee106abcb0a2851aac2d0293eff9a1911167085f2f5907e3bb691f1ab32`
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
# Fri, 12 Apr 2019 01:07:35 GMT
ENV JAVA_VERSION=8u201
# Fri, 12 Apr 2019 01:07:36 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.201-1
# Fri, 12 Apr 2019 01:07:38 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.201-1.b09.ojdkbuild.windows.x86_64.zip
# Fri, 12 Apr 2019 01:07:39 GMT
ENV JAVA_OJDKBUILD_SHA256=d74066dc7d6e017388b1eeeb4f4cc0af20337aa6eea8e3a818017ae8d15b988a
# Fri, 12 Apr 2019 01:09:02 GMT
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
	-	`sha256:ea4e98221afc6511ff7ab75941bdb960e4d96b379b9a82c0c43f6548b40fc859`  
		Last Modified: Fri, 12 Apr 2019 01:58:49 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac73d32133851d8c016b27d2c30c924a7a91d58282e729a712539906c4aae7a`  
		Last Modified: Fri, 12 Apr 2019 01:58:49 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4647a43d3925c1555e177ec516f5f845c088fefbf9416eb4f84aa7c295129f6`  
		Last Modified: Fri, 12 Apr 2019 01:58:49 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a006612b87aeb7a1dd4621bd3764333aed737e7a3e43ad71b56500da804cec`  
		Last Modified: Fri, 12 Apr 2019 01:58:49 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85b197a8a5ecc2e06efd911101d497cfd75e0d3d5dc2123e3d5bf9d20c287f7`  
		Last Modified: Fri, 12 Apr 2019 01:59:08 GMT  
		Size: 106.5 MB (106537182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
