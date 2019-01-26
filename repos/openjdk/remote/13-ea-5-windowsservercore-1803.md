## `openjdk:13-ea-5-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:3e2397e3ad25c6db7ea12d782a7fdd6e9528bfeb88031a3f935f0e2a55d65932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.523; amd64

### `openjdk:13-ea-5-windowsservercore-1803` - windows version 10.0.17134.523; amd64

```console
$ docker pull openjdk@sha256:669952a868f95ac18775cfadb3d77690069540041cdfed9b80b1c17b185e73b7
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2442727914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e53db7ccd651758f9c4cb55ec741d4993b79e58dd0353edc765597edea27ab77`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 04 Jan 2019 22:40:00 GMT
RUN Install update 10.0.17134.523
# Fri, 11 Jan 2019 10:49:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 11 Jan 2019 10:50:29 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 11 Jan 2019 10:50:31 GMT
ENV JAVA_HOME=C:\openjdk-13
# Fri, 11 Jan 2019 10:51:03 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Sat, 26 Jan 2019 10:49:41 GMT
ENV JAVA_VERSION=13-ea+5
# Sat, 26 Jan 2019 10:49:42 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/5/GPL/openjdk-13-ea+5_windows-x64_bin.zip
# Sat, 26 Jan 2019 10:49:44 GMT
ENV JAVA_SHA256=bbac8dc310afb0b3bed5d2f8e3acaac27a7b544ee2d863c8e2d4292eb48c2aa8
# Sat, 26 Jan 2019 10:51:34 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:51:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:80c309c8f9e2a929c92fe88fafde882006a56d421e9cb306b5a55baefe52c4b6`  
		Last Modified: Tue, 08 Jan 2019 01:38:21 GMT  
		Size: 586.0 MB (585998859 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bfc3888f034fb7d00898fffa324da3e9ccfb30f42ed800fe45bb58da849af364`  
		Last Modified: Fri, 11 Jan 2019 11:31:41 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a22a20ec8993a1ae8419fb0ce687c2c852f0ba9e1f0839f0bed993eff642cae6`  
		Last Modified: Fri, 11 Jan 2019 11:31:43 GMT  
		Size: 4.7 MB (4680380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4992a6f3c008ab591727ff01481b1a5b2d79577999ea4548df52270f4bae84`  
		Last Modified: Fri, 11 Jan 2019 11:31:41 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af45da0a51dcf4f5b20774a899fbc2b0c9d870950429e7f970dacf21421e8ff`  
		Last Modified: Fri, 11 Jan 2019 11:31:43 GMT  
		Size: 293.2 KB (293172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d096db61826d879c132cbb61c342f662ec88d732e6cbb03d85194b32e050f63d`  
		Last Modified: Sat, 26 Jan 2019 11:24:36 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d7da22b3e1b8c5635dd886d0835141164709a75038b1358d3939bc5574a28f`  
		Last Modified: Sat, 26 Jan 2019 11:24:35 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8d3909c12adc30f057120e70b2f02db27934f86cc3313a8fe81d9034f43af2`  
		Last Modified: Sat, 26 Jan 2019 11:24:35 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1763732586aa682100e9afbf5cb76c921f2f59d7c0a332bc04d75a02f0d7da49`  
		Last Modified: Sat, 26 Jan 2019 11:25:40 GMT  
		Size: 192.1 MB (192060012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01036b3a7e3c6a626e5fedde158eaccd1700bd8aff51176934a3bb8f595cc8d`  
		Last Modified: Sat, 26 Jan 2019 11:24:35 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
