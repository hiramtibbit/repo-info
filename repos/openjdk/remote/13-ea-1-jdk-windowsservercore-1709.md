## `openjdk:13-ea-1-jdk-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:8749702493074dbbd7de7fe403e04b15aa5c934dd7309053f1fc10ed32756c10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.846; amd64

### `openjdk:13-ea-1-jdk-windowsservercore-1709` - windows version 10.0.16299.846; amd64

```console
$ docker pull openjdk@sha256:a31e39a96417da286aaf2cb3d201becddb0b7ee78d254a765b8c812c041fb9c2
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3358043190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a45b1ef42c30729407ca664b95ac51a2b29b6821730a2537917e968c34ef76fa`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 05 Dec 2018 22:40:26 GMT
RUN Install update 10.0.16299.846
# Tue, 25 Dec 2018 17:23:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 01 Jan 2019 10:28:48 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 04 Jan 2019 10:19:22 GMT
ENV JAVA_HOME=C:\openjdk-13
# Fri, 04 Jan 2019 10:20:27 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 04 Jan 2019 10:20:29 GMT
ENV JAVA_VERSION=13-ea+1
# Fri, 04 Jan 2019 10:20:30 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/1/GPL/openjdk-13-ea+1_windows-x64_bin.zip
# Fri, 04 Jan 2019 10:20:32 GMT
ENV JAVA_SHA256=54f0908fb096f0587a1e66d447ed2ec181a00cbd8d92ebd3a30bd978e70a4146
# Fri, 04 Jan 2019 10:23:07 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 04 Jan 2019 10:23:10 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:10167262a01401a5b7cd880ca2abdb5a43d0cdb288b23e2bbda0cd16760064e7`  
		Last Modified: Tue, 11 Dec 2018 21:30:45 GMT  
		Size: 877.8 MB (877837008 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:7c1b47cffe80520ef16d931d598cdadd371f9cb1e4ca9304d9c7532bb19c9721`  
		Last Modified: Tue, 25 Dec 2018 17:52:11 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac183665c50ece051ad7a47123f27410be49e5bb005c5050f18e99698c80647`  
		Last Modified: Tue, 01 Jan 2019 10:55:43 GMT  
		Size: 4.8 MB (4791872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda25f14d58899df88915866419de8d10225de0ac6e43097ddea0a53f84ac93`  
		Last Modified: Fri, 04 Jan 2019 10:33:38 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b9260f182f52a3f3b54acb8d71e7b5d12f9e722900e08804b0f21886bed866`  
		Last Modified: Fri, 04 Jan 2019 10:33:39 GMT  
		Size: 4.8 MB (4756002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cef143c0f667124d4e276cdc4f4d4383fbb4a126e3c015ba14276eba8bb46b7`  
		Last Modified: Fri, 04 Jan 2019 10:33:35 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc50ac9d52bd8c33fe23d9d13ba441e3d33d55eb3c6a56e57890df8e1fe1d9`  
		Last Modified: Fri, 04 Jan 2019 10:33:34 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b252fdea86fe8cd9a24bf43c7a2f2c7ac6348a3b41eac9c8e29e3eacd098b31`  
		Last Modified: Fri, 04 Jan 2019 10:33:35 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57835c7c681a02f372c2a4ceea64f1ac3d3324e37d5faca3519eb2e9fbd55882`  
		Last Modified: Fri, 04 Jan 2019 10:34:25 GMT  
		Size: 196.4 MB (196350504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548995212c98fd31e9f7cd98f571555941e33aa27a8eaa8a2e578729c901cd07`  
		Last Modified: Fri, 04 Jan 2019 10:33:35 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
