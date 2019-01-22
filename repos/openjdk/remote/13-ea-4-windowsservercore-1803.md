## `openjdk:13-ea-4-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:a5a96780d78e4858a6ea9b471641746c8ad738c7d2980e212ce53808da00b900
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.523; amd64

### `openjdk:13-ea-4-windowsservercore-1803` - windows version 10.0.17134.523; amd64

```console
$ docker pull openjdk@sha256:e90199247127493f1fcc944ca204b9f9f9a7c4b767e759ccebfc2069e2b95ea5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2442708394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f07f00d6462442b2d69c87f4c62a133acb73121c3fbbb289c6acab987beee4ed`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 04 Jan 2019 22:40:00 GMT
RUN Install update 10.0.17134.523
# Fri, 11 Jan 2019 10:49:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 11 Jan 2019 10:50:29 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 11 Jan 2019 10:50:31 GMT
ENV JAVA_HOME=C:\openjdk-13
# Fri, 11 Jan 2019 10:51:03 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Tue, 22 Jan 2019 10:20:58 GMT
ENV JAVA_VERSION=13-ea+4
# Tue, 22 Jan 2019 10:20:59 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/4/GPL/openjdk-13-ea+4_windows-x64_bin.zip
# Tue, 22 Jan 2019 10:21:00 GMT
ENV JAVA_SHA256=72066e2a67281d5757855d21a3a7fc04bd38fe6c650e157c9bf9c720627386dc
# Tue, 22 Jan 2019 10:23:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 22 Jan 2019 10:23:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:80c309c8f9e2a929c92fe88fafde882006a56d421e9cb306b5a55baefe52c4b6`  
		Last Modified: Tue, 08 Jan 2019 01:38:21 GMT  
		Size: 586.0 MB (585998859 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bfc3888f034fb7d00898fffa324da3e9ccfb30f42ed800fe45bb58da849af364`  
		Last Modified: Fri, 11 Jan 2019 11:31:41 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a22a20ec8993a1ae8419fb0ce687c2c852f0ba9e1f0839f0bed993eff642cae6`  
		Last Modified: Fri, 11 Jan 2019 11:31:43 GMT  
		Size: 4.7 MB (4680380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4992a6f3c008ab591727ff01481b1a5b2d79577999ea4548df52270f4bae84`  
		Last Modified: Fri, 11 Jan 2019 11:31:41 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af45da0a51dcf4f5b20774a899fbc2b0c9d870950429e7f970dacf21421e8ff`  
		Last Modified: Fri, 11 Jan 2019 11:31:43 GMT  
		Size: 293.2 KB (293172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c774aa0fedabfcc5174565eea425e4f0d632b4d27a0a22cc1649994fb175c25`  
		Last Modified: Tue, 22 Jan 2019 11:26:52 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f346c5e06c376bf1d7e9880d87a535dea0b702659ddedca9670907a8536c40d`  
		Last Modified: Tue, 22 Jan 2019 11:26:52 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c217d873953a1088321a92ba82fdeda5f35f87fbef0eeccada948d8248e8884`  
		Last Modified: Tue, 22 Jan 2019 11:26:53 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7002f904cfa4bd77de01d0dc6def51a47b56069cc5ca7788c17fe7b4494be2e7`  
		Last Modified: Tue, 22 Jan 2019 11:28:04 GMT  
		Size: 192.0 MB (192040497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150828cc19c41ad9e2dcbb6afa16c4a30d09e4b14e4d1dcd7d36e393d4e3a2d1`  
		Last Modified: Tue, 22 Jan 2019 11:26:52 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
