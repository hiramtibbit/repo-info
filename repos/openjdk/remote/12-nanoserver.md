## `openjdk:12-nanoserver`

```console
$ docker pull openjdk@sha256:440937208ded9e0abfb90169006ecc2de1b179244fd45447ca1cbf18cc334ef7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `openjdk:12-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull openjdk@sha256:3408e1aa1dd8a1f400f550bb69facf926872574ad3826904ca290e424013cd90
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **629.6 MB (629624130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2ece2346b73282e0479032b8f5482ba2579ee84e75cfc40eba8e451d0c2b50f`
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
# Tue, 01 Jan 2019 10:36:28 GMT
ENV JAVA_HOME=C:\openjdk-12
# Tue, 01 Jan 2019 10:37:05 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 11 Jan 2019 11:06:09 GMT
ENV JAVA_VERSION=12-ea+27
# Fri, 11 Jan 2019 11:06:10 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/27/GPL/openjdk-12-ea+27_windows-x64_bin.zip
# Fri, 11 Jan 2019 11:06:12 GMT
ENV JAVA_SHA256=c69b583b7ef4e8be918904969499814ffc8545f5dbd605a2872d1be80de2c0f8
# Fri, 11 Jan 2019 11:08:12 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 11 Jan 2019 11:08:15 GMT
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
	-	`sha256:d2ef869893f1952ba1f7062c1d967daa640dd02f2d24d44c9f99336cc5b5e7e0`  
		Last Modified: Tue, 01 Jan 2019 10:58:37 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ab3f05bfdb099bd926288b750f2af5609ba4ca94dee31b83125a05c99666ab`  
		Last Modified: Tue, 01 Jan 2019 10:58:37 GMT  
		Size: 858.9 KB (858949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792d7d8aea110320dff6ce63a8a3df114d2594d18657799c304b0a8fbac43994`  
		Last Modified: Fri, 11 Jan 2019 11:38:05 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20d2a032341d6a35dedd79edb91a703a8e927b87e778a96da4914fe1d89ac43`  
		Last Modified: Fri, 11 Jan 2019 11:38:05 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d4885a000f57930c673fe5872a9a893f984bbc204179a655080a5f6e454de7`  
		Last Modified: Fri, 11 Jan 2019 11:38:05 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b9f9a74faadc80de99f198651ec517b97239fc5c8b176eaea4e32550253a02a`  
		Last Modified: Fri, 11 Jan 2019 11:38:39 GMT  
		Size: 192.4 MB (192418877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f58b53ca844afb075855b51bb90ea1d786fc462801d591d3a04a2a9a0714530`  
		Last Modified: Fri, 11 Jan 2019 11:38:05 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
