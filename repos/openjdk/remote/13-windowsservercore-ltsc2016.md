## `openjdk:13-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:184c74cea7523c169e8b61e2f2657dda1a9b73d67e267c9c5f402faacdc0b215
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64

### `openjdk:13-windowsservercore-ltsc2016` - windows version 10.0.14393.2972; amd64

```console
$ docker pull openjdk@sha256:6987464d23b7d3b7277017ba74211cc18d7abfed8b6234a6f94d66c93f674242
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5906238154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b81a8b5552f1a70cafcb933fbea0c59877e87aac58fc2af118a8bf75467d4522`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 12:40:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 22 May 2019 15:01:09 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Wed, 22 May 2019 15:01:11 GMT
ENV JAVA_HOME=C:\openjdk-13
# Wed, 22 May 2019 15:02:15 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 07 Jun 2019 21:33:09 GMT
ENV JAVA_VERSION=13-ea+24
# Fri, 07 Jun 2019 21:33:10 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/24/GPL/openjdk-13-ea+24_windows-x64_bin.zip
# Fri, 07 Jun 2019 21:33:12 GMT
ENV JAVA_SHA256=47e5be966776f0807c40baef31c75076cc6776a5b445110ff44fa712548efa6e
# Fri, 07 Jun 2019 21:35:37 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 07 Jun 2019 21:35:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:238abb146382d28000f03a82c40be99cbfac99a1480f9d23f8a6420cafc6b083`  
		Last Modified: Wed, 22 May 2019 13:21:05 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da2d9acb15b1491a16d4e5f0a8fd1529c62b2f21b6f42cff507fd300be47976`  
		Last Modified: Wed, 22 May 2019 16:00:49 GMT  
		Size: 5.2 MB (5216709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ea951528d33f80f4e33a9f7a19f1dac91e073328ed296d057bc566ff3c55cb`  
		Last Modified: Wed, 22 May 2019 16:00:46 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa274753582b784d44730714118e69b557fdd4ac6425dd225397a4a854ba419e`  
		Last Modified: Wed, 22 May 2019 16:00:52 GMT  
		Size: 5.2 MB (5192749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263bd97a03ffc2c1ce903a277df779845b447a8ac5024cd222a195e182039165`  
		Last Modified: Fri, 07 Jun 2019 21:44:01 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2abdbb069eae411a6e818b3c63d9af6847f9029b3439e6441b2452855e7e31f1`  
		Last Modified: Fri, 07 Jun 2019 21:44:01 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3a0292cddbc62e17e9ea4b61a42acffd6bb12ba1c0ee18f6cc56af77021405`  
		Last Modified: Fri, 07 Jun 2019 21:44:01 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542dee652aea89394fc8714ed4432b919302e22230d87927a7b0f0a3e47bdd63`  
		Last Modified: Fri, 07 Jun 2019 21:45:22 GMT  
		Size: 196.0 MB (196033364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34e6f281036ef165a62c69f2170612ad59bf1876cb897fc677df9f9e47c3f9e7`  
		Last Modified: Fri, 07 Jun 2019 21:44:01 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
