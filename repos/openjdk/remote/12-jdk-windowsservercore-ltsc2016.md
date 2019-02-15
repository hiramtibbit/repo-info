## `openjdk:12-jdk-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:84a6c58c6bb3eb3f379ae09bca81b19a7b929c4fcffd330d3837e2d29c9c6c53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2791; amd64

### `openjdk:12-jdk-windowsservercore-ltsc2016` - windows version 10.0.14393.2791; amd64

```console
$ docker pull openjdk@sha256:000519257eeb6a7bbf09bb28274fa208fe1215d06801abbf8894cbf42fbf1c8c
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5851724033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47e1a98753826696b7224c3ffb855c1e425804ce530b5f34e384a17b62033d87`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Feb 2019 20:08:57 GMT
RUN Install update 10.0.14393.2791
# Wed, 13 Feb 2019 10:35:06 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 15 Feb 2019 10:17:29 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 15 Feb 2019 10:34:07 GMT
ENV JAVA_HOME=C:\openjdk-12
# Fri, 15 Feb 2019 10:35:13 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 15 Feb 2019 10:35:15 GMT
ENV JAVA_VERSION=12
# Fri, 15 Feb 2019 10:35:17 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk12/32/GPL/openjdk-12_windows-x64_bin.zip
# Fri, 15 Feb 2019 10:35:18 GMT
ENV JAVA_SHA256=d6a550477754289e5bc0a635974b40bf5bc0515db441381414303ae954d8d6b8
# Fri, 15 Feb 2019 10:37:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 15 Feb 2019 10:38:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b479a92ce115faf181c1196d762b00f05ec9aa83dc2fec2b7ca094c8d6e1bfff`  
		Last Modified: Mon, 11 Feb 2019 20:08:57 GMT  
		Size: 1.6 GB (1570061102 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d6be0e7f96b74f68be8ae9cde286b6108d09d939d8cb130d00bfb8519a6b7fbc`  
		Last Modified: Wed, 13 Feb 2019 11:04:46 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56bc4c4dc3afb15f282193b4c750313cd5aadd44b9d7067cc9f2780c0efbf2eb`  
		Last Modified: Fri, 15 Feb 2019 11:43:15 GMT  
		Size: 5.2 MB (5211770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c917bb6ba7267cf5a6675b09316df1de9fab4faa971ac9c36e49241d726c5c`  
		Last Modified: Fri, 15 Feb 2019 11:55:02 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd1a697bc5ebf4a43c8a760c7e54e027a6e853934d4f7db3822f409e477d8a59`  
		Last Modified: Fri, 15 Feb 2019 11:55:03 GMT  
		Size: 5.2 MB (5182059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4366aed89dbff4a596a80c9b4558782e95400e97d3471655714c5019fcc1dcc`  
		Last Modified: Fri, 15 Feb 2019 11:54:59 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bde2a172091fb58745cd2ffa167a7700856c906eba2fd04914c51b044c40dc3`  
		Last Modified: Fri, 15 Feb 2019 11:54:59 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95d212d8640baa20c7e3a443c5adc82d8e40916cb54ab87626be9496c7e43fb5`  
		Last Modified: Fri, 15 Feb 2019 11:54:59 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe530ea0f488a77b4237ee953dcf1d748e8c6f298cbc1f79a4dd525dc5ea37a`  
		Last Modified: Fri, 15 Feb 2019 11:55:49 GMT  
		Size: 201.3 MB (201275932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837c1ab06f9b11f64eb1115147b475a1366c8b2aaa73738c28a29b17fb1b69a9`  
		Last Modified: Fri, 15 Feb 2019 11:54:59 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
