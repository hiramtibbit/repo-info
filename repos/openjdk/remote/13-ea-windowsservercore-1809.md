## `openjdk:13-ea-windowsservercore-1809`

```console
$ docker pull openjdk@sha256:e44f963822248fcded6f0939cc406fd06cfb72a76d32d3982d36089365fa2b47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.503; amd64

### `openjdk:13-ea-windowsservercore-1809` - windows version 10.0.17763.503; amd64

```console
$ docker pull openjdk@sha256:4cd4dc52fbef130defdfb867804320f308774fb3249ba0805e49f7109f051bfd
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2537367274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b091fa0826eae60a1139e5fa10547cdc4e2614a6e17c471e821a9523025638d`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Mon, 13 May 2019 04:24:59 GMT
RUN Install update 1809-amd64
# Fri, 17 May 2019 23:48:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 17 May 2019 23:49:43 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 17 May 2019 23:49:44 GMT
ENV JAVA_HOME=C:\openjdk-13
# Fri, 17 May 2019 23:50:11 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 17 May 2019 23:50:12 GMT
ENV JAVA_VERSION=13-ea+21
# Fri, 17 May 2019 23:50:13 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/21/GPL/openjdk-13-ea+21_windows-x64_bin.zip
# Fri, 17 May 2019 23:50:15 GMT
ENV JAVA_SHA256=7ce289b3349a7605e3c673f1926d80cf3eb2256a6e5f707eb7111b7f817948f0
# Fri, 17 May 2019 23:51:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 17 May 2019 23:51:59 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ee54d5f8c1c17d6a2d177ece78df7ab6b2b13276699d52254ec988ad3ee41dbb`  
		Last Modified: Wed, 15 May 2019 17:14:11 GMT  
		Size: 807.1 MB (807120948 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4c3abc8365785955424fd2b634b981e82e0c1bf98d5cfa77b3bf179f3509f08b`  
		Last Modified: Sat, 18 May 2019 00:01:18 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd241d86729a8aec19f1a06a7a6d8d99d376cad3c4ba076fe732c3ab72bbb913`  
		Last Modified: Sat, 18 May 2019 00:01:18 GMT  
		Size: 4.3 MB (4337623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732829a0632932c552a7a1fa036c8ccba5bc94a27498c91bf278b20d05535f16`  
		Last Modified: Sat, 18 May 2019 00:01:15 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b46ad1159cc7c050b68ee36ccb5b58a56212c8adbcdfe48796526086e761db3`  
		Last Modified: Sat, 18 May 2019 00:01:15 GMT  
		Size: 306.4 KB (306446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d0e0c833038552ed5929b9dded48ec474ebafbca191e6bf7eaa4a30a6d25f4d`  
		Last Modified: Sat, 18 May 2019 00:01:12 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b2dff494719ec4c9805eff16f9d1a851106a67c105c12e001cab163c5be049`  
		Last Modified: Sat, 18 May 2019 00:01:12 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c662b5bad4783398e2c3459896921853d971c925d2d1868eeb84bd19078a5e`  
		Last Modified: Sat, 18 May 2019 00:01:12 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcdaa962018df9bb009efcd8760a9393167923bf19d7a80ecf8313617bf6cd8d`  
		Last Modified: Sat, 18 May 2019 00:02:01 GMT  
		Size: 190.9 MB (190909672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4070cdb35febec6411f8e9412c3a59cac1572a4cdbb96301c18482aaa3dbea74`  
		Last Modified: Sat, 18 May 2019 00:01:15 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
