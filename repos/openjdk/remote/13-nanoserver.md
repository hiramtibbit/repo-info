## `openjdk:13-nanoserver`

```console
$ docker pull openjdk@sha256:d206f5d088d943c5c98aecbb544c763bcb23335a4b545744b7ba6152a3616011
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `openjdk:13-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull openjdk@sha256:eec3bc2c62e5451217f8a4504b289f3611283074850fc3fffdd171cdfb6ee28f
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **629.9 MB (629895146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e45e54365615ecf460a300b3ce1461373c59d27c2681a2b73b9496f183b4724`
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
# Tue, 26 Feb 2019 10:25:22 GMT
ENV JAVA_VERSION=13-ea+9
# Tue, 26 Feb 2019 10:25:23 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/9/GPL/openjdk-13-ea+9_windows-x64_bin.zip
# Tue, 26 Feb 2019 10:25:24 GMT
ENV JAVA_SHA256=d71c5f5349d037c330739d4387879a2d6f6d58f4b275f6c2780c163987563cb5
# Tue, 26 Feb 2019 10:27:26 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 26 Feb 2019 10:27:28 GMT
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
	-	`sha256:24324521236b3abce49f8bb807989a4b4a9b8319d85e724f47798872cbea850a`  
		Last Modified: Tue, 26 Feb 2019 10:57:59 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178eb299e011a2d9f82762e0864633ebedbab5ad0407718ffd030da183a96f4c`  
		Last Modified: Tue, 26 Feb 2019 10:57:59 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6902c278aa2d52051b608fc5fc4aa38179da32812ec1787f0e0128bc29aa7f3`  
		Last Modified: Tue, 26 Feb 2019 10:57:59 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0cd1d0e8cb7d8261066a0c28cc8bbf8fcf2c6f8f5f3c453a017f4a8b02499bd`  
		Last Modified: Tue, 26 Feb 2019 10:58:19 GMT  
		Size: 192.7 MB (192687834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a9cb2865f9faff6273bbedda15c9e006fccaa53cff06953cc8dd3788f756bab`  
		Last Modified: Tue, 26 Feb 2019 10:58:00 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
