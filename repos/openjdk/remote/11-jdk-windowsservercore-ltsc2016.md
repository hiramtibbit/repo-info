## `openjdk:11-jdk-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:d896ea1476a31658fb16e74d1ea674ce3b30eafad69ad67a726468e163718597
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2665; amd64

### `openjdk:11-jdk-windowsservercore-ltsc2016` - windows version 10.0.14393.2665; amd64

```console
$ docker pull openjdk@sha256:8655c044ec4a4b1d4b8cd6fe580625f29a08e466dd6908d0457f8bcd16cf0224
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5827838362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b15be0bb808676aeee78288faa74da51f3f24747ef9451efaf6ec72e3bc9ef66`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Dec 2018 22:22:29 GMT
RUN Install update 10.0.14393.2665
# Fri, 14 Dec 2018 10:44:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 22 Dec 2018 10:28:05 GMT
ENV JAVA_HOME=C:\openjdk-11
# Sat, 22 Dec 2018 10:29:27 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Sat, 22 Dec 2018 10:29:28 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 22 Dec 2018 10:29:29 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk11/13/GPL/openjdk-11.0.1_windows-x64_bin.zip
# Sat, 22 Dec 2018 10:29:30 GMT
ENV JAVA_SHA256=289dd06e06c2cbd5e191f2d227c9338e88b6963fd0c75bceb9be48f0394ede21
# Sat, 22 Dec 2018 10:31:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 22 Dec 2018 10:31:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bf261bf8d7bc7faa62a55474c337e0c2bf6e7d24df25e7737fa97ace46a2cd9a`  
		Last Modified: Mon, 10 Dec 2018 22:22:29 GMT  
		Size: 1.6 GB (1564741272 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c9346499d56b89267b8f21f1328b59d8fe902493eca87b656cb4d1284a207c91`  
		Last Modified: Fri, 14 Dec 2018 11:43:34 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b5009538c0dc2a3fd4a0c757b9a4b593d214d372a5b075ab9fc12f3e429759`  
		Last Modified: Sat, 22 Dec 2018 10:51:26 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a00ac61af82de73e8e162474e60fada69e49071477b31be61f90dd2fb488d96`  
		Last Modified: Sat, 22 Dec 2018 10:51:27 GMT  
		Size: 5.2 MB (5235252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9908aef49680adaaa7cad683dd5c1ee03345a52536075bc86416cef5bfbe1e38`  
		Last Modified: Sat, 22 Dec 2018 10:51:24 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43b4798a1c3f60f1cfa51be6741ab12962f4253ee6660ce97ab1d16c0ab6f756`  
		Last Modified: Sat, 22 Dec 2018 10:51:23 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:617830643849096965491d91967ced2b585d5b72d4c9f125d11239cbd0f6d873`  
		Last Modified: Sat, 22 Dec 2018 10:51:24 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d9e04544d879d4330ed3e7c1b56f918ffe2934506005b870d0d4b6fba8de48`  
		Last Modified: Sat, 22 Dec 2018 10:51:50 GMT  
		Size: 187.9 MB (187868765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a39b5f6859761ed86ee62568fa7d367ce502ea0a675b06fe0d613b748914691b`  
		Last Modified: Sat, 22 Dec 2018 10:51:23 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
