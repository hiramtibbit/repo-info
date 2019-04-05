## `openjdk:13-jdk-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:4ed9d3bfd75d6aa993f7a240ed1c9954569723b96e90f500767f7f73821e0cf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.648; amd64

### `openjdk:13-jdk-windowsservercore-1803` - windows version 10.0.17134.648; amd64

```console
$ docker pull openjdk@sha256:f8091dd658739cdfb64dc6b92ba474833ca2ca248897ccd397e07b80ff280dda
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2447469115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e01efd62be0320a86a4341185d3d21b3b8574bad67e62b53133c7d2c006ccd6`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 08 Mar 2019 23:20:01 GMT
RUN Install update 10.0.17134.648
# Sat, 16 Mar 2019 09:44:19 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 28 Mar 2019 10:11:54 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Thu, 28 Mar 2019 10:11:56 GMT
ENV JAVA_HOME=C:\openjdk-13
# Thu, 28 Mar 2019 10:12:27 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 05 Apr 2019 09:21:39 GMT
ENV JAVA_VERSION=13-ea+15
# Fri, 05 Apr 2019 09:21:40 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/15/GPL/openjdk-13-ea+15_windows-x64_bin.zip
# Fri, 05 Apr 2019 09:21:41 GMT
ENV JAVA_SHA256=24d9798529faf348bd3b66ad99eeea986cc6776dfb16b215310efd360e50fa61
# Fri, 05 Apr 2019 09:23:36 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 05 Apr 2019 09:23:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:be86bca8de59067e592a8becc2e83ed2465a6d9bce324043e434aa4a15493b00`  
		Last Modified: Mon, 11 Mar 2019 21:17:02 GMT  
		Size: 593.3 MB (593288046 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:97db8a70a029fc0e25892873d5695bd2b9a1c93e4cd7dcd91fcddf338989a592`  
		Last Modified: Sat, 16 Mar 2019 10:43:05 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebd1bf50e1506d9e28058901cc12b40f8cdec81ba85c3f1d2c0acd1edca3ca1`  
		Last Modified: Thu, 28 Mar 2019 11:05:24 GMT  
		Size: 4.7 MB (4727237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c1d4b4704542cf525ed703379f9d792ab87b14220fb9e4f3596483fa3e99a7`  
		Last Modified: Thu, 28 Mar 2019 11:05:22 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e698cc887047f632e412b17a83acaae1969ba08f7c0c6411d6604a7295d1cc9`  
		Last Modified: Thu, 28 Mar 2019 11:05:22 GMT  
		Size: 296.7 KB (296684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca91e0c5ce7a5e7b5d966db7c9bf0fdea67cb8306ce3b2bbe52866fa95eb7ab8`  
		Last Modified: Fri, 05 Apr 2019 09:34:33 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba70658d06d3818404056f6e2010253ae1b6f262fd89d002c14ab5fa0044b9e4`  
		Last Modified: Fri, 05 Apr 2019 09:34:33 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c478a978a9288b3af239d373668b22986f615f31b942b1003dd32a6d6a6ff667`  
		Last Modified: Fri, 05 Apr 2019 09:34:33 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c47746f884298ea2df3efd944e8b179df6cbbfc78688ab50e4a5d7c382c156`  
		Last Modified: Fri, 05 Apr 2019 09:35:25 GMT  
		Size: 189.5 MB (189461650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a64159ba053198220d09be16aff82acc097fe03d12a9caf0918566f49e40fb89`  
		Last Modified: Fri, 05 Apr 2019 09:34:33 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
