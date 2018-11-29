## `openjdk:12-ea-jdk-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:af7ae54e0d145e6f1edce29662a6dfcf6d8c8821aafbc3f2370af08e70c7aabc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2608; amd64

### `openjdk:12-ea-jdk-windowsservercore-ltsc2016` - windows version 10.0.14393.2608; amd64

```console
$ docker pull openjdk@sha256:0020f8518353a849ab579f06c84b81cb39eef07bdf696048f7ef07fe99e0b0bc
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5839570745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87b0b49ed9ad0e9bb33df899e7980d672558564372fb0bf1ebe7a220905f11f6`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 12 Nov 2018 20:18:49 GMT
RUN Install update 10.0.14393.2608
# Thu, 15 Nov 2018 10:44:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Nov 2018 10:17:31 GMT
ENV JAVA_HOME=C:\openjdk-12
# Wed, 21 Nov 2018 10:19:07 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Thu, 29 Nov 2018 10:16:32 GMT
ENV JAVA_VERSION=12-ea+21
# Thu, 29 Nov 2018 10:16:33 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/21/GPL/openjdk-12-ea+21_windows-x64_bin.zip
# Thu, 29 Nov 2018 10:16:33 GMT
ENV JAVA_SHA256=0234af9e71f01cbad57e2d1e3bbf8938cc166455f2c2255384cf85b329a3e529
# Thu, 29 Nov 2018 10:19:45 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Thu, 29 Nov 2018 10:19:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:900b07d4317229a6e17265974aa1dac7af538380b34f978cbe221403c279c09a`  
		Last Modified: Mon, 12 Nov 2018 20:18:49 GMT  
		Size: 1.6 GB (1563935107 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:87926998c696620346cdc0a9a6b8363985c9f433be9759201c3226e8cdf020c1`  
		Last Modified: Thu, 15 Nov 2018 11:02:41 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a73dd485a587939590e9229c43eb1d7f486dddef485831ea8b810e1b770bd24`  
		Last Modified: Wed, 21 Nov 2018 10:55:34 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9185aff84009eb869fc2300040d79fe8ef8be56a519bc4f52cc943a234e429`  
		Last Modified: Wed, 21 Nov 2018 10:55:36 GMT  
		Size: 5.2 MB (5204448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f485ed14057b9db881082432f17e109dc6a8c801584a37e548753ffaa57942a5`  
		Last Modified: Thu, 29 Nov 2018 10:29:13 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a1527eb0c5cf1d2567114bdad8aa927fa8acb23e67d8c824cc8206566e6651`  
		Last Modified: Thu, 29 Nov 2018 10:29:13 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cded16835c207d640ce01e64b53b298fac6895c5aa7104132b8ed2d2853ba08`  
		Last Modified: Thu, 29 Nov 2018 10:29:13 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ba5ce83b4defe436864fa994dbcb7cebc38b02f70154451ea56e6fe73bda20`  
		Last Modified: Thu, 29 Nov 2018 10:29:36 GMT  
		Size: 200.4 MB (200438107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c56ed4929fda4e33cbbc375a935b32757b5b04b874833b7224ce5bc86aaa2f`  
		Last Modified: Thu, 29 Nov 2018 10:29:13 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
