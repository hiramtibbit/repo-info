## `openjdk:12-jdk-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:22fd69165e8f04b7851f950995f4537e57f4ef5c0dad62bb21b5c77e73642a78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2791; amd64

### `openjdk:12-jdk-windowsservercore-ltsc2016` - windows version 10.0.14393.2791; amd64

```console
$ docker pull openjdk@sha256:c2a1486cd249dc1a2a552934a96d3e268b6911448b99ef9d5949fac1b4ccdfca
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5847238847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4ee73c810df9ff86a67cde960b5e08409a09e35f3377872a7ce392e773e3b33`
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
# Tue, 26 Feb 2019 10:27:36 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk12/33/GPL/openjdk-12_windows-x64_bin.zip
# Tue, 26 Feb 2019 10:27:38 GMT
ENV JAVA_SHA256=35a8d018f420fb05fe7c2aa9933122896ca50bd23dbd373e90d8e2f3897c4e92
# Tue, 26 Feb 2019 10:30:05 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 26 Feb 2019 10:30:08 GMT
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
	-	`sha256:837081376b2dd14cd22581636c759d74083a10936b539bb49e10dfec656fa4b7`  
		Last Modified: Tue, 26 Feb 2019 10:58:47 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aaf00929f5b12804fb806eeabef1362abe49c0131cad6e37058577f93be2369`  
		Last Modified: Tue, 26 Feb 2019 10:58:47 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe09bf65f0502bd62c4d741b74cb0b69e9b7957fcebefab6b9acba4abfa480d3`  
		Last Modified: Tue, 26 Feb 2019 10:59:44 GMT  
		Size: 196.8 MB (196790766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523367198fd0946ed5c5a0007501e0dd3b34814ac20d66a5b9bea394dfc9a83e`  
		Last Modified: Tue, 26 Feb 2019 10:58:47 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
