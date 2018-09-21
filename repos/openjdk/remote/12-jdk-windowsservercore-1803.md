## `openjdk:12-jdk-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:3c75d897d6d1a4eef53b23288791f43a51bf4d89af83ce6d48cd804c9ab2450c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.285; amd64

### `openjdk:12-jdk-windowsservercore-1803` - windows version 10.0.17134.285; amd64

```console
$ docker pull openjdk@sha256:e862b73effeb487b74165464fdb9781e1ded67e64db9284261c07668f0cccfcf
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2394359092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73d9d2ce3a8440f1acc14f9666df570bd34b4975b48974c28ddcba969def0add`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Sun, 09 Sep 2018 17:20:44 GMT
RUN Install update 10.0.17134.285
# Thu, 13 Sep 2018 09:50:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 13 Sep 2018 09:50:55 GMT
ENV JAVA_HOME=C:\jdk-12
# Thu, 13 Sep 2018 09:52:07 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 21 Sep 2018 09:22:35 GMT
ENV JAVA_VERSION=12-ea+11
# Fri, 21 Sep 2018 09:22:36 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/11/GPL/openjdk-12-ea+11_windows-x64_bin.zip
# Fri, 21 Sep 2018 09:22:37 GMT
ENV JAVA_SHA256=1065039397db6f47d45893bf20ecaf301404736b710e0ddd60f49b6480488dfd
# Fri, 21 Sep 2018 09:24:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive openjdk.zip -DestinationPath C:\; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 21 Sep 2018 09:24:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f036448990c273bb1accf8d436799639bbb644326ae47f30fe4faed21c8d8d9`  
		Last Modified: Tue, 11 Sep 2018 17:11:59 GMT  
		Size: 547.2 MB (547225773 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:499c5d8410bcb30d8e576aa1248844529b2af7aff7307a4b79f366790c87756f`  
		Last Modified: Thu, 13 Sep 2018 10:26:08 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a707f51d0c866dc051de3d98f35b0059daf96c55f64e7813dcacc2ef54a4474d`  
		Last Modified: Thu, 13 Sep 2018 10:26:08 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f3fe0d22db23f29670f1ef789a4799b1ebac94bc42ff79abfab3449ac0c92c`  
		Last Modified: Thu, 13 Sep 2018 10:26:09 GMT  
		Size: 4.7 MB (4653887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3738485aaceb888ac946e66435c9dc345f01f1f6a494357a16cf7abde4cdffe6`  
		Last Modified: Fri, 21 Sep 2018 09:35:55 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d585e47c4f58f127bd01dd986f7a9106300f53e71537d179549f0a8fd2e7702d`  
		Last Modified: Fri, 21 Sep 2018 09:35:55 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d0f7f90573713d09e0398386ee99c441678e071a3d79efe0e03987851ed6d38`  
		Last Modified: Fri, 21 Sep 2018 09:35:55 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d141749154f1cbd9d05119e88aec3cc174d8f04b3c40c36db44032b88b5b2110`  
		Last Modified: Fri, 21 Sep 2018 09:36:17 GMT  
		Size: 182.8 MB (182783978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34cac0930e1d03460dd55c55046dc6c14be8d23701ef400677cb023ad16c6618`  
		Last Modified: Fri, 21 Sep 2018 09:35:55 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
