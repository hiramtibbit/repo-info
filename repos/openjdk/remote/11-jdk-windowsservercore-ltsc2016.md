## `openjdk:11-jdk-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:400bb3c91d9922ec39dce7532697a143b943b98899b2d088f8d9ab50abcf908b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `openjdk:11-jdk-windowsservercore-ltsc2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull openjdk@sha256:2d9b5d8f915064adf9972f8f04f934f425290aeae8831a008ff8201a1cbde82d
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5794409106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b794a2774c0d83ec8fad1b259864ee4828126fce7d70920a5e846de51cd2f89d`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:03:17 GMT
RUN Install update 10.0.14393.2551
# Wed, 10 Oct 2018 09:36:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 10 Oct 2018 10:34:29 GMT
ENV JAVA_HOME=C:\openjdk-11
# Wed, 10 Oct 2018 10:35:50 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 10 Oct 2018 10:35:51 GMT
ENV JAVA_VERSION=11
# Wed, 10 Oct 2018 10:35:52 GMT
ENV JAVA_URL=https://download.java.net/java/ga/jdk11/openjdk-11_windows-x64_bin.zip
# Wed, 10 Oct 2018 10:35:53 GMT
ENV JAVA_SHA256=fde3b28ca31b86a889c37528f17411cd0b9651beb6fa76cac89a223417910f4b
# Wed, 10 Oct 2018 10:38:33 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 10 Oct 2018 10:38:35 GMT
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
	-	`sha256:4741735dc58b1f06b8e3b2e05e24bc256e9a963a74df910de53318659dd96943`  
		Last Modified: Wed, 10 Oct 2018 11:05:42 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a3c3b0b5eac7e019e4cd15ea921d6135614e4be4eaef048647fc0fe5d494fb`  
		Last Modified: Wed, 10 Oct 2018 11:05:44 GMT  
		Size: 5.1 MB (5092681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e757b448a5be632e67a5b8ccec2eb5af2e5ebedddf2bcb7509d205b8fc9827b`  
		Last Modified: Wed, 10 Oct 2018 11:05:39 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f4ff5a37d1af4e275fac4a70746debf9063e962e3470b8116c63807588a48`  
		Last Modified: Wed, 10 Oct 2018 11:05:39 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d88c2d3f39a7cb871235a09702a4c4a31a46d8fa13ef436270f3fc82354f4815`  
		Last Modified: Wed, 10 Oct 2018 11:05:39 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1684efbf473f06881eaf4deb87e353f76174f5c95e86dd4f0993e8428428d1cb`  
		Last Modified: Wed, 10 Oct 2018 11:06:18 GMT  
		Size: 192.2 MB (192198276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b15c92d2df64bcd91ca133248bce3ae5a55597cb846ef7eaa12e7b602a6c2ace`  
		Last Modified: Wed, 10 Oct 2018 11:05:39 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
