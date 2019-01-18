## `openjdk:nanoserver-sac2016`

```console
$ docker pull openjdk@sha256:de8c709962de3e76e694d337e74081796b0f1115fc91f957bb64648639f963c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `openjdk:nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull openjdk@sha256:47aa5650d3dc3c288a43e27bf932c529de3dfb8e6898bf9dabd3be0cf4856747
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **620.7 MB (620689088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f28506ba55589202965a4a2d72310f80e278cd473f136a97558440b5ec98a569`
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
# Fri, 18 Jan 2019 10:32:27 GMT
ENV JAVA_VERSION=11.0.2
# Fri, 18 Jan 2019 10:32:29 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk11/7/GPL/openjdk-11.0.2_windows-x64_bin.zip
# Fri, 18 Jan 2019 10:32:30 GMT
ENV JAVA_SHA256=74b13684729a249d32fd955fd1de2bec22e627f6a6a5894ca74f88c945c95f55
# Fri, 18 Jan 2019 10:34:31 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 18 Jan 2019 10:34:33 GMT
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
	-	`sha256:bfafc3e741c97a9bda4994f2d3bd7a6ee0b9387fe7b7c0b9740f45b1ceb0f092`  
		Last Modified: Fri, 18 Jan 2019 10:52:57 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f7f54f6b4a593a8552d4cd12bf01a84b1cf058eaad4a1ff22e44beab51e48db`  
		Last Modified: Fri, 18 Jan 2019 10:52:58 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb49ee61ee37660282b126114659f4130da1910ef9c1b29afb00c7a0887e635`  
		Last Modified: Fri, 18 Jan 2019 10:52:57 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c02e8dd8dde952458e92b88c08e7f2cf723d78855b38fe840b6ef0a03fb9c99`  
		Last Modified: Fri, 18 Jan 2019 10:54:16 GMT  
		Size: 183.5 MB (183483887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0bc0156435f74a6c162521407184998208009958c97d2cd016d71381ee9765`  
		Last Modified: Fri, 18 Jan 2019 10:52:57 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
