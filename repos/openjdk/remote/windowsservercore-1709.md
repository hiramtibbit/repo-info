## `openjdk:windowsservercore-1709`

```console
$ docker pull openjdk@sha256:dffbe908c2c8fcf5dd9920fdc8143fad3f099129f2cf13e8f06fd0bdbb2c3ca5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.846; amd64

### `openjdk:windowsservercore-1709` - windows version 10.0.16299.846; amd64

```console
$ docker pull openjdk@sha256:ba5d96bec8fa3b6799003f54a16c2e874b4664ced28064134f6d4c5c51bc1131
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3349153640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15298282a167a86b882309ca8e139c37060c109077649506b8a2464091bf86da`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 05 Dec 2018 22:40:26 GMT
RUN Install update 10.0.16299.846
# Tue, 25 Dec 2018 17:23:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 01 Jan 2019 10:28:48 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Tue, 01 Jan 2019 10:43:51 GMT
ENV JAVA_HOME=C:\openjdk-11
# Tue, 01 Jan 2019 10:44:36 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Tue, 01 Jan 2019 10:44:38 GMT
ENV JAVA_VERSION=11.0.1
# Tue, 01 Jan 2019 10:44:39 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk11/13/GPL/openjdk-11.0.1_windows-x64_bin.zip
# Tue, 01 Jan 2019 10:44:41 GMT
ENV JAVA_SHA256=289dd06e06c2cbd5e191f2d227c9338e88b6963fd0c75bceb9be48f0394ede21
# Tue, 01 Jan 2019 10:46:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 01 Jan 2019 10:47:02 GMT
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
	-	`sha256:fac183665c50ece051ad7a47123f27410be49e5bb005c5050f18e99698c80647`  
		Last Modified: Tue, 01 Jan 2019 10:55:43 GMT  
		Size: 4.8 MB (4791872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c90af82525dffa6da3856500c5f34d8403ac137ddf3aa7e9396614512e05e1d`  
		Last Modified: Tue, 01 Jan 2019 11:01:05 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241e515f84643e3bf3da1ab38be7631a00ad681bdeac0d5cc0b15efaf98c5e13`  
		Last Modified: Tue, 01 Jan 2019 11:01:07 GMT  
		Size: 4.8 MB (4754228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4008481cad2419db2297ca8ea8a0342b2b784538f391d02a949951786f14bf33`  
		Last Modified: Tue, 01 Jan 2019 11:01:03 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1125cbf23a70fa3e532859e93ad80da471fb352d83ae42bf173ccacdebb68217`  
		Last Modified: Tue, 01 Jan 2019 11:01:03 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dbd3dd24025621896e674e26d7fda791f9ee92d9a01c2b668f63d2e13b593e9`  
		Last Modified: Tue, 01 Jan 2019 11:01:03 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371201e4a4441462c0a76a5cfe442ce8dff1bf463414675adf07a8b8316d31e9`  
		Last Modified: Tue, 01 Jan 2019 11:01:34 GMT  
		Size: 187.5 MB (187462725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82bcc52d78fadf832272e51e9a740d6d234854d4d3288ea6502f9254cc59816d`  
		Last Modified: Tue, 01 Jan 2019 11:01:03 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
