## `openjdk:11-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:85fd2a33c884f819d86d91067eafb3f78f52ec3522a03f3a1776af4b7d2dfffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.3025; amd64

### `openjdk:11-windowsservercore-ltsc2016` - windows version 10.0.14393.3025; amd64

```console
$ docker pull openjdk@sha256:7d37331af0e52d18f893e462189ba9506dbd723775051f481112d399cd0eb211
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5910703971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93aec4be51b9ade3d7bedb699fb3e4521314876c29651292c1ed010583aaa179`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Thu, 06 Jun 2019 17:26:33 GMT
RUN Install update ltsc2016-amd64
# Wed, 12 Jun 2019 12:41:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 15:20:05 GMT
ENV JAVA_HOME=C:\openjdk-11
# Wed, 12 Jun 2019 15:21:10 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 12 Jun 2019 15:21:11 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 12 Jun 2019 15:21:13 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 12 Jun 2019 15:21:14 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 12 Jun 2019 15:23:42 GMT
RUN $url = ('{0}x64_windows_{1}.zip' -f $env:JAVA_BASE_URL, $env:JAVA_URL_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'openjdk.zip'; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Wed, 12 Jun 2019 15:23:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b39d5d9be066f0f1bd27e6ca44acdf71d85b81b878665ee46215ddcb7ded74a0`  
		Last Modified: Tue, 11 Jun 2019 17:20:14 GMT  
		Size: 1.6 GB (1639988840 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:57bc0501728e0596928517947d7b1c59a1010c84b5d54e534c0bad3109160d4c`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a46480a91c741133436ec186f85f34e64b40943c22ed7042280a27b2e45e480e`  
		Last Modified: Wed, 12 Jun 2019 15:50:15 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2c2a438d238dcf60bce814278aff9bd26034aa17c05b629500a5ac747ae59a`  
		Last Modified: Wed, 12 Jun 2019 15:50:17 GMT  
		Size: 5.3 MB (5315822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b289cc827ed60b5c3ab4ab9815ee7e3a66d47e623df25ed35100f7b47ceaea4a`  
		Last Modified: Wed, 12 Jun 2019 15:50:13 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc7f3c99a3d83597c3f340f37d3718d619d9e597d15ce1652fd3c066f9fade8f`  
		Last Modified: Wed, 12 Jun 2019 15:50:13 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce7052a0f3cdb9473f2c7abf5b81ecff86e35f842c8027034b945f501f63c99`  
		Last Modified: Wed, 12 Jun 2019 15:50:13 GMT  
		Size: 1.1 KB (1143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bc5e44a09d3a833f244bfe7d8ffcc506b12b7db5e33345b2241c1235e9f07b`  
		Last Modified: Wed, 12 Jun 2019 15:53:51 GMT  
		Size: 195.4 MB (195406360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d660c5e65407abf0ef9d75fa3178f912e28cd105ae603a257d6e8bcd613baf`  
		Last Modified: Wed, 12 Jun 2019 15:50:13 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
