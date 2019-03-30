## `openjdk:13-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:7fbf503c9a069ab9d5a75797ff4db5237f32b6c2b2092db5beebf22f6e036543
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2848; amd64

### `openjdk:13-windowsservercore-ltsc2016` - windows version 10.0.14393.2848; amd64

```console
$ docker pull openjdk@sha256:e30a5b4c0ff6e276e545b3d159c6d338d0aed05568e0876115642b4139e5b524
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5848318724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cdb7d662767326838e546140fc3bcd374021b1aedd1f55588bc67a51e1e623f`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Mar 2019 20:57:18 GMT
RUN Install update 10.0.14393.2848
# Sat, 16 Mar 2019 09:25:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 28 Mar 2019 10:02:17 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Thu, 28 Mar 2019 10:02:19 GMT
ENV JAVA_HOME=C:\openjdk-13
# Thu, 28 Mar 2019 10:03:23 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Sat, 30 Mar 2019 10:12:21 GMT
ENV JAVA_VERSION=13-ea+14
# Sat, 30 Mar 2019 10:12:22 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/14/GPL/openjdk-13-ea+14_windows-x64_bin.zip
# Sat, 30 Mar 2019 10:12:23 GMT
ENV JAVA_SHA256=709c0cd64f9c49e40817e328fb56e8153d56f206db52fcd00e438880f09da8a5
# Sat, 30 Mar 2019 10:15:20 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 30 Mar 2019 10:15:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e0718b11f51220dd85c47a1d225be81c5ba343fbb45f9b43fe3d762c0a20300a`  
		Last Modified: Mon, 11 Mar 2019 20:57:18 GMT  
		Size: 1.6 GB (1569132556 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3c84f6ec9cf25e40329a2ab2c9fa1da3095d19cb67d4eacabcec0838b7e89729`  
		Last Modified: Sat, 16 Mar 2019 10:38:59 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b476c13be693e6b037949375acc61d13882e125755eefcbf8025e9710f612b6`  
		Last Modified: Thu, 28 Mar 2019 11:02:42 GMT  
		Size: 5.2 MB (5212794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7f7d37103ca754eef7922773013c044f068b350ac741048c7e8ce177e85ceb`  
		Last Modified: Thu, 28 Mar 2019 11:02:39 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53648c20484e8edd5dab97b1010fc95f11ce0d0008a34e6bf81bcd423e4d2843`  
		Last Modified: Thu, 28 Mar 2019 11:02:42 GMT  
		Size: 5.2 MB (5184177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17174a4f6ddb0b89699f2be0fb348d24516f21e8ee7660f74ed895d5bcb08a5`  
		Last Modified: Sat, 30 Mar 2019 10:27:59 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2defd344f9a83515533145528c925a2e04054f1461fe6884662caac07147d70d`  
		Last Modified: Sat, 30 Mar 2019 10:27:59 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0402efa4f23788be2dbaa78515cbc868c77ff6bfe10a2f9f979812d18074293`  
		Last Modified: Sat, 30 Mar 2019 10:27:59 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d81c4dc9b44d064954401e115943ec4518fa58981a3c9ea2c312d8e441e32a2`  
		Last Modified: Sat, 30 Mar 2019 10:29:17 GMT  
		Size: 198.8 MB (198796034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c1ff41ac2caf4549369e8c31c800d0c90814b17d4f322b0b7c6c40d2a468af`  
		Last Modified: Sat, 30 Mar 2019 10:27:59 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
