## `openjdk:13-ea-15-nanoserver-sac2016`

```console
$ docker pull openjdk@sha256:ce51cda59b5bc949992edfd8234246cd6353ab2b84d8fad12a671eeab9fba79d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `openjdk:13-ea-15-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull openjdk@sha256:c1ad1a49ff3720fd3cdbe5bdc3577d95043f173c9fdc5ea8e25a088be6b6a14c
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.2 MB (627179705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e1e253e7b7713df7c5c6b0ea1021cd03711fbb3b8c47cdfaf7120c58e1c1642`
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
# Fri, 05 Apr 2019 09:26:04 GMT
ENV JAVA_VERSION=13-ea+15
# Fri, 05 Apr 2019 09:26:05 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/15/GPL/openjdk-13-ea+15_windows-x64_bin.zip
# Fri, 05 Apr 2019 09:26:06 GMT
ENV JAVA_SHA256=24d9798529faf348bd3b66ad99eeea986cc6776dfb16b215310efd360e50fa61
# Fri, 05 Apr 2019 09:28:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 05 Apr 2019 09:28:09 GMT
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
	-	`sha256:4f75c869020e21161eea7494c58eb2d131be04d49a8ef9dd396bb0f6ece854bf`  
		Last Modified: Fri, 05 Apr 2019 09:37:10 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e05f5c217863a1f698e34ebc0bf214df4c63d6fc3a5c26dc810f07f167363c9`  
		Last Modified: Fri, 05 Apr 2019 09:37:10 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac2edd29e245c59e9938b2bed18ff34bae4ec7ce0cadd492d3ca9e6bec13b2`  
		Last Modified: Fri, 05 Apr 2019 09:37:10 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f523db9f80e6643a29de48107cab99c314fff2dcfa429f222f97822f17adbf`  
		Last Modified: Fri, 05 Apr 2019 09:38:00 GMT  
		Size: 190.0 MB (189972394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16f2e4db911184ef5db5cb1889f4d544a31d94b7444cab0d3af39aba83c8668`  
		Last Modified: Fri, 05 Apr 2019 09:37:10 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
