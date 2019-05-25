## `openjdk:8u212-b04-windowsservercore-1809`

```console
$ docker pull openjdk@sha256:e84c3841bc1f1446fb812889a6510143ef9e62933c7223ec7942f0580ed23d42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.504; amd64

### `openjdk:8u212-b04-windowsservercore-1809` - windows version 10.0.17763.504; amd64

```console
$ docker pull openjdk@sha256:47bb21626dbe853d4354b855d51eb9a103beffd90e5b7002244b5d14602a1816
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2183810534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:720ec957109f616a4caa87180ce3a9f9b8c15e463506367eab985960924f5c9b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 18 May 2019 18:40:00 GMT
RUN Install update 1809-amd64
# Wed, 22 May 2019 12:57:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 24 May 2019 23:34:17 GMT
ENV JAVA_HOME=C:\openjdk-8
# Fri, 24 May 2019 23:34:55 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 24 May 2019 23:34:56 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 23:34:58 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-
# Fri, 24 May 2019 23:34:59 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 23:36:28 GMT
RUN $url = ('{0}x64_windows_{1}.zip' -f $env:JAVA_BASE_URL, $env:JAVA_URL_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'openjdk.zip'; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac -version'; javac -version; 	Write-Host '  java -version'; java -version; 		Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b16cfeeaf4b37af9fc146f7043ceb629c1bc50ace967227817e50e47f4a71529`  
		Last Modified: Sun, 19 May 2019 19:09:22 GMT  
		Size: 544.4 MB (544441311 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:51cd7ddd4054cb845626f99a0b0388fcfe1f6e9521bd4a1a8337620d6452ef34`  
		Last Modified: Wed, 22 May 2019 13:24:53 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d4e587840c15e420fe1e5fdaf8caf8cfc443e767405a1caa51e7c38e956da8`  
		Last Modified: Fri, 24 May 2019 23:56:28 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5be97e3694157e37f7e42ae3006bfa411f1d49010daed156d92061aa612d65`  
		Last Modified: Fri, 24 May 2019 23:56:27 GMT  
		Size: 4.3 MB (4338267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64742ab7c1769852c5852aa47770969d44476d4ccd5cb9c2ecd198879b0662fb`  
		Last Modified: Fri, 24 May 2019 23:56:26 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6757722a49c6e616dae7f0e14770758879ff21a38b5afb60e129a53993894c3e`  
		Last Modified: Fri, 24 May 2019 23:56:26 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b9ef41d8e9fcb981ffdda7e9e44362ccf4f25566f3a640a1b1b4a21016b967`  
		Last Modified: Fri, 24 May 2019 23:56:26 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db08a4a9d060e8dbcc927c595323bc0b27ad12cae16a4c6255e2be025846052c`  
		Last Modified: Fri, 24 May 2019 23:57:13 GMT  
		Size: 100.3 MB (100339667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
