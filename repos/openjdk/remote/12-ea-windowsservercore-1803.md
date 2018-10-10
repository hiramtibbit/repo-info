## `openjdk:12-ea-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:d0c361436c8e762345aaaa9d81c55476e11c3709bad9d32eb42887e7a41b2874
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.345; amd64

### `openjdk:12-ea-windowsservercore-1803` - windows version 10.0.17134.345; amd64

```console
$ docker pull openjdk@sha256:212a9ea6db3a68f93faacd7a9da469ae10109f5778ded18e4bffecd68d8661fe
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2419279160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87cbf629960c311a01533269c3e3f05640b812256eb19f784a841b235425d477`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Mon, 01 Oct 2018 21:32:36 GMT
RUN Install update 10.0.17134.345
# Wed, 10 Oct 2018 10:30:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 10 Oct 2018 10:30:27 GMT
ENV JAVA_HOME=C:\openjdk-12
# Wed, 10 Oct 2018 10:31:33 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 10 Oct 2018 10:31:34 GMT
ENV JAVA_VERSION=12-ea+14
# Wed, 10 Oct 2018 10:31:35 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/14/GPL/openjdk-12-ea+14_windows-x64_bin.zip
# Wed, 10 Oct 2018 10:31:37 GMT
ENV JAVA_SHA256=43ac13c36e6d868c55e4e5bfefa2e9ae1fa7fb4006fde49ac8b2a3e1b9ca8279
# Wed, 10 Oct 2018 10:34:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 10 Oct 2018 10:34:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:eba07b94d5f77aa900bf02c4247fc580222254782681cc3c74a7cf9566e8890a`  
		Last Modified: Mon, 08 Oct 2018 19:44:48 GMT  
		Size: 570.0 MB (570044587 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:27edf24f1e4fe928232c90f140f4c86cd7eed50efd07761c6c0832c7bfe26d30`  
		Last Modified: Wed, 10 Oct 2018 11:04:51 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f85d281352e27f7b30dd9de055e7b8d0820d635c1b51c696c95884b3b77322a`  
		Last Modified: Wed, 10 Oct 2018 11:04:51 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:778c8fe5d5b6d982b9efce6ae468a1843f175d7b56eb4e89908ebb5a198af2bf`  
		Last Modified: Wed, 10 Oct 2018 11:04:53 GMT  
		Size: 4.7 MB (4683934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17fdf64b3044c90b32dd21f34802cccef7d3b2a72f5b3cb42d4d282fa4a2dac`  
		Last Modified: Wed, 10 Oct 2018 11:04:48 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:388820eb19a6b4a398fe1b4a93a0e6e7682f703a9ad7f2911a9f4ae2d48874ac`  
		Last Modified: Wed, 10 Oct 2018 11:04:48 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5599fae89b933a210d174dc9f5d2c4081555da4a9e7debcccbcdc55aa3b8e95`  
		Last Modified: Wed, 10 Oct 2018 11:04:48 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20b04f2ab34fe24a83783bb04c1933deeace0900d92e71448cb87633a894b837`  
		Last Modified: Wed, 10 Oct 2018 11:05:12 GMT  
		Size: 184.9 MB (184855171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6467cb327f74461d32b160bd0799a24a260314b58664fddc3276051327c96c33`  
		Last Modified: Wed, 10 Oct 2018 11:04:48 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
