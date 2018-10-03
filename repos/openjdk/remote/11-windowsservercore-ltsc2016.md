## `openjdk:11-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:f8153b727c4af9df4a03b0e209b9301c6b887eb34974019828c9c306385deb14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `openjdk:11-windowsservercore-ltsc2016` - windows version 10.0.14393.2485; amd64

```console
$ docker pull openjdk@sha256:ba435ad31ee2f1ea39fc6a58b82c65c7661aa6d02bc878c714dbef4864c3b529
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5778685207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4884c762b4f811319cebc58e4f9dcefe48a112dd017a76da8c82e102a63d1d6`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:50 GMT
RUN Install update 10.0.14393.2485
# Thu, 13 Sep 2018 09:42:24 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 03 Oct 2018 10:37:07 GMT
ENV JAVA_HOME=C:\openjdk-11
# Wed, 03 Oct 2018 10:38:27 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 03 Oct 2018 10:38:28 GMT
ENV JAVA_VERSION=11
# Wed, 03 Oct 2018 10:38:29 GMT
ENV JAVA_URL=https://download.java.net/java/ga/jdk11/openjdk-11_windows-x64_bin.zip
# Wed, 03 Oct 2018 10:38:30 GMT
ENV JAVA_SHA256=fde3b28ca31b86a889c37528f17411cd0b9651beb6fa76cac89a223417910f4b
# Wed, 03 Oct 2018 10:41:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 03 Oct 2018 10:41:04 GMT
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
	-	`sha256:4fc3b246e6fc8f7357365b67034c119a2fd89685d8deb70b56b0de7b2292e73c`  
		Last Modified: Wed, 03 Oct 2018 11:08:50 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb40d60fad1387bf043f7eb020cb9e700680a2664f1a6f4ae0261330f69c78c0`  
		Last Modified: Wed, 03 Oct 2018 11:08:54 GMT  
		Size: 5.1 MB (5101896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2291c515b826ad4a93a0462ca4e0446535998f10699f888adbdefd9a91140e`  
		Last Modified: Wed, 03 Oct 2018 11:08:48 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285ac003cb1f9891c0e0da4b297d7fed6507868ba75e3a05b8db80ac38a7e921`  
		Last Modified: Wed, 03 Oct 2018 11:08:48 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10868e617c5f4d4701ebcd1a22cba2b324193beb4f1b4a6fa40b399182611ebf`  
		Last Modified: Wed, 03 Oct 2018 11:08:48 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e96dac622a05307bd19354d9e532f211495f4c663d05ebe943a6bb4d7613bf7`  
		Last Modified: Wed, 03 Oct 2018 11:09:31 GMT  
		Size: 187.7 MB (187719993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c1ad8eb0b34b0a7a993f2159bcc1ae6c5107c27a45aa8e934ff71916ed0e4c3`  
		Last Modified: Wed, 03 Oct 2018 11:08:48 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
