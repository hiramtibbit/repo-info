## `openjdk:11-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:6acdb36501223aeef4fc5976f21ec4ebab1b0814d5a03bb43ab78431a5000f27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2791; amd64

### `openjdk:11-windowsservercore-ltsc2016` - windows version 10.0.14393.2791; amd64

```console
$ docker pull openjdk@sha256:b4b2b1644a50d5f0a9cbb2d9942aecaf8726c9e7736e204801b50c5b13459bc6
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5838272653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:275a371e3d557a9a8de4069d2d0f3c2d064dcd26d8d23a140e7969a00e0a7487`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Feb 2019 20:08:57 GMT
RUN Install update 10.0.14393.2791
# Wed, 13 Feb 2019 10:35:06 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 15 Feb 2019 10:17:29 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 15 Feb 2019 10:48:39 GMT
ENV JAVA_HOME=C:\openjdk-11
# Fri, 15 Feb 2019 10:49:40 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 15 Feb 2019 10:49:42 GMT
ENV JAVA_VERSION=11.0.2
# Fri, 15 Feb 2019 10:49:43 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_windows-x64_bin.zip
# Fri, 15 Feb 2019 10:49:45 GMT
ENV JAVA_SHA256=cf39490fe042dba1b61d6e9a395095279a69e70086c8c8d5466d9926d80976d8
# Fri, 15 Feb 2019 10:52:04 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 15 Feb 2019 10:52:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b479a92ce115faf181c1196d762b00f05ec9aa83dc2fec2b7ca094c8d6e1bfff`  
		Last Modified: Mon, 11 Feb 2019 20:08:57 GMT  
		Size: 1.6 GB (1570061102 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d6be0e7f96b74f68be8ae9cde286b6108d09d939d8cb130d00bfb8519a6b7fbc`  
		Last Modified: Wed, 13 Feb 2019 11:04:46 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56bc4c4dc3afb15f282193b4c750313cd5aadd44b9d7067cc9f2780c0efbf2eb`  
		Last Modified: Fri, 15 Feb 2019 11:43:15 GMT  
		Size: 5.2 MB (5211770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc524a36494d1a8c364946489b8b7d12cac3c1b5aeff1942bb6cacf95d26990b`  
		Last Modified: Fri, 15 Feb 2019 12:08:27 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:564451239e46c71ea71953ff3151007ecf2c24892fd9e05d7b13bcb5fdbde2b4`  
		Last Modified: Fri, 15 Feb 2019 12:08:30 GMT  
		Size: 5.2 MB (5183866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67638953981b566431a95db16e3327c2398d1526a8e1f0dfda4ae117543d1df`  
		Last Modified: Fri, 15 Feb 2019 12:08:25 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175c5b8c5958f5aa94a02e9f1c26af5d9734e987412126868e996ac97de5dcd6`  
		Last Modified: Fri, 15 Feb 2019 12:08:25 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3e4f3014b1d5e9c68085ece4416175a860c5d4bc7746a541bf10a01a0d8b39`  
		Last Modified: Fri, 15 Feb 2019 12:08:25 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5eae94f739d384222d944a839b2e32defad5ec59ffaa528b891db62dbb73b22`  
		Last Modified: Fri, 15 Feb 2019 12:09:37 GMT  
		Size: 187.8 MB (187822739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdaa0ac00a373d5c7ff68334bbf746a80de90e0c057be2a6c1e6e9ea514cb6c0`  
		Last Modified: Fri, 15 Feb 2019 12:08:25 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
