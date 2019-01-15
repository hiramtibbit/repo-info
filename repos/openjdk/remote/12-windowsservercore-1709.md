## `openjdk:12-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:31cae6b21999feb231fc4227f78112477820fac7e31d51ac59c4d336b6ad44ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.904; amd64

### `openjdk:12-windowsservercore-1709` - windows version 10.0.16299.904; amd64

```console
$ docker pull openjdk@sha256:c0ae7820bf83cff22ac444d4fc80f18afac2fc7e50327e4ecd7790bbf3172e10
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3352936276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a81e651287e77848398c31c73133d7ab7af5a3b07c6fb0a0e32929011e492cb4`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 03 Jan 2019 04:08:43 GMT
RUN Install update 10.0.16299.904
# Fri, 11 Jan 2019 10:44:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 11 Jan 2019 10:46:05 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 11 Jan 2019 11:00:15 GMT
ENV JAVA_HOME=C:\openjdk-12
# Fri, 11 Jan 2019 11:01:00 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 11 Jan 2019 11:01:01 GMT
ENV JAVA_VERSION=12-ea+27
# Fri, 11 Jan 2019 11:01:03 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/27/GPL/openjdk-12-ea+27_windows-x64_bin.zip
# Fri, 11 Jan 2019 11:01:05 GMT
ENV JAVA_SHA256=c69b583b7ef4e8be918904969499814ffc8545f5dbd605a2872d1be80de2c0f8
# Fri, 11 Jan 2019 11:03:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 11 Jan 2019 11:03:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ee945370a9b4bb58ea63e33767041df2ecc306b6e73a231fe90d31980e26b05d`  
		Last Modified: Tue, 08 Jan 2019 18:00:22 GMT  
		Size: 872.8 MB (872755280 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:774e51f30ad2e236ae01fce26ad8420164c15c05a9cfbe2509381f0e2e789b85`  
		Last Modified: Fri, 11 Jan 2019 11:30:39 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e70977a4f324a334bb094145e798f76dfe10b6cbbab23a590c3e085e6250fec6`  
		Last Modified: Fri, 11 Jan 2019 11:30:45 GMT  
		Size: 4.8 MB (4785398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af86dea52354dd40f4d7f53a09d2ec4572bd2367c16081d94e0b947152e8e7ae`  
		Last Modified: Fri, 11 Jan 2019 11:35:20 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee2288b9dc63cbe09f560e77c1371ce8899c8b4433c704a86688e7e7555feed`  
		Last Modified: Fri, 11 Jan 2019 11:35:21 GMT  
		Size: 4.7 MB (4739451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4544f6a6c8cc64920ef58f7d8009519c49b84a61a1b1372ec0d9de6f7f6316b5`  
		Last Modified: Fri, 11 Jan 2019 11:35:17 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a9e5fab811c872ae0e3202ffe948b182d5784e9e4c6230739bd3a69a6ce41f`  
		Last Modified: Fri, 11 Jan 2019 11:35:17 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5ee7f3541a7ad71c9c87ad81544196b6e9504042bf197cc2d4b7e93624bc119`  
		Last Modified: Fri, 11 Jan 2019 11:35:17 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6e7c97c04fe091193abe87f7db0f57fee1d63cd6c60c67627722ef2805b153`  
		Last Modified: Fri, 11 Jan 2019 11:35:50 GMT  
		Size: 196.3 MB (196348356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec25e85d32985c0a7bb02940f9798854be8c314432b6b6e4cfd315d97a4007a9`  
		Last Modified: Fri, 11 Jan 2019 11:35:17 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
