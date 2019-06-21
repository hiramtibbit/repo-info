## `openjdk:13-ea-windowsservercore-1809`

```console
$ docker pull openjdk@sha256:edae9bbea6e87d275d8bdaf6e93a013626ccf73ce5f3748181fd42064fdfd81d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.557; amd64

### `openjdk:13-ea-windowsservercore-1809` - windows version 10.0.17763.557; amd64

```console
$ docker pull openjdk@sha256:df530d18cfc3205ee6c63d2a48a7b48dff1238dcad6e41a73833015a2bfe1b2a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2582079197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2932e302a93e46c30f3a3d2c814245459635bf1065c45ce979406702d7d2da7b`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 08 Jun 2019 04:13:36 GMT
RUN Install update 1809-amd64
# Wed, 12 Jun 2019 12:57:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 14:54:28 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Wed, 12 Jun 2019 14:54:30 GMT
ENV JAVA_HOME=C:\openjdk-13
# Wed, 12 Jun 2019 14:54:57 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 21 Jun 2019 20:17:56 GMT
ENV JAVA_VERSION=13-ea+26
# Fri, 21 Jun 2019 20:17:57 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/26/GPL/openjdk-13-ea+26_windows-x64_bin.zip
# Fri, 21 Jun 2019 20:17:58 GMT
ENV JAVA_SHA256=945b2957d2600d6bf220442a1c5a4c9acc9f77d4fc26a2039fdfc84affa33668
# Fri, 21 Jun 2019 20:20:11 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 21 Jun 2019 20:20:14 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:266cffe9d908cf404f555fd6f60ff19167f6393ce6d42f4c9e6e4014cd04bccd`  
		Last Modified: Tue, 11 Jun 2019 18:25:33 GMT  
		Size: 851.4 MB (851381073 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c0c4ec7a15b931644ced0837c5a43642233d0cbdf67b1a3971033461576ee05`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e339a1fa7b227ec57d0a73f73fee29a16b2e44d083d386cf1ad461efd9b1909`  
		Last Modified: Wed, 12 Jun 2019 15:38:39 GMT  
		Size: 4.4 MB (4358377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7052b1634c27a86cc77e771b89b602df6664cd990e978ea2561d07479e0b4b30`  
		Last Modified: Wed, 12 Jun 2019 15:38:38 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f2af46f3218dcee651631d06d9f6eb5ce8a651e8e3b2532b5fc698fc08c1fb`  
		Last Modified: Wed, 12 Jun 2019 15:38:38 GMT  
		Size: 291.3 KB (291272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a3abba6eb3777121342671b411359d330bad9677be99ae92130e3da52ae4fc`  
		Last Modified: Fri, 21 Jun 2019 20:28:46 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d0ce2918b9f4adaa9a1b8867edb2cf20f9357d1474cd9e643454886d2e7e48`  
		Last Modified: Fri, 21 Jun 2019 20:28:46 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bb64f99b84021bf6eacc9aaac8026773f5142a3aed463dcac7d99119180f246`  
		Last Modified: Fri, 21 Jun 2019 20:28:46 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be32b9f5739a7370e0715a0eeca2c9648c3f1184c07ea5fa83e5eaf7ac5e88f`  
		Last Modified: Fri, 21 Jun 2019 20:30:04 GMT  
		Size: 191.4 MB (191356003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06b03ed665d2472ae41960485bc660b89eb1c2a43c111894b25c8e5bc455a2df`  
		Last Modified: Fri, 21 Jun 2019 20:28:46 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
