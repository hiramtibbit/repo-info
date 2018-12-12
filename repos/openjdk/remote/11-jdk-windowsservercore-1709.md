## `openjdk:11-jdk-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:b6ce99057d616e7b7ae37d687ae4a287d57aa9a7af6965d80e5f3ca30b22b5e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.785; amd64

### `openjdk:11-jdk-windowsservercore-1709` - windows version 10.0.16299.785; amd64

```console
$ docker pull openjdk@sha256:21aad885565c0ebf1f65fb2b66adca4ef63d73a769c23c63c07c0c60e2e5a932
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3338150161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a307e0ed737c207561db437dd4c4172ee432a6f1940e2c4314899cf83a654df`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 31 Oct 2018 19:38:09 GMT
RUN Install update 10.0.16299.785
# Thu, 15 Nov 2018 10:48:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Nov 2018 10:33:06 GMT
ENV JAVA_HOME=C:\openjdk-11
# Wed, 21 Nov 2018 10:34:00 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 21 Nov 2018 10:34:02 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 21 Nov 2018 10:34:03 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk11/13/GPL/openjdk-11.0.1_windows-x64_bin.zip
# Wed, 21 Nov 2018 10:34:04 GMT
ENV JAVA_SHA256=289dd06e06c2cbd5e191f2d227c9338e88b6963fd0c75bceb9be48f0394ede21
# Wed, 21 Nov 2018 10:36:04 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 21 Nov 2018 10:36:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:78ada4d5eaa052e2d6ab049ee3371e7d2298a9e3e6dc6e10cf2aa4c0f8704abd`  
		Last Modified: Mon, 12 Nov 2018 20:34:53 GMT  
		Size: 871.6 MB (871606875 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9a5b772c67f53a1d58ffc0a436ed7381268334533ade21d234214327743331f0`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c74f62b0882ea8ba0e85773b1d2fa4873dff8d1e548b340e4cbf507c38d5c686`  
		Last Modified: Wed, 21 Nov 2018 10:59:16 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91435232d87bf513214b130088ef25849c4a9143bbbeba099664af906fe4fe66`  
		Last Modified: Wed, 21 Nov 2018 10:59:18 GMT  
		Size: 4.8 MB (4785734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5225d4e70c8541e304df05fab3694a9ca089648dbe0141f35e1a64fd490282b0`  
		Last Modified: Wed, 21 Nov 2018 10:59:13 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d842c6240006c44c4d05ac67a3192e6d3c0f305e77628ed09b798db195fdb3c`  
		Last Modified: Wed, 21 Nov 2018 10:59:13 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a375448c138fe784d139874b9bb20f4e92fc9dcbd7ee130800426dda948d9c8c`  
		Last Modified: Wed, 21 Nov 2018 10:59:13 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a03eb03f9341a05c61e9b40df5756737fe81fe771f8bc1d53f35f0070b51d5`  
		Last Modified: Wed, 21 Nov 2018 10:59:36 GMT  
		Size: 187.4 MB (187449809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f8316a6919682b97483a2dded5baad3a7756b6212dfb7e74bc97c54d832f683`  
		Last Modified: Wed, 21 Nov 2018 10:59:13 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
