## `openjdk:11-jdk-windowsservercore-1809`

```console
$ docker pull openjdk@sha256:434b5ecee85f1df6aa04f117f9622ae379511ccab645af066246d72ce27f6d0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.557; amd64

### `openjdk:11-jdk-windowsservercore-1809` - windows version 10.0.17763.557; amd64

```console
$ docker pull openjdk@sha256:c51ec055eb857aa6bdae554f5cd3ca0aeb4166a8bd421e3ac1e53936db3752a0
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2580822643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:840bada2490bb83ca96797380c393fe136a030d4096b87b03f3dc16f1f044586`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 08 Jun 2019 04:13:36 GMT
RUN Install update 1809-amd64
# Wed, 12 Jun 2019 12:57:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 15:14:21 GMT
ENV JAVA_HOME=C:\openjdk-11
# Wed, 12 Jun 2019 15:15:00 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 12 Jun 2019 15:15:02 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 12 Jun 2019 15:15:03 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 12 Jun 2019 15:15:05 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 12 Jun 2019 15:16:54 GMT
RUN $url = ('{0}x64_windows_{1}.zip' -f $env:JAVA_BASE_URL, $env:JAVA_URL_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'openjdk.zip'; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Wed, 12 Jun 2019 15:16:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:266cffe9d908cf404f555fd6f60ff19167f6393ce6d42f4c9e6e4014cd04bccd`  
		Last Modified: Tue, 11 Jun 2019 18:25:33 GMT  
		Size: 851.4 MB (851381073 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c0c4ec7a15b931644ced0837c5a43642233d0cbdf67b1a3971033461576ee05`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b6d6a0893a101e8fc92a5671e881268f9959c8d4b176d665e1ca01e536533a`  
		Last Modified: Wed, 12 Jun 2019 15:47:40 GMT  
		Size: 1.1 KB (1148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3462b77466a02f2cf59ca799a6259ae8cbf375f0922b05b06a000da4b51dda2f`  
		Last Modified: Wed, 12 Jun 2019 15:47:41 GMT  
		Size: 4.4 MB (4357133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1e892e1e07ff47f26f4db522d888054fa67f0ea15fd42073ac4bfcd8655024`  
		Last Modified: Wed, 12 Jun 2019 15:47:37 GMT  
		Size: 1.1 KB (1148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b726e3893675902c2a0d616d129e31737f8977720b20f17ff88f7399de656f94`  
		Last Modified: Wed, 12 Jun 2019 15:47:37 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe3d797ca77e8a1f05dba1c11a4a9ec3fe92aa93143cc0fd0ef307fa10cfc06`  
		Last Modified: Wed, 12 Jun 2019 15:47:37 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453de254d68a443185e2bd34aeaf79f073f33c379ff4a2c2765e8a6409bfa768`  
		Last Modified: Wed, 12 Jun 2019 15:48:26 GMT  
		Size: 190.4 MB (190392037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f386b1f7f4a534aca2aafc8d8f53851effc33bca2e24e505a8b3f0b065396a6f`  
		Last Modified: Wed, 12 Jun 2019 15:47:37 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
