## `openjdk:13-ea-22-jdk-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:4d090632d99e6ca200cd242e495d922730346045be125b1fb8612c4282d4f73d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64

### `openjdk:13-ea-22-jdk-windowsservercore-ltsc2016` - windows version 10.0.14393.2972; amd64

```console
$ docker pull openjdk@sha256:83d9d93acca22ea4d12ae1bebfadbd55d01ec666814f3b11628f8975d2d4f327
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5906044903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0903670b51e41081c29ee574535efeb67b3226d0011db2792ce476c73fc1a776`
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
# Fri, 24 May 2019 23:21:33 GMT
ENV JAVA_VERSION=13-ea+22
# Fri, 24 May 2019 23:21:34 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/22/GPL/openjdk-13-ea+22_windows-x64_bin.zip
# Fri, 24 May 2019 23:21:35 GMT
ENV JAVA_SHA256=710888429ea792087a98d43a1a66b6329c2b810be5684494208f722559e731d0
# Fri, 24 May 2019 23:24:08 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 24 May 2019 23:24:10 GMT
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
	-	`sha256:a6334ebb9d8ac5c8739242ffe15f7bb35f9d5ca5d70aa499f1bbf4e8e7cffa8d`  
		Last Modified: Fri, 24 May 2019 23:51:03 GMT  
		Size: 1.2 KB (1179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f8723da66ad9116d409d35fdd3b238153abf42201d9f90eaba7e8571b8cf7c`  
		Last Modified: Fri, 24 May 2019 23:51:03 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31e2d2bbdc9767100e366a5d7286b3b2ee86afd4e5ab946eea53a6e793596fd`  
		Last Modified: Fri, 24 May 2019 23:51:03 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfa7adb1db4081fd87732ee7c8f7aa2aa9c52c8a6df2535ee972933231c8102`  
		Last Modified: Fri, 24 May 2019 23:51:27 GMT  
		Size: 195.8 MB (195840140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6ae426867809eaa7ce3431b7df0884ffba1513a13e9f978ec9461842724c45`  
		Last Modified: Fri, 24 May 2019 23:51:03 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
