## `openjdk:windowsservercore-1809`

```console
$ docker pull openjdk@sha256:ddf011729e4047b074d7f063ca51389529950bdf34d60cb00b1807c8017c6b6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.253; amd64

### `openjdk:windowsservercore-1809` - windows version 10.0.17763.253; amd64

```console
$ docker pull openjdk@sha256:93ed1d98d86400ca45f34c2faafa4029aad518e7eb02d985d8e85a889aa50faf
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 GB (2037472986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b76400672bb0167923957022e47aaee8238b21f2bebe55b9e36a40222f741d46`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809_RTM_amd64
# Wed, 02 Jan 2019 22:33:05 GMT
RUN Install update 1809_amd64
# Fri, 11 Jan 2019 12:21:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 18 Jan 2019 10:16:21 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 18 Jan 2019 10:30:01 GMT
ENV JAVA_HOME=C:\openjdk-11
# Fri, 18 Jan 2019 10:30:27 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 18 Jan 2019 10:30:28 GMT
ENV JAVA_VERSION=11.0.2
# Tue, 22 Jan 2019 11:17:26 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_windows-x64_bin.zip
# Tue, 22 Jan 2019 11:17:28 GMT
ENV JAVA_SHA256=cf39490fe042dba1b61d6e9a395095279a69e70086c8c8d5466d9926d80976d8
# Tue, 22 Jan 2019 11:19:07 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 22 Jan 2019 11:19:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2ac060f1ef0656a73755234824c317294dcaf934c9f0933b1a3aa349d8e4fbf3`  
		Last Modified: Tue, 08 Jan 2019 19:21:17 GMT  
		Size: 315.3 MB (315326112 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:409ca3908f9b0e2af8c5b8e8e66b93a5b0b79aa380a8750859965d0017697547`  
		Last Modified: Fri, 11 Jan 2019 14:00:24 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb19289d6afe170c6e62cad97ceeb2ce669fc368b028de1cb3d0fd04f11b8248`  
		Last Modified: Fri, 18 Jan 2019 10:39:22 GMT  
		Size: 4.1 MB (4145682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28f681f2aeb432616ab63c4c1babbd61ce41e0734f3b5702ca9a582eda00492`  
		Last Modified: Fri, 18 Jan 2019 10:51:42 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad611d51898d119736d0555b8178fa7bea284ab5b6b11d6e2a19935eac0c4173`  
		Last Modified: Fri, 18 Jan 2019 10:51:42 GMT  
		Size: 313.6 KB (313577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46446af01c4b4aea82e392252586f8789120e7da43acfffd830c31ab76c128c2`  
		Last Modified: Fri, 18 Jan 2019 10:51:40 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4f44fdc4e0f5d717689b7ba515b2cd8da2a5e522a2e7eb16a6149bd3d317465`  
		Last Modified: Tue, 22 Jan 2019 11:45:27 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ec022091c106f191a4e47f09ebe42b13ef9d1d1c1cb3219d308c75abd5f8f5c`  
		Last Modified: Tue, 22 Jan 2019 11:45:27 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18ee9a1f2064cd696dd78e6aa2491f7b068eb303b5dc485e6df800ef1c50a0c0`  
		Last Modified: Tue, 22 Jan 2019 11:45:56 GMT  
		Size: 183.0 MB (182995038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c0e2a793dcfcbf1d384f691f05333b37e6009fb8881e9d8f5da682f2393394`  
		Last Modified: Tue, 22 Jan 2019 11:45:27 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
