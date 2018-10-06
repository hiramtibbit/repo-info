## `openjdk:12-ea-jdk-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:8557dde5ea3bf32b514d8e7e694ce82e86439b393f50424ac0597edcb354cb46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.285; amd64

### `openjdk:12-ea-jdk-windowsservercore-1803` - windows version 10.0.17134.285; amd64

```console
$ docker pull openjdk@sha256:e9cf3b85fffbcd1c63b453be569874d0c05a63cd763690073fbc960f58d27b14
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2396444838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a708ba551842eb61d232dd80f76a0193561882e53d1f4fd0fe0b9162f94d3551`
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
# Sat, 06 Oct 2018 09:22:20 GMT
ENV JAVA_VERSION=12-ea+14
# Sat, 06 Oct 2018 09:22:21 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/14/GPL/openjdk-12-ea+14_windows-x64_bin.zip
# Sat, 06 Oct 2018 09:22:22 GMT
ENV JAVA_SHA256=43ac13c36e6d868c55e4e5bfefa2e9ae1fa7fb4006fde49ac8b2a3e1b9ca8279
# Sat, 06 Oct 2018 09:24:31 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 06 Oct 2018 09:24:32 GMT
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
	-	`sha256:3d9bbad521661e0343117871f2e4134439947900e4c03789857fae3d5804d4d3`  
		Last Modified: Sat, 06 Oct 2018 09:27:28 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7c2b359103812deba6ec2ae6a829b4f8239dc50751c9b40acaa44c42d6dc15`  
		Last Modified: Sat, 06 Oct 2018 09:27:27 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9621302d7be0890654a6d091091060bef018b7179d32255f944407e65b091996`  
		Last Modified: Sat, 06 Oct 2018 09:27:28 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4806e782a15d51387cffda4ebaee37bc5a1b3516a7087c989a12df3edd063d50`  
		Last Modified: Sat, 06 Oct 2018 09:27:49 GMT  
		Size: 184.9 MB (184854328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2a974188ea776aedbc7c5f174e15978267124288f1167a4c4f71a057f2e8e64`  
		Last Modified: Sat, 06 Oct 2018 09:27:27 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
