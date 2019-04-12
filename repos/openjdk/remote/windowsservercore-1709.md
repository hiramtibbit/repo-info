## `openjdk:windowsservercore-1709`

```console
$ docker pull openjdk@sha256:9ab2762479869589abd51434a86531a2d8a5a9860d2c0b87d5eb46c67dcdf0b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.1087; amd64

### `openjdk:windowsservercore-1709` - windows version 10.0.16299.1087; amd64

```console
$ docker pull openjdk@sha256:401a4a42bde28ebe0c2f060b4c86e1ffbe971e20229fbbc20c1f6aa84dcaf816
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3406913735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3b18c7c5ceb93717d81465cdac2fa64a625e833d6e319a405723e74a13a88f8`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 1709-RTM-amd64
# Thu, 04 Apr 2019 00:21:24 GMT
RUN Install update 1709-amd64
# Thu, 11 Apr 2019 22:58:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 00:22:45 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 12 Apr 2019 00:38:50 GMT
ENV JAVA_HOME=C:\openjdk-12
# Fri, 12 Apr 2019 00:39:51 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 12 Apr 2019 00:39:52 GMT
ENV JAVA_VERSION=12
# Fri, 12 Apr 2019 00:39:54 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk12/GPL/openjdk-12_windows-x64_bin.zip
# Fri, 12 Apr 2019 00:39:55 GMT
ENV JAVA_SHA256=35a8d018f420fb05fe7c2aa9933122896ca50bd23dbd373e90d8e2f3897c4e92
# Fri, 12 Apr 2019 00:42:23 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 12 Apr 2019 00:42:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8c7d1531260f1f41cc711bfb3c8ab8efac981758fd7943518b863803f0b31552`  
		Last Modified: Tue, 09 Apr 2019 18:39:54 GMT  
		Size: 926.6 MB (926563180 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:59e24a9056c00889763abd79b000344468ace59ae58ae7d17acdfcbaadd1f6e8`  
		Last Modified: Fri, 12 Apr 2019 00:03:19 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b864d5e1e69c5a9ab357b87307521b8cf631a05627c51bed046a3a8fb129e32f`  
		Last Modified: Fri, 12 Apr 2019 01:45:03 GMT  
		Size: 4.9 MB (4870720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a86efc4c88cda6a9dde5b5112cc7dbd63d70df325478e6d361dfd29402699d`  
		Last Modified: Fri, 12 Apr 2019 01:50:16 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add42b81685d68d3c022138022f8bb76d295b79d29639daa7029cc920ecf19fc`  
		Last Modified: Fri, 12 Apr 2019 01:50:18 GMT  
		Size: 4.8 MB (4779208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d36b421ff535db1a48dc05abbdb98f4ea3a331febae63b72c7a024fbbafbf2`  
		Last Modified: Fri, 12 Apr 2019 01:50:14 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:272cc048976ccac8141fcd089a542d732cd8654462c183a36bf8c3271b464406`  
		Last Modified: Fri, 12 Apr 2019 01:50:14 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c36406ea178f3607d17fa28881b7b4d97eae4f3fdde53e485dd030776f7583`  
		Last Modified: Fri, 12 Apr 2019 01:50:14 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc30ad6759c9c4c47df3e27aa5ad32ca953a38c38d278a534fdac89fc83f1f29`  
		Last Modified: Fri, 12 Apr 2019 01:50:50 GMT  
		Size: 196.4 MB (196392834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dbe6954eeb44efa5525c25e6035d12d0a86d33a597cd76fc2b702a373e2fd9d`  
		Last Modified: Fri, 12 Apr 2019 01:50:14 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
