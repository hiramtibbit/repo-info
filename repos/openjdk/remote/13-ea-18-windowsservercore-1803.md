## `openjdk:13-ea-18-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:654f7a5c5b85c14b3169ef27a4cd16644e207cfede57efd52b0df390fb2747e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.706; amd64

### `openjdk:13-ea-18-windowsservercore-1803` - windows version 10.0.17134.706; amd64

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
