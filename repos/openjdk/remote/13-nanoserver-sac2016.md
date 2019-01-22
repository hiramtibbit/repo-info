## `openjdk:13-nanoserver-sac2016`

```console
$ docker pull openjdk@sha256:190961b52ed2966dc1f7dea4e307a44640eb1322e43a1983f0c3ee6c77028840
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `openjdk:13-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull openjdk@sha256:b77123a4fc3f4d1b7a31d662027dea30e5779497d62770a4ff28a3d9fc1e4ede
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **629.7 MB (629748360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6e024b7feb19446c871c1fda4c580de46fca62824c9e5f0f9cab8e2170810a4`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 25 Dec 2018 18:43:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 25 Dec 2018 18:44:05 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 04 Jan 2019 10:26:31 GMT
ENV JAVA_HOME=C:\openjdk-13
# Fri, 04 Jan 2019 10:27:10 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Tue, 22 Jan 2019 10:25:36 GMT
ENV JAVA_VERSION=13-ea+4
# Tue, 22 Jan 2019 10:25:37 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/4/GPL/openjdk-13-ea+4_windows-x64_bin.zip
# Tue, 22 Jan 2019 10:25:38 GMT
ENV JAVA_SHA256=72066e2a67281d5757855d21a3a7fc04bd38fe6c650e157c9bf9c720627386dc
# Tue, 22 Jan 2019 10:27:50 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 22 Jan 2019 10:27:53 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1f72e042ba5d72d27b42026712df029a6a160e9acc59f0ec444c96e610f275d3`  
		Last Modified: Tue, 25 Dec 2018 18:56:43 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9480a580fcc4eac71262761c837c4002f85e0a7b13e7cacf7f1d2f1a01b231fe`  
		Last Modified: Tue, 25 Dec 2018 18:56:44 GMT  
		Size: 943.8 KB (943792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf772117107201f3620270be39f8f8a3a0890b91491539a5d466efa546b44d8`  
		Last Modified: Fri, 04 Jan 2019 10:35:44 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ca64795c4a470baf8c3ad64701351384aee060dbb9b6d33b65e5045d05a921`  
		Last Modified: Fri, 04 Jan 2019 10:35:45 GMT  
		Size: 861.0 KB (861006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc64134cd913198514fe6ca2074dcdf8af5d19983ac33bedc2207d55374173a`  
		Last Modified: Tue, 22 Jan 2019 11:30:01 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5554fec90439ed16287dd82b736c38e91090a3707ca8ab1cec5bc3cbd93b4b`  
		Last Modified: Tue, 22 Jan 2019 11:30:01 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7420bf849ad18b59f012ed152f2d64c5a59cba071afa4e99dd6aac52c214c56f`  
		Last Modified: Tue, 22 Jan 2019 11:30:04 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8872619b710c5559adeaa06c3ccd9fad343f1fc012ca5ddc70200a9a7f57641`  
		Last Modified: Tue, 22 Jan 2019 11:30:54 GMT  
		Size: 192.5 MB (192541048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e80161c43edb66042c04591c8a829f2cd65474e995034d8d3a8e5bcddc2a3e`  
		Last Modified: Tue, 22 Jan 2019 11:30:01 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
