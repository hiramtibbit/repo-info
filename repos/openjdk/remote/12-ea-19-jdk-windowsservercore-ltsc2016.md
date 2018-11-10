## `openjdk:12-ea-19-jdk-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:0c3393003f5ef7bcd228e5dc19d1a8d7de7fbba130ce41cdbc10a946ce93c729
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `openjdk:12-ea-19-jdk-windowsservercore-ltsc2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull openjdk@sha256:7f8935ad919e5d27b7efa9302ab84f1f5d97fa2485f598668bd53cf321557a5f
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5802093392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df4ca2c82db7ae19e3b122692b5962fd54922d607e68fc5c6702767bd5cc11e5`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:03:17 GMT
RUN Install update 10.0.14393.2551
# Wed, 10 Oct 2018 09:36:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 10 Oct 2018 10:21:03 GMT
ENV JAVA_HOME=C:\openjdk-12
# Wed, 10 Oct 2018 10:22:53 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Sat, 10 Nov 2018 11:33:02 GMT
ENV JAVA_VERSION=12-ea+19
# Sat, 10 Nov 2018 11:33:03 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/19/GPL/openjdk-12-ea+19_windows-x64_bin.zip
# Sat, 10 Nov 2018 11:33:04 GMT
ENV JAVA_SHA256=6053dd7893539141545a82fdf0b948dd1723bed6c1011ec3fdeaac35423f6b29
# Sat, 10 Nov 2018 11:36:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 10 Nov 2018 11:36:30 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c0f6863f3dd498ab56cdd308637630f888fe646de403284f2c5392ba885bdd8e`  
		Last Modified: Tue, 09 Oct 2018 18:03:17 GMT  
		Size: 1.5 GB (1527125035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d41004b1d809eac4e77c97920984b278977d36627024ab085d0dd8ccc941ddeb`  
		Last Modified: Wed, 10 Oct 2018 10:08:02 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f2b49afd3609a249fe7bf207dc223e3894f836b1e2e1ea8d2427f2aa818283`  
		Last Modified: Wed, 10 Oct 2018 11:03:04 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4cd4842c91e00185651e122353cd21466f678b55d81a9c073a5415899b6232`  
		Last Modified: Wed, 10 Oct 2018 11:03:06 GMT  
		Size: 5.1 MB (5083722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a667fbfe651c5e499dbbafaab51003ed4bd7c02b5a677421ff16455915e852a4`  
		Last Modified: Sat, 10 Nov 2018 11:43:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc68537f77409ba95df44e0e75c13dd2a8614c7dd2812b06a42e3266cc2a0a74`  
		Last Modified: Sat, 10 Nov 2018 11:43:21 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfa0a745abd7f81061514f224376f8866b4ecfcd3186ec5c5b167dc26614813`  
		Last Modified: Sat, 10 Nov 2018 11:43:22 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a2c552b43a78003f02b66ec401eea53e6a60df417b0c2ca8efad396031de0e`  
		Last Modified: Sat, 10 Nov 2018 11:43:47 GMT  
		Size: 199.9 MB (199891539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8681b12fe9199afda0094669eca1a35d593fc382259329851dc75770452145`  
		Last Modified: Sat, 10 Nov 2018 11:43:21 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
