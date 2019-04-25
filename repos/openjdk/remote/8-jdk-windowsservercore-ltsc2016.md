## `openjdk:8-jdk-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:f1d08c960e1735fba454b051e0dd8528f9b63f138d7c908b6d8122aeb7345ca9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64

### `openjdk:8-jdk-windowsservercore-ltsc2016` - windows version 10.0.14393.2906; amd64

```console
$ docker pull openjdk@sha256:be88a22baa604e25444ba1a3676ee8797ef14e296baadbe03e706865f62b54e0
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5761755467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34e65b8fc26de1ef33e021052d4719f208a9c7bba4de051718d59e00b740540a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Thu, 11 Apr 2019 22:52:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 01:00:20 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 12 Apr 2019 01:01:19 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 25 Apr 2019 09:44:25 GMT
ENV JAVA_VERSION=8u212
# Thu, 25 Apr 2019 09:44:27 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.212-1
# Thu, 25 Apr 2019 09:44:28 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.212-1.b04.ojdkbuild.windows.x86_64.zip
# Thu, 25 Apr 2019 09:44:29 GMT
ENV JAVA_OJDKBUILD_SHA256=a40d7ab150bb2c2b3ad19e388942c4fe47b92a89dd49c468e09ce9d8bc631934
# Thu, 25 Apr 2019 09:46:34 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:531bdf2c301d16276bdb1ccfcc2625181323e9c6b9fb43b5d98aa89b4fa55fa3`  
		Last Modified: Fri, 12 Apr 2019 00:02:35 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8199042532c2951363ae1436b39e9a775abe385a986adafbc360c090aff5f0ad`  
		Last Modified: Fri, 12 Apr 2019 01:57:14 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c50b78933457acd5424fb4d28c2fccfd763fed15d278d13d9a2676e34f9eebd`  
		Last Modified: Fri, 12 Apr 2019 01:57:16 GMT  
		Size: 5.2 MB (5220971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a18382a184821348dd91e6c9b426540b64fcd90d2c08b4d6d721ef89bb31c134`  
		Last Modified: Thu, 25 Apr 2019 09:51:40 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50bbc31995ba6a897f6516daf27725aa540acfd594a3be8d5949babf113b4c5`  
		Last Modified: Thu, 25 Apr 2019 09:51:40 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a162d05be956beb5bf5edbc39f1eb2ab62ba13128590f95b528c761815d90c`  
		Last Modified: Thu, 25 Apr 2019 09:51:40 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13cba0131b073a9c90ac419660b8723b00beb98ddc6a9bff3ce5997adfd0eed9`  
		Last Modified: Thu, 25 Apr 2019 09:51:40 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5d0d47639081c1994130c476ce2ec81f60c903e85821a3e41e37194bfd3974`  
		Last Modified: Thu, 25 Apr 2019 09:51:59 GMT  
		Size: 114.2 MB (114157544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
