## `openjdk:13-ea-16-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:46f94b96d3d5aadd60384fd6e01c6c5f42847794540a05bf2f7e466c8b25c301
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.1087; amd64

### `openjdk:13-ea-16-windowsservercore-1709` - windows version 10.0.16299.1087; amd64

```console
$ docker pull openjdk@sha256:908d3ef218245f0993b866ef449dc6247070bbadd5aacd9bb9113c624ec4965d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3404452634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aeb50bd547eb182d7869b7be0aacf457bc2dcf167f4332e6c43ff7dc9302303`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 1709-RTM-amd64
# Thu, 04 Apr 2019 00:21:24 GMT
RUN Install update 1709-amd64
# Thu, 11 Apr 2019 22:58:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 00:22:45 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 12 Apr 2019 00:22:46 GMT
ENV JAVA_HOME=C:\openjdk-13
# Fri, 12 Apr 2019 00:23:31 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 12 Apr 2019 00:23:33 GMT
ENV JAVA_VERSION=13-ea+16
# Fri, 12 Apr 2019 00:23:35 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/16/GPL/openjdk-13-ea+16_windows-x64_bin.zip
# Fri, 12 Apr 2019 00:23:36 GMT
ENV JAVA_SHA256=0ed244de1bed18e9ed2278dfa422488566e91e7ac7e377e6658ab837eeaf674b
# Fri, 12 Apr 2019 00:25:44 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 12 Apr 2019 00:25:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8c7d1531260f1f41cc711bfb3c8ab8efac981758fd7943518b863803f0b31552`  
		Last Modified: Tue, 09 Apr 2019 18:39:54 GMT  
		Size: 926.6 MB (926563180 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:59e24a9056c00889763abd79b000344468ace59ae58ae7d17acdfcbaadd1f6e8`  
		Last Modified: Fri, 12 Apr 2019 00:03:19 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b864d5e1e69c5a9ab357b87307521b8cf631a05627c51bed046a3a8fb129e32f`  
		Last Modified: Fri, 12 Apr 2019 01:45:03 GMT  
		Size: 4.9 MB (4870720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:401247318d4e69b940e17392109c25c868d03be9cf7654a3c71d56d9e9340a8d`  
		Last Modified: Fri, 12 Apr 2019 01:44:56 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbdf946107d2d587d3c542870c9ffc9f56850b23684474baf6acf030e34a3b0`  
		Last Modified: Fri, 12 Apr 2019 01:44:59 GMT  
		Size: 4.8 MB (4780460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151f7977bf6cebc3e37e4541b9a331ac584b4cfe1d0f7c50834770d32ba6fe99`  
		Last Modified: Fri, 12 Apr 2019 01:44:54 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a9b65c4488fd11f949d4d182e4fca1bf3dc7d2ee8e33038f8f489f577fe873a`  
		Last Modified: Fri, 12 Apr 2019 01:44:54 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a33ebbdfb120e157f4f99437203e04addf82d749af25703681c0a6aed98551e2`  
		Last Modified: Fri, 12 Apr 2019 01:44:54 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92759c08e2742be8de24e4c7ee49efbdbb02a831bce380a86a4221a92159079a`  
		Last Modified: Fri, 12 Apr 2019 01:45:18 GMT  
		Size: 193.9 MB (193930482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3eb06e0446343e31f554f28af1dd2805dd56069b2bd50b29a573d2fdcb40582`  
		Last Modified: Fri, 12 Apr 2019 01:44:54 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
