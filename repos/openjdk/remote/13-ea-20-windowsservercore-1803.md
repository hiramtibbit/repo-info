## `openjdk:13-ea-20-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:0de3d30dfa55fcca3bc0fc029a54c65625d3fb376bb72e1223f618644585b84f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.706; amd64

### `openjdk:13-ea-20-windowsservercore-1803` - windows version 10.0.17134.706; amd64

```console
$ docker pull openjdk@sha256:ec914939bba9df2895fcbae3422803d96f0777c5ccfc5aab92f2063eae8014dc
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2451887585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43bc7d1da599c00200925008fcdc229a978acc7613112ccf15867b92549bfaad`
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
# Tue, 14 May 2019 00:52:22 GMT
ENV JAVA_VERSION=13-ea+20
# Tue, 14 May 2019 00:52:24 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/20/GPL/openjdk-13-ea+20_windows-x64_bin.zip
# Tue, 14 May 2019 00:52:25 GMT
ENV JAVA_SHA256=532fb6c2bd0e979dad19c495aa9c4378deb5fdef4913ccb9eece8202403f0e01
# Tue, 14 May 2019 00:54:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 14 May 2019 00:54:09 GMT
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
	-	`sha256:9b4b73505eae3e1babf7968c184dcdd2577a364f99337f6f654f41c8e1d2f9a2`  
		Last Modified: Tue, 14 May 2019 00:59:32 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fc2ec8e9698b72f4aeb82634b82ca4490b9d1011f0825e26aa289cda85a2fa`  
		Last Modified: Tue, 14 May 2019 00:59:32 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6e827cb506507c55a34640a7d5836a260ff728aa94cacf9ac1165c3d0279ab`  
		Last Modified: Tue, 14 May 2019 00:59:33 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49b23dca2402a799edfa55a0aa8135238dc6fc266a3c597829b39d0e69058e49`  
		Last Modified: Tue, 14 May 2019 00:59:52 GMT  
		Size: 190.5 MB (190507784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f746184ace43b068506a3ebe437fab4214f493c665274081b2b31d2e7233dd1e`  
		Last Modified: Tue, 14 May 2019 00:59:33 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
