## `openjdk:8-jdk-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:a32b1189e14d9746bd7bc7350d3ec8740ef70ac689ab2a6b62e802deb6dc5464
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.407; amd64

### `openjdk:8-jdk-windowsservercore-1803` - windows version 10.0.17134.407; amd64

```console
$ docker pull openjdk@sha256:71b66104accbaf19f0adea85791cfe61d780c1dc449dbbc026b95d1cbd6ed04f
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2351354049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad3e2d074dfbb7b05b707c585194a111715b99a528bfd12c065279b9fb0ca560`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 02 Nov 2018 19:42:23 GMT
RUN Install update 10.0.17134.407
# Thu, 15 Nov 2018 10:51:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Nov 2018 10:51:53 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 21 Nov 2018 10:52:44 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 21 Nov 2018 10:52:45 GMT
ENV JAVA_VERSION=8u191
# Wed, 21 Nov 2018 10:52:46 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.191-1
# Wed, 21 Nov 2018 10:52:47 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.191-1.b12.ojdkbuild.windows.x86_64.zip
# Wed, 21 Nov 2018 10:52:48 GMT
ENV JAVA_OJDKBUILD_SHA256=d52167198912e239bba19e059870c5742558096ad7b82fe73d51461361b149bd
# Wed, 21 Nov 2018 10:54:21 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e4486f0b239271cca51d8299e172f9335cefd19e924843676add9d58470b19c7`  
		Last Modified: Mon, 12 Nov 2018 20:42:58 GMT  
		Size: 580.4 MB (580390603 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5221af79f3d95df0fd8a8c9a76ffe05ffea9b48cb861ad43ebd1e8b97932608b`  
		Last Modified: Thu, 15 Nov 2018 11:04:23 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3a16902c07b19b41ff4c8dc750e03882faa958b7685add0e6ed40cbe457c48`  
		Last Modified: Wed, 21 Nov 2018 11:05:07 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ccb158fbbade511a4c4fccfec9759d06fa0e0229bdd5db82de76ec96eb6891a`  
		Last Modified: Wed, 21 Nov 2018 11:05:07 GMT  
		Size: 4.7 MB (4692968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d7a54755adff6c9be37e8fecb62b7bee61981ac67a80e891a011194cfbade3`  
		Last Modified: Wed, 21 Nov 2018 11:05:04 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23658af700a812608e3eb77652ca629c4347b0d5caa59992ee5a0e860efdd0ec`  
		Last Modified: Wed, 21 Nov 2018 11:05:03 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8767ffde03acfc8fe0682e85a48a027642b4885eebdbf5c709de669913bf5b`  
		Last Modified: Wed, 21 Nov 2018 11:05:04 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e401cf0336302465f897eb80f11f729599fd62ebf574b9509de0908770bd775`  
		Last Modified: Wed, 21 Nov 2018 11:05:04 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f8fcd02651e7fa00bf80f6e936ba6533b29858f1d7f6488c3482c3dcac419d4`  
		Last Modified: Wed, 21 Nov 2018 11:05:19 GMT  
		Size: 106.6 MB (106575034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
