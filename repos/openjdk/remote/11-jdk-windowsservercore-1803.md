## `openjdk:11-jdk-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:2e2ae117c7585f7c024a0406ac61eae48e398b6dcd046e88d8e2ce8a3fd7276c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.523; amd64

### `openjdk:11-jdk-windowsservercore-1803` - windows version 10.0.17134.523; amd64

```console
$ docker pull openjdk@sha256:c40c92cf2340a74ce74764d242f4ae79814237db73952f45c1680271c60cd0af
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2433669787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f89741788730e36f8eef8c3fa23bfbc96458114d64b1846a0d4557ea0b4ca070`
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
# Fri, 11 Jan 2019 11:15:47 GMT
ENV JAVA_HOME=C:\openjdk-11
# Fri, 11 Jan 2019 11:16:15 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 11 Jan 2019 11:16:17 GMT
ENV JAVA_VERSION=11.0.1
# Fri, 11 Jan 2019 11:16:18 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk11/13/GPL/openjdk-11.0.1_windows-x64_bin.zip
# Fri, 11 Jan 2019 11:16:19 GMT
ENV JAVA_SHA256=289dd06e06c2cbd5e191f2d227c9338e88b6963fd0c75bceb9be48f0394ede21
# Fri, 11 Jan 2019 11:17:56 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 11 Jan 2019 11:17:59 GMT
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
	-	`sha256:1c69b7c833f8c3791c10b0731cecdf29c787578a77030866848787ad6171f9c6`  
		Last Modified: Fri, 11 Jan 2019 11:45:00 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473ddf59fdc2bc31b13c8ddb93de564ed5695f2dc491063634e361de66590d50`  
		Last Modified: Fri, 11 Jan 2019 11:45:00 GMT  
		Size: 293.3 KB (293316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d8df8a9ce7e7307a77b4d4aa7b0a7d2ed6b42c330ef308e91b32793df0ed4e`  
		Last Modified: Fri, 11 Jan 2019 11:44:58 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac4ac4e01caaa7e97cb43a95ed73f7f0dd58d09152d13f5be723607a5511bcf`  
		Last Modified: Fri, 11 Jan 2019 11:44:58 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d129952f285ee37eadc16ffe3bc8f4515bfdcfd64e3b96e170986dfec8ec2a4`  
		Last Modified: Fri, 11 Jan 2019 11:44:57 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:593bbd14e1d72a1164d42b62428785b620bb415be53c71aadb31cf5c88b4f78e`  
		Last Modified: Fri, 11 Jan 2019 11:45:55 GMT  
		Size: 183.0 MB (183001767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd6a0660b1ecb2ed8a278c0d59bbb0d805c4e007bf70e9536e07c7790ebaa70`  
		Last Modified: Fri, 11 Jan 2019 11:44:57 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
