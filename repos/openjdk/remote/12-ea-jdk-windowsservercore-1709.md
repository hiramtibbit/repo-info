## `openjdk:12-ea-jdk-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:6dad7000cce6a4f3daddce46ec99c4e38c88c739d0a77cf9ff376582370d194a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.846; amd64

### `openjdk:12-ea-jdk-windowsservercore-1709` - windows version 10.0.16299.846; amd64

```console
$ docker pull openjdk@sha256:1f5addc0c15dc9e99fb655644388a101145f399a491cc29ef7761f82e625ddc6
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3353255130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59f3cb9a9fd6d88aeff3f9979d4e2b47dcd2c9725cd0ef546c3c78e8b2d32254`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 05 Dec 2018 22:40:26 GMT
RUN Install update 10.0.16299.846
# Tue, 25 Dec 2018 17:23:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 25 Dec 2018 18:13:49 GMT
ENV JAVA_HOME=C:\openjdk-12
# Tue, 25 Dec 2018 18:15:14 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 26 Dec 2018 11:06:43 GMT
ENV JAVA_VERSION=12-ea+25
# Wed, 26 Dec 2018 11:06:45 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/25/GPL/openjdk-12-ea+25_windows-x64_bin.zip
# Wed, 26 Dec 2018 11:06:46 GMT
ENV JAVA_SHA256=a3c94a495ea402b6c752c5757dcd902ec497720d52f59cee756975615a0661c3
# Wed, 26 Dec 2018 11:09:27 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 26 Dec 2018 11:09:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:10167262a01401a5b7cd880ca2abdb5a43d0cdb288b23e2bbda0cd16760064e7`  
		Last Modified: Tue, 11 Dec 2018 21:30:45 GMT  
		Size: 877.8 MB (877837008 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:7c1b47cffe80520ef16d931d598cdadd371f9cb1e4ca9304d9c7532bb19c9721`  
		Last Modified: Tue, 25 Dec 2018 17:52:11 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b92ea34c8947496c4ba4f71419f23e2f42855cf3a17134b17c6c1e9cfa4fac77`  
		Last Modified: Tue, 25 Dec 2018 18:49:21 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b23f96865d3acacf763109c78e252c9808fa0252025af27639c5ef024ea3c`  
		Last Modified: Tue, 25 Dec 2018 18:49:23 GMT  
		Size: 4.8 MB (4787993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2a1c11c17bd8ee10dc9bdf56398f4d2224bd28802f2f175f2b46256bca2bfa`  
		Last Modified: Wed, 26 Dec 2018 11:13:48 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee626b498467ef03b85f1f2fe0181389b0bc71632d8bd95a8136b581e956e0ce`  
		Last Modified: Wed, 26 Dec 2018 11:13:47 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f425847e8ee84c5e515f4e2eaa1767d4a3cb834fa75fc33964cb1f77fba356b`  
		Last Modified: Wed, 26 Dec 2018 11:13:48 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51953a479525839864fbc658ce8f31df47fad405f19ea5985986362693a700b4`  
		Last Modified: Wed, 26 Dec 2018 11:15:10 GMT  
		Size: 196.3 MB (196322329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5391290abfe912d5f366419a57d1a1da40895cdccd9f59c592d08f3fd70fd6c`  
		Last Modified: Wed, 26 Dec 2018 11:13:47 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
