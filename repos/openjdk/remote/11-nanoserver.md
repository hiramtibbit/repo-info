## `openjdk:11-nanoserver`

```console
$ docker pull openjdk@sha256:824a7bbfc7e8bccd082247a467aa5e1e8a0639df548c06dc4fcf19b8739fddfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `openjdk:11-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull openjdk@sha256:9cb32cb7aa7796190ae0af16b785812301a8fd9317ae24d75e26d5cf5ef53588
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **620.7 MB (620717092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97f0224c8a974be7822ec5252ba70e5c524c5a61deb58a5c7636de01d778b011`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 25 Dec 2018 18:43:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 25 Dec 2018 18:44:05 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Tue, 01 Jan 2019 10:50:01 GMT
ENV JAVA_HOME=C:\openjdk-11
# Tue, 01 Jan 2019 10:50:33 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Tue, 01 Jan 2019 10:50:34 GMT
ENV JAVA_VERSION=11.0.1
# Tue, 01 Jan 2019 10:50:35 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk11/13/GPL/openjdk-11.0.1_windows-x64_bin.zip
# Tue, 01 Jan 2019 10:50:36 GMT
ENV JAVA_SHA256=289dd06e06c2cbd5e191f2d227c9338e88b6963fd0c75bceb9be48f0394ede21
# Tue, 01 Jan 2019 10:52:39 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 01 Jan 2019 10:52:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1f72e042ba5d72d27b42026712df029a6a160e9acc59f0ec444c96e610f275d3`  
		Last Modified: Tue, 25 Dec 2018 18:56:43 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9480a580fcc4eac71262761c837c4002f85e0a7b13e7cacf7f1d2f1a01b231fe`  
		Last Modified: Tue, 25 Dec 2018 18:56:44 GMT  
		Size: 943.8 KB (943792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad15d7be349179d73d3422a45eac34e8d153de280cae70834af34284bf3f0a62`  
		Last Modified: Tue, 01 Jan 2019 11:03:14 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759a54c1dff8f703b80fe0fa01fb07f8cbe4e3501e26aeec2898fb327ce76023`  
		Last Modified: Tue, 01 Jan 2019 11:03:14 GMT  
		Size: 858.9 KB (858900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cfc9426e808c6ad1f8d3f0cf0f7a5351ac427b3294c3179b355aafed6eecd09`  
		Last Modified: Tue, 01 Jan 2019 11:03:11 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df1f0234ae1496978e9608ab10a9ba8ec323b806e67b426912c0ea7f89ba9be`  
		Last Modified: Tue, 01 Jan 2019 11:03:11 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bef2ef1a3b5b950ec6ba4913831c1c4051c38436a04d6e864984098c192d2051`  
		Last Modified: Tue, 01 Jan 2019 11:03:11 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657ea38193d7857d27e433a171536b073103caead3a8a1bd461555e39bd9e843`  
		Last Modified: Tue, 01 Jan 2019 11:03:50 GMT  
		Size: 183.5 MB (183511885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43d5255ad62a4b4349cb67c9416f6805ce15cd0ef935cdf4c10b589feb23426`  
		Last Modified: Tue, 01 Jan 2019 11:03:11 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
