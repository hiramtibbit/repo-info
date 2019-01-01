## `openjdk:12-ea-25-windowsservercore`

```console
$ docker pull openjdk@sha256:b247b48ab18e3959dbdfdeb6ab81fdcab8dd14b0d5ac712cddf9a41ba2fc8650
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2665; amd64
	-	windows version 10.0.16299.846; amd64
	-	windows version 10.0.17134.469; amd64

### `openjdk:12-ea-25-windowsservercore` - windows version 10.0.14393.2665; amd64

```console
$ docker pull openjdk@sha256:918dde7a3095bece05af1624c12edaec1ab6e644124900e516aec6cd778a82ca
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5842025657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d32b5ec248fc1b395c526a33afc6ff1e3eb4235852769a7ee36360ebc456a074`
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
# Tue, 01 Jan 2019 10:23:22 GMT
ENV JAVA_HOME=C:\openjdk-12
# Tue, 01 Jan 2019 10:24:32 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Tue, 01 Jan 2019 10:24:34 GMT
ENV JAVA_VERSION=12-ea+25
# Tue, 01 Jan 2019 10:24:36 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/25/GPL/openjdk-12-ea+25_windows-x64_bin.zip
# Tue, 01 Jan 2019 10:24:37 GMT
ENV JAVA_SHA256=a3c94a495ea402b6c752c5757dcd902ec497720d52f59cee756975615a0661c3
# Tue, 01 Jan 2019 10:27:24 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 01 Jan 2019 10:27:27 GMT
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
	-	`sha256:9ac4b25191c33c91686ee10039198edf481699b7d0c5893450472e5fe7a3ee92`  
		Last Modified: Tue, 01 Jan 2019 10:54:26 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd95139b57605f41b2ec9759d5dabe98bcecc28f49190ba020418074dd05882c`  
		Last Modified: Tue, 01 Jan 2019 10:54:29 GMT  
		Size: 5.2 MB (5209056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4e50c140e56194d09441c9df3af0b9de95ce18e90070e63ad5c8ff4be124f2`  
		Last Modified: Tue, 01 Jan 2019 10:54:24 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd65675833f550391b4a52ea0c30d6dccbe6d8431996d04c112c6c4c28282436`  
		Last Modified: Tue, 01 Jan 2019 10:54:24 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565577129a96918dd50bb6847bc09e8d9efb1557e0ca55cf8f408b634973b740`  
		Last Modified: Tue, 01 Jan 2019 10:54:24 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ae27c5def436a80ac3c91e4e46aba15371d33b759e0a1cf67eff042c414f45`  
		Last Modified: Tue, 01 Jan 2019 10:55:14 GMT  
		Size: 196.8 MB (196845560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0972328dc0122519af9767a8645aa641ea54173692e4aca0686f3cb2c7ca579`  
		Last Modified: Tue, 01 Jan 2019 10:54:24 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:12-ea-25-windowsservercore` - windows version 10.0.16299.846; amd64

```console
$ docker pull openjdk@sha256:d4ee6631d991441e80cb9b51f7a035922b2ae653f62b728c0f9696a70b21000c
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3358017883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:564945c79988c89a6a830059bd203722c6bf4a081b6980ad2633dc258aca7a9d`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 05 Dec 2018 22:40:26 GMT
RUN Install update 10.0.16299.846
# Tue, 25 Dec 2018 17:23:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 01 Jan 2019 10:28:48 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Tue, 01 Jan 2019 10:28:50 GMT
ENV JAVA_HOME=C:\openjdk-12
# Tue, 01 Jan 2019 10:29:37 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Tue, 01 Jan 2019 10:29:38 GMT
ENV JAVA_VERSION=12-ea+25
# Tue, 01 Jan 2019 10:29:40 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/25/GPL/openjdk-12-ea+25_windows-x64_bin.zip
# Tue, 01 Jan 2019 10:29:42 GMT
ENV JAVA_SHA256=a3c94a495ea402b6c752c5757dcd902ec497720d52f59cee756975615a0661c3
# Tue, 01 Jan 2019 10:32:12 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 01 Jan 2019 10:32:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:10167262a01401a5b7cd880ca2abdb5a43d0cdb288b23e2bbda0cd16760064e7`  
		Last Modified: Tue, 11 Dec 2018 21:30:45 GMT  
		Size: 877.8 MB (877837008 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:7c1b47cffe80520ef16d931d598cdadd371f9cb1e4ca9304d9c7532bb19c9721`  
		Last Modified: Tue, 25 Dec 2018 17:52:11 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac183665c50ece051ad7a47123f27410be49e5bb005c5050f18e99698c80647`  
		Last Modified: Tue, 01 Jan 2019 10:55:43 GMT  
		Size: 4.8 MB (4791872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d988c2826c62b02dfa1ff3c128c7c7481516786e692a22db5e979090c66e74ed`  
		Last Modified: Tue, 01 Jan 2019 10:55:40 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aad7d333b6d635d4975462cf92253c14682020b19f5eb47a810efc1847fd843`  
		Last Modified: Tue, 01 Jan 2019 10:55:43 GMT  
		Size: 4.8 MB (4755906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0820a6eb3dbfd5e71950f6a18494073ffa96e77b61ad98945edd4351da91cc23`  
		Last Modified: Tue, 01 Jan 2019 10:55:38 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3658bdcee7d56d7072284b240d80c959a453549203d263186805837129d27d9d`  
		Last Modified: Tue, 01 Jan 2019 10:55:38 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e1dea7245026f2cee396c78f6e304b12dffda0ada7fb34ea19abe4edc48d9`  
		Last Modified: Tue, 01 Jan 2019 10:55:38 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:149d2926eef5621b2b8b2ce164d52d0d7276cb45361d0c1a2d14f3daa96be198`  
		Last Modified: Tue, 01 Jan 2019 10:56:44 GMT  
		Size: 196.3 MB (196325313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2869f7e1ea11c536c6bfd1e0e71272c6d0db80530daf3872bcc162da47cae17`  
		Last Modified: Tue, 01 Jan 2019 10:55:38 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:12-ea-25-windowsservercore` - windows version 10.0.17134.469; amd64

```console
$ docker pull openjdk@sha256:f2d3824e3693eeb69debabdbda16ea6e4950e627c5949e6985e7f3669df583e7
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2440520483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fd455ac2071b6db7e3582196dff15966180db9ad3b0e53b01e85e740a73bcb4`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Thu, 06 Dec 2018 19:45:44 GMT
RUN Install update 10.0.17134.469
# Tue, 25 Dec 2018 18:18:15 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 01 Jan 2019 10:33:29 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Tue, 01 Jan 2019 10:33:31 GMT
ENV JAVA_HOME=C:\openjdk-12
# Tue, 01 Jan 2019 10:34:03 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Tue, 01 Jan 2019 10:34:04 GMT
ENV JAVA_VERSION=12-ea+25
# Tue, 01 Jan 2019 10:34:05 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/25/GPL/openjdk-12-ea+25_windows-x64_bin.zip
# Tue, 01 Jan 2019 10:34:07 GMT
ENV JAVA_SHA256=a3c94a495ea402b6c752c5757dcd902ec497720d52f59cee756975615a0661c3
# Tue, 01 Jan 2019 10:36:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 01 Jan 2019 10:36:14 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a716b198c71b782955b21f1eed303f89f487eaef823ebccdeb452b764512b3b`  
		Last Modified: Tue, 11 Dec 2018 22:06:40 GMT  
		Size: 583.9 MB (583898765 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:219a311071ee4293d1c43ed6fbbc267544771d491843ca5ff9c1a235c116c96d`  
		Last Modified: Tue, 25 Dec 2018 18:50:55 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90a1ba876e7fd9f70f172731b8d353d23e8423dbcf6d411b98819dcba167a56`  
		Last Modified: Tue, 01 Jan 2019 10:57:12 GMT  
		Size: 4.7 MB (4708107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c7c350dfec5da194c7ea11240bffcef1f7fc9981eb0adfbf07012b631d6f9`  
		Last Modified: Tue, 01 Jan 2019 10:57:11 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2406307c2855df8579b00e3e0e59a48da1814c348532f58cb9a8e6b88cc029c1`  
		Last Modified: Tue, 01 Jan 2019 10:57:12 GMT  
		Size: 315.8 KB (315842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8595b93b0347928b5b62dd457964b6d1f73b71ea3f5583a082c0f45846b1dc76`  
		Last Modified: Tue, 01 Jan 2019 10:57:08 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe60c69d779a962ff708256ff2d4d8c080a5f8ee1e4a5b19911354cbaa62b596`  
		Last Modified: Tue, 01 Jan 2019 10:57:08 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d0f95d1d7748164d55357ff18614fa759a4feae1ddfb27f00fa0a87aa765528`  
		Last Modified: Tue, 01 Jan 2019 10:57:08 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7916c9818c481c27966408b275021288ff60777c021ffbcad72a636c56a1c26`  
		Last Modified: Tue, 01 Jan 2019 10:58:04 GMT  
		Size: 191.9 MB (191902263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14576cb9168a8ff47da9316deefd23879c6391c92c44757b9211ba8d626390a3`  
		Last Modified: Tue, 01 Jan 2019 10:57:08 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
