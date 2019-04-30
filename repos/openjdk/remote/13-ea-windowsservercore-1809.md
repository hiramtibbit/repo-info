## `openjdk:13-ea-windowsservercore-1809`

```console
$ docker pull openjdk@sha256:e01bec28753923be02ca643c3819d83ea53113e11755907be7d855f9d1995f7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.437; amd64

### `openjdk:13-ea-windowsservercore-1809` - windows version 10.0.17763.437; amd64

```console
$ docker pull openjdk@sha256:63ffc185d2a1341a81512628e577741c056ab96944c7ef7b6495a156ab5cd2a8
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2168737138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27e66f4f690509e46ab42b2843c7939b94acad5c610c2dfbcd98addc715a7c1c`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Wed, 03 Apr 2019 20:53:33 GMT
RUN Install update 1809-amd64
# Thu, 11 Apr 2019 23:07:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 00:30:13 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 12 Apr 2019 00:30:15 GMT
ENV JAVA_HOME=C:\openjdk-13
# Fri, 12 Apr 2019 00:30:42 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Tue, 30 Apr 2019 09:22:37 GMT
ENV JAVA_VERSION=13-ea+18
# Tue, 30 Apr 2019 09:22:39 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/18/GPL/openjdk-13-ea+18_windows-x64_bin.zip
# Tue, 30 Apr 2019 09:22:40 GMT
ENV JAVA_SHA256=8a4a6a38ef44415ebed01f29f9decf93e1f1be4b7efad329ccef86d96a8a8bd0
# Tue, 30 Apr 2019 09:24:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 30 Apr 2019 09:24:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e787b79aad1a2bfd8fbef887083298fcd314650de9e7ca884cdf0897e874b63`  
		Last Modified: Tue, 09 Apr 2019 17:43:46 GMT  
		Size: 439.2 MB (439177903 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:77e3f6e069cdb88fdad1008b3dd2aa59bea5669bcd1b93c79f07b6f6dc9662de`  
		Last Modified: Fri, 12 Apr 2019 00:04:43 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea5fbc8be2fb7f7f4f65ce36251366332e71e320255cac4f7e7b406e70aa7c6`  
		Last Modified: Fri, 12 Apr 2019 01:47:09 GMT  
		Size: 4.3 MB (4342848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889015159e4a5ef05dbf13569418f6f875217dd10454d8263c366c6756b7aadf`  
		Last Modified: Fri, 12 Apr 2019 01:47:07 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b36cb5f431de4c9a09969e201e39bec58fca78e158a6eee3d12bc499a0154ef`  
		Last Modified: Fri, 12 Apr 2019 01:47:08 GMT  
		Size: 310.6 KB (310565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34b6b63a41bd2e78b6ad836a0f958e4aeaba797b07a20a7d2fa46caf847e6ac`  
		Last Modified: Tue, 30 Apr 2019 09:28:35 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac156a8604b74120eea2a17d7ed72f177b43cf0fc6b7954fd917442f163a066`  
		Last Modified: Tue, 30 Apr 2019 09:28:35 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1abbf604e69c8a090f69fda53b93fbc2c6ffe1bea3e4f3a04fca3719e4fc76d5`  
		Last Modified: Tue, 30 Apr 2019 09:28:36 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e56853803e714c5b98257a71f136e079e681c298bf9d9c8adb441da70db797b`  
		Last Modified: Tue, 30 Apr 2019 09:29:01 GMT  
		Size: 190.2 MB (190213233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:072fe2e20874256a38091f86db4302b6e37e763484aea4472003f769f9ca1212`  
		Last Modified: Tue, 30 Apr 2019 09:28:36 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
