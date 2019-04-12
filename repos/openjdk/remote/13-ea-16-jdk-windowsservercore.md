## `openjdk:13-ea-16-jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:53a6b07584c872d19e18d261583fd47e2ca804f41c1541ba5152d4d6a34a90eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.17134.706; amd64
	-	windows version 10.0.17763.437; amd64

### `openjdk:13-ea-16-jdk-windowsservercore` - windows version 10.0.14393.2906; amd64

```console
$ docker pull openjdk@sha256:4c6a0fc7010755af17530c9de6641775ccad4f7e749fb92ed5138792b6443c13
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5851650427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b02a2ce1a473c7f2859976d582bebdd10a66ad672e5aac048332e7a7da19d936`
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
# Fri, 12 Apr 2019 00:18:24 GMT
ENV JAVA_VERSION=13-ea+16
# Fri, 12 Apr 2019 00:18:25 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/16/GPL/openjdk-13-ea+16_windows-x64_bin.zip
# Fri, 12 Apr 2019 00:18:27 GMT
ENV JAVA_SHA256=0ed244de1bed18e9ed2278dfa422488566e91e7ac7e377e6658ab837eeaf674b
# Fri, 12 Apr 2019 00:21:29 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 12 Apr 2019 00:21:31 GMT
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
	-	`sha256:ebfdc78aac7e03449e715e1206d98762783c3c7d0197fe83b921d5be7ffa7507`  
		Last Modified: Fri, 12 Apr 2019 01:43:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0def0f784f3929636f7a6f5ca50276ac1757c0537552b121e1e7c31e765c924`  
		Last Modified: Fri, 12 Apr 2019 01:43:57 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a5a9bcfacaaa2b3b26fc5beca346ba72db876d56df399c11d50f8f5015688c`  
		Last Modified: Fri, 12 Apr 2019 01:43:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:296f5a752913b150ce02f49e20c3403548938dc0aa39637a5efe2f18ad73dadd`  
		Last Modified: Fri, 12 Apr 2019 01:44:23 GMT  
		Size: 198.8 MB (198849990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e1706c707a19816fb75d85db662c68db58b2edf8131aeaea1eb72632f3c60a`  
		Last Modified: Fri, 12 Apr 2019 01:43:57 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:13-ea-16-jdk-windowsservercore` - windows version 10.0.17134.706; amd64

```console
$ docker pull openjdk@sha256:fad866fdec2b8de2085420e9e3327d51ab61a0ba71068ebb5608c1b21a487d89
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2450836671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:811925196732bedae401109e5beada60c6fe42d6550a147d989783ae29db954b`
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
# Fri, 12 Apr 2019 00:27:26 GMT
ENV JAVA_VERSION=13-ea+16
# Fri, 12 Apr 2019 00:27:28 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/16/GPL/openjdk-13-ea+16_windows-x64_bin.zip
# Fri, 12 Apr 2019 00:27:29 GMT
ENV JAVA_SHA256=0ed244de1bed18e9ed2278dfa422488566e91e7ac7e377e6658ab837eeaf674b
# Fri, 12 Apr 2019 00:29:13 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 12 Apr 2019 00:29:16 GMT
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
	-	`sha256:4f3adc561f537e0635d9d37c1dc0ae61a5a9206ad26d51f698570168ec1b09e5`  
		Last Modified: Fri, 12 Apr 2019 01:45:49 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d287b6c267a99f274b02e1556079017116b8d52140e29ca18ba58fe5326c544`  
		Last Modified: Fri, 12 Apr 2019 01:45:49 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f71b04640e7dc54ca3e5403690fe018e8be4da6b1db4c5e9590faf33ce303f`  
		Last Modified: Fri, 12 Apr 2019 01:45:48 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a9667e5c2d085829e8b1bcf22c3fd3b289ccfaef3d17874796ce39d38ef7f0`  
		Last Modified: Fri, 12 Apr 2019 01:46:31 GMT  
		Size: 189.5 MB (189456877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af1b65141eb08abe90f82a70561e39583c2503a0f2410d62ce4852f7d2d47e2`  
		Last Modified: Fri, 12 Apr 2019 01:45:49 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:13-ea-16-jdk-windowsservercore` - windows version 10.0.17763.437; amd64

```console
$ docker pull openjdk@sha256:a19bc20ab89c26cad5be961b9a9a5a71210a8a0eb4bafb6e0a5734c92637eb53
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2167993772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e971d7172d6295e068915d8348b2f3ff52f3a1c36358ffb679fe275649a4d48`
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
# Fri, 12 Apr 2019 00:30:43 GMT
ENV JAVA_VERSION=13-ea+16
# Fri, 12 Apr 2019 00:30:44 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/16/GPL/openjdk-13-ea+16_windows-x64_bin.zip
# Fri, 12 Apr 2019 00:30:46 GMT
ENV JAVA_SHA256=0ed244de1bed18e9ed2278dfa422488566e91e7ac7e377e6658ab837eeaf674b
# Fri, 12 Apr 2019 00:32:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 12 Apr 2019 00:32:28 GMT
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
	-	`sha256:8348c2742ea51cb7efe33ec74fc4f829926a64a4e6f2d9d64df129d2df4b1dba`  
		Last Modified: Fri, 12 Apr 2019 01:47:04 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f107311dd035a2e8a686daecee544b6ae40b65700190f622b5f599f380f500`  
		Last Modified: Fri, 12 Apr 2019 01:47:04 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed03c9bcc45c33dc1b29bc2b6e5051d2f56b8852c2a796afaf8542f002fa9fdf`  
		Last Modified: Fri, 12 Apr 2019 01:47:04 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d85bb65fc4bf6e0b9574e6df94c8402df52af496b5d8d4d256af9def1413320`  
		Last Modified: Fri, 12 Apr 2019 01:47:27 GMT  
		Size: 189.5 MB (189469860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7506f2ddca5040102c27d36c7469f5f05da285001241528438ab206121ea37bd`  
		Last Modified: Fri, 12 Apr 2019 01:47:04 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
