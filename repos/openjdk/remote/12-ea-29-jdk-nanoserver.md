## `openjdk:12-ea-29-jdk-nanoserver`

```console
$ docker pull openjdk@sha256:c1c410f7599471a0ba1e7102113cf1836cf6b878cecb70611e61655f7fcc5ea0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `openjdk:12-ea-29-jdk-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull openjdk@sha256:ad501868d86655b1b85d751ea00399e50ba12927fe3d5c0f954f04455b8edf04
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **629.7 MB (629656616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9da03a750d3886a6ae8fddc1bd2cc1f11c764a24a63c0302ecf81bde965fbbbe`
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
# Tue, 01 Jan 2019 10:36:28 GMT
ENV JAVA_HOME=C:\openjdk-12
# Tue, 01 Jan 2019 10:37:05 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Sat, 26 Jan 2019 11:07:03 GMT
ENV JAVA_VERSION=12-ea+29
# Sat, 26 Jan 2019 11:07:04 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/29/GPL/openjdk-12-ea+29_windows-x64_bin.zip
# Sat, 26 Jan 2019 11:07:05 GMT
ENV JAVA_SHA256=7fd493692d7468f6822c7aaf44d3609a45d14c87b0a085f19d40be119d608d47
# Sat, 26 Jan 2019 11:09:05 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 26 Jan 2019 11:09:07 GMT
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
	-	`sha256:d2ef869893f1952ba1f7062c1d967daa640dd02f2d24d44c9f99336cc5b5e7e0`  
		Last Modified: Tue, 01 Jan 2019 10:58:37 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ab3f05bfdb099bd926288b750f2af5609ba4ca94dee31b83125a05c99666ab`  
		Last Modified: Tue, 01 Jan 2019 10:58:37 GMT  
		Size: 858.9 KB (858949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0c5964c9c2206c1a1291a4e079b826d1d87cf332bb99fbd66f4eeb75110167`  
		Last Modified: Sat, 26 Jan 2019 11:39:55 GMT  
		Size: 919.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2415b0b5a2c1e57163375df3fbc3f25d2ea0f20f8c053a181096891e1fe4802a`  
		Last Modified: Sat, 26 Jan 2019 11:39:55 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d9900823402a165f4c14af0580027191dbd5f467f3ecccbadfe144bfd96ad7`  
		Last Modified: Sat, 26 Jan 2019 11:39:55 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1788449722c148357ecc63044034c80c05bf5880eb83d91e538937ef5aacc730`  
		Last Modified: Sat, 26 Jan 2019 11:40:31 GMT  
		Size: 192.5 MB (192451418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f755acdef191100b58cdfa288945d7ed52a31e3cd8a10e9f563556455270e240`  
		Last Modified: Sat, 26 Jan 2019 11:39:55 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
