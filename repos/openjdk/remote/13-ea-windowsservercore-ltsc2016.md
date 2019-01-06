## `openjdk:13-ea-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:70133d2fcf29c203ff802b98604440d0fb90eaf6d692842709ff9e8dbf27f27b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2665; amd64

### `openjdk:13-ea-windowsservercore-ltsc2016` - windows version 10.0.14393.2665; amd64

```console
$ docker pull openjdk@sha256:ff74fb9d114135d892739e1bf0183ff46f23b90c3468ef49d234be7a489dacba
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5842026104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c1b004c66ec2e39a80fe7f1c9954edd55166099815ad3c1733484a7cb2dd393`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Dec 2018 22:22:29 GMT
RUN Install update 10.0.14393.2665
# Tue, 25 Dec 2018 17:17:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 01 Jan 2019 10:23:21 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 04 Jan 2019 10:15:09 GMT
ENV JAVA_HOME=C:\openjdk-13
# Fri, 04 Jan 2019 10:16:12 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 04 Jan 2019 10:16:14 GMT
ENV JAVA_VERSION=13-ea+1
# Fri, 04 Jan 2019 10:16:16 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/1/GPL/openjdk-13-ea+1_windows-x64_bin.zip
# Fri, 04 Jan 2019 10:16:17 GMT
ENV JAVA_SHA256=54f0908fb096f0587a1e66d447ed2ec181a00cbd8d92ebd3a30bd978e70a4146
# Fri, 04 Jan 2019 10:19:00 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 04 Jan 2019 10:19:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bf261bf8d7bc7faa62a55474c337e0c2bf6e7d24df25e7737fa97ace46a2cd9a`  
		Last Modified: Mon, 10 Dec 2018 22:22:29 GMT  
		Size: 1.6 GB (1564741272 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:88c3d7be4c2760e750ccd244f2cd79c32fc9e1534640817aad858156500c4e0a`  
		Last Modified: Tue, 25 Dec 2018 17:51:28 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e5419f6f1756ef95de3557e1ce59e1b3b39c0de275a147af85fbb834212d42`  
		Last Modified: Tue, 01 Jan 2019 10:54:29 GMT  
		Size: 5.2 MB (5236604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:521ed7fd7f8ca936b3b2282ece43ebf80460d481dc64438eba452d6e90f410e7`  
		Last Modified: Fri, 04 Jan 2019 10:32:03 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906f2b81585532b367316509e2dd55b79d28d3fbe69a881b5ef0d3a0889b5630`  
		Last Modified: Fri, 04 Jan 2019 10:32:04 GMT  
		Size: 5.2 MB (5223629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8d9feb43bd74c8b3db61d4dee76c9a2be71e252eca1841f5ef6f247df5d77c`  
		Last Modified: Fri, 04 Jan 2019 10:32:00 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77813285a75684023484ddecb50e22d4fe7b837b66b6b9d6e22ccea686a4b46f`  
		Last Modified: Fri, 04 Jan 2019 10:32:00 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134830c4485e2ee31bf281fd6bbf0dcb930b70a532942214f248c77ce9d656e8`  
		Last Modified: Fri, 04 Jan 2019 10:32:00 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c2d278a9ae9de8d7731e784e21aa5a7556787f768d852c5c1c6e107261d322`  
		Last Modified: Fri, 04 Jan 2019 10:33:09 GMT  
		Size: 196.8 MB (196831446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61dd6fda9d64789801c740b845b720f0553852e05034b8e5d5d826dee1ac437`  
		Last Modified: Fri, 04 Jan 2019 10:32:00 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
