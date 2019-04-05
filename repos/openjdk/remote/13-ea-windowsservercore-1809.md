## `openjdk:13-ea-windowsservercore-1809`

```console
$ docker pull openjdk@sha256:4941b9b455ba4e9ea5dd8734f73466ce33cc4f897e0ae9550997f9303cabf117
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.379; amd64

### `openjdk:13-ea-windowsservercore-1809` - windows version 10.0.17763.379; amd64

```console
$ docker pull openjdk@sha256:5e754981fe05d33535a3e00036690ece9c148cf874e5cabaef28bf1b2442a83d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2349485498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2959ce1290fae7fe010a9c0d06602230038527a8cd201c856a4e3f75090ce791`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 09 Mar 2019 03:10:13 GMT
RUN Install update 1809-amd64
# Sat, 16 Mar 2019 09:52:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 28 Mar 2019 10:15:19 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Thu, 28 Mar 2019 10:15:21 GMT
ENV JAVA_HOME=C:\openjdk-13
# Thu, 28 Mar 2019 10:15:49 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 05 Apr 2019 09:23:52 GMT
ENV JAVA_VERSION=13-ea+15
# Fri, 05 Apr 2019 09:23:53 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/15/GPL/openjdk-13-ea+15_windows-x64_bin.zip
# Fri, 05 Apr 2019 09:23:55 GMT
ENV JAVA_SHA256=24d9798529faf348bd3b66ad99eeea986cc6776dfb16b215310efd360e50fa61
# Fri, 05 Apr 2019 09:25:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 05 Apr 2019 09:25:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d48f500354393ec6614f6435639636db175e3ac6c3d1a3d1857b609789de7a7d`  
		Last Modified: Tue, 12 Mar 2019 22:36:05 GMT  
		Size: 620.8 MB (620755432 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5e195200ec7c843146b67b39b26ec25466f3b96bce8db32ff3a809a25fdece80`  
		Last Modified: Sat, 16 Mar 2019 10:45:02 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613244f30bb1a7b8ec62a7335f06e3cab5ea68622dead5ce1f837b9c3f829daf`  
		Last Modified: Thu, 28 Mar 2019 11:06:45 GMT  
		Size: 4.3 MB (4284846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b1c747acf45cad258e7509eb6a95224afa6d087de2310fb9974c969bce2910`  
		Last Modified: Thu, 28 Mar 2019 11:06:43 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d896352a7b9155c9918d35efff6bbb85dc04d7e3ce305cc536e6be58258951d7`  
		Last Modified: Thu, 28 Mar 2019 11:06:43 GMT  
		Size: 298.8 KB (298778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532fce7e25ba423db6e77158b89332a4fcad5847cbd8bc7fff899d160b855611`  
		Last Modified: Fri, 05 Apr 2019 09:35:56 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e350262c80cf106e880465ee8d00da0792333ec42c8d3439e7f3eb962ac348c4`  
		Last Modified: Fri, 05 Apr 2019 09:35:56 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b40e3a645cf096beb3e84ec516107ac51fe8b4909b2c2ac2eeba92b61e31141`  
		Last Modified: Fri, 05 Apr 2019 09:35:56 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64611f9774db75dd1044082e75791ad96b246df30d707501f955ab2a15d9b9b`  
		Last Modified: Fri, 05 Apr 2019 09:36:41 GMT  
		Size: 189.5 MB (189453878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf50dff1aed3fd2a1165ebfb2280d49e64660904c2dc3b8000b2d584a589adb`  
		Last Modified: Fri, 05 Apr 2019 09:35:56 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
