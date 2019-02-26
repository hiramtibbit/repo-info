## `openjdk:12-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:2a9e5985c287dd2c4bd48d48d96c5dc3ac247059deff916c4f630d9e58645996
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.967; amd64

### `openjdk:12-windowsservercore-1709` - windows version 10.0.16299.967; amd64

```console
$ docker pull openjdk@sha256:0ff44001f91ff69c8da75b4a5c3b5780ac5c5a43c645ab7c8f86ff7c0e329dfc
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3354085984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78d49c330b6ef74023f8e642e8a8848e5ce2fe4510f6d61a6d2b51a7b5d826b2`
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
# Fri, 15 Feb 2019 10:38:21 GMT
ENV JAVA_HOME=C:\openjdk-12
# Fri, 15 Feb 2019 10:39:12 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 15 Feb 2019 10:39:14 GMT
ENV JAVA_VERSION=12
# Tue, 26 Feb 2019 10:30:18 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk12/33/GPL/openjdk-12_windows-x64_bin.zip
# Tue, 26 Feb 2019 10:30:19 GMT
ENV JAVA_SHA256=35a8d018f420fb05fe7c2aa9933122896ca50bd23dbd373e90d8e2f3897c4e92
# Tue, 26 Feb 2019 10:32:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 26 Feb 2019 10:32:33 GMT
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
	-	`sha256:2084e88fccc165c10ebe06526c2379ae1fe98579815392258ab8095d6411bbca`  
		Last Modified: Fri, 15 Feb 2019 11:56:05 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57b2f68a2083ca620544c80b167b18932239cf23ab4414ec1b7f506bf0f0198`  
		Last Modified: Fri, 15 Feb 2019 11:56:06 GMT  
		Size: 4.7 MB (4738991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9b629ba66a4ded043f087848b0c97b3033e8947ed15cbfee7d4f5e1c3c8178`  
		Last Modified: Fri, 15 Feb 2019 11:56:02 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f78514417e473044e080c44a3edf922bd412503f7157b0f2a3b78a6664c02c2`  
		Last Modified: Tue, 26 Feb 2019 10:59:59 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4467f20145fc98630c4bc77fbb889cb2cef6949136ab683fc552cc1925bc961b`  
		Last Modified: Tue, 26 Feb 2019 10:59:59 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d3d81136dbb0e851b55f1bb4d27e04c33db3630032148afd3e6f6094102fec`  
		Last Modified: Tue, 26 Feb 2019 11:00:46 GMT  
		Size: 196.4 MB (196365633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf0cfa4263c325c73b23594235269745ae6fa55131b7208d6a3f06e818952a2`  
		Last Modified: Tue, 26 Feb 2019 10:59:59 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
