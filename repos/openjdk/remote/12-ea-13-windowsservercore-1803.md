## `openjdk:12-ea-13-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:a8f4bac2ff36e13bad5ac994db6c00813ad0ff97372cded93536f0d79be006f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.285; amd64

### `openjdk:12-ea-13-windowsservercore-1803` - windows version 10.0.17134.285; amd64

```console
$ docker pull openjdk@sha256:19f86b05794b9c382eb59b4734f7d0b414bcd05f6312de62b4f2a88f6aeff443
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2396507090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3acb7a29615d7f7a41922acc9525729c65bdedbd66580a49fbfe3bc4c8213be9`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Sun, 09 Sep 2018 17:20:44 GMT
RUN Install update 10.0.17134.285
# Thu, 13 Sep 2018 09:50:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 03 Oct 2018 10:33:49 GMT
ENV JAVA_HOME=C:\openjdk-12
# Wed, 03 Oct 2018 10:35:00 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 03 Oct 2018 10:35:01 GMT
ENV JAVA_VERSION=12-ea+13
# Wed, 03 Oct 2018 10:35:02 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/13/GPL/openjdk-12-ea+13_windows-x64_bin.zip
# Wed, 03 Oct 2018 10:35:03 GMT
ENV JAVA_SHA256=a74c96ad4913583a1c7b241fe8e4b5069f12b18c293e2a5926673e71b6a08925
# Wed, 03 Oct 2018 10:36:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 03 Oct 2018 10:37:01 GMT
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
	-	`sha256:152ac716e0e58a1536dce5c63493a24de08dc2bb165fd6ea2e074c4ad26e2354`  
		Last Modified: Wed, 03 Oct 2018 11:08:03 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd57c14e974a8b56595413ba657fc382e8b03cc02850e6ff4f8b65ec514a97fa`  
		Last Modified: Wed, 03 Oct 2018 11:08:04 GMT  
		Size: 4.7 MB (4669279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693b43c7d1fdb3d772aaa009f324044b58f336046e69a261e4cbe630b2ffd8a6`  
		Last Modified: Wed, 03 Oct 2018 11:07:59 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9afff353aa3688bc5a22294b94b8b22b8bdbf6dd18f7a06d38cdb703eafa597`  
		Last Modified: Wed, 03 Oct 2018 11:07:59 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fadd83a87691a4129a8b858bbc4169ba02146d8127e1d0cc6f7e7462c7e5854`  
		Last Modified: Wed, 03 Oct 2018 11:08:00 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c93243a41c0586114f33a94f7745808a7d790a7811a4e15827827d8041e268`  
		Last Modified: Wed, 03 Oct 2018 11:08:21 GMT  
		Size: 184.9 MB (184916577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19f5a9ccf54ad7afdc5a16bda66be17630236c71dd6e88e8b5c04e5ce25c83a`  
		Last Modified: Wed, 03 Oct 2018 11:07:59 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
