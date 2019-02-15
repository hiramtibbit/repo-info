## `openjdk:13-ea-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:2391eb8481c4a5dd7d0a13900c477df71606b94518e3afb02917739f84e43c4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2791; amd64

### `openjdk:13-ea-windowsservercore-ltsc2016` - windows version 10.0.14393.2791; amd64

```console
$ docker pull openjdk@sha256:5df5ab1bcc162f9b27ec0a1a9faa89840c834517bcbf34bc8e1f7ce1ca9dc102
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5847439716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee65fb48ba5a84e5d29a896eceb3d9394dd6d07438eb2de1bb0fc04b20279a1e`
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
# Fri, 15 Feb 2019 10:17:31 GMT
ENV JAVA_HOME=C:\openjdk-13
# Fri, 15 Feb 2019 10:18:32 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 15 Feb 2019 10:18:33 GMT
ENV JAVA_VERSION=13-ea+8
# Fri, 15 Feb 2019 10:18:35 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/8/GPL/openjdk-13-ea+8_windows-x64_bin.zip
# Fri, 15 Feb 2019 10:18:36 GMT
ENV JAVA_SHA256=f94f40058105735fbb640f8324177cbbec92ec427dcf1572e4485b0a6bbf83cb
# Fri, 15 Feb 2019 10:21:00 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 15 Feb 2019 10:21:02 GMT
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
	-	`sha256:f0fb72a09a5a546203e822dda6bd60f62e431083038ee6fd5291713bf8edcb6c`  
		Last Modified: Fri, 15 Feb 2019 11:43:08 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba05d181b0abfd709e657c82989804388143e73cf9f666ac52202da54bb47f44`  
		Last Modified: Fri, 15 Feb 2019 11:43:14 GMT  
		Size: 5.2 MB (5182757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63637befdd6908ee94eb92e85c5c6bee3a827f429af3ecaf1c0187f85a379b98`  
		Last Modified: Fri, 15 Feb 2019 11:43:06 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3af0b47e9b71794b88586bb319b970ae3bffb3694e7ed0b703773317e1aae996`  
		Last Modified: Fri, 15 Feb 2019 11:43:06 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86cbf7d6779befe64fa3a39fbc01f8e6aa9b2a38a3316f58fc125753e152c427`  
		Last Modified: Fri, 15 Feb 2019 11:43:06 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3921cb6c7b7c9648c2b2198a575d785fb102499ad50023232822f4dd1ff5636`  
		Last Modified: Fri, 15 Feb 2019 11:46:42 GMT  
		Size: 197.0 MB (196990971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf1bda7588c14c9812c5f3a0625ae17a6ba034157acce3a0b0f8f1071da3a82`  
		Last Modified: Fri, 15 Feb 2019 11:43:06 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
