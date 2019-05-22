## `openjdk:13-ea-21-windowsservercore-1809`

```console
$ docker pull openjdk@sha256:c5f30dc3d452741557d6fc7fc2848ef6fc936c2a1808fc329a7e000eff87507e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.504; amd64

### `openjdk:13-ea-21-windowsservercore-1809` - windows version 10.0.17763.504; amd64

```console
$ docker pull openjdk@sha256:479cc8f86496a0a34a5d6b32f392cfa091b9c62b1aaf1cf2ba18d1adc2af5a97
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2274653830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1fa8beb252b7802003ae01a66b9ab758837c9e6c645cdc15bb7320899802f41`
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
# Wed, 22 May 2019 15:10:12 GMT
ENV JAVA_VERSION=13-ea+21
# Wed, 22 May 2019 15:10:14 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/21/GPL/openjdk-13-ea+21_windows-x64_bin.zip
# Wed, 22 May 2019 15:10:15 GMT
ENV JAVA_SHA256=7ce289b3349a7605e3c673f1926d80cf3eb2256a6e5f707eb7111b7f817948f0
# Wed, 22 May 2019 15:11:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 22 May 2019 15:11:57 GMT
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
	-	`sha256:d22e98407986a1cfa738887e1159c3123da24abb57867aba9066d5d4161506cd`  
		Last Modified: Wed, 22 May 2019 16:03:06 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0376023b2564d4e7e05096f5b9395ebf765f3cc9bfd71216b3054b93679c9a11`  
		Last Modified: Wed, 22 May 2019 16:03:06 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e43095a0d9598fc3f20ccfaa680107a151c856b01567abcc9967668f6c43f23`  
		Last Modified: Wed, 22 May 2019 16:03:06 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb73992e35877bef0971890978bfce0d38f72232ef825bfea45b3ee600d8854`  
		Last Modified: Wed, 22 May 2019 16:03:42 GMT  
		Size: 190.9 MB (190888649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e350c5b73109a91ad6e1bd0ccd1a43c1b0a67d1a84501e120471944d2d01317`  
		Last Modified: Wed, 22 May 2019 16:03:06 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
