## `openjdk:13-ea-jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:8fe67e5f3c172b2c30ed6f6e3a167cfb55b54a6b4a389841e19ac286d4a1b176
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.17134.706; amd64
	-	windows version 10.0.17763.437; amd64

### `openjdk:13-ea-jdk-windowsservercore` - windows version 10.0.14393.2906; amd64

```console
$ docker pull openjdk@sha256:461dd319d04c273170531f2bfc7584be23dec6bb4928b681bb23599ab4cc0027
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5852385268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af54f8f363f4070d8ce78fb9acb0c8ea8dcccc06ca5076e76d5ed6ce8e90b4d9`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Thu, 11 Apr 2019 22:52:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 00:17:15 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 12 Apr 2019 00:17:17 GMT
ENV JAVA_HOME=C:\openjdk-13
# Fri, 12 Apr 2019 00:18:22 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Tue, 30 Apr 2019 09:17:22 GMT
ENV JAVA_VERSION=13-ea+18
# Tue, 30 Apr 2019 09:17:23 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/18/GPL/openjdk-13-ea+18_windows-x64_bin.zip
# Tue, 30 Apr 2019 09:17:24 GMT
ENV JAVA_SHA256=8a4a6a38ef44415ebed01f29f9decf93e1f1be4b7efad329ccef86d96a8a8bd0
# Tue, 30 Apr 2019 09:20:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 30 Apr 2019 09:20:13 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:531bdf2c301d16276bdb1ccfcc2625181323e9c6b9fb43b5d98aa89b4fa55fa3`  
		Last Modified: Fri, 12 Apr 2019 00:02:35 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e6721de712ffa461cc39978199d76951056103df05dcc38d1919d7cce16392`  
		Last Modified: Fri, 12 Apr 2019 01:44:03 GMT  
		Size: 5.2 MB (5222055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5372b93b2a73e347a0752aef2a100cbf57f0fdde8636a616b3d7074b4bc4aa7b`  
		Last Modified: Fri, 12 Apr 2019 01:44:00 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff85540e8700b05b951b93a8ef036cf8623b116dbdf4f9bf7eecb33493f5fbf5`  
		Last Modified: Fri, 12 Apr 2019 01:44:03 GMT  
		Size: 5.2 MB (5201436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c0dffdee301d5f37721c345fd26d53a414bce1fc148fcf681086003e38e571`  
		Last Modified: Tue, 30 Apr 2019 09:26:19 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90858d0504a4349802f0b74a1aba0c791dbc4ab704ac9e390cde006f28889d30`  
		Last Modified: Tue, 30 Apr 2019 09:26:19 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce436b8f81ad2fe389c8ab4f5c1bac063a6a33076fd16074ae8d6f138cc00d15`  
		Last Modified: Tue, 30 Apr 2019 09:26:20 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24ae16fad9f0e1ee2bc85311a894ffc25cc98a65547026f4d2e0a0a853641f8`  
		Last Modified: Tue, 30 Apr 2019 09:27:08 GMT  
		Size: 199.6 MB (199584837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27caed5c9b9e0c158d5a755cb14d56f07609246545d8f726e0c974f895dcf18`  
		Last Modified: Tue, 30 Apr 2019 09:26:19 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:13-ea-jdk-windowsservercore` - windows version 10.0.17134.706; amd64

```console
$ docker pull openjdk@sha256:006c1dcfca7fbf02fd8e4adfa72feba4c8031a704f330371941d65575f57fc65
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2451588428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1de61e02845d01feaa13097c08c3d7d10925fedda9640bbea9c435c908a28f11`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Thu, 11 Apr 2019 23:03:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 00:26:53 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 12 Apr 2019 00:26:55 GMT
ENV JAVA_HOME=C:\openjdk-13
# Fri, 12 Apr 2019 00:27:25 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Tue, 30 Apr 2019 09:20:25 GMT
ENV JAVA_VERSION=13-ea+18
# Tue, 30 Apr 2019 09:20:26 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/18/GPL/openjdk-13-ea+18_windows-x64_bin.zip
# Tue, 30 Apr 2019 09:20:27 GMT
ENV JAVA_SHA256=8a4a6a38ef44415ebed01f29f9decf93e1f1be4b7efad329ccef86d96a8a8bd0
# Tue, 30 Apr 2019 09:22:15 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 30 Apr 2019 09:22:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:37b6568b4a1267078fda687a318c987c4cb5a7d81edad72ed156b23333c61042`  
		Last Modified: Fri, 12 Apr 2019 00:04:01 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb3b0617bf0f6da87ada2e9f02f200964baa7b01bf5d29da578c7cb577f85d86`  
		Last Modified: Fri, 12 Apr 2019 01:45:54 GMT  
		Size: 4.7 MB (4725816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8852c2fd236ce0de0a220e373727556c1eb58cddb9653e9fbb314b26f7b30f`  
		Last Modified: Fri, 12 Apr 2019 01:45:51 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0273057600027b585c584917c85936a258a07a6c9ac6a07968f8bf35c795410`  
		Last Modified: Fri, 12 Apr 2019 01:45:53 GMT  
		Size: 296.1 KB (296146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00e02f02127989530b8081d1ff257631682ad0ca99f55a2218c2b5c3b78e3a7`  
		Last Modified: Tue, 30 Apr 2019 09:27:38 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5e0fee3ec4c03fa5a80dd7ecc37e6eef5f2fe8114fd4efa3ab9a8c4553a717`  
		Last Modified: Tue, 30 Apr 2019 09:27:39 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d4e74f063c29af025ee75a5fb9d101ca28f1757f9426ed219b7db75b045a159`  
		Last Modified: Tue, 30 Apr 2019 09:27:39 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914e1966a6f00f42916f0e5ae1e53ef15ca3b9b0ca6f27ed5d8a5d622b5d2c4e`  
		Last Modified: Tue, 30 Apr 2019 09:28:03 GMT  
		Size: 190.2 MB (190208638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee066d7a9600fe280ffa085e6b21c7f7b275182fcc71a01fb98ffa0db1fc99e`  
		Last Modified: Tue, 30 Apr 2019 09:27:38 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:13-ea-jdk-windowsservercore` - windows version 10.0.17763.437; amd64

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
