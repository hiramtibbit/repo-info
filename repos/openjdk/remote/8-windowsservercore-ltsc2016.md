## `openjdk:8-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:354b4e89c52357a7025d22d8132708fb804882be208dd199fb80676370e2c44c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2665; amd64

### `openjdk:8-windowsservercore-ltsc2016` - windows version 10.0.14393.2665; amd64

```console
$ docker pull openjdk@sha256:de9838222ea8037b552e04b72d0d0ad070dea6ea4ac47a0354c52b35897c0c3a
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5751416778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0164e90d498d2c775114dc049d441b13a7ea78740ff3b4bcfb4b1e9cc057732`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Dec 2018 22:22:29 GMT
RUN Install update 10.0.14393.2665
# Fri, 14 Dec 2018 10:44:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 22 Dec 2018 10:38:29 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Sat, 22 Dec 2018 10:39:52 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Sat, 22 Dec 2018 10:39:53 GMT
ENV JAVA_VERSION=8u191
# Sat, 22 Dec 2018 10:39:54 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.191-1
# Sat, 22 Dec 2018 10:39:56 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.191-1.b12.ojdkbuild.windows.x86_64.zip
# Sat, 22 Dec 2018 10:39:57 GMT
ENV JAVA_OJDKBUILD_SHA256=d52167198912e239bba19e059870c5742558096ad7b82fe73d51461361b149bd
# Sat, 22 Dec 2018 10:42:06 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bf261bf8d7bc7faa62a55474c337e0c2bf6e7d24df25e7737fa97ace46a2cd9a`  
		Last Modified: Mon, 10 Dec 2018 22:22:29 GMT  
		Size: 1.6 GB (1564741272 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c9346499d56b89267b8f21f1328b59d8fe902493eca87b656cb4d1284a207c91`  
		Last Modified: Fri, 14 Dec 2018 11:43:34 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30dc3f4dd293352c3cb8e170d56a3a9a8e8564252580c79170fd46b269a88db`  
		Last Modified: Sat, 22 Dec 2018 10:55:04 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16397077d7143753f476734a60c925756ce79e9bce091ea0050ffe71db3974f7`  
		Last Modified: Sat, 22 Dec 2018 10:55:06 GMT  
		Size: 5.2 MB (5235060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49698137f98a33c929d9f933c1669c4c38f5c8f7c69cebe6c07dcbb976742080`  
		Last Modified: Sat, 22 Dec 2018 10:55:01 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8943d7bb9673a33fc266804c1338f5336fb7256c3c0d7b5704177c8db44af030`  
		Last Modified: Sat, 22 Dec 2018 10:55:01 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d75d77a94f73d937c8c26d1127bcd6d9e47d7f170a08d15be04ce40bf77c16`  
		Last Modified: Sat, 22 Dec 2018 10:55:01 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7be8ee963171bc222d412abc35c9ff94d9d67c5d358d683a00d499265389b3e`  
		Last Modified: Sat, 22 Dec 2018 10:55:01 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:274adbc0d78d2c7e36b04a85592efdcfd1313955cc5b77a3a2d1ea0264a91442`  
		Last Modified: Sat, 22 Dec 2018 10:55:20 GMT  
		Size: 111.4 MB (111447338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
