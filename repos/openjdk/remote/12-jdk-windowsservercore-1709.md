## `openjdk:12-jdk-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:17e414bf47078393e5f5ff6f9e0859921bf56bce6e3dcba13953868388f8079b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.846; amd64

### `openjdk:12-jdk-windowsservercore-1709` - windows version 10.0.16299.846; amd64

```console
$ docker pull openjdk@sha256:d4ee6631d991441e80cb9b51f7a035922b2ae653f62b728c0f9696a70b21000c
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3358017883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:564945c79988c89a6a830059bd203722c6bf4a081b6980ad2633dc258aca7a9d`
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
# Tue, 01 Jan 2019 10:28:50 GMT
ENV JAVA_HOME=C:\openjdk-12
# Tue, 01 Jan 2019 10:29:37 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Tue, 01 Jan 2019 10:29:38 GMT
ENV JAVA_VERSION=12-ea+25
# Tue, 01 Jan 2019 10:29:40 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/25/GPL/openjdk-12-ea+25_windows-x64_bin.zip
# Tue, 01 Jan 2019 10:29:42 GMT
ENV JAVA_SHA256=a3c94a495ea402b6c752c5757dcd902ec497720d52f59cee756975615a0661c3
# Tue, 01 Jan 2019 10:32:12 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 01 Jan 2019 10:32:15 GMT
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
	-	`sha256:d988c2826c62b02dfa1ff3c128c7c7481516786e692a22db5e979090c66e74ed`  
		Last Modified: Tue, 01 Jan 2019 10:55:40 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aad7d333b6d635d4975462cf92253c14682020b19f5eb47a810efc1847fd843`  
		Last Modified: Tue, 01 Jan 2019 10:55:43 GMT  
		Size: 4.8 MB (4755906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0820a6eb3dbfd5e71950f6a18494073ffa96e77b61ad98945edd4351da91cc23`  
		Last Modified: Tue, 01 Jan 2019 10:55:38 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3658bdcee7d56d7072284b240d80c959a453549203d263186805837129d27d9d`  
		Last Modified: Tue, 01 Jan 2019 10:55:38 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e1dea7245026f2cee396c78f6e304b12dffda0ada7fb34ea19abe4edc48d9`  
		Last Modified: Tue, 01 Jan 2019 10:55:38 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:149d2926eef5621b2b8b2ce164d52d0d7276cb45361d0c1a2d14f3daa96be198`  
		Last Modified: Tue, 01 Jan 2019 10:56:44 GMT  
		Size: 196.3 MB (196325313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2869f7e1ea11c536c6bfd1e0e71272c6d0db80530daf3872bcc162da47cae17`  
		Last Modified: Tue, 01 Jan 2019 10:55:38 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
