## `openjdk:12-ea-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:8f4fdd54536263f9758c92a03cb7f58541f371fe80e667d6a4e9c52d12738002
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2724; amd64

### `openjdk:12-ea-windowsservercore-ltsc2016` - windows version 10.0.14393.2724; amd64

```console
$ docker pull openjdk@sha256:9ffe3facf8f7dd2506808456a3545535ba4c83bef4850bf2fdad97326ed7c75b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5847517565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd3d922192540e4c5906703dfb332be48d424e0113a93e6b1977751f3b838b5a`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 08 Jan 2019 17:44:44 GMT
RUN Install update 10.0.14393.2724
# Fri, 11 Jan 2019 10:38:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 11 Jan 2019 10:40:05 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 11 Jan 2019 10:56:03 GMT
ENV JAVA_HOME=C:\openjdk-12
# Fri, 11 Jan 2019 10:57:09 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 11 Jan 2019 10:57:11 GMT
ENV JAVA_VERSION=12-ea+27
# Fri, 11 Jan 2019 10:57:13 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/27/GPL/openjdk-12-ea+27_windows-x64_bin.zip
# Fri, 11 Jan 2019 10:57:14 GMT
ENV JAVA_SHA256=c69b583b7ef4e8be918904969499814ffc8545f5dbd605a2872d1be80de2c0f8
# Fri, 11 Jan 2019 10:59:52 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 11 Jan 2019 10:59:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d0c71fc8924e632b81de72fba055610c4a5259b2f6723e15f70662f7bc328184`  
		Last Modified: Tue, 08 Jan 2019 17:44:44 GMT  
		Size: 1.6 GB (1565830172 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:52e9c8dd86ca94537c9a49c5082ecddcdff7fc266e93f1587ff015c3e463ed51`  
		Last Modified: Fri, 11 Jan 2019 11:28:56 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3a08c54d06bafe75319fad9ebe015d3e16d44a6879a0a604dbb581cbb76dfd`  
		Last Modified: Fri, 11 Jan 2019 11:28:58 GMT  
		Size: 5.2 MB (5226451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0daf856b002247121d542d95cf513ee3ef13616731845c64163bc7dfd43128e`  
		Last Modified: Fri, 11 Jan 2019 11:34:15 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4553b23308e27d9c21b72a109228677de7ca7fbe6f9fec47154767dfcda874ae`  
		Last Modified: Fri, 11 Jan 2019 11:34:17 GMT  
		Size: 5.2 MB (5199114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c50e2af65614b4d8b6424394f6ecd928c33bb9b4397b72ed674fb17d0fd885`  
		Last Modified: Fri, 11 Jan 2019 11:34:13 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe86df3aa6976107cf61482f947d38980fd80a59f690346b030bd5780bc275b`  
		Last Modified: Fri, 11 Jan 2019 11:34:13 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a1d74c741c285d9eb53b0851296e7ce59787170cf5f13755fb37583053d46a`  
		Last Modified: Fri, 11 Jan 2019 11:34:13 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ff669ee8c89430ed4995e6617627669d4433758302888b785a632c26efd97c`  
		Last Modified: Fri, 11 Jan 2019 11:34:52 GMT  
		Size: 201.3 MB (201268714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b086ba70f37d6dc628fe0033d2c8e08721eaf6b99ee104b3564759374bbfcceb`  
		Last Modified: Fri, 11 Jan 2019 11:34:13 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
