## `openjdk:8-jre-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:bc48145a10819253643a78abb6465d43748562a85b1c9f471499e13230507a76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.829; amd64

### `openjdk:8-jre-windowsservercore-1803` - windows version 10.0.17134.829; amd64

```console
$ docker pull openjdk@sha256:cef5e33e8bfb619a5fc54e1293d3bc2cdffb416d07508e660d77e3c3cc685252
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2363926065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4b9c88bfcfb44d7d25f48a1401d35c279d32cbfefc69584c1dda13b8522fc83`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 17:13:11 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 12:50:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 15:26:33 GMT
ENV JAVA_HOME=C:\openjdk-8
# Wed, 12 Jun 2019 15:27:13 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 12 Jun 2019 15:27:15 GMT
ENV JAVA_VERSION=8u212-b04
# Wed, 12 Jun 2019 15:33:37 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Wed, 12 Jun 2019 15:33:39 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 12 Jun 2019 15:34:36 GMT
RUN $url = ('{0}x64_windows_{1}.zip' -f $env:JAVA_BASE_URL, $env:JAVA_URL_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'openjdk.zip'; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 		Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2de32ee3b543cb2d1e3b6dd5d2578256c4bde975bc92e959325ff83ae8ed617b`  
		Last Modified: Tue, 11 Jun 2019 18:21:27 GMT  
		Size: 648.5 MB (648518427 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:206778a210152eae038ff9a90449b1070a39e0fb0f5ae857ae539e996315adec`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb0e0b1739abc7d17a6f2a4cf781c5f0570dc2a86191e838d44c89626afec2c`  
		Last Modified: Wed, 12 Jun 2019 15:55:51 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a35df43f03de3cf8121680a409beb18a64171da9eff80a3c1d5b7809638b82`  
		Last Modified: Wed, 12 Jun 2019 15:55:51 GMT  
		Size: 4.8 MB (4768434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e991d6e978bcae44319f9bba8afad529ddec88e9adc56e3454cc51889bc78fc9`  
		Last Modified: Wed, 12 Jun 2019 15:55:49 GMT  
		Size: 1.2 KB (1177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4125520cc64852b775720ceec8f33a0b73872a4e7eaf2998f3351749ecce00f`  
		Last Modified: Wed, 12 Jun 2019 15:59:05 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0483ec4b938336009ed7ba5f766b3a1137b3aa7fbc73ffd65afd77fbabfec523`  
		Last Modified: Wed, 12 Jun 2019 15:59:05 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c0e6300c0322c6f0e8817124dbf2238a78f18843dd0a45e07006ba596f56f5`  
		Last Modified: Wed, 12 Jun 2019 15:59:20 GMT  
		Size: 50.9 MB (50945057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
