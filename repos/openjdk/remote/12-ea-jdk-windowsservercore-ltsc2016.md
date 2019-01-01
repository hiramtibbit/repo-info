## `openjdk:12-ea-jdk-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:78b6ce0c5ceb9b2acc319d32a5dd75edb8c4099e0cc6287eb9b9cf538c8e1100
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2665; amd64

### `openjdk:12-ea-jdk-windowsservercore-ltsc2016` - windows version 10.0.14393.2665; amd64

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
