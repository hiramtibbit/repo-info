## `openjdk:12-ea-jdk-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:85a256dc593274e5e53b5c1d1249c6b5ce904034fb79caa4398a86ca9abb42e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.523; amd64

### `openjdk:12-ea-jdk-windowsservercore-1803` - windows version 10.0.17134.523; amd64

```console
$ docker pull openjdk@sha256:71c030e9e44100369d9715a7d5cb931805fab7531b4394be80e7e3a2e8a2c840
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2442620973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da17a11e65ef5bf130f84db1681daa988e2efbdbc2b3f00eacacf6a3fd94b2ee`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 04 Jan 2019 22:40:00 GMT
RUN Install update 10.0.17134.523
# Fri, 11 Jan 2019 10:49:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 11 Jan 2019 10:50:29 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 11 Jan 2019 11:03:27 GMT
ENV JAVA_HOME=C:\openjdk-12
# Fri, 11 Jan 2019 11:03:56 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Tue, 22 Jan 2019 10:33:26 GMT
ENV JAVA_VERSION=12-ea+28
# Tue, 22 Jan 2019 10:33:28 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/28/GPL/openjdk-12-ea+28_windows-x64_bin.zip
# Tue, 22 Jan 2019 10:33:29 GMT
ENV JAVA_SHA256=faa74869bda4c98782997c87ca40cd6f666f2c642155a19e7b9eaac69a47db3b
# Tue, 22 Jan 2019 10:35:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 22 Jan 2019 10:35:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:80c309c8f9e2a929c92fe88fafde882006a56d421e9cb306b5a55baefe52c4b6`  
		Last Modified: Tue, 08 Jan 2019 01:38:21 GMT  
		Size: 586.0 MB (585998859 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bfc3888f034fb7d00898fffa324da3e9ccfb30f42ed800fe45bb58da849af364`  
		Last Modified: Fri, 11 Jan 2019 11:31:41 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a22a20ec8993a1ae8419fb0ce687c2c852f0ba9e1f0839f0bed993eff642cae6`  
		Last Modified: Fri, 11 Jan 2019 11:31:43 GMT  
		Size: 4.7 MB (4680380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a5b8021dbd698d2b37848da9da612d1dd5830c6dc2fa2067ac761bdd5cad1ab`  
		Last Modified: Fri, 11 Jan 2019 11:36:19 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2d077d4d122e42f44d2c21105cf2124b2f1db0482bc60dd5c2b773bb9675ad`  
		Last Modified: Fri, 11 Jan 2019 11:36:19 GMT  
		Size: 292.8 KB (292763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44891edb8fe831d1dd21b35547d2efc6f80019be6f97d668deee9cd5fadc095`  
		Last Modified: Tue, 22 Jan 2019 11:34:24 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b112ba26250b0bded7e17ac71be6289a366796315581926f638c2c4e263147`  
		Last Modified: Tue, 22 Jan 2019 11:34:24 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7140f16a5d9caa14699494f00564513c201a98a9ad57579ed51eb383ddc047`  
		Last Modified: Tue, 22 Jan 2019 11:34:23 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49dd40ebbc399d6ff74db2a702558f054752efe64cfc5907572438f5698ff5ca`  
		Last Modified: Tue, 22 Jan 2019 11:35:37 GMT  
		Size: 192.0 MB (191953481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ea19443659b5ac81641557ebec89a26d62894c64383ade2fe7514b56748733`  
		Last Modified: Tue, 22 Jan 2019 11:34:24 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
