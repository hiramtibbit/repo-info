## `openjdk:12-ea-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:9868dad7371d28af65b24d86b895e71b851ed0782a17bf3a839de1398bdba6e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `openjdk:12-ea-windowsservercore-ltsc2016` - windows version 10.0.14393.2485; amd64

```console
$ docker pull openjdk@sha256:17f26189d8e7a0900ef166d2ea6dec872279e39a032be2d2f5bc890fcd407878
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5780597265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2d86b4841e90b3978bc1ad9161d330414c98419e183409cf9be5b501b2906cc`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:50 GMT
RUN Install update 10.0.14393.2485
# Thu, 13 Sep 2018 09:42:24 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 03 Oct 2018 10:26:40 GMT
ENV JAVA_HOME=C:\openjdk-12
# Wed, 03 Oct 2018 10:28:01 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 03 Oct 2018 10:28:02 GMT
ENV JAVA_VERSION=12-ea+13
# Wed, 03 Oct 2018 10:28:03 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/13/GPL/openjdk-12-ea+13_windows-x64_bin.zip
# Wed, 03 Oct 2018 10:28:05 GMT
ENV JAVA_SHA256=a74c96ad4913583a1c7b241fe8e4b5069f12b18c293e2a5926673e71b6a08925
# Wed, 03 Oct 2018 10:30:35 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 03 Oct 2018 10:30:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6e046b8e194c642cfc4d7dcaa12ec2f9359e1f54dbc7088ee9ca188416d5c553`  
		Last Modified: Tue, 11 Sep 2018 16:53:50 GMT  
		Size: 1.5 GB (1515870209 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:7aa2ad8eff720622c1b1f25bf31d2c32b588766208c093caef00e8b31961b74e`  
		Last Modified: Thu, 13 Sep 2018 10:24:13 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a9f12690baac04c48f542b4cb10d68ff90ea0766ee37b055bc12b097055bed`  
		Last Modified: Wed, 03 Oct 2018 11:06:07 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f2b53a1b840087a88430ad81d952335c52d847423a89cca793575d8c3d788b`  
		Last Modified: Wed, 03 Oct 2018 11:06:10 GMT  
		Size: 5.1 MB (5100445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d2faee6fb17a944af5ab8c9fb4c16218b7379d97da956c1b5b06e94e289ba3`  
		Last Modified: Wed, 03 Oct 2018 11:06:05 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b6a5403d985384e41023d4d5ce4db3a51cd64be529ce17c58b2aba14f171e6`  
		Last Modified: Wed, 03 Oct 2018 11:06:05 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967ad4f7ad80fad383c9737e0b450cd408d20dd45ba4be8aec7d18d92aa121ed`  
		Last Modified: Wed, 03 Oct 2018 11:06:05 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d53147713daeb477d8d5504b1ea1641b32b0fcc0ff4793ab800f91652124b5`  
		Last Modified: Wed, 03 Oct 2018 11:06:28 GMT  
		Size: 189.6 MB (189633526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bf09ead118bc85d29eabc50ba2030f1f733f0d21f5eea0278f909bfde442de`  
		Last Modified: Wed, 03 Oct 2018 11:06:04 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
