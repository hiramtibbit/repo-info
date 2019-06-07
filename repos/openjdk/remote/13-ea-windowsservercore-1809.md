## `openjdk:13-ea-windowsservercore-1809`

```console
$ docker pull openjdk@sha256:5d91443703d385955cd1a0c6d5f86c753540136d9afffd25fdd3a2191d02b6d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.504; amd64

### `openjdk:13-ea-windowsservercore-1809` - windows version 10.0.17763.504; amd64

```console
$ docker pull openjdk@sha256:d9e5c1f3a19eb47a5897f90dc326d75b2365b9d6f8bec5752c555601a4039ac7
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2274853606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e8630ac67ad8587400515d9d86f4191f786c924a38b634a52064e7474b5cd40`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 18 May 2019 18:40:00 GMT
RUN Install update 1809-amd64
# Wed, 22 May 2019 12:57:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 22 May 2019 15:09:42 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Wed, 22 May 2019 15:09:44 GMT
ENV JAVA_HOME=C:\openjdk-13
# Wed, 22 May 2019 15:10:11 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 07 Jun 2019 21:28:33 GMT
ENV JAVA_VERSION=13-ea+24
# Fri, 07 Jun 2019 21:28:35 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/24/GPL/openjdk-13-ea+24_windows-x64_bin.zip
# Fri, 07 Jun 2019 21:28:36 GMT
ENV JAVA_SHA256=47e5be966776f0807c40baef31c75076cc6776a5b445110ff44fa712548efa6e
# Fri, 07 Jun 2019 21:30:52 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 07 Jun 2019 21:30:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b16cfeeaf4b37af9fc146f7043ceb629c1bc50ace967227817e50e47f4a71529`  
		Last Modified: Sun, 19 May 2019 19:09:22 GMT  
		Size: 544.4 MB (544441311 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:51cd7ddd4054cb845626f99a0b0388fcfe1f6e9521bd4a1a8337620d6452ef34`  
		Last Modified: Wed, 22 May 2019 13:24:53 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b28e92a323e43831b1f9796007f4183088c802f6e230e1f364d5f0c98ae2f7da`  
		Last Modified: Wed, 22 May 2019 16:03:11 GMT  
		Size: 4.3 MB (4339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56fd04ec98e43969055eb53d1464ab7fb725bd4e6f234cb8b5939dc72788af2`  
		Last Modified: Wed, 22 May 2019 16:03:10 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad9fd681540709cb06382e9917e1103bf399d3d9dbda764a252a17b4a9729e8`  
		Last Modified: Wed, 22 May 2019 16:03:10 GMT  
		Size: 291.5 KB (291464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:964b3810e571d0370d3b08ac9bdb21e3123dd145282eb7776297e34c87f0efca`  
		Last Modified: Fri, 07 Jun 2019 21:38:31 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a90c9f29e9567bef896d0bc66963be2bc31898baa9cf8c3953f9ee5cbdd0ca8`  
		Last Modified: Fri, 07 Jun 2019 21:38:31 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a0b4727dc37005b570e3481a480df9f6798cca71d37f8fbfc875dd89107ae1`  
		Last Modified: Fri, 07 Jun 2019 21:38:31 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddcd6fa0a35ff9f373e045c0b6343c35e66355e782af13531833776b52cc735a`  
		Last Modified: Fri, 07 Jun 2019 21:42:08 GMT  
		Size: 191.1 MB (191088595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da3ebdb2ef750f7e5a5f305c27701293c4f93b80558866cee1e4b6ef8c2d675f`  
		Last Modified: Fri, 07 Jun 2019 21:38:31 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
