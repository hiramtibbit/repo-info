## `openjdk:13-jdk-nanoserver-sac2016`

```console
$ docker pull openjdk@sha256:70518dbfcb5ece2654f94d694d4726eb90b7093968879f9a4aa0d3151251f9f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `openjdk:13-jdk-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull openjdk@sha256:1d5292be97f2b06a23c53c4ec1eb691f55eb62f5acd3f880003ecb8e2fe7c29d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **629.8 MB (629764629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:903a8a5e75687db915e6dbe9d5161e28b37bc3b626098c97d6e3df9e4e66c41b`
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
# Fri, 04 Jan 2019 10:26:31 GMT
ENV JAVA_HOME=C:\openjdk-13
# Fri, 04 Jan 2019 10:27:10 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Sat, 26 Jan 2019 10:54:04 GMT
ENV JAVA_VERSION=13-ea+5
# Sat, 26 Jan 2019 10:54:06 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/5/GPL/openjdk-13-ea+5_windows-x64_bin.zip
# Sat, 26 Jan 2019 10:54:07 GMT
ENV JAVA_SHA256=bbac8dc310afb0b3bed5d2f8e3acaac27a7b544ee2d863c8e2d4292eb48c2aa8
# Sat, 26 Jan 2019 10:56:13 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:56:16 GMT
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
	-	`sha256:1bf772117107201f3620270be39f8f8a3a0890b91491539a5d466efa546b44d8`  
		Last Modified: Fri, 04 Jan 2019 10:35:44 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ca64795c4a470baf8c3ad64701351384aee060dbb9b6d33b65e5045d05a921`  
		Last Modified: Fri, 04 Jan 2019 10:35:45 GMT  
		Size: 861.0 KB (861006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4d5d5a3da94f7f0acd580de67ea5ade0b7650675bdae3fefd4d54ad36edfb7`  
		Last Modified: Sat, 26 Jan 2019 11:27:57 GMT  
		Size: 919.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9424e68a82e94197fff0464d7a696f9f8d833f0e5ac18623cbc02c8b20c51fa3`  
		Last Modified: Sat, 26 Jan 2019 11:27:57 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a366f9de483a2d429de310ed33ba398c3c18d3d69c980ca7dd0a4f1cf2a32304`  
		Last Modified: Sat, 26 Jan 2019 11:27:57 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a973ed0e3ae1093694cb1da98953202ebd4f7f64ca98fa35b5065fddca9cb68e`  
		Last Modified: Sat, 26 Jan 2019 11:29:03 GMT  
		Size: 192.6 MB (192557346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fde8455b24c041c35655a30269edb2eaa0bc7c556b45ad4181886950a59c3535`  
		Last Modified: Sat, 26 Jan 2019 11:27:57 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
