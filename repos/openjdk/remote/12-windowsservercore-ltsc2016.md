## `openjdk:12-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:53510bab5aafe9aa754a24e82aca6737b934c9d01be5a79c98ac7f9969bd9d2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `openjdk:12-windowsservercore-ltsc2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull openjdk@sha256:74baac5cbce7282cba67a062cefd972c0eff0834fb5cc7bcb238c81cff8dd633
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5796261687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04970889635b9637b632719062224983b2aaedc17e812e54b5206f1b139fdd9f`
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
# Wed, 10 Oct 2018 10:22:54 GMT
ENV JAVA_VERSION=12-ea+14
# Wed, 10 Oct 2018 10:22:56 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/14/GPL/openjdk-12-ea+14_windows-x64_bin.zip
# Wed, 10 Oct 2018 10:22:57 GMT
ENV JAVA_SHA256=43ac13c36e6d868c55e4e5bfefa2e9ae1fa7fb4006fde49ac8b2a3e1b9ca8279
# Wed, 10 Oct 2018 10:26:35 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 10 Oct 2018 10:26:37 GMT
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
	-	`sha256:08ae1843364199ea68bdc9d00d7f20b1e63d796e569a17bf5b8692723e84b6ad`  
		Last Modified: Wed, 10 Oct 2018 11:03:01 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aba912ec7f969a1328d2827feae0518d9b62ca18f19ee74550c12e4f86dfe39`  
		Last Modified: Wed, 10 Oct 2018 11:03:02 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40572d996f44bdaa37e0f192a954dcac3c9e3565534a6fc62476fcc967daf72a`  
		Last Modified: Wed, 10 Oct 2018 11:03:01 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb53157fa9f2cbbb2abc6bf9d9de74f7e92312a0394af425bf8547bf6cbb532`  
		Last Modified: Wed, 10 Oct 2018 11:03:27 GMT  
		Size: 194.1 MB (194059838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ffd7f83436a8ff1317830af945d2d71a2b51c58b72a136fbd74fd1c09245883`  
		Last Modified: Wed, 10 Oct 2018 11:03:01 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
