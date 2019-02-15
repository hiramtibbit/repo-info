## `openjdk:jdk-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:839afea5c9c4cc7a8c20324fef4bdf74d44263e618d29cc2d396078940bd39e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.967; amd64

### `openjdk:jdk-windowsservercore-1709` - windows version 10.0.16299.967; amd64

```console
$ docker pull openjdk@sha256:c5c84ab6a777ab6ff2dfbff27fe759f3a6211db50830ca92b6b7ab353c780d25
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3345114663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e67aff7e44639f1d50d5c17560dbd6ec1585a029ba93438e741c507eca555c96`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Fri, 08 Feb 2019 07:16:29 GMT
RUN Install update 10.0.16299.967
# Wed, 13 Feb 2019 10:40:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 15 Feb 2019 10:22:13 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 15 Feb 2019 10:52:22 GMT
ENV JAVA_HOME=C:\openjdk-11
# Fri, 15 Feb 2019 10:53:05 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 15 Feb 2019 10:53:06 GMT
ENV JAVA_VERSION=11.0.2
# Fri, 15 Feb 2019 10:53:08 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_windows-x64_bin.zip
# Fri, 15 Feb 2019 10:53:09 GMT
ENV JAVA_SHA256=cf39490fe042dba1b61d6e9a395095279a69e70086c8c8d5466d9926d80976d8
# Fri, 15 Feb 2019 10:55:12 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 15 Feb 2019 10:55:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:effca3ebc3a86f19a139eb7047c6e97d2fe4c941737e8d9698820d0491ccf530`  
		Last Modified: Mon, 11 Feb 2019 21:05:02 GMT  
		Size: 873.9 MB (873894336 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:731ba2742afc105cbc6ca69724a36a1b3dd4199873953d6581f5339a67939b09`  
		Last Modified: Wed, 13 Feb 2019 11:05:29 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b01bf46e9b6222b308e3d8f95fa622a74a155108b2c471a53186d884871bd8`  
		Last Modified: Fri, 15 Feb 2019 11:47:28 GMT  
		Size: 4.8 MB (4779227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4275b884ec51b46d81117f9eb6e0e78eba876b3272512f0e662c0c8bbdcd575f`  
		Last Modified: Fri, 15 Feb 2019 12:10:13 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dfbf7f61367309d6a72166e0b42bf56f692f6785007a87a2fdf5f06c46f09ef`  
		Last Modified: Fri, 15 Feb 2019 12:10:15 GMT  
		Size: 4.7 MB (4738257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4cd834ad8e1313fe3ad4e66bd17aed528540e02e33dfd4a25f8b6b8349634b`  
		Last Modified: Fri, 15 Feb 2019 12:10:11 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5cd2aebebbcd7769dc765282a29e9f5acee708d4e0713e1f76229db52e7436`  
		Last Modified: Fri, 15 Feb 2019 12:10:11 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81275a860f45c008f484300967a04935ee91812d73482870ce1eb0dd33ed050a`  
		Last Modified: Fri, 15 Feb 2019 12:10:11 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e33eb0437158ad21ce81dfc869e2bb777a762a78f47b533cad866c8934df13a`  
		Last Modified: Fri, 15 Feb 2019 12:13:36 GMT  
		Size: 187.4 MB (187395037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4238a48267ab399e0419f661ac46ab5d41e17bddd7a8e0472852aa4e41688913`  
		Last Modified: Fri, 15 Feb 2019 12:10:11 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
