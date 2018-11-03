## `openjdk:12-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:18a8b1795f8cfb744ed09938b62f0cb27e14f478fabe02910c740910500226db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `openjdk:12-windowsservercore-ltsc2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull openjdk@sha256:ee14af4f78eb60d2c4ed0d9999f9931e09de79ccbb45ed5f58e3c691d781f410
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5802097030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19a4336c8a22a7e699a3d45cf9bd0b1d2cf38329825f3b6d22225e580974ae70`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:03:17 GMT
RUN Install update 10.0.14393.2551
# Wed, 10 Oct 2018 09:36:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 10 Oct 2018 10:21:03 GMT
ENV JAVA_HOME=C:\openjdk-12
# Wed, 10 Oct 2018 10:22:53 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Sat, 03 Nov 2018 10:34:34 GMT
ENV JAVA_VERSION=12-ea+18
# Sat, 03 Nov 2018 10:34:35 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/18/GPL/openjdk-12-ea+18_windows-x64_bin.zip
# Sat, 03 Nov 2018 10:34:36 GMT
ENV JAVA_SHA256=788f13148f1025f5ac875a6df420741d89b77dcdbfb9fa74b36a0f37f41f3806
# Sat, 03 Nov 2018 10:38:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 03 Nov 2018 10:38:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c0f6863f3dd498ab56cdd308637630f888fe646de403284f2c5392ba885bdd8e`  
		Last Modified: Tue, 09 Oct 2018 18:03:17 GMT  
		Size: 1.5 GB (1527125035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d41004b1d809eac4e77c97920984b278977d36627024ab085d0dd8ccc941ddeb`  
		Last Modified: Wed, 10 Oct 2018 10:08:02 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f2b49afd3609a249fe7bf207dc223e3894f836b1e2e1ea8d2427f2aa818283`  
		Last Modified: Wed, 10 Oct 2018 11:03:04 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4cd4842c91e00185651e122353cd21466f678b55d81a9c073a5415899b6232`  
		Last Modified: Wed, 10 Oct 2018 11:03:06 GMT  
		Size: 5.1 MB (5083722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c48622c17967dbcd94c01867bad54dc851bfce41ee01068b91f915590f9b4d9`  
		Last Modified: Sat, 03 Nov 2018 10:45:21 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e0b62b377bde51c823b3f50bd80b4d11d3cf82af399e4377dfbf3e7e6ce537`  
		Last Modified: Sat, 03 Nov 2018 10:45:21 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555ffc7cda7e5c9a04c3bf4f51e787caacf99ae89b06e1ab5d53e48adbbb8bf4`  
		Last Modified: Sat, 03 Nov 2018 10:45:21 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd0240465de862fc6d80cb95b076c1378f38fbc3fd8276d9662bfb11367b5e7`  
		Last Modified: Sat, 03 Nov 2018 10:45:46 GMT  
		Size: 199.9 MB (199895180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320a482d63eabbc05827b6d314ac458ce75e2b74b62b73862e3b177d43da1bf0`  
		Last Modified: Sat, 03 Nov 2018 10:45:21 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
